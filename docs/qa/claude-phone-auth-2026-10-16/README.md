# Claude Code on the phone: one sign-in for the app and the Terminal (2026-10-16)

Branch `fix/claude-phone-auth-env` (worktree `oc_app-ccauth`), based on
`24601fc50`. The commits are local only: nothing was pushed, signed for release or
published.

**Finish line:** if Claude Code is signed in anywhere on the phone (the app's
sign-in or the Terminal), the agent picker shows it as signed in. A sign-in
or sign-out in one place is seen in the other.

**Non-goal:** this branch does not rework the sign-in terminal's
foreground-service admission. That failure was not reproduced (see below). The
branch only makes the failure name the step that broke.

## What the owner saw (NX721J, build 2370)

- In the Terminal, `su oc -c '/home/oc/.local/bin/claude auth status'` printed
  `"loggedIn": true`. The owner had signed in there with
  `su oc -c 'PATH=/home/oc/.local/bin:$PATH claude'`, which runs with
  `HOME=/home/oc`. `/root/.claude/.credentials.json` does not exist.
- The agent picker still showed Claude Code as **Sign in needed**, also after
  restarting the app.
- **Sign in with Claude Code** failed at once, again on every retry. It showed
  "The shell didn't start", with Details "Could not keep sign-in running. Try
  again."

## Root cause 1: the app and the Terminal use different Claude folders (proven)

Every Claude process the app starts gets a per-profile home:

| Launch | Code | uid | HOME | CLAUDE_CONFIG_DIR |
| --- | --- | --- | --- | --- |
| Paseo helper (daemon) | `PhoneAgentHost.kt` → `BuiltinLinux.startAgentProcess` | 1000 (`--change-id=1000:1000`) | `/home/oc/.oc-profiles/<id>` | `/home/oc/.oc-profiles/<id>/claude` (also `CLAUDE_HOME`) |
| Sign-in check (`agentAuthProbe`, picker state) | `PhoneAgentAuthRuntime` → `startAgentProcess`; script `AgentPhoneScripts.authProbe`, which refuses any HOME outside `.oc-profiles/<id>` | 1000 | same | same |
| Private sign-in status (`PhoneAgentSignIn.inspect`) | `startSignInProcess` → `startPrivateAgentProcess` | 1000 | same | same |
| Sign-in terminal (PTY) | `LocalTerminal.start` → `BuiltinLinux.agentSignInCommand` | 1000 | same | same |
| Terminal shell | `prootCommand(["/bin/bash","-l"])` | 0 (`--root-id`) | `/root` | unset |
| `su oc -c claude` in that shell | util-linux `su` | 1000 | `/home/oc` | unset, so Claude uses `/home/oc/.claude` |
| Terminal `claude` launcher (int/ui-batch, `agent_scripts.dart`) | `su -l oc … env CLAUDE_CONFIG_DIR=/home/oc/claude` | 1000 | `/home/oc` | `/home/oc/claude`, a third place |

The uid is already the same everywhere: 1000, `oc`. Only the folder differs.
When `CLAUDE_CONFIG_DIR` is set, Claude Code keeps its sign-in in
`$CLAUDE_CONFIG_DIR/.credentials.json`. When it is not set, the sign-in goes in
`~/.claude/.credentials.json`. So the owner's Terminal sign-in landed in
`/home/oc/.claude`, while every app launch read
`/home/oc/.oc-profiles/<id>/claude`. That folder had no sign-in, so the check
answered `signedOut` and the picker showed Sign in needed.

Reproduced with a real Claude Code binary (2.1.296 on the PC; credential
lookup has not changed across 2.1.x) and a dummy sign-in file. Script:
[e2e-simulation.sh](e2e-simulation.sh). Output:
[e2e-simulation.txt](e2e-simulation.txt).

```text
terminal: loggedIn=True  configDirectory=/home/oc/.claude
app (every app launch before the fix): loggedIn=False configDirectory=/home/oc/.oc-profiles/p1/claude
```

### Root cause 1b, latent: the private sign-in check pinned one Claude build

`PhoneAgentSignIn.inspect` accepted only `claude --version` ==
`2.1.283 (Claude Code)`. After the phone check moves the launcher to the
2.1.294 pin, every inspection threw `unavailable`. The row then reads
`failed`, and the picker shows **Sign in needed** even when the user is
signed in. The owner's launcher still points at 2.1.283, so this did not cause
today's report, but it would have shown the same symptom after the update.

## Fix

- New `PhoneAgentClaudeHome` (Kotlin, plain JVM file APIs). Before any app
  launch of Claude for profile `<id>` (`agentSignInCommand` and
  `startPrivateAgentProcess`, which covers the helper, the sign-in check and
  the private status check), the app makes `/home/oc/.claude` a link to
  `.oc-profiles/<id>/claude`. The link is relative, so it resolves the same
  inside and outside PRoot. From then on, the app, `su oc -c claude` and any
  launcher all read and write the same files.
- Migration, done once and nothing deleted:
  - If the profile has no sign-in, the newest `.credentials.json` found in
    `/home/oc/.claude`, `/home/oc/claude` (the launcher branch's folder) or
    `/root/.claude` is copied in, with mode 0600. A sign-in the profile already
    has is never replaced.
  - The other files of an existing `/home/oc/.claude` (settings, projects,
    chat history) are copied into the profile's folder. Files already there are
    kept, and links are not followed.
  - The old folder itself is kept, renamed `/home/oc/.claude.before-app`.
  - A link the person made somewhere else is left alone. A link to another
    phone profile is moved to the current one.
  - A second run changes nothing.
- When a profile is deleted (`deleteAgentHome`), its link is removed with it,
  so `~/.claude` never points at an erased folder. The profile's credentials
  still sit inside `.oc-profiles/<id>`, so the existing deletion sweep still
  erases them.
- Best effort: a failure is logged as an exception class name only, never a
  path or file content. It never blocks the launch, and the profile's own
  folder works as before.
- `PhoneAgentSignIn` accepts every tested build (`2.1.283`, `2.1.294`), the
  same set as `claudeCodeTestedVersions`. A Dart test keeps the two lists equal.
- After the fix, from the same simulation:

```text
prepare: [CREDENTIALS_ADOPTED, FILES_ADOPTED, LINKED]
app: loggedIn=True configDirectory=/home/oc/.oc-profiles/p1/claude
terminal: loggedIn=True configDirectory=/home/oc/.claude
sign-out with the app's environment → app: loggedIn=False, terminal: loggedIn=False
second prepare: []
```

**Launcher (coordinator's int/ui-batch merge):** `_terminalLauncher` must
use `CLAUDE_CONFIG_DIR=/home/oc/.claude` instead of `/home/oc/claude`.
Leaving the variable out also works, since `su -l` sets `HOME=/home/oc`.
Either way the launcher lands on the shared link. `/home/oc/claude` is
still adopted if a build with the old launcher already wrote a sign-in there.

## Sign-in terminal failure ("Could not keep sign-in running"): not reproduced

That text means `AgentSignInForegroundFailure.unavailable`. Before this branch,
the code had at least nine sources that all produced the same words:

- Android refused or never acknowledged the foreground-service admission
  (`enable` returned inactive within 2 s, or failed with
  `permission_in_progress` or `foreground_service_failed`);
- a cleanup failure;
- the native PTY start threw;
- the lease was lost after the start.

The native start runs the same `prootCommand` path as the Terminal, which works
on the owner's phone. That makes the service admission the likelier cause.
But the owner's phone writes no logs (`persist.log.tag=S`), so this cannot be
confirmed from here.

Reproduction attempt: AVD `OC_API35` on `emulator-5560`, APK 2390 (base
`24601fc50`, signed with `1DE5BF08`), fresh install. Built-in Linux 24.04.5
installed. The next step, **Git and SSH**, failed 3 times out of 3 after about
60 s. Details showed `proot info: vpid 1: terminated with signal 15`, and the
log showed `setup component failed` (`SetupRunner.runScript` /
`finishInstaller`). Keeping the screen on did not change it. Without that step,
Node, Paseo and Claude Code cannot be installed, so the sign-in terminal
could not be reached on the emulator. This setup failure is a separate
emulator bug and is not addressed here.

What changed so the next attempt names its cause: the Details now end with a
fixed code, never platform or agent text.

- The step: `sign-in-reserve`, `sign-in-admission`, `sign-in-start` (native PTY
  start) or `sign-in-lost`.
- For admission, the lease's own code: `service-not-started`,
  `service-receipt`, `service-permission_in_progress`,
  `service-foreground_service_failed`, `service-platform`, `service-cleanup` or
  `service-error`.
- Example: `Could not keep sign-in running. Try again.` followed by
  `Code: sign-in-admission/service-not-started`.

The test "native sign-in errors never expose platform or CLI text" still holds.

## Owner steps after installing a build with this branch

The native code changed, so this needs a new APK; a Shorebird patch is not
enough.

1. Install the build and open the app. Nothing else is needed. The next time
   the app checks Claude Code (the picker, a new conversation or the phone
   check), it adopts the Terminal sign-in. Claude Code then shows ready.
2. Nothing is deleted. The Terminal's old folder stays as
   `/home/oc/.claude.before-app`. From now on, `claude` in the Terminal and the
   app share one sign-in. Signing out in one signs out the other.
3. Only if **Sign in with Claude Code** is still needed and fails: open
   Details and send the `Code:` line. It names the exact step.

## Tests (each fails on the base code)

- `android/app/src/test/.../PhoneAgentClaudeHomeTest.kt`, 8 tests: Terminal
  sign-in adopted and kept; later sign-ins in either place are one file; the
  profile's own sign-in is never replaced; the launcher folder and `/root`
  folder are adopted newest first; idempotent; another profile's link moves
  while the person's own link stays; deletion removes only its own link; an
  unsafe profile id is refused. The class did not exist on base. Gradle
  `:app:testReleaseUnitTest --tests '*PhoneAgentClaudeHomeTest*'`
  (`--no-daemon`, under `machine_lock build`): **8 passed** (BUILD SUCCESSFUL,
  4m51s). This also compiled the whole release Kotlin source set.
- `test/claude_phone_auth_test.dart`, 2 tests: the three launch and delete
  points call the shared folder, and the native version set equals
  `claudeCodeTestedVersions`. On base sources: **2 failed**
  (`shareClaudeSignIn` missing, no version set). Fixed: **2 passed**.
- `test/background_signin_foreground_test.dart`, new test for the fixed admission
  codes; `test/local_terminal_signin_foreground_test.dart`, 3 updated
  expectations naming the step. On base `lib/`: **4 failed**. Fixed, together
  with `agent_sign_in_foreground_test.dart`, `agent_sign_in_terminal_test.dart`
  and `claude_phone_auth_test.dart`: **47 passed**.
- Simulation with the real Claude binary: output above.
- Not usable: `tool/qa/phone_agent_sign_in_harness.sh` fails to compile on
  base, the same as with the fix (its fake `BuiltinLinux` lacks
  `startSignInProcess`, 3 identical errors).

## Privacy and security

No credential content is read, logged or shown. Only the file is copied, from
one place the person owns inside the app's Ubuntu to another. The copy is
0600 and the profile folder 0700. Logs carry only step names or an exception
class. The new Details codes come from a fixed list, and a platform error code
is shown only if it matches `^[a-z_]{1,40}$`. Profile deletion still erases the
profile's sign-in and now also removes the link to it. The renamed
`.claude.before-app` folder is the person's own earlier Terminal data and is
left in place, the same as before this change.
