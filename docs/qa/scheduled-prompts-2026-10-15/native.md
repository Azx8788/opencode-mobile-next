# Native scheduled prompt evidence — 2026-10-15

The initial native slice passed 22 JVM unit tests. Its source compile smoke passed
after adding the warm-notification `openAvailable` callback. These are bounded
local checks, not a full Android build, APK verification, or emulator proof.

## Commands actually run

The initial 22-test run and source compile ran sequentially in one lock:

```bash
OC_TEST_SLOTS=1 tool/qa/machine_lock.sh test -- python3 -c 'import subprocess; subprocess.run(["python3", "tool/qa/test_scheduled_prompt_native.py"], check=True); subprocess.run(["python3", "/tmp/compile_scheduled_android.py"], check=True)'
```

After the warm-notification callback change, only the affected source compile
was repeated:

```bash
OC_TEST_SLOTS=1 tool/qa/machine_lock.sh test -- python3 /tmp/compile_scheduled_android.py
```

The temporary compile helper is now preserved as
[`tool/qa/scheduled_prompt_native_compile.py`](../../../tool/qa/scheduled_prompt_native_compile.py).
Its only change on preservation is resolving the repository root from its own
location instead of the current directory. A future equivalent run is:

```bash
OC_TEST_SLOTS=1 tool/qa/machine_lock.sh test -- python3 tool/qa/test_scheduled_prompt_native.py
OC_TEST_SLOTS=1 tool/qa/machine_lock.sh test -- python3 tool/qa/scheduled_prompt_native_compile.py
```

## Observed results and scope

- [22-test observed output](native-unit-observed.txt): `OK (22 tests)`, exit 0.
- [Final compile observed output](native-compile-observed.txt): exit 0.

These output files are exact relevant stdout transcriptions from completed tool
responses; they were not captured by tee and do not claim a second execution.

The JVM harness uses Kotlin 2.3.20, JDK 17, JUnit 4.13.2, the cached JSON JVM
implementation, and the Android API 37 interface jar. Compiler heap is 256 MB
and test heap 128 MB. Tests cover occurrence identity, elapsed budget, weekday
and daylight-saving timing, clock rollback, interrupted history, recurrence
advance, preserved conversation destinations, revision edits and deletion,
competing-engine CAS, restart before index write, durable claims, tombstone
fences and rollback, durable-write failure, and overdue digest preservation.
Store tests execute the real store with an in-memory SharedPreferences interface.

The compile helper compiles every `ScheduledPrompt*.kt` production file against
real Android API 37, pinned Flutter embedding, and WorkManager 2.10.5 jars with
256 MB compiler heap. It substitutes only the pre-existing app boundaries
`BuiltinLinux`, `MainActivity`, `NativeStrings`, and generated `R`. Consequently
it does not validate the edited implementations in MainActivity/BuiltinLinux,
manifest merging, generated resources, dependency packaging, R8, or signing.
Those remain responsibilities of the full Android build and emulator check.

No Gradle process, emulator, phone, owner server, or signing action was used for
these native checks. No tests were repeated while preserving this evidence.

## Review follow-up at e5f603b4e

The persisted compile helper and JVM harness were run sequentially under one
`machine_lock.sh test` lease after the startup and early-occurrence corrections.
[Captured output](native-final-observed.txt) reports **26 tests passed** and
source compilation passed. Four added cases cover safe rearming after a clock
rollback while preserving uncertain/recorded claims and rejecting edited, due
or deleted targets. The same app-boundary limitations above still apply.

## Exact-alarm dispatch timing correction

An exact alarm's temporary power exemption lasts approximately ten seconds;
it does not establish a guarantee that ordinary WorkManager jobs start during
Doze. Ordinary jobs can remain deferred. See Android's
[AlarmManager reference](https://developer.android.com/reference/android/app/AlarmManager)
and [Doze restrictions](https://developer.android.com/training/monitoring-device-state/doze-standby).

The subsequent source correction marks immediate prompt work originating from
the actual alarm broadcast expedited on API 31+, with
`RUN_AS_NON_EXPEDITED_WORK_REQUEST` when quota is unavailable. Explicit alarm
provenance also selects the alarm's unique-work name, so an ordinary zero-delay
restore cannot occupy that name and suppress the expedited request. Durable
delayed work, restore/catch-up work, digest work, and pre-31 work remain ordinary;
the shared occurrence claim still prevents duplicate dispatch.

Expedited work is subject to quota and system load, and quota fallback can run
late. Android recommends it for short tasks finishing within a few minutes;
the eight-minute worker bound is an upper limit, not a promised runtime grant or
completion time. Pre-31 expedited compatibility requires a foreground-service
path this worker does not implement. See
[Android expedited-work guidance](https://developer.android.com/develop/background-work/background-tasks/persistent/getting-started/define-work).

One focused policy test covers API 30/31/current, actual versus restore origin,
positive delay, and digest exclusion. The coordinator reran both commands
sequentially under one machine lock: **27 tests passed**, followed by the
bounded source compile. [Observed output](native-expedited-observed.txt).
Replacement APK/emulator proof remains pending.

## Temporary phone-server admission follow-up

The private profile-scoped lease marker is committed before process launch,
retained across app process restart, invalidated by a known reboot and bounded
by elapsed time on the same boot. Five added JVM cases cover restart, wall-clock
changes, expiry, reboot, token-specific release and durable-write rejection.
The complete native harness now passes **32 tests**, followed by source
compilation under one machine lock. [Observed output](native-lease-observed.txt).
The existing compile-boundary limitations still apply.
