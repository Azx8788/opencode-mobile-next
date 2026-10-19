# OpenCode 1 decommission — 2026-10-15

Owner decision: “Kill opencode one.” Scope is Tier 2 of the
[decommission plan](../../design/oc1-decommission-plan-2026-10-14.md).
This record concerns local source and qualification, not deployment or release.

## Upgrade behavior and stored data

The saved profile identity is reused so local drafts, selections and metadata
stay attached, including when an older OC2 alias was saved before the original
profile. Both in-app and Termux finishers retain that original identity through
recovery and connection. Legacy managed installations enter an automatic upgrade
at app startup. The original OpenCode 1 database is copied, never moved or deleted,
with its WAL and SHM companions before OpenCode 2 starts. A separate existing
OC2 history blocks the move instead of overwriting either history. The app
waits for OC2's history-import completion before treating the upgrade as done.
Interrupted or failed upgrades retain a retryable state and show a plain
explanation; technical information belongs under Details. The original database
and its sidecars remain on disk after a successful import as well.

The OC1 provider configuration is not promised to migrate into OC2. Provider
sign-in may be needed again; the original files are preserved. The owner's actual
phone has not been accessed or upgraded during this work.

Running AI Team jobs are checkpointed as interrupted. Their saved checkpoints
and work files remain preserved, but resuming an already-dispatched OC1 job
after migration is not guaranteed. Recovery observes the original recorded
session through OC2 and never resends its worker prompt. Missing or uncertain
session evidence leaves the job interrupted; never-dispatched work can use the
existing OC2 recovery path.

Remote OC1 servers are detected only to reject the connection, with:
“This server runs OpenCode 1, which this app no longer supports. Update it to
OpenCode 2.” The copyable install command is
`npm uninstall -g opencode-ai && npm install -g @opencode/cli@2.0.29`.

No physical phone, owner server, release key, public remote or release was
used. Native changes require a new release; this work is not a Dart patch.

## Capabilities removed with OC1

These remain unavailable on OC2 2.0.29 and their controls are capability gated:

- Conversation sharing/unsharing, archiving, server todo lists and deleting
  one message.
- Text and symbol search; language-server and formatter status; tool inventory
  and experimental capability inventory.
- Managed workspace inventory and switching, session steal, console
  organizations, and destructive worktree reset.
- MCP OAuth (including chat OAuth), persistent MCP configuration writes and
  confirmed chat-tool refresh. Runtime MCP add/remove/connect remains.
- Remote server upgrade, client diagnostics submission, provider runtime
  refresh and configured-provider fallback.
- Legacy question requests are replaced by OC2 forms.
- OC1 remote CLI attach; OC2 local CLI resume remains.
- OC1's qualified agent-card route. OC2 card registration remains unqualified
  and unavailable until its separate runtime qualification passes.
- OC1-native AI Team execution and guaranteed continuation of already-dispatched
  OC1 jobs. Checkpoints and files remain; recovery requires sufficient evidence
  from the original imported session, as described above.
- The previously published OC1 BYO bundle/install download. Computer setup
  offers the official pinned OC2 npm command; no unreleased bundle is advertised.
  The old helper-specific computer controls (systemd status/restart, logs,
  password and linger setup) are removed with that download.

Undo stage/clear/commit, provider OAuth, git initialization, worktree creation
and shell settings already have OC2 implementations. A fresh isolated 2.0.29
probe confirmed commit and OAuth start/status/cancel; see the
[sanitized wire evidence](../oc1-removal-core-2026-10-15/README.md).
Codex direct and Paseo retain their own capabilities and protocols.

## Final result

Net change from `5e3969ad6`: 3,015 files, +7,458 / -265,854 lines (lib, test,
tool, engine, contracts; the generated SDK package is gone).

Final candidate `003a17944`: full suite passed (1,423 test files, split run,
no failures, none excused); `flutter analyze` clean; `tool/qa/preflight.sh
5e3969ad6` OK (118 commits, 763 QA tool tests, 162 repo-scanning tests).
An earlier split run was discarded because the build server shared one
checkout between runs; the passing run used the per-run worktree fix.

On upgrade the owner's phone moves from OpenCode 1 to OpenCode 2 on first
launch, keeps the same profile and conversations (OC1 database copied, never
deleted), and may need provider sign-in again. Dispatched AI Team jobs show as
interrupted. A blocked move leaves the OC1 data untouched and says so plainly.

## Verification

- Analysis of the final app candidate `a7b106b35`: no issues
  (`build/oc1-decommission/analyze-final.log`, 6.3 seconds).
- Unsigned release APK: passed on the build server, including both migration
  identity fixes, pending-import capability guard and corrected remote upgrade
  command at `e4f0d88a2`.
  APK SHA-256:
  `86af913924e75dbcf52074b3169d7ddec80701180e0d1fc31f85ea3f05387779`.
  All six native hashes, source and ABI checks passed; no signing keys were used.
- QA Python tools: 763 tests, two existing skips at the final integration
  checkpoint (`build/oc1-decommission/qa-python-final.log`).
- Pure JVM checks: 56 passed, including the legacy cold-start data guard.

- Script hash regeneration: `WRITE_SCRIPT_HASHES=1` with pinned Flutter under
  `machine_lock test`, `termux_script_hashes_test.dart` and
  `builtin_linux_test.dart`: 26 passed at the installer checkpoint.
- Native source tests: see [native evidence](../oc1-retirement-native-2026-10-15.md).
- The upload-based `vps_test.sh` runner is used for Flutter qualification.
  `run_tests_split.sh` pushes a temporary Git ref, which conflicts with this
  job's “nothing pushed” boundary. No such push is performed. For the full suite,
  its existing `split_plan.py` and `run_plan.sh` run with zero local slots and
  two remote slots against an uploaded, committed checkout. The complete
  manifest includes nested goldens. Small tests aggregate under the existing
  exclusion rules; any aggregate failure is verified separately before it counts.
  Git history is supplied as a local bundle for repository ratchets; the shared
  build-server checkout is never changed.

The coordinator-provided APK builder is preserved byte-for-byte from batch
commit `b074ed9f4`; release builds now queue on the shared server flock. The
unsigned verification used an ignored helper containing only the prior unsigned
compilation path plus the same shared server lock; it did not use the release
signing path. See the native evidence for its source and input digests.

The additional Widgetbook coverage check reports four pre-existing gaps:
`LiveStylePickerScreen`, `LiveStylePreviewScreen`, `WidgetConfigureScreen` and
`WidgetSteerScreen`. All four screen sources, the scanner and its baseline are
unchanged from `5e3969ad6`; none had a catalog entry at that base. OC1-specific
catalog fixtures were updated to OC2, and no new coverage gap was introduced.
This additional check is not reported as passing.

The separate Widgetbook standard check also remains failed: 79 tests passed and
its final ratchet failed. A selected historical replay reproduced the chat and
phone-recovery layout findings. An explicitly adapted historical OC2 capability
fixture reproduced the candidate capability-list findings. No baseline allowance
was added; the existing capability scene's row-lines entry only followed its
rename. See the [comparison and provenance limits](widgetbook-comparison.md).

## First-launch move failure on the owner's phone (2026-10-16)

Upgrading from build 2326 to 2370, the first automatic move ran while the
restarted phone server was still starting and failed twice over (an alert, then
a page) with no reason, and the page was drawn without Material (yellow double
underlines, default pink button) because the page was a bare `KitScreen`.
Now: `ManagedMoveRunner` waits up to a minute for the phone, retries three times
(8 s, 20 s, 45 s) showing "Moving your conversations to OpenCode 2…", and only
then shows one failure page (`ManagedMoveView`, on the kit ground) with the
reason in words, Try again, and the technical text under Details. A separate
OpenCode 2 history is final and offers no retry. Tests:
`test/managed_move_test.dart`, `test/oc1_decommission_ui_test.dart`.
