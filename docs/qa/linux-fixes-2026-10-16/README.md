# Linux fixes: Reset, dev-server detection, "Could not read Linux" (2026-10-16)

Branch `fix/linux-reset-ports`. Follow-up to the failures N1-4 and N1-5 of
`docs/qa/real-life-N1-2026-10-16/` (build 2400).

- Emulator: AVD Pixel_6, Android 14, `emulator-5554`, wiped data, 4 GB.
- Before: build 2400 (`app-release-2400.apk`, from the batch worktree).
- After: build 2410 (commits up to `77899d2f5`), installed over 2400 with its
  data. Build 2420 adds the two last commits (resumed-reset progress and the
  This phone retry); see "2420" below.
- Signer of both builds: the local release key (`1DE5BF08…D60C`).

## Root causes (with evidence on 2400)

### 1. "Could not read Linux" while a dev server runs (N1-5), and N1-4's empty list

`(python3 -m http.server 8765 &)` in a terminal leaves python an orphan: its
subshell exits and the kernel moves it to init. On the emulator it showed
`PPid: 1`, `TracerPid: <the terminal's proot>`
([before-01](before-01-orphan-ppid1-tracer.png),
[before-02](before-02-tracer-is-terminal-proot.png)).

Every Linux read (`BuiltinLinux.run`) takes the installer slot, and its
admission (`NativeInstallerOwnership.drainPlan`) requires every same-UID
process to be accounted for. Known runtime trees were walked by parent only
(`BuiltinLinux.descendants`), so the orphan was "unknown" and admission
failed with `ownershipUnknown`. The channel turns that into
`runtime_ownership_unknown`, which the Linux manager showed as
"Could not read Linux · Linux is not set up or is not answering" with
"force stop" under Details. Every read failed at once: Running
([before-05](before-05-running-could-not-read.png)), Ports
([before-06](before-06-ports-could-not-read.png)), This phone's installed
list ([before-04](before-04-this-phone-could-not-check.png)) and the
Development services scan (`linux.run … outcome=error` in the log). Killing
the server made Running work again at once
([before-07](before-07-running-ok-after-kill.png)).

### 2. Development services never listed the server (N1-4)

Three layers, each enough on its own
([before-03](before-03-dev-services-empty.png)):

1. The scan run failed (cause 1), and the screen hid the error (empty list).
2. `/proc/net/tcp{,6}` is denied to apps (SELinux; `Permission denied`
   inside proot, before-01), so the socket tables were empty.
3. The listing script used bash syntax (`${c:0:400}`, `/dev/tcp`) but runs
   under `/bin/sh`, which is dash on Ubuntu: it died with
   `sh: 12: Bad substitution` before the probe, and the probe list was a
   fixed set without 8765. A live test reproduces this on the PC (below).

### 3. Reset Linux erased and stopped (N1-5)

Reset ran `uninstall` (worked, about 4 s) and then
`forgetInAppServerProfiles`; any cleanup failure was shown as
`That did not work: {productErrorText}`, the doubled generic text, and no
setup started; the flow then opened the setup start screen. That screen
said "OpenCode is ready on this phone" because the setup engine still held
the finished job of an earlier Repair in memory: `restore()` reads
`setup.json`, which Reset erased with Linux, and on "no job" it kept what
it had. Reproduced on 2400 after a fresh setup
([before-08](before-08-reset-stale-ready.png)): Linux erased, screen says
ready. (On this emulator the profile cleanup itself succeeded, so the
doubled alert did not appear; N1's run had phone agents set up. The cleanup
failure is now reported specifically and never stops the reinstall.)

### 4. Red Reset label

`KitRow(destructive: true)` paints the title `danger`. Owner rule: never
red; This phone already dropped it from Remove (8e6f143af).

## Fixes (commits, oldest first)

| Commit | What |
|---|---|
| `ad2ce4d79` fix(linux) | `descendants()` also follows the tracer of orphans (`NativeProcessTree`, pure, TracerPid from `/proc/<pid>/status`). Reads, stops and the uninstall check now account for background programs started in a terminal. |
| `0e5ab8251` fix(dev-services) | POSIX listing script; candidate ports from each socket-holding process: command-line numbers, `*PORT=` variables (only the number leaves the script), ports its log mentions; wider default list; owner = the process that named the port (never a client like curl). Linux › Ports uses the same detection. A failed look is said instead of an empty silence. |
| `8e2c3c47c` fix(linux-manager) | Reads retry a passing failure (ownership or busy slot) twice before the page says anything; a lasting one is "busy", not "not set up". |
| `77899d2f5` fix(linux-reset) | `LinuxResetFlow`: marker saved before erasing; erase; refusal before erasing = "Linux was not reset · Nothing was erased" with the error code under Details; partial erase goes on; engine forgets the old job; setup starts at once with the first-setup selection and its progress opens. Resumed on the next start. Specific cleanup message. Reset row not red. |
| `57a463bcf` fix(linux-reset) | A reset resumed on start opens the setup progress (2410 showed "OpenCode inside the app is stopped" over a running reinstall). |
| `3f3f6b9e8` fix(this-phone) | The installed check retries once: right after the Reset setup ended it said "Could not check" on a working Linux. |

## Tests (each failed before its fix)

| Test | Red before | Green |
|---|---|---|
| `android/.../NativeProcessTreeTest.kt` (kotlinc + JUnit, no Gradle) | 2 of 5 fail with tracer-following disabled (`expected [12493, 12603, 12700] but was [12493]`) | 5/5 |
| `test/listening_ports_test.dart` live group: real script under `sh`, tables hidden, python http.server on a random port, and a PORT-only server with a log | both fail on the old script (`sh: 12: Bad substitution`) | 17/17 |
| `test/linux_manager_parse_test.dart` live Ports test + `portsNamedIn` bare number | fail on the old `linux_ports.dart` (`Expected: contains <37871>`, `Set:[]`) | all |
| `test/linux_manager_retry_test.dart` | 2 of 3 fail without the retry | 3/3 |
| `test/setup_engine_test.dart` "a finished job held in memory goes…" | `Expected idle, Actual done` | 60/60 |
| `test/linux_manager_screens_test.dart` hub: reset starts setup, refused reset says nothing was erased, partial erase still sets up, nothing red | 3 reset tests fail on the old `linux_reset.dart`; the red test fails on the old row | 38/38 |
| `test/linux_reset_flow_test.dart` marker and resume | new unit | 6/6 |
| `test/this_phone_component_removal_test.dart` busy-moment retry | fails on the old details file | 9/9 |

`tool/qa/preflight.sh HEAD~6` must pass (see the end of this file).

## Proof on the emulator (build 2410)

Dev server on an arbitrary port, orphaned exactly as in N1-4
([after-01](after-01-orphan-server.png): `PPid 1`, `HTTP 200`):

- Development services › Also running: **http.server · Port 8765**, with
  Preview and Stop ([after-02](after-02-dev-services-found.png)); Preview
  shows the directory listing ([after-03](after-03-preview.png)).
- A second server on **41237** with its output in a file: listed
  ([after-07](after-07-two-servers.png)), its log opens with the
  `Serving HTTP … port 41237` and the GET lines
  ([after-08](after-08-logs.png)); Stop asks first
  ([after-09](after-09-stop-confirm.png)) and the row leaves
  ([after-10](after-10-after-stop.png)).
- Linux › Running lists http.server as a Dev server while it runs, three
  refreshes in a row without an error
  ([after-04](after-04-running-with-server.png)); Ports shows Port 8765 used
  by http.server with Open preview ([after-05](after-05-ports.png));
  Packages loads ([after-11](after-11-packages.png)); This phone lists what
  is installed ([after-06](after-06-this-phone-installed.png)).

Reset (with the 8765 server and a terminal still running):

- The Reset row is plain ([after-12](after-12-hub-reset-not-red.png)).
- Typed Reset, confirmed ([after-13](after-13-reset-typed.png)): setup
  progress opens at once, Linux base unpacking
  ([after-14](after-14-reset-setup-starts.png),
  [after-15](after-15-reset-setup-15s.png)); it ends on This phone,
  Connected, Running ([after-16](after-16-reset-done-this-phone.png)).
- The project survived ([after-17](after-17-project-kept.png)) and a new
  conversation in it got the reply "ready"
  ([after-18](after-18-reply-after-reset.png)).
- Killed mid-reset: `input tap` on confirm, then `am force-stop` 1.2 s later,
  then a cold start. The app finished the reset by itself: log
  `linux.removeRuntime` then `linux.startSetup` in the new process, then
  `setup.job state=done` after 65 s and Connected
  ([after-20](after-20-resumed-reset-connected.png)). On 2410 the home
  showed "OpenCode inside the app is stopped" during that reinstall
  ([after-19](after-19-killed-mid-reset-2410.png)); `57a463bcf` opens the
  setup progress instead (2420).

## 2420 (commits up to `3f3f6b9e8`)

- Killed mid-reset again (tap confirm, force-stop 1.2 s later, cold start):
  the setup progress opens by itself over the home, Linux base done, Git and
  SSH working ([after-21](after-21-2420-resumed-reset-shows-progress.png));
  log `linux.removeRuntime` then `linux.startSetup` in the new process. It
  ended Connected.
- A full Reset again: ends on This phone with "Installed · Linux base, Git
  and SSH, Python, Node.js and OpenCode" instead of "Could not check"
  ([after-22](after-22-2420-reset-done-installed-listed.png)).
- The emulator was stopped by its qemu PID (found by its port 5554).

## Not done, seen on the way

- "Stop setup" on the setup progress screen is red (same owner rule; not
  part of this job, the setup screen's own button).
- Running shows "running 1 h 12 min" for processes minutes old on the
  emulator (elapsed time from proot's `/proc/uptime`; not investigated).
- Project files: Back did nothing once on 2400 after opening it from the
  conversation's project chip (not reproduced).
- Running still lists five "Paseo" / two "server" rows (N1 rough note).
