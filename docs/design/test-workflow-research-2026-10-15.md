# Test workflow research, 2026-10-15

Owner request: "There must be something that we can do to minimize testing or
merge tests or use a better workframe." Research only. No app code or tests
were changed. Experiments ran in a scratch copy (PC, one small run) and on the
build server (`~/exp/` there). **M** = measured here, **E** = estimate.

## Summary: what to change first

| # | Change | Saves | Evidence | Risk |
|---|--------|-------|----------|------|
| 1 | **Bookkeeping preflight** (16 repo-scanning files + format + G33 + l10n/hash regen) run before every hand-back/merge | Removes most of the ~20 full-run repeats: 177 file-failures over 23 recorded split runs, the top repeat offenders are all in this set. 41 s per preflight (M). Each avoided repeat = 27 min. | M | Low |
| 2 | **Goldens may run on the build server**: 99.2% of 4,361 golden images were pixel-exact on the VPS; every difference is <= 1.2% of pixels and all 36 are Team-screen images. Replace "goldens only on PC" with an exact comparator plus a small per-image tolerance list. | Frees the routing constraint; lets one scheduler balance both machines (E: 27 -> about 14-16 min wall for a full run) | M (4,361 images) | Low-medium: tolerance list must stay small |
| 3 | **Aggregate small test files into shard entrypoints** (`test/_agg/shard_N_test.dart`, generated) with a standalone re-run of any failing file | Per-file startup is 4.4 s of a 5.9 s standalone run (M). One process for 1,044 files used 3,020 CPU-s vs about 5,400 CPU-s now (M/E) -> VPS half 15 -> about 7-8 min (E). | M for CPU, E for wall | Medium: 4-6% of files fail aggregated because of shared global state (M); 7.5 GB RSS for all files in one process (M) |
| 4 | Tier the gates: commit = preflight + tests of the changed files and their direct importers; merge = preflight + full suite; release = everything + Gradle + emulator | A typical commit costs about 1-2 min instead of 27 (E) | M for selection sizes | Medium: depth-1 selection misses transitive effects, which the merge gate catches |
| 5 | Do not build import-graph "test impact analysis" over the whole graph. | -- | M: useless here (see 2) | -- |

Top three: **preflight (1)**, **aggregation with recheck (3)**, **goldens on both machines (2)**, with the tiered gates (4) as the policy that uses them.

## Evidence

### 1. Where the time goes: per-file overhead

Setup: 49 small non-golden files (about 1.5 s each in `test_timings.json`),
PC i7-9700 idle, `flutter test --no-pub`.

| Mode | Wall time | Per file |
|------|-----------|----------|
| One `flutter test <file>` per file (50 runs) | 296 s | 5.9 s |
| One command, 49 files, `-j1` | 83.5 s | 1.7 s |
| One command, 50 files, `-j3` | 47 s | -- |
| One aggregated entrypoint (49 files via `group(file, main)`) | 20.8 s | 0.42 s |

Same on the VPS (cold first run for the batch): batch `-j1` 315 s, aggregated 64 s.
So load/compile/process start per file is about 1.3 s even inside one `flutter test`
command, and about 4.4 s standalone. Across 1,443 files that is roughly 30 CPU-minutes of
pure overhead per full run (E: 1,443 x 1.3 s).

The VPS is about 1.5x slower per thread on pure CPU (python loop 3.91 s vs 2.65 s, M)
and about 3x slower on `flutter test` loads (M: 64 s vs 20.8 s aggregated 49 files), so its
8 vCPU are worth roughly 3 PC cores for test work.

`-j` on the VPS, first 300 non-golden files (alphabetical), same files each time:

| `-j` | wall |
|------|------|
| 4 | 528 s |
| 6 | 414 s |
| 8 | 382 s |

Going 6 -> 8 gains 8%; the runner's `-j6` is about right. The long poles are
single files: `text_scale_overflow_test` 230 s, `termux_aiteam_script_test` 203 s,
`this_phone_screen_test` 183 s, `local_agent_runtime_test` 60 s. A single file
cannot be sharded across processes, so these bound the wall time.
Splitting them (the repo already did this for the overflow matrix, shards 1-4) matters
as much as concurrency.

**Aggregation (one entrypoint importing many `main()`s)**:

| Set | Mode | Wall | Tests | Failures | Peak RSS |
|-----|------|------|-------|----------|----------|
| 300 files (VPS) | aggregated, 1 process | 583 s | about 3,400 | 90 in 17 files (5.7% of files) | 2.8 GB |
| 300 files (VPS) | per-file `-j8` | 382 s (about 3,000 core-s) | -- | 0 | -- |
| 1,044 non-golden files (VPS) | aggregated, 1 process | 3,021 s | 13,279 | 212 in 43 files (4.1%) | 7.5 GB |

The 50-minute single process used one core. Per-file mode spends about
5,400 core-s (E: 15 min x 6 jobs) on the same files, so aggregation does 1.8x (all) to
5x (300 subset, M) less total CPU. Eight shards of about 130 files each: E about
6-8 min wall on the VPS, about 1 GB per shard process.

Aggregation breaks isolation, so it needs guard rails:
- Files that define their own binding (`extends *Binding`, async `main`) cannot be
  grouped: 3 of 1,047 (`test/kit/kit_receipt_test.dart` was one: the second binding
  throws).
- Files that read the filesystem in `main()` need the repo layout present (the scratch
  copy needed `android/`).
- 4-6% of files fail because earlier files leave global state behind (statics,
  `debugDefaultTargetPlatform`, SharedPreferences mocks). Failures cluster in the
  chat widget files (`chat_live_events`, `chat_transcript_placement`, `chat_permission`,
  `chat_question_card`, `chat_form`). Do not aggregate those; aggregate only
  pure-Dart and light widget files.
- Mitigation that keeps safety: any failing file in an aggregate run is re-run
  standalone, and only a standalone failure counts. This mirrors what
  `run_tests_split.sh` already does for server-to-PC failures. A masked failure
  (a test passing only because of leaked state) is possible but was not seen.

### 2. Test impact analysis

Built a Dart import/export/part graph (`lib/` + `test/`, 1,250 lib files,
1,444 test files, plain regex parse, 3 s) and selected test files by reverse reachability.

- Transitive reach is useless here: median lib file reaches 767 of 1,444 tests
  (53%), p90 1,168, max 1,273 (`lib/api/models.dart`, `kit_redact.dart`,
  `agent_catalog.dart`). Only 6% of lib files reach <= 100 tests.
- Per-commit (last 40 non-merge commits), transitive: median 767 tests, p75 1,084.
- Depth-1 (changed file plus direct importers, changed test files included): median
  **2** tests, p75 60, max 713. Depth-2: median 2, p75 556.
- Half of the commits touch no Dart in `lib/` (p25 = 0), only docs, tests or Kotlin.

What a changed-only gate misses:
- repo-scanning tests that read files they do not import (kit manifest, UI ledger,
  glossary, file-size ratchet, coverage ledgers, script hashes: 150 of 1,443 test
  files read the repo at run time, about 1,086 s of the timing sum);
- golden images when a shared kit widget or theme changes;
- ARB/l10n generated files, `pubspec.yaml`, assets, Kotlin sources and Termux scripts
  (not in the Dart graph; need path/name matching, which over-selects);
- the monolith parts (`connection/*.dart`, `chat/*.dart`) that share one library.

Conclusion: selection is only safe for a commit-level fast loop (depth-1 plus the
preflight), never as the merge gate. Existing tools (`dart_code_metrics`,
`test_impact` style packages, Bazel/`dart_dependency`) all rely on the same graph and
would give the same dense result; none is worth adopting.

### 3. Goldens: machine independence

Tolerant measuring comparator (a `LocalFileComparator` subclass that prints
`GoldenFileComparator.compareLists(...).diffPercent` for every image) installed in
the scratch `test/flutter_test_config.dart` on the VPS, then all 397 PC-routed files run
there (`-j5`, 23 m 42 s while another 50-minute job shared the box):

| Pixel difference vs PC-written master | Images (of 4,361 unique) |
|--------|---------|
| exactly 0 | 4,325 (99.2%) |
| <= 0.1% | 4,338 (99.5%) |
| <= 0.5% | 4,358 (99.9%) |
| <= 1.2% (max) | 4,361 (100%) |

The 36 images that differ are all Team screens: `p35_team_*`, `p51_team_*`,
`chat_4_team_conversation_*`, `team_run_*`, `team_work_sheet_*`, `team_g17_heat_*`,
`slice_p34_team_page_heat_*` (heat-style gradients, blur/shadows are the probable cause), `system_report_problem_preview_*`
(0.01-0.03%). Running `slice_p34_golden_test` on the PC against the committed
masters also gives 0.29-0.42% differences for the `heat_*` images, so
those masters are stale or time-dependent on the PC too; they are not a VPS
problem. The "VPS differs by 0.2%" claim in `run_tests_split.sh` is true only for this
small Team subset; the copied fonts fixed the rest.

Options and recommendation:
- **Recommended**: keep exact comparison (0 tolerance), and add a per-image allowlist
  `test/goldens/tolerances.json` (`{ "p35_team_task_details_light.png": 0.2, ... }`,
  about 36 entries, each <= 1.2%, 0.0115-0.41% for most) read by a comparator
  installed in `test/flutter_test_config.dart`. Both machines then run goldens. A global
  threshold of 0.5-1% is worse: 0.5% of a 412x915 image is about 1,900 pixels, enough to hide a
  changed label.
- Alchemist/Ahem "CI goldens": needs regenerating all 4,673 PNG files (167 MB) and
  loses real glyph rendering; not worth it when the real fonts already match.
- Docker image for both machines: not needed given the measurement; the VPS has no
  KVM but Docker would also work. Revisit only if the tolerance list grows.
- Make the VPS the canonical golden machine: not needed; the PC masters already agree.
- Also: the router over-sends files to the PC. Of 397 routed files only 333 use
  `matchesGoldenFile` directly or via a helper (64 routed only because the word
  "golden" appears in text; about 350 s of timing). Route with `matchesGoldenFile`
  and the three helpers (`test/goldens/kit/kit_gallery.dart`,
  `test/kit/kit_manifest_checks.dart`, `test/revamp/screen_chat_2_fixtures.dart`) instead of `grep -i golden`.

Caveat: one VPS run of the full golden set, one PC master set. Re-measure after the
next Flutter bump.

### 4. Layered workflow

Repeat failures, from `build/traycer/split-*/failed.txt` (23 runs, 177 failures,
136 distinct files): `ui_glossary` x7, `ui_ledger_coverage` x6, `file_size_ratchet` x4,
`coverage/settings_preferences_coverage` x4, `kit/kit_manifest` x3, `golden_harness` x3,
`architecture_boundaries` x2, `kit_motion` x2. These tests take 0.6-3 s each.

Measured preflight set (16 files, VPS, `-j4`, 41 s wall incl. compile, passing):
`ui_glossary`, `ui_ledger_coverage`, `file_size_ratchet`,
`coverage/settings_preferences_coverage`, `kit/kit_manifest`, `kit_ratchet`,
`kit_map_gate`, `golden_harness`, `architecture_boundaries`, `l10n_coverage`,
`termux_script_hashes`, `design_standard`, `release_metadata`,
`kit/kit_draft_manifest`, `team_design_standard`, `voice_model_manifest`.
Extended set, 88 files (adds the 55 `test/coverage/*_coverage_test.dart`, script and
native-contract tests, `repository_hygiene`): 3 m 28 s on the VPS under load,
excluding `termux_aiteam_script_test` (203 s alone, leave it to the merge gate).

| Tier | When | Contents | Time (E unless M) |
|------|------|----------|-----------|
| T0 preflight | before every hand-back from a branch and after every merge | regenerate l10n (`flutter gen-l10n`) and fail on diff; Termux script-hash regen check; `dart format --set-exit-if-changed` on changed files; `check_commits.sh` (G33) on base..HEAD; `check_ui_ledger.py`; the 16 files above | about 1 min (M: 41 s for the tests) |
| T1 commit | each commit | T0 + changed test files + their direct importers (depth 1) + `flutter analyze` on changed files | 1-3 min |
| T2 merge/integration | once per batch | T0 + full suite (split) + `flutter analyze` + Gradle detekt/unit/lint on the VPS in parallel when `android/` or `engine/` changed | about 15 min after changes 2-3 |
| T3 release | tag | T2 + `flutter build apk --release` (VPS) + emulator pass | as today |

Gradle: the repo's own record (`docs/qa/kotlin-ci-clean-2026-10-15.md`) shows
`testReleaseUnitTest` 8 m 22 s and `lintRelease` 4 m 19 s (cold, `--no-daemon`).
They only need to run when `android/` or `engine/` changed in the batch, and they can
run concurrently with the Flutter shards on the VPS.

### 5. Other cuts

- Warm worktree on the VPS: `rsync` of the worktree is already a no-op in 5.5 s
  (21,303 files, 309 changed). `.dart_tool` already persists in `~/wt/<name>`.
  No gain from more caching; the first-run cost in a new worktree name is one
  `pub get` plus a cold compile (batch -j1 was 315 s cold vs 64 s warm for the same
  files, M). Reuse worktree names (a stable `~/wt/batch`), do not create one per branch.
- 35 old worktrees sit in `~/wt` on the VPS (disk 290 GB): prune with a script.
- Reporter: `--reporter=failures-only` is already used. Add `--file-reporter json:...`
  to feed `update_test_timings.py` automatically so the shard weights stay current.
- The PC swaps during local runs: a single 1,044-file aggregate peaked at 7.5 GB
  (6.3 GB RSS after 17 minutes on the PC before it was stopped), so aggregated
  entrypoints must be sharded (about 130 files, about 1-1.5 GB each) and never run as
  one process.

## Implementation plan

1. `tool/qa/preflight.sh` (new). Steps: `flutter gen-l10n` then `git diff --exit-code`
   on generated files; script-hash check; `dart format --set-exit-if-changed $(changed .dart)`;
   `tool/qa/check_commits.sh <base>`; `python3 tool/qa/check_ui_ledger.py`;
   `flutter test -j4 $(cat tool/qa/preflight_tests.txt)`. Runs on the VPS through
   `vps_test.sh` or locally. Target < 90 s. Run it from the end of every builder task
   and after every merge (add to AGENTS.md "Commands and order" and the builder brief).
2. `tool/qa/preflight_tests.txt` (new): the 16 files above. Review quarterly by looking at
   `failed.txt` frequency; a script `tool/qa/rank_failures.py` (new) counts failures from
   `build/traycer/split-*/failed.txt` and proposes additions.
3. `tool/qa/golden_tolerances.dart` + `test/goldens/tolerances.json` (new) and an edit of
   `test/flutter_test_config.dart`: install a `LocalFileComparator` subclass that
   compares exactly unless the image name is in the JSON (max allowed percent).
   Seed it from the 36 images above (values from the measurement, +20% headroom).
   Also fix or regenerate the stale `slice_p34 ... heat_*` and `team_g17_heat_*`
   masters on the PC first (they fail there at 0.29-0.42%).
4. `tool/qa/run_tests_split.sh`: drop the golden-to-PC routing; instead compute shard
   lists from `test_timings.json` (the existing longest-first partitioner in
   `run_serial_tests.py`) for two hosts weighted by measured speed (PC 1.0, VPS about 0.4 per
   job slot), PC `-j3`, VPS `-j6`. Keep the "server failure re-runs on the PC" rule, but
   only for the tolerance list files. Replace `grep -i golden` routing with a
   `matchesGoldenFile` + helper-name match if any PC-only routing remains.
5. `tool/qa/gen_aggregates.py` (new): from `test_timings.json` produce about 8 entrypoints
   `test/_agg/shard_N_test.dart` (git-ignored, generated at run time) that import each
   eligible file's `main` and call it inside `group('<path>', main)`. Exclusions list
   in `tool/qa/agg_exclude.txt`: files with custom bindings or async/args `main`, the
   chat widget files named above, files needing isolation (anything touching
   `ProfileStore` secure-storage mocks, which hang; see AGENTS.md), and the 4 slow
   single files. Each shard runs with `flutter test`; failing test names map back to the
   source file by the group name; those files are re-run standalone and only standalone
   failures count. Gate it: before it becomes the default, run it once next to the
   per-file run and require identical pass/fail on the full suite.
6. `tool/qa/impact.py` (new, optional): the depth-1 selector used above (about 60
   lines, parse `import/export/part`, reverse graph, `git diff --name-only base`),
   used only by T1. It always adds `preflight_tests.txt`.
7. `tool/qa/android_gate.sh` (new): rsync to the VPS, run detekt + `testReleaseUnitTest` +
   `lintRelease` there in one Gradle invocation with a warm daemon; only when the diff
   touches `android/` or `engine/`. Records elapsed time in the output.
8. Split the long single files (`text_scale_overflow_test`, `termux_aiteam_script_test`,
   `this_phone_screen_test`, `local_agent_runtime_test`): they set the critical path
   (203-230 s each).
9. AGENTS.md: replace "run `flutter test` after every merge" with the tier table; keep
   the full suite as the milestone gate. Note the scratch findings: do not use
   whole-graph test selection.

Expected result (E): a full run falls from 27-28 min to about 14-16 min by balancing across
both machines (change 4) and to about 8-10 min once the VPS half is aggregated (5);
the larger saving is fewer full runs, since a 1-minute preflight catches most
of the failures that currently cost a 27-minute repeat.

## Risks and open items

- Aggregation changes what "isolated" means. Run it in shadow mode first (step 5).
- Tolerance entries can hide a real regression of up to the allowed percent for
  those 36 images; keep each value tight and review any growth in code review.
- Measurements ran while the build server also hosted other work at times (load
  3-9 in several runs), so absolute VPS times are upper bounds; the comparisons
  inside each table were taken back to back.
- The full-aggregate run used 7.5 GB RSS; a PC run of it reached 6.3 GB and was
  stopped (coordinator request) so it was not completed on the PC.
- Scratch copies: PC copy deleted; VPS `~/exp/` still holds logs
  (`results.txt`, `golden_all.log`, `aggALL.log`, `gold25.log`) and can be removed.

## Result: changes 2, 3 and 4 built (2026-10-15)

Branch `build/test-speed`. Measured on the real suite (1,445 test files), this
machine (2 processes) plus the build server (6 processes), `tool/qa/run_tests_split.sh`:

| Run | Wall | Notes |
|-----|------|-------|
| Baseline (research) | about 27 min | goldens on this machine only |
| Run 1, this machine 3 processes, 8 aggregates | 13 m 34 s | all green, 7 suspect files re-run alone |
| Run 2, same plan, shared PC busy with a build | 16 m 16 s | all green; load on the PC adds minutes |
| Run 3, this machine 2 processes, 12 aggregates (final defaults) | 13 m 04 s | all green, 6 suspect files re-run alone |
| Run 4, same defaults on the final commit (a2d8efe7b) | 12 m 43 s | all green, 6 suspect files re-run alone |

What was built:
- Goldens run on both machines. `test/golden_tolerance.dart` (installed from
  `test/flutter_test_config.dart`) compares exactly; only the 36 Team images in
  `test/goldens/tolerances.json` have a limit (measured difference plus 20%, at most
  1.4%). The `heat_*` masters already pass exactly here: their tests pin the clock.
- `tool/qa/split_plan.py` places files and aggregates by measured seconds on every
  slot of both machines; `run_plan.sh`, `gen_aggregates.py` and `split_collect.py`
  run, generate and read one machine's half.
- 1,051 files run in 12 generated aggregates (`build/agg/`, git-ignored). 44 files
  that failed aggregated are in `tool/qa/agg_exclude.txt` with a reason each. Failures
  inside an aggregate, and any failure on the server, are re-run alone here first.
  Each aggregate stays near 1.4 GB.
- The four "200 s" files were not slow in the split run: measured 4 to 18 s each
  (the research ran under heavy load, and the Termux script scenarios skip without
  the proot Ubuntu), so none of them was split; the planner puts anything long on
  this machine's slots first.
- `native_strings_test` already failed on this base (Usage widget strings); the harness
  and its Resources stub now format strings as Android does.
- Left open: the suspect-file re-runs cost 1 to 2 minutes at the end of a run, and the
  excluded list may grow when the bundle makeup changes (new leaks show up as
  re-runs, never as false failures). Refresh `test_timings.json` from
  `timings-merged.json` in the run folder now and then.
