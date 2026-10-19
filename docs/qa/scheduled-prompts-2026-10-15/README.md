# Scheduled prompts — verification record

Worktree: `oc_app-codex-schedule`, branch `codex/scheduled-prompts`.
Contract commit: `bf1bc45b6` (written before implementation).

## Scope

Schedules run through bounded Android WorkManager jobs with exact-alarm access
when granted. Store/index/claims survive process death and reboot, collapse
missed dates, and fence profile deletion. The kit editor/list supports one-time,
weekday and hourly recurrence, existing/new conversations, edit/pause/delete,
run history and an off-by-default morning digest.

Saved remote OC2/Codex/Paseo targets are implemented. Installed managed OC2 can
be started temporarily and only that owned process is stopped. Transient phone
agent helper targets remain unavailable because their native ownership and
credential routing do not have a safe cold-start lease.

## Focused evidence

- 48 backend Dart tests: model/store/controller/runner/entrypoint.
- 7 widget flow tests plus kit ratchet: 45 checks passed on the rerun.
- 5 screen-standard cases, each English/large text/Arabic/dark: passed.
- 32 JVM tests and bounded native source compilation: [native record](native.md).
- Post-review dispatch/entrypoint and glossary/preferences regression checks: 57 passed.
- Full analyzer after those corrections: clean.
- Initial widget failures were an incorrect UTC assumption in a local-time test,
  bidi text matching, and four literal spacing values; corrected and rerun.

Logs in this directory contain no build-server hostname. Generated localization
is from the pinned Flutter. Full-suite, preflight and emulator results will be
appended after execution; the focused results alone are not release proof.

## Privacy, accessibility and storage

Prompts and project paths stay in app-private profile-scoped storage. Android
alarm extras use IDs; lock-screen notifications contain fixed copy/counts only.
Credentials are loaded at firing and never stored in schedule records. Profile
routing is revalidated before send and notification navigation. There is no
permission auto-approval or retry after uncertain prompt delivery.

New version-1 envelope: `oc.scheduledPrompts.<profileId>`; native index, claims,
receipts and deletion tombstone also follow `oc.<what>.<profileId>`. Existing
profiles have no schedules and digest is off. Unknown/corrupt formats fail
closed. The existing profile sweep removes these keys.

Kit controls provide semantics/focus/48dp targets. Screens passed the existing
screen-standard measurement in Arabic RTL and 2x English text. Error copy is
neutral; timing/battery/notification restrictions remain visible in options.

## Device evidence boundary

Final proof is restricted to `emulator-5562`; no owner phone or server is used.
The deterministic `tool/qa/scheduled_prompt_fixture.py` serves only loopback
4497 and marks every response “QA fixture”. Such captures are transport and
Android lifecycle proof, not real model execution or production qualification.

Nothing is pushed or released. The coordinator's separate
`tool/qa/vps_build_apk.sh` flock update is preserved and excluded from feature
commits.

## Review corrections

Commit `e5f603b4e` applies captured agent/model selections through the gateway
selection API, persists a created conversation before dispatch, guards Flutter
engine initialization, and rearms a provably unsent occurrence after clock
rollback. A previously claimed or recorded send is never retried. The initial full run used a 1,455-file manifest at that source revision.
After device-found corrections, it was stopped after five completed chunks
and part of chunk six. It is diagnostic evidence only, not a full-suite pass.
The corrected complete 1,456-file manifest is running at `3ee0ddd45`.

## Existing catalog gate finding

The catalog coverage checker reports four existing uncatalogued screens:
`LiveStylePickerScreen`, `LiveStylePreviewScreen`, `WidgetConfigureScreen`,
and `WidgetSteerScreen`. All four classes exist at base `a7f8fe21b`; their
files belong to other jobs and were not changed here. Both scheduling screens
have catalog entries (11 use cases), and the focused screen-standard test
checks their main states in English, Arabic, large text and dark mode.

## Device-found corrections after the initial run

APK 900056 started successfully and fired its closed-app worker on time, but
failed before dispatch because local timestamps became UTC during persistence.
The two new store regressions reproduce that failure on the old source; all
60 focused scheduling checks pass after `eac22a34b`. Its morning digest also
correctly reported the failed run, without prompt content. These are intermediate
findings, not successful dispatch proof.

Commit `3ee0ddd45` adds temporary phone-server admission guards and a durable
bounded lease marker. All 110 affected Dart checks, 32 native tests, source
compile and analyzer pass. The widget-owned two-call integration remains in
[the pending patch](widget-admission-pending.patch); no widget file was changed.

The complete new manifest is [recorded here](full-suite-manifest.txt). It uses
411 standalone files and 1,045 files in repository-generated aggregates. Five
files that failed in prior shared-process aggregates run standalone. Remote
QA gets an exact tracked-file index for repository-scanning tests, without any
Git push. Git-history-only checks may skip because that isolated harness has
no commit objects; all skips will be reported with final results.

The three deletion fixtures were corrected in `3983bfe2d` to answer the new
scheduling channel under Flutter fake async. Their 16 isolated checks pass
([output](deletion-fixture-tests.txt)). Application source stayed at `3ee0ddd45`
throughout the full run. Only these three fixture files were copied before the
next normal chunk sync; all other test files are unchanged. An already-compiled
old fixture may time out and is rerun alone with the correction.

## Emulator proof (APK 2350, history screen re-captured on 2351)

`emulator-5562` only, with the deterministic QA fixture (loopback, every reply
labeled "QA fixture"): transport and Android lifecycle proof, not a real model
run. The app process was killed (not force-stopped) after saving; the
WorkManager/alarm job fired it at 03:10 and the prompt reached the fixture.

| Screenshot | What it shows |
| --- | --- |
| [01](01-conversation-menu.png) | "Schedule a prompt" in the conversation's menu |
| [02](02-create-schedule.png) | Create: prompt, once at a time, this conversation, agent |
| [03](03-list-next-run.png) | List with the next run |
| [04](04-notification-app-closed.png) | Notification after the run, app closed |
| [05](05-result-conversation.png) | Tapping it opens the ordinary conversation with the prompt |
| [06](06-history-paused.png) | List with a paused weekday schedule (Resume shown), a finished one-time schedule ("No more runs"), the morning summary row and run history |
| [07](07-edit-schedule.png) | Edit: Time has its chevron, Agent reads "Build" |

Finding fixed from these captures (`fix(schedule)` commit): a finished one-time
schedule said "Paused" (APK 2350); APK 2351 says "No more runs".
Emulator and fixture were stopped by exact PID.

## Final suite and preflight

- `tool/qa/preflight.sh a7f8fe21b` (the branch's fork point): OK. Against
  `2ca296cdc` it only reports three inherited merge commits without
  `[skip ci]`, none of them from this branch.
- Full split (`tool/qa/run_tests_split.sh`, per-run server worktree) on the
  final source: all files pass except five golden files, each reproduced on the
  untouched base `a7f8fe21b` and recorded in
  [baseline-golden-findings.md](baseline-golden-findings.md):
  `phone_server_screens_golden`, `team_discover_golden`, `screen_team_1_golden`,
  `slice_close_servers_phone_golden`, `termux_v2_host_golden`.
- An earlier split run was invalid (shared server checkout); its result is
  discarded. The rerun found four deletion fixtures missing the scheduling
  channel mock and an early preferences reload in profile deletion that could
  drop an in-flight owner claim; both fixed and committed.

## List rework after coordinator review (APK 2353, dark theme only)

The app theme does not follow the system light/dark setting, so no light
captures exist. Rows now lead with the prompt's first line; one supporting line
reads like "Next: Today, 8:00 AM · Every weekday" (the screen standard allows one
supporting line, so agent and conversation stay in the editor). Times read
Today / Tomorrow / in N min / weekday / date, with the year only beyond about six
months. Pause or Resume and Delete are visible icon buttons on each row; Delete
asks "Delete “<name>”?" first. The "Timing and delivery" fold is gone from the
list: the morning summary is a plain switch row, history follows, and the
exact-alarm button and battery notice close the page. The delete confirmation
name is cut at 40 characters (a final small change not re-captured on a device).

## Last polish (APK 2354)

03 and 06 were recaptured from APK 2354: one locale time format everywhere
(8:00 AM, also in the editor and on a paused weekday row) and the battery
notice reads "Each run has a time limit; you don't need to keep the app open."

Not done, by the screen standard: Pause/Resume and Delete stay on a line below
each row's text instead of inline, and the supporting line does not carry the
target and agent. A row may show only 2 lines of text with nothing cut off
(`docs/ux-system/screen-standard.md`, gate `row-lines`/`cutoff` in
`scheduled_prompt_standard_test.dart`): inline icons narrow the text enough to
cut it off in Arabic, and a two-line supporting line makes 3 lines. Both were
tried and fail that gate. Agent and conversation are in the editor.
