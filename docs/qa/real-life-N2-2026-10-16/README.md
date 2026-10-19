# Real-life batch N2 on build 2430 (2026-10-16): re-test of N1 / E1 failures

APK `app-release-2430.apk`, Pixel_6 emulator (1080x2400, wiped, 4 GB), port 5560, free model (LL Alpha Free), in-app OpenCode 2.0.29, no accounts.
Fresh on-phone setup reached "name your first project" within the 4 minute wait. Red scan: every saved screenshot was checked by script for saturated red pixels; the only hits are the Gmail and YouTube icons on the Android home screen (not the app).

Counts: **7 PASS, 6 ROUGH, 0 FAIL, 3 SKIPPED/partial** (16 checks).

| Row | Verdict | What happened | Screenshots |
|---|---|---|---|
| Setup | PASS | Welcome > On this phone reached the first-project box in under 4 min, no Continue setup. | [welcome](N2-0-welcome.png) [4 min](N2-1-setup-4min.png) [project](N2-1-first-project.png) |
| N1-2 Claude check | PASS | Agents row says "Sign in needed" once; sheet says "Claude Code is installed. Sign in to your Claude account to use it." with three ticks and an open circle for Ready (no red X, no "didn't pass"). Sign-in button opens "Sign in with Claude Code" sheet; stopped there. | [checking](N2-2-check.png) [result](N2-2-check-result.png) [sign-in](N2-2-signin-start.png) |
| N1-4 detect | PASS | `python3 -m http.server 8765` found under "Also running" with Port 8765 and the command. | [list](N2-6-devservices.png) |
| N1-4 logs | ROUGH | Logs sheet explains the program was started in a way the app cannot read ("Save it as a command and start it from here"). Honest, but there are no logs to see (my command sent output to /dev/null). | [logs](N2-6-logs.png) |
| N1-4 stop | ROUGH | Stop confirm is neutral (white button) and Stop works (the program is gone from Running afterwards). But while the sheet still showed its spinner the page behind it flipped to "Could not check what else runs in Linux right now". | [confirm](N2-6-stop-confirm.png) [after](N2-6-after-stop.png) |
| N1-5 Running | PASS | Opened first try with the server running before; later list: 3 programs (OpenCode server 6 min, Paseo 2 min as ONE row of 5 processes, bash 1 min). True ages, one row per program. | [running](N2-7-running.png) |
| N1-5 Reset Linux | ROUGH | Reset finished and the app recovered through the setup screen (steps Linux base... Start OpenCode) to "This phone: OpenCode 2 Running, Up to date" in about 4 min. Erased nothing it should not. Rough: dialog "Setting Linux up again: Some saved data of This phone on this phone could not be cleared. You can remove it in Servers." (doubled phrase); banner "OpenCode on this phone isn't answering" stayed above the setup screen; Reply speed still showed the old reply. | [sheet](N2-16-reset-sheet.png) [typed](N2-16-reset-typed.png) [dialog](N2-16-reset-20s.png) [setup](N2-16-after-close.png) [recovered](N2-16-recovered.png) |
| N1-6 Conversations widget | ROUGH | Card shows whole lines: "All caught up", my-app, bold title (ends with "..." by design), model, "Last active 2 minutes ago", Ready, Open conversation, "Connects when you tap". Updated to "3 minutes ago" later. Rough: model reads as raw id "ll-alpha-free" and the title is truncated at two lines. | [placed](N2-13-conversations-widget.png) [home](N2-13-home.png) [picker](N2-13-picker.png) |
| N1-6 Usage widget | PASS | "No limit readings yet. Open Usage to connect a source." whole lines, no clipping; tapping opens Usage. (Picker preview shows demo data, as before.) | [home](N2-13-home.png) |
| N1-7 outside write card | ROUGH | Conversations-list card says "Work outside this project?" with `/root/*` for a write of /root/outside-test.txt: still a folder-scope wording, not "write /root/outside-test.txt" (E1 D7 not fully fixed). Reject now reads "Write: You declined this" in the chat (fixed, neutral, no "Tool failed"). | [list card](N2-8-list-card.png) [rejected](N2-9-expanded.png) |
| E1 model chip | SKIPPED | Chip says "LL Alpha Free" and the widget says ll-alpha-free; I did not open Settings > Model to compare, so not verified. | [chat](N2-9-failed-turn.png) |
| K9 "On this Google" | SKIPPED | Not opened. | none |
| NO RED: failed/stopped turn | PASS | Stopped `sleep 90`: "Ran 1 command, Didn't finish", grey circled-X icons, "Failed", "Tool execution interrupted", "You stopped this reply." All grey/neutral, no red. | [stopped](N2-10-stopped-turn.png) |
| NO RED: confirm sheets | PARTIAL, PASS | Neutral (white/grey buttons, grey icons, no red) in 4 of the 5 asked: Delete conversation, Stop http.server, Remove OpenCode (also "Delete everything..." link), Reset Linux. "Remove a project" and "Discard a draft" not reached (no project-remove entry found; leaving the chat with an unsent draft showed no sheet). | [delete](N2-11-delete-confirm.png) [stop](N2-6-stop-confirm.png) [remove](N2-15-remove-opencode.png) [reset](N2-16-reset-sheet.png) |

## Failures
None outright.

## Rough (one line each)
- N1-4 stop: page behind the confirm shows "Could not check what else runs in Linux right now" right after stopping.
- N1-4 logs: nothing to read for a program started outside the app (message explains why).
- N1-5 reset: dialog copy "of This phone on this phone" doubled; "isn't answering" banner persists during setup; stale "Reply speed" after reset.
- N1-6 widget: raw model id "ll-alpha-free"; title cut to two lines.
- N1-7 / D7: outside-write card still reads "Work outside this project? /root/*".
- Free-model first words in the "Create outside-test.txt with hi" conversation arrived after about 30 s; not a defect.

## Not run
- Claude sign-in itself (needs an account).
- E1 model chip vs Settings > Model, K9 copy, remove-a-project and discard-draft sheets.
- The chat-screen version of the outside-write card (I answered it from the Conversations list card).
