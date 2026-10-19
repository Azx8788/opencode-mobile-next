# Installed-tools inventory: P2 / P3

Scope: `codex/setup-inventory`, starting at `5e3969ad6`. Read
[pass 3](pass3-2325.md) and [pass 4](pass4-1.4.0.md) before investigation.
Finish line: This phone, AI Team intro and Add tools agree on installed tools
and refresh after setup, repair, runtime switch or removal. Native installer
reliability, AI Team permission qualification and release delivery are non-goals.
The supplied worktree was clean; it has no `HANDOFF.md`.

## Root cause and authority

The common authority already existed: `SetupEngine.installedOptional()` uses
registry check scripts against the host's current rootfs, plus app-side checks
for voice. Native `status().installed` identifies whether the Linux base exists.
The saved `setup.json` is a job journal, not a complete installed-tools list:
a runtime switch's selection must not replace Python or AI Team inventory.
Removal presence probes serve a different purpose: even an outdated/partial
installation must block removal of its dependencies.

The bug is false absence after a failed read, with independent screen snapshots:

- `BuiltinLinux.kt` admits checks through one installer slot, with a 10-second
  admission window. A competing operation can cause a busy exception. A timed-out
  or failed output reader returns exit code -1 and empty output.
- `ChannelSetupEngine.installedOptional()` caught a native exception and returned
  only app-side components, usually an empty set. `_checkUntraced()` also parsed
  incomplete/failed output without requiring every component's end marker.
- This phone launched installed inventory and multi-component removal probes
  concurrently. It then displayed the required base tools plus this false empty
  optional set. The intro also interpreted failure as not installed and offered
  the approximately 125 MB download. Add tools could run later and succeed.
- Setup completion already emitted `setupToolsChanged`, including failed jobs;
  it was not simply missing a setup listener. Removal paths did not all emit
  it, Add tools only held its opening future, and the intro lacked a late-read
  guard.

This is a source-confirmed, deterministically reproduced failure mechanism that
explains the reports. The original device passes did not record the exact native
probe failure, so they do not prove which competing operation caused each case.

## Fix

- Keep registry/rootfs checks as authority; share overlapping inventory reads
  inside each host's existing engine. Completed reads are not cached, so opening
  a screen also discovers external changes. If a mutation completes during a
  read, discard its result and obtain the current inventory.
- Reject failed or incomplete probes as unknown. Keep previously known tools in
  UI; initial unknown states avoid absence/download claims and offer retry after
  failure. No new server API or native bridge method is introduced.
- Read This phone inventory before its removal probes. Guard late screen reads.
- Make Add tools reload through the same engine after changes. Its current
  inventory also takes precedence over stale app-component offer metadata.
- Notify after component, app-side and whole-runtime removal attempts, including
  partial failures. Admission-blocked component removal does not notify.
- Reuse existing localized kit components/copy. No stored format, credential,
  capability gate or runtime-selection changes.

## Verification

- Failing-first engine regression: original engine files from `5e3969ad6` with
  `test/setup_inventory_test.dart`, under `machine_lock.sh test`, pinned Flutter,
  concurrency 1: **3 passed, 7 failed**. Working fixes restored immediately.
  Local log: `build/inventory-qa/red-engine.log`.
- Pinned `flutter analyze --no-pub` under `machine_lock.sh analyze`: clean.
  Initial analyzer findings (missing KitNotice argument and catalog dependency
  resolution) were corrected before the final candidate.
- Two widget-rendered screenshots were generated under `machine_lock.sh test`,
  concurrency 1, and visually reviewed. They use synthetic data, not a device:
  [This phone](../../../test/revamp/goldens/inventory_in_app_tools_installed_light.png)
  and [AI Team intro](../../../test/revamp/goldens/inventory_in_app_team_installed_light.png).
  The golden tests also compare these on the build server.
- Widgetbook coverage check: 144 screens, 16 catalogued, 124 baseline entries,
  79 use-cases. This change adds the intro and Add tools catalogs and the installed/
  unavailable This phone states. Coverage remains blocked by four existing
  uncatalogued screens: LiveStylePickerScreen, LiveStylePreviewScreen,
  WidgetConfigureScreen, WidgetSteerScreen. Their sources are unchanged.
- Widgetbook screen-standard test: 88 cases passed; the final ratchet failed.
  Original tracked source from `5e3969ad6` was temporarily restored and tested,
  then every working file was restored in a `finally` block: 80 cases passed and
  the same ratchet already failed for 10 chat cutoff findings and two This phone
  states (row-lines, first-view-items, cutoff). Newly catalogued This phone states
  expose those same layout rules; intro states expose its existing row-lines
  layout. No standard baseline was weakened. These broader layout findings are
  not an installed-inventory failure or a clean catalog qualification.
  Logs: `build/inventory-qa/catalog-standard.log`, `catalog-baseline.log`.
- Final focused command below: **259 passed**, 11 files, build server,
  concurrency 2 (44 seconds test time). All earlier focused failures were fixed.
  Log: `build/inventory-qa/final-tests.log`.
- Final pinned analyzer: **No issues found**, 42.9 seconds.
  Log: `build/inventory-qa/analyze-final.log`.
- Required post-commit preflight: `OC_PREFLIGHT_JOBS=2 tool/qa/preflight.sh HEAD~1`
  with pinned Flutter on PATH: **OK**. Commit rules and format passed; generated
  localization output was clean; QA tooling ran 809 tests (2 skipped); all 161
  repository-scanning Flutter checks passed. Log:
  `build/inventory-qa/preflight.log`. The final evidence-only amendment is
  followed by the same preflight before handoff.

No physical device, emulator, signing, release, push or deployment is involved.

### Focused command

```sh
OC_VPS_JOBS=2 tool/qa/vps_test.sh \
  test/setup_inventory_test.dart test/setup_engine_test.dart \
  test/setup_component_removal_test.dart test/builtin_linux_test.dart \
  test/builtin/tools_agree_after_setup_test.dart test/this_phone_screen_test.dart \
  test/team_discover_test.dart test/phone_setup_start_screen_test.dart \
  test/this_phone_component_removal_test.dart \
  test/revamp/screen_phone_1_golden_test.dart \
  test/revamp/team_phone_v2_golden_test.dart
```

Coverage includes busy/truncated reads, shared and late reads, completed/failed
jobs, runtime switch selection, removal/partial removal, initial unknown/retry,
open Add tools updates, and phone/intro golden images. Earlier UI runs exposed
incomplete Termux fixtures and test-controller timers; the fixtures now supply
an explicit fake inventory and dispose controllers before widget teardown.

Accessibility: existing kit rows, notices/live regions, retry actions and
localized English/Arabic text are reused. Catalog passes include Arabic and
2x text, with the broader standard findings listed above. Security: no new
credentials, network endpoint, stored data or permission capability; no migration.
The full repository suite and emulator/device qualification were not run.
