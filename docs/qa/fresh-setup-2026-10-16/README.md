# Fresh "Set up on this phone": stops at Git and SSH (P0)

Branch `fix/fresh-setup-restart`, from `a4aac9f4b` (build 2370 evidence:
[real-life E1](../real-life-E1-2026-10-16/README.md) rows A4 and A11).
Finish line: a fresh setup on a 4 GB emulator finishes in one go, with no
Continue setup and no force stop. Non-goals: setup speed work, Termux setup,
the copy of other setup screens.

## What people saw

On a wiped emulator, build 2370 stopped at **Git and SSH** with "Setup
stopped before it finished" or "The server on this phone couldn't restart
safely … tap Force stop". Continue setup failed again; only a force stop got
it further, and Python stopped once more. About 35 minutes in all. Another
agent saw the same on `emulator-5560` with build 2390: Git and SSH killed
after about 60 s, three times out of three (its notes:
`docs/qa/claude-phone-auth-2026-10-16/README.md` in the batch worktree).

## Root cause

**The installer's own ownership check killed the install.** While a setup
script runs, `BuiltinLinux.monitorInstallerOwnership` checks ten times a
second that every process of the app's Linux user belongs to the installer, a
tracked app process, or Android's app process list. Any exception from that
check counted as "an unknown writer" and the monitor sent SIGTERM to the
whole install (`drainInstaller`).

apt and dpkg start and end hundreds of short processes. The check lists
`/proc`, then reads each process's `stat`. If a process exits in between,
the read fails with **ESRCH** (the kernel already released the task).
`kernelIdentity` accepted only `FileNotFoundException`, so the
`IOException` escaped and the monitor stopped the install.

- Proven on build 2380 (2370 plus a log line with the exception's classes,
  never its message): `installer ownership check failed: IOException <-
  ErrnoException ESRCH`, then `setup component failed`, at 70 s into Git and
  SSH ([log](root-cause-2380-logcat.txt)).
- Why "about 60–70 s": that is when apt finishes downloading and starts
  unpacking and configuring, the busiest stretch of process churn. It is a
  race, not a fixed timer: on 2370 the first stop came at 71 s and the stop
  after Continue at 24 s, during the silent `dpkg --configure -a` repair
  ([log](before-2370-logcat.txt)). No lease, admission window or service
  deadline was involved; the 10 s installer admission window only delays
  inventory reads while an install runs.
- Two outcomes from the same kill: PRoot exits 0 when its guest is
  signalled, so the step usually ended as "could not finish" (shown as
  "Setup stopped before it finished"). When the failure carried the fixed
  `ownershipUnknown` message (for example an orphan briefly a zombie with an
  empty environment, or a parent that vanished between reads), it became
  `runtime_ownership_unknown`, the "couldn't restart safely" copy. This
  second path is inferred from source and the A4 Details
  (`terminated with signal` then `runtime_ownership_unknown`); it was not
  reproduced on its own.
- **"Stalls for minutes"**: no step hung. The A4 screens at 6–8 minutes show a
  job that had already stopped ("Setup didn't finish", Continue setup).

### Found while proving the retry: package repair could not repair

Sending SIGTERM to Git and SSH on build 2382 interrupted the **perl-base**
upgrade (0.6 unpacking over the base image's 0.4). dpkg records the old
version; the repair prelude asked apt for exactly that version, which the
archive no longer carries ("Can't find a source to download version
'5.38.2-3.2ubuntu0.4'"). Every retry and every Continue then failed with
"Some Linux packages need repair" ([log](found-perl-base-repair.txt),
[screen](found-2382-perl-base-repair-failed.png)). Any interruption at that
moment of a first setup would have left the phone stuck.

### Who polled Termux every minute

The setup start screen (`phone_setup_start_screen.dart`) listens to the
Termux setup engine as well as the in-app one, so a "Continue in Termux" job
can show. A watched engine with no job reads its host every 60 s. On a phone
without Termux each read failed with `permission_denied` and logged
"Termux RUN_COMMAND permission is required" plus a stack, for as long as the
screen stayed open. Termux was never used for in-app setup.

## Fix (4 commits)

1. `e958cf780` native: `kernelIdentity`/`processUid` treat ESRCH/ENOENT read
   failures as a gone process, like the missing entry they already accepted
   (`NativeProcRace.processGone`). The monitor stops an install only after
   five consecutive failed checks (~0.5 s); drain plans settle over four
   reads. A process that stays is still caught, so the check is not weakened.
   An interrupted script step (the monitor's stop, or SIGTERM/SIGKILL) runs
   again by itself, up to 3 runs (`SetupStepRetry`); the row's stage reads
   "Interrupted. Trying again" (English and Arabic) and Details log
   `==> Interrupted. Trying again (2/3)`. Failures log their exception
   classes and errno, never messages.
2. `5ea20e6bd` Dart: a Termux read that fails with `permission_denied` or
   `service_unavailable` and has no job to follow ends idle polling until a
   page starts watching again or a job starts.
3. `889a2e80c` native: PRoot's own "terminated with signal" line is kept for
   a step that never reported its result, so the retry recognises it and,
   if all runs fail, the row says "Setup stopped before it finished".
4. `49f80fd70` scripts: when the exact-version reinstall fails, the same
   validated packages are reinstalled at the version apt offers, still with
   `--no-remove`. The six `aiteamVerbScript` byte snapshots embed this
   prelude and were refreshed.

Messages stay plain with Details: no new raw text reaches the person. The
force-stop copy is unchanged and now only appears for an ownership failure
that persists, where a force stop really is the only way out.

## Timings (emulator Pixel_6, Android 14 image, 4 GB, wiped)

Seconds per step, from the runner's own clock (`OCTRACE setup.component`).

| Build | Run | Linux | Git and SSH | Python | Node.js | OpenCode | Start | Total | Result |
|---|---|---|---|---|---|---|---|---|---|
| 2370 | wiped | 12.2 | 70.9 stopped | – | – | – | – | 83 | Setup stopped |
| 2370 | Continue | – | 24.4 stopped | – | – | – | – | 24 | Setup stopped again |
| 2380 | fresh install | 9.4 | 70.0 stopped | – | – | – | – | 79 | ESRCH logged |
| 2381 | wiped 1* | 19.9 | 171.4 | 75.8 | 49.8 | 44.8 | 4.6 | 366 | done |
| 2381 | wiped 2* | 19.9 | 151.5 | 73.3 | 51.9 | 50.6 | 4.6 | 352 | done |
| **2383** | **wiped 1** | 14.8 | 113.1 | 58.6 | 31.1 | 27.9 | 3.6 | **249** | done |
| **2383** | **wiped 2** | 12.0 | 102.1 | 53.4 | 30.7 | 29.1 | 3.9 | **231** | done |
| **2383** | **wiped 3** | 15.7 | 122.7 | 55.8 | 33.6 | 26.8 | 3.3 | **258** | done |
| 2383 | 2 × SIGTERM injected | 10.5 | 154.2 | 71.0 | 35.6 | 30.9 | 3.6 | 306 | done, no Continue |

\* Another agent's 3 GB emulator ran on the same PC during these two runs.

Before: never finished unattended; A4 reported about 35 minutes with a force
stop and two Continues. After: about 4 minutes, in one go, on all five wiped
runs. "Termux RUN_COMMAND" log lines during setup: one a minute before, 0
after (run [1](after-2383-p1.txt), [2](after-2383-p2.txt), [3](after-2383-p3.txt)).

### Fault injection and repair

- 2383, fresh install, adb root used only to send SIGTERM to the installer's
  guest shell during Git and SSH and again during Python: both steps logged
  `interrupted; running it again (2 of 3)` and the job finished with no
  Continue ([record](after-2383-injected-sigterm.txt)). The "Interrupted.
  Trying again" stage is on screen only until the repair's own stage
  replaces it (under 2 s here); the Details log keeps the line.
- The 2382 phone stuck on perl-base, updated in place to 2383, then one
  Continue setup: repair fell back to perl-base 0.6 and setup finished
  ([record](found-perl-base-repair.txt), [screen](after-2383-repair-continued.png)).

## Screens (one per image)

- [Before: 2370 stopped at Git and SSH](before-2370-git-ssh-stopped.png)
- [2383: Git and SSH working](after-2383-run1-git-ssh-working.png)
- [2383: Git and SSH done, Python running](after-2383-run1-git-ssh-done.png)
- [2383 wiped run 1 ready](after-2383-run1-ready.png),
  [run 2](after-2383-run2-ready.png), [run 3](after-2383-run3-ready.png)
- [2383 after two injected SIGTERMs, ready](after-2383-injected-sigterm-ready.png)
- [First project created after setup (2381)](after-2381-first-project.png)

## Checks

- Kotlin: `./gradlew :app:testReleaseUnitTest --no-daemon` after pinned
  `flutter build apk --release --config-only`, machine build lock: 543 tests,
  0 failures, 38 classes; new `NativeProcRaceTest` (7) and
  `SetupStepRetryTest` (6) ([record](kotlin-unit-tests.txt)).
- Dart, pinned Flutter, `--concurrency=1`: `setup_engine_test`,
  `setup_termux_host_test` (new: one Termux read per watch; fails without the
  fix with a read every few ms), `setup_termux_resume_test`,
  `setup_termux_existing_install_test`, `setup_inventory_test`,
  `phone_setup_start_screen_test`, `setup_ui_messages_test`,
  `setup_apt_repair_test` (new: reinstall at the offered version; fails
  without the fix), `termux_script_hashes_test`, `opencode_native_install_test`,
  `claude_install_script_test`, `phone_agent_setup_engine_test`,
  `setup_scripts_test`: all passed. `flutter analyze` on `lib/builtin/setup`
  and the changed tests: no issues. Full suite: not run.
- APKs 2380–2383 built on the build server, signed with the local release
  key `1DE5BF08…`. Not installed on any phone; not pushed or released.

## Limits

- The AVD named Pixel_6 runs an Android 14 (API 34) image, not API 35 as the
  E1 record says. Memory 4096 MB as asked.
- The `runtime_ownership_unknown` variant is covered by the same tolerance
  and retry but was not reproduced on its own.
- The 10 s installer admission window still makes inventory reads wait
  while an install runs; screens treat that as "unknown", not "absent"
  (unchanged, [inventory record](../release-device-pass-2026-10-15/root-cause-inventory.md)).
- Accessibility: no new controls; the retry text is a stage label in the
  existing row and live region, in English and Arabic.
- Security: the ownership check still fails closed for a process that stays;
  only reads that prove a process is gone (ESRCH/ENOENT) are accepted, as
  missing entries already were. Logs carry exception classes and errno only.
  No stored format, credential or permission change.
