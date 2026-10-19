#!/usr/bin/env python3
"""Account-free Claude/Paseo probes in workspace-only homes and fresh ports."""
import hashlib
import json
import os
from pathlib import Path
import signal
import socket
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[3]
WORK = ROOT / 'build/claude-phone-repro'
CLI = WORK / 'claude-2.1.294'
NODE = WORK / 'node-v24.21.0-linux-x64/bin/node'
assert subprocess.check_output([str(NODE), '--version'], text=True).strip() == 'v24.21.0'
assert hashlib.sha256(CLI.read_bytes()).hexdigest() == '27122ca7b624f537546fbef35b80c66370d974ff258f3d9b10ac50bb8771f262'
CLI.chmod(0o755)


def descendants(parent):
    found = {parent}
    for _ in range(8):
        before = len(found)
        for path in Path('/proc').glob('[0-9]*/stat'):
            try:
                fields = path.read_text().rsplit(')', 1)[1].split()
                if int(fields[1]) in found:
                    found.add(int(path.parent.name))
            except (FileNotFoundError, PermissionError, ProcessLookupError):
                pass
        if len(found) == before:
            break
    return found


def run(version):
    home = WORK / f'home-{version}'
    home.mkdir(exist_ok=True)
    # Keep daemon git discovery inside this throwaway workspace.
    subprocess.run(['git', 'init', '--quiet', str(home)], check=True)
    binary = home / 'bin'
    binary.mkdir(exist_ok=True)
    (binary / 'claude').unlink(missing_ok=True)
    (binary / 'claude').symlink_to(CLI)
    with socket.socket() as available:
        available.bind(('127.0.0.1', 0))
        port = available.getsockname()[1]
    env = {
        'HOME': str(home), 'PATH': f'{binary}:{NODE.parent}:/usr/local/bin:/usr/bin:/bin',
        'CLAUDE_CONFIG_DIR': str(home / '.claude'),
        'XDG_CONFIG_HOME': str(home / '.config'),
        'XDG_CACHE_HOME': str(home / '.cache'),
        'PASEO_LISTEN': f'127.0.0.1:{port}',
        'PASEO_RELAY_ENABLED': 'false', 'PASEO_WEB_UI_ENABLED': 'false',
        'PASEO_DICTATION_ENABLED': 'false', 'PASEO_VOICE_MODE_ENABLED': 'false',
        'PASEO_SERVICE_PROXY_ENABLED': 'false',
        'GIT_CEILING_DIRECTORIES': str(WORK),
    }
    paseo = WORK / f'paseo-{version}/node_modules/.bin/paseo'
    args = [str(paseo), 'daemon', 'run', '--home', str(home / 'daemon')]
    auth_start = time.monotonic()
    auth = subprocess.run([str(CLI), 'auth', 'status', '--json'], cwd=home, env=env,
                          capture_output=True, text=True, timeout=30)
    status = json.loads(auth.stdout)
    if status.get('loggedIn') is not False:
        raise RuntimeError('This reproduction requires a fresh signed-out home')
    print(json.dumps({'version': version, 'claudeAuthExit': auth.returncode,
                      'loggedIn': status.get('loggedIn'),
                      'authMethod': status.get('authMethod'),
                      'authSeconds': round(time.monotonic()-auth_start, 3)}), flush=True)
    started = time.monotonic()
    with (WORK / f'daemon-{version}.log').open('w') as log:
        process = subprocess.Popen(args, cwd=home, env=env, stdout=log, stderr=log)
        try:
            for _ in range(200):
                if process.poll() is not None:
                    print(json.dumps({'version': version, 'daemonExit': process.returncode}), flush=True)
                    return
                try:
                    with socket.create_connection(('127.0.0.1', port), timeout=.1):
                        break
                except OSError:
                    time.sleep(.1)
            print(json.dumps({'version': version, 'daemonListenSeconds': round(time.monotonic()-started, 3)}), flush=True)
            # The supervisor listener can answer 503 while its worker starts.
            time.sleep(5)
            probe = subprocess.run(['node', str(Path(__file__).with_name('runtime-probe.mjs')),
                                    version, f'ws://127.0.0.1:{port}/ws', str(home)],
                                   env=env, cwd=ROOT, capture_output=True, text=True, timeout=55)
            (WORK / f'probe-{version}.jsonl').write_text(probe.stdout)
            print(probe.stdout, flush=True)
            if probe.stderr:
                print(probe.stderr[:500], flush=True)
        finally:
            owned = descendants(process.pid)
            for pid in sorted(owned, reverse=True):
                try:
                    os.kill(pid, signal.SIGTERM)
                except ProcessLookupError:
                    pass
            try:
                process.wait(timeout=5)
            except subprocess.TimeoutExpired:
                for pid in owned:
                    try:
                        os.kill(pid, signal.SIGKILL)
                    except ProcessLookupError:
                        pass
                process.wait()


for item in sys.argv[1:] or ['0.11.2', '0.9.2']:
    run(item)
