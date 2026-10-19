# Claude Code: Check this phone — 2026-10-15

## Scope and candidate

Base: `a734d355640449a6af099664e6a7d361211529f5`, branch
`codex/claude-code-phone-check`, app batch 1.4.0 plus fixes.
Implementation commits: `e96cf57a4` and `30ab43100` (final code candidate).

Finish line: Check this phone verifies the installed Claude Code/Paseo pair,
shows resumable download progress, explains changed requirements, and offers
actionable recovery or verified retained-version rollback.

Non-goal: changing accounts or claiming an authenticated conversation without
a Claude account. The owner's phone and its servers are excluded from this
investigation. No push, signing, release, or deployment is authorized.

## Evidence before the fix

Owner-reported trigger: NX721J, app 1.4.0+2326, in-app Ubuntu and a running
Paseo supervisor/daemon. New conversation showed "Phone check needed" after
prior Claude use. Check silently downloaded Claude 2.1.294 for roughly two
minutes, then passed Installed/Version/Connection and failed Ready with "The
agent started but didn't answer." A second check failed the same way. These are
reported observations, not measurements from owner-device access.

The original `BuiltinPhoneAgents.selfTest` calls install, checks the executable
version and shared workspace, starts the helper, then requires
`transport.serverVersion == PaseoPhoneScripts.version`. The final Ready step
does **not** send a Claude prompt. `AgentHostFailure.hello` nevertheless displays
“The agent started but didn't answer.” A mismatched helper handshake is therefore
reported as an agent response failure.

Native `PhoneAgentHost.start` immediately returns when its existing child is
alive. Updating files on disk does not replace that child. Setup already includes
Paseo as a checked dependency; the missing part is activation of the installed
helper in the running process. This supports the old-daemon hypothesis but does
not establish the owner's actual daemon version, which was not inspected.

The Claude installer stores its download inside `<version>.new`, removes that
directory before each attempt and in its EXIT trap. Consequently a new attempt
loses the partial file even though curl uses resume. The downloader's internal
curl retry also risks rewinding to the offset at the beginning of that invocation.

Failing-first test, pinned Flutter 3.47.1 under `machine_lock`, concurrency 1:

```text
flutter test --no-pub --concurrency=1 test/phone_agents_host_test.dart
  --plain-name 'old Paseo hello explains helper update instead of agent silence'
Expected: 'helperVersion'
Actual:   'hello'
00:00 +0 -1: Some tests failed.
```

An isolated interrupted-download fixture also reproduces the loss directly:

```text
baseline: exit=18 partial_files_retained=0
fixed:    exit=18 partial_files_retained=1
```

See [runtime-evidence.md](runtime-evidence.md) for checksum-verified Claude
2.1.294, pinned Node 24.21.0, and real Paseo 0.9.2/0.11.2 measurements. Both
helpers complete hello and deliver an explicit missing-sign-in result. Thus a
general incompatibility between the new CLI and old daemon is **not** reproduced.
The app's exact-version rejection plus retained running process is the reproduced
failure mechanism. Its error text incorrectly attributes this to Claude silence.
The old helper also supports the provider-subagent inventory used by safe update
admission. The exact `claude auth status --json` arguments are accepted.

## Changes

- Check installs/checks the pinned dependency chain, including Node and Paseo.
  Native start verifies the replacement executable, compares the version of its
  owned running helper, and replaces it when needed. A bad replacement does not
  stop a working helper. Failed replacement startup reports stopped truthfully.
- Before payload mutation, native ownership checks reject another profile or
  other private process. The authenticated Paseo inventory covers all parent
  sessions, pending permissions, and provider subagents. Unknown/busy evidence
  refuses the update. The inventory remains subscribed through the operation;
  new local payload use is fenced until the check ends. Background row/auth
  refreshes drain before the check and remain fenced through restart, so progress
  notifications cannot create a private auth child that rejects its own update.
- Ready distinguishes helper-version mismatch, timeout, and explicit signed-out
  Claude status. The helper handshake has a 60-second elapsed deadline; Claude's
  cold auth probe has 60 seconds inside a 65-second bridge/controller budget.
  These are bounded installation/connection/auth checks, not a model completion.
- Download progress carries actual bytes and the known artifact size through the
  existing setup engine. A checksum/architecture/version-keyed `.downloads`
  cache survives interrupted extraction and retries. Each retry resumes from
  the newest offset. Range refusal preserves partial bytes and fails instead of
  silently starting over. Transient HTTP/network retries remain supported.
  Successful activation removes the cached artifact; agent removal covers the
  cache together with the payload.
- Matching persisted proof and an actually matching installed executable keep
  qualification. A required agent/helper pin change or changed installation is
  explained in the picker. Signed-out status retains installation proof so
  signing in does not itself require another download.
- A retained official Claude 2.1.283 artifact is offered only after checksum,
  marker, architecture and executable-version verification. Explicit rollback
  rebuilds the authored launcher, preserves account/chat data and both versions,
  restarts the owned helper, and checks again. Its selection persists instead of
  the next check silently reinstalling 2.1.294.

## Owner phone after installing a fixed build

The native restart/ownership bridge changed, so these steps require a new
Android build; a Dart-only patch is insufficient. No APK was built or signed in
this task.

1. Open **New conversation → Claude Code**. If the previous proof still matches
   the required and installed versions, it remains available. If this app changed
   a required version, the picker explains that change before another check.
2. Tap **Check this phone**. An active conversation, pending permission, provider
   subagent or another profile's helper blocks mutation; finish that work and retry.
3. Installed checks the dependency chain. Missing/outdated components download;
   Claude shows downloaded size, total size and a progress bar. A retained partial
   download resumes. Already matching components are verified and skipped.
4. Version verifies the active executable and shared project access. Connection
   starts the helper, replacing an owned idle old daemon when its version differs.
5. Ready verifies the helper's exact version and Claude's structured sign-in
   status. With valid sign-in, the sheet advances to the existing ready/selection
   flow. With missing sign-in, tap **Sign in to Claude Code** and complete the
   existing private sign-in flow; chats and credentials are not copied or reset.
6. A remaining helper mismatch offers **Update Paseo and try again**; timeout or
   another recoverable failure offers **Try again**. Details shows bounded authored
   facts, including expected/observed helper versions, without raw process output.
7. If a failed check found the verified retained 2.1.283 payload, **Use the previous
   version** switches to it and repeats the check. No download or uninstall is
   needed. This action is absent when no safe retained version is available.

## Accessibility, privacy and persistence

The UI uses existing kit task marks, progress, actions and Details fold. English
and Arabic copy are supplied; byte/version labels use bidi isolation. Other
locales inherit English. Existing profile-scoped gate storage gains an optional
`activeVersion` field; old records remain readable and profile deletion uses the
same existing key sweep. No provider output, credentials or account reset is
added to diagnostics. Version strings are validated before display.

The update guard is local-client fencing plus authenticated inventory and native
ownership evidence. It does not claim a distributed transaction against an
independent external client using the same profile during the update.

## Verification

Local Flutter tests used pinned Flutter 3.47.1 with `machine_lock`, one
process and concurrency 1. After the coordinator's memory notice, remaining
app tests use `tool/qa/vps_test.sh` on the build server with concurrency 2.
Widgetbook tests and the full analyzer also run on the build server. Only light
formatting, localization generation and bookkeeping remain local.

- Failing-first old helper classification regression: reproduced before fix.
- Installer/native/auth/download/removal/downstream installer group: **140
  passed, 1 skipped**. The skip is the opt-in unrelated real OpenCode download.
- Initial UI group: **45 passed**.
- Controller/idle/removal/UI integration group: **237 passed**; host fixture
  compile issue corrected and that file rerun separately.
- Host/scripts/recovery UI/catalog coverage group: **119 passed**.
- Final host/recovery UI/golden generation group: **48 passed**.
- Golden comparison: **8 passed** (four recovery states and four existing Settings
  states). English and Arabic screenshots inspected; no text overflow or missing
  Arabic glyphs in the final fixtures.
- Widgetbook coverage check: **blocked by four inherited uncatalogued screens**:
  `LiveStylePickerScreen`, `LiveStylePreviewScreen`, `WidgetConfigureScreen`, and
  `WidgetSteerScreen`. Their source files are byte-identical to the base and all
  four were already absent from the original baseline. This change catalogues
  `AgentSheet` in four real recovery states and shrinks that baseline by one;
  no baseline expansion or unrelated screen changes were made.
- Widgetbook screen standard (before final glossary wording): **84 passed,
  1 aggregate ratchet failed**. All four
  new phone-check cases have no findings across the standard's English, Arabic,
  dark and 2x-text passes. The aggregate reports 16 findings in unchanged chat and
  phone-server screens (10 `cutoff` findings in chat; `row-lines`,
  `first-view-items` and `cutoff` in each of two phone-server cases). Their catalog
  fixtures and screen sources were not changed here. The standard baseline was
  not relaxed. A base-only runtime rerun of this separate gate was not performed.
- Final committed controller/host/recovery UI group: **185 passed**, including
  the auth-refresh/restart race regression.
- Final full `flutter analyze --no-pub` on `30ab43100`: **clean**, no issues
  (129.1 seconds).
- Initial preflight caught the controller file budget, glossary wording/metadata,
  and new golden harness conventions. Fixed these without growing any ratchet
  baseline. Final glossary/harness/golden generation rerun: **33 passed**;
  controller, host, recovery UI and file-size regressions also passed after the
  private-method move.
- Final preflight on `30ab43100`: **passed**. Commit/format and localization
  checks passed; QA tools: **809 run, 2 skipped**; repository scanners plus
  four final Android golden comparisons: **165 passed**. The comparison run did
  not regenerate images. The four renamed images were inspected; only the
  English helper action changed pixels after the earlier review.

Key repeat commands (build-server target comes only from private local config):

```sh
OC_VPS_JOBS=2 tool/qa/vps_test.sh test/phone_agents_controller_test.dart \
  test/phone_agents_host_test.dart test/agents_phone_check_ui_test.dart
OC_VPS_JOBS=2 tool/qa/vps_test.sh test/phone_agent_host_native_test.dart \
  test/phone_agent_auth_native_test.dart test/phone_agent_scripts_test.dart \
  test/setup_scripts_test.dart test/agent_removal_scripts_test.dart \
  test/claude_install_script_test.dart test/opencode_native_install_test.dart
OC_VPS_JOBS=2 tool/qa/vps_test.sh test/goldens/agents_phone_check_golden_test.dart \
  test/goldens/agents_ui_golden_test.dart -- --name 'phone check|agents_settings_check'
# On the build server, in the synced worktree:
flutter analyze
(cd widgetbook && dart run tool/coverage_check.dart)
(cd widgetbook && flutter test --no-pub --concurrency=2 test/standard_check_test.dart)
# Preflight's Flutter test invocation is routed through vps_test.sh by a local
# temporary PATH adapter; gen-l10n and bookkeeping stay local.
# The final adapter also appends the four new goldens (without --update-goldens).
tool/qa/preflight.sh a734d355640449a6af099664e6a7d361211529f5
```

Reviewable screenshots: [download](../../../test/goldens/agents_phone_check_download_light.png),
[sign in](../../../test/goldens/agents_phone_check_signin_light.png),
[helper update](../../../test/goldens/agents_phone_check_helper_light.png), and
[Arabic rollback](../../../test/goldens/agents_phone_check_rollback_ar_light.png).

The official remote runner excludes `.git`, so the golden harness's git-history
checks do not run remotely. Local readback additionally confirmed its baseline
is unchanged from the base and no `failures/` image is tracked. No rule or
baseline was relaxed.

Local detailed logs are in `build/ccphone-*.log` (ignored). No owner phone access,
emulator, APK, signed-in Claude success, signing, push, release or deployment is
claimed. The complete repository Flutter suite is not part of this focused slice
gate; it remains a batch integration gate.
