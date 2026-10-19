# Account-free runtime evidence

Measured on this Linux x64 PC on 2026-10-15. No device, emulator, owner account,
owner server, build server, or authenticated model request was used. Runtime
homes, npm prefixes, npm cache, logs, and Claude binary were confined to
`build/claude-phone-repro/` in this checkout. Inherited provider credentials were
discarded by an explicit environment allowlist. Daemons bound fresh loopback
ports selected by the OS, never 4150.

## Artifacts and environment

- Node: final comparison uses the exact pinned 24.21.0 x64 distribution,
  downloaded into the isolated workspace from
  `https://nodejs.org/dist/v24.21.0/node-v24.21.0-linux-x64.tar.gz` and verified
  against `PaseoPhoneScripts.nodeX64Sha256`:
  `6e1db87ef58b8819e5d5402eff1536491b18edd8eb7bee5ef7897876e88dc5ff`.
  Earlier exploratory runs used 24.11.1; the table below supersedes those runs.
- Claude Code: catalog URL
  `https://downloads.claude.ai/claude-code-releases/2.1.294/linux-x64/claude`;
  252755128 bytes; SHA256
  `27122ca7b624f537546fbef35b80c66370d974ff258f3d9b10ac50bb8771f262`.
  Download completed in approximately 12 seconds. The ARM64 phone artifact is
  252108792 bytes according to the catalog, explaining why a silent install can
  take appreciable time on a slower connection.
- Paseo 0.11.2: `npm ci --ignore-scripts --no-audit --no-fund` from the repository's
  `assets/agents/paseo-package-lock.json`, under its own npm prefix. Its Claude
  Agent SDK is 0.3.246.
- Paseo 0.9.2: separate `npm install --ignore-scripts --no-audit --no-fund` with
  exact `@getpaseo/cli: 0.9.2`. Installed CLI, server, client, and protocol all
  report 0.9.2. Dependencies were resolved today; its SDK also resolves to
  0.3.246. This is not a reconstruction of the owner's historical dependency
  lock. Generated lock SHA256:
  `a0e6334f76f10914f76354b886a572a4d3e3c902595a35ff1650a0ebdea31afd`.

## Direct CLI results

| Invocation in signed-out isolated home | Exit | Elapsed | Result |
| --- | --- | --- | --- |
| `claude --version` | 0 | 0.008 s | `2.1.294 (Claude Code)` |
| `claude auth status` | 1 | 0.159 s | JSON `loggedIn: false`, `authMethod: none` |
| `claude auth status --json` | 1 | 0.115 s | JSON `loggedIn: false`, `authMethod: none`; empty stderr, option accepted |
| `claude -p 'Reply only OK' --output-format json` | 1 | 2.158 s | JSON `is_error: true`, `result: Not logged in · Please run /login` |

The `auth status` output is JSON even though its exit code is nonzero. A caller
must inspect the bounded structured status before treating that exit as an
unknown error. No timeout occurred in these commands.

## Real Paseo WebSocket and agent request

Both daemons launched with `paseo daemon run --home <isolated-home>` and explicit
loopback listen, relay-off, web-UI-off, dictation-off, voice-off, and service-proxy-
off environment settings. The test sends the app's `hello` shape, then a
`create_agent_request` for Claude with `initialPrompt: Reply only OK` in the
throwaway workspace. After the explicit unauthenticated reply, the probe waits
250 ms for the turn to settle, then verifies the retained parent's idle state
and provider-subagent list before closing the socket.

Times below start at WebSocket client construction, after a five-second daemon
worker startup allowance. Daemon listener startup is measured separately.

| Observation | Paseo 0.11.2 | Paseo 0.9.2 |
| --- | --- | --- |
| Loopback listener ready | 1.505 s | 1.403 s |
| `server_info`, with exact daemon version | 13 ms | 17 ms |
| `agent_created`, `status: running` | 516 ms | 365 ms |
| Claude `thread_started` | 566 ms | 379 ms |
| Assistant timeline: `Not logged in · Please run /login` | 608 ms | 455 ms |
| Result classification | authentication required | authentication required |
| `turn_completed` | 635 ms | 479 ms |
| `fetch_agent_response`, retained parent `status: idle` | 861 ms | 707 ms |
| `agent.provider_subagents.list.response` | 862 ms | 707 ms |
| Subagent list contents | matching parent ID, `subagents: []`, `error: null` | matching parent ID, `subagents: []`, `error: null` |

Before each final daemon run, `claude auth status` again returned exit 1,
`loggedIn: false`, `authMethod: none`, in 0.117 s for each daemon.
The two daemons ran sequentially, with exact-PID cleanup between runs.

The provider-subagent inventory RPC is supported by both server versions on a
retained idle parent after an unauthenticated turn. Both implementations dispatch
`agent.provider_subagents.list.request`, load the unarchived parent, and return
the matching parent ID, subagents, and a null error on success. The live checks
above verify this exact response shape, so retaining an old idle conversation
does not inherently prevent an update through this RPC.

The pin can initialize and explicitly report missing sign-in through both tested
daemon versions. A general claim that Claude 2.1.294 cannot talk to Paseo 0.9.2
is unsupported by this reproduction. The current app's pre-fix Ready check,
however, rejected a healthy 0.9.2 `server_info` because it compared that version
against the exact 0.11.2 pin. That same check did not start a Claude agent at all;
its message claiming the agent started but did not answer was misleading.

This evidence does not identify the owner's actual daemon version or account
state, does not prove signed-in completion, and does not qualify proot/ARM64 cold
startup timing. The owner phone was deliberately not inspected.

## Reproduction and cleanup

After downloading and unpacking the checksum-verified Node distribution,
downloading the checksum-verified CLI, and installing the two npm prefixes
above with isolated HOME and npm cache settings:

```bash
python3 docs/qa/claude-code-phone-check-2026-10-15/runtime-repro.py 0.11.2 0.9.2
```

The committed launcher rejects an authenticated home, gives each daemon a
separate throwaway git workspace, and stops only its enumerated child PIDs.
The committed WebSocket probe records timing and explicit auth failure.
`build/claude-phone-repro/probe-<version>.jsonl` holds the local detailed event
stream; no credentials were present. Final `/proc` inspection found **zero
remaining isolated runtime PIDs** after cleanup.

During initial harness setup the supervisor listener answered 503 before its
worker was ready; waiting for worker startup resolved that. The legacy command
`paseo start --listen ...` was rejected as a removed option by 0.9.2. The usable
command in both package versions is `paseo daemon run` with deployment
environment settings. An initial workspace without its own git root also
triggered a background parent-repository fetch attempt; it failed without
credentials. The final harness initializes its own local git repository and sets
`GIT_CEILING_DIRECTORIES` to prevent traversing into the shared checkout.
