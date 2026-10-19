# Conversations widget in five sizes, 2026-10-16/17 (rounds 2 and 3)

Branch `feat/widget-sizes-r2`, rebased onto `int/ui-batch-2026-10-14` (the earlier branch sat on an old copy of the N2 commits). Design: `docs/design/widget-2026-10-16/`. Builds 2450 to 2453 (release, `tool/qa/vps_build_apk.sh`), Pixel_6 emulator (API 34, port 5560), in-app Ubuntu OpenCode server, project `my-app`, 6 conversations. Needs-you comes from a shell command ask ("Run this command?"). Each shot is the whole emulator screen with the widget at that launcher size.

## What the coordinator's review asked for, and what was done

1. **2x2 / 4x2 needs-you gap**: after the question and the command the card now adds, in this order and in whole lines as far as they fit: "in <folder>" (the folder an outside-the-project command reaches into, from the request pattern), From “<conversation title>”, the conversation's last reply line. The block sits just above the buttons (the slack goes under the status line), with a gap above the buttons. Where only "From" is known (an in-project command, no reply yet) a band is left above the block; there is nothing real left to put in it.
2. **4x4 needs-you row**: title is the question ("Run touch /root/outside-test6.txt?"), the conversation title is the muted second line, inline Allow. Rows stretch to share the card (no empty band); the top row carries whole lines of its latest reply (or live line). The snapshot holds at most 6 conversations; the emulator now has exactly 6, so all 6 rows show (it showed 2 before, because the emulator then had only 2).
3. **4x1 working**: "Working · <live step>" when a step is known, else "Working · 4 min" (a counting chronometer while the turn is live). The 4x1 needs-you title never cuts: the short question when it fits one line, otherwise "Run this command?" with the command and "· my-app" on the line below.
4. **Rebase**: own commits cherry-picked onto `int/ui-batch-2026-10-14`. The 15 files that "failed on the base" pass here (re-run: `flutter test` of those 15 files, all pass).
5. **Rebuilt and reshot**: every size and state, plus 2x2 and 4x4 in the light theme.

## Shots (judged against `docs/design/widget-2026-10-16/*.png`)

| Size | Ready | Working | Needs you |
|---|---|---|---|
| 2x1 | PASS [dark](dark-2x1-ready.png) [light](light-2x1-ready.png) | PASS [dark](dark-2x1-working.png) | PASS (amber, whole 2 lines) [dark](dark-2x1-needs.png) |
| 4x1 | PASS [dark](dark-4x1-ready.png) [light](light-4x1-ready.png) | PASS ("Working · 4 min") [dark](dark-4x1-working.png) | PASS (title never cut, command below, Allow) [dark](dark-4x1-needs.png) |
| 2x2 | PASS [dark](dark-2x2-ready.png) [light](light-2x2-ready.png) | PASS, but see gaps [dark](dark-2x2-working.png) | PASS (question, command, From, buttons) [dark](dark-2x2-needs.png) [light](light-2x2-needs.png) |
| 4x2 | PASS (last reply in whole lines) [dark](dark-4x2-ready.png) [light](light-4x2-ready.png) | PASS [dark](dark-4x2-working.png) | PASS (question, command, From, last reply, Reject / Open / Allow once) [dark](dark-4x2-needs.png) |
| 4x4 | PASS [dark](dark-4x4-ready.png) [light](light-4x4-ready.png) | PASS [dark](dark-4x4-working.png), mixed [dark](dark-4x4-needs-and-working.png) | PASS (two needs-you rows, question titles) [dark](dark-4x4-needs.png) [light](light-4x4-needs.png) |

Allow was tapped on the 4x4 row (build 2452): the row went from amber needs-you to green working and the header from "1 needs you" to "1 needs you · 1 working" and then "2 working", so a turn waiting for you is not counted as working too.

## Known gaps (honest)

- 2x2 working shows the title and no live line in the shots: they were taken on build 2452; build 2453 adds "N min" under the title but was not reshot for the working state.
- A 2x2 / 4x2 needs-you for an in-project command (no folder, no reply yet) still has a band above the block. It is the unused height, and it is only as big as nothing real exists to fill it with.
- The conversation title in "From “...”" and the reply line can end in an ellipsis when they need more than 2 lines; whole lines only, never mid-line cuts of the command or file.
- The light theme was shot Ready (all five sizes) and needs-you on 2x2 and 4x4. Working in light was not shot.
- 4x2 shows "Allow once", Reject and Open; "Always" stays in the app (it needs its confirm). The mock listed Always.
- The write-outside-the-project wording with a file name ("Write outside this project?" + file) was not triggered on device; the mock model cannot complete a write. It is covered by `widget_snapshot_test.dart`.
- Model/server oddities on the emulator (a conversation that errored after the in-app server restarted) are not widget issues.

## Checks

- Kotlin `:app:testReleaseUnitTest --tests '*Widget*'`: 90 tests, 0 failures.
- Dart: `widget_snapshot_test`, `widget_v2_contract_test`, `widget_status_runner_test`, `native_notification_copy_test` pass; the 15 previously failing files pass.
- Preflight and the full split: see the final report of this task.

## Round 3 (build 2460, release APK with split debug info)

The needs-you question now sits right under the header (the same gap a Ready title has); any spare height goes above the buttons, as Ready leaves it above the composer. The extra lines (in <folder>, From, last reply) follow the command in order. Reshot on the final build, one screen per image: `dark-4x2-needs.png`, `dark-2x2-needs.png` (sparse cards, no band under the header), `dark-2x2-working.png` ("Working", title, "1 min"), `light-4x2-working.png`, `light-4x4-working.png`, `light-4x2-needs.png`, `light-2x2-needs.png`. Other shots in this folder are from round 2 and unchanged.

Gaps: the duration line is a snapshot taken when the card redraws (an event or opening the app), so it can lag a live turn by up to a minute.

## Round 4 (build 2465)

The 2x2 and 4x2 working cards now put the time in the header ("Working · my-app · 2 min", and "Working · 1 min" on the narrow 2x2 where the project does not fit beside it) and show the live text as the body: the live step when one is known, else the latest reply, in whole lines above the composer. Shots (one screen each): `dark-2x2-working.png`, `dark-4x2-working.png`, `light-2x2-working.png`, `light-4x2-working.png`. They supersede the round-2/3 working shots. `light-4x4-working.png` is unchanged.

Gap: a working card has body text only once the model has emitted text or a tool step. In the first minute of a slow free-model turn (model still thinking) neither the card nor the list's top row has anything to show, and the card shows the header and title only. The shots were taken after text had arrived.
