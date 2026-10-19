# Real-life batch E1: fresh phone, happy path (build 2370, 1.4.0)

Emulator: Pixel_6, API 34, wiped, port 5554, release APK `app-release-2370.apk`, in-app OpenCode 2 (2.0.29), free model "Cat Jam Free". Date 2026-10-16.
First run used 2 GB RAM (AVD default, the matrix asked 4 GB); setup was stuck, so the AVD was restarted wiped with `-memory 4096` and the whole setup rerun. Owner phone untouched.
Honesty note: several screenshots were judged live and not re-read in detail afterwards; where a row was not exercised fully it is marked ROUGH or SKIPPED with the reason.

| Row | Result | What happened | Screenshots |
|---|---|---|---|
| A1 | PASS | Fresh install opens to the Welcome screen with the three ways (demo, on this phone, on my computer); no crash | A1-1-launch |
| A3 | PASS | "Just show me": prompt sends, a diff opens, Allow once answers, leaving the demo returns to Welcome | A3-1-demo, A3-2-sent, A3-3-diff, A3-4-allowed, A3-5-left |
| A4 | ROUGH | On-phone setup never completed unattended. 2 GB run: no progress after ~8 min, details open, Continue setup. 4 GB run: 8 min with no progress, app force-stopped, reopened, "Continue setup" offered and worked, Python step needed another Continue; ready after about 35 min wall time, then "name your first project". Words and Continue setup are plain; steps are kept. But it needed two restarts of setup and takes far longer than the 6 min in the matrix. Logcat repeats "Termux RUN_COMMAND permission is required" every minute during setup (status poll) although nothing here uses Termux | A4-1-choose, A4-3-progress-6, A4-4-details, A4-5-continue, A4-6-retry-6, A4-7-details-retry, A4-8-ram4g-8, A4-9-details-4g, A4-10-after-forcestop, A4-11-resumed, A4-12-resume-8, A4-13-py-retry-8, A4-14-nopoll, A4-15-ready-name |
| A11 | PASS | Add tools > Python + AI Team: first try stopped ("Setup stopped before it finished. Continue setup to try again"); Continue setup finished it. Installed line afterwards reads "Linux base, Git and SSH, Python, Node.js, OpenCode and AI Team" (the old stale-line bug did not show). Line briefly reads "Checking what's installed..." on reopen | A11-1-thisphone, A11-2-addtools, A11-3-picked, A11-4-failed-sigterm, A11-5-details, A11-6-installed-line |
| F1 | PASS | Project "my-app" created from the first-run name box, chat opens in it | F1-1-project-created |
| C7 | SKIPPED (not confirmed) | Starter chip tapped; I did not capture and judge the text landing in the box. Chips ("What's the update?", "Continue") do show above the box in later screens | C7-1-chip-tapped |
| E1 | ROUGH | Model picker opens and lists models; picked another. The chip says "Cat Jam Free" while the notice under the header and Settings > Model say "Nemotron 3.5 Super VL Free, this server's default model": two names for what looks like one state. Reload providers not tried | E1-1-model-picker, E1-2-model-changed |
| C1 | PASS | "Reply with the word PONG only" streams, answer PONG, Stop visible while running | C1-1-streaming, C1-2-done |
| D1 | PASS | Shell command: card "Needs you / Use Shell" with command, Reject, Allow once, "Always allow requests like this", Details; nothing ran before the tap | D1-1-shell-asks, D3-1-shell-card |
| D2 | PASS | Allow once runs; Reject on a file write shows declined and the file was not made | D2-1-after-allow, D2-2-reject-card, D2-3-after-reject |
| D3 | ROUGH | Always allow asks to confirm, saved; the next `echo` ran without a card. Settings > Allowed actions list and rule removal NOT opened (not verified) | D3-2-always-tap, D3-3-after-always, D3-4-second-echo, D3-5-settled, D3-6-after-reject2, D3-7-echo-again |
| D4 | PASS (partial) | Asks first menu > auto-approve this conversation: green "Auto-approve" chip, `date` ran with no card. Sub-agent inheritance not tested | D4-1-asks-first-menu, D4-2-chip, D4-3-ran-no-prompt |
| D7 | ROUGH | Writing /etc/x does ask, but the card reads "Open this folder?" with `/etc/*`, not "write /etc/x"; wording does not match the action | D7-1-outside-project |
| C4 | ROUGH | `sleep 60` asked, allowed, Stop tapped: "You stopped this reply.", tool card "Tool failed. Tool execution interrupted", chat usable (a "Continue" chip offered). Works; the running row is labelled "No reasoning available." | C4-1-sleep-card, C4-2-running, C4-3-stopped |
| C5 | ROUGH | Work folds into "N steps" / "Ran 1 command" lines and opens. The folded line shows "No reasoning available." which reads oddly; live status line while running showed "Working . 22 s" | C5-1-after-write, C5-2-folded-open |
| C6 | PASS (partial) | One-line header: title, quiet "my-app" project line, menu with Tasks, Changes, Timeline, Find, Continue with... The context ring (needs >50%) not reached | C6-1-menu-tasks-running |
| F3 | PASS | Review changes: index.html new file, +10 -0, lines wrap; later 5 files with Change 1 of 5 and next/previous. Wrapping of very long lines not tried | F3-1-changes, F3-2-review-5files |
| F2 | PASS | Files: 5 changed files list; a.csv as table, a.md rendered (heading, bold), a.svg red circle with zoom controls, a.json with line numbers; search "PONG" finds a.json | F2-2-browse, F2-5-json, F2-6-csv, F2-6-md, F2-6-svg, F2-8-md, F2-9-svg, F2-11-search, F2-7-chat-made-files |
| F4 | PASS | Terminal on this phone: key bar (Esc, Tab, Ctrl, Alt, arrows) above Gboard, typing and `ls` work, `seq 1 300` scrolls, Ctrl-C stops `sleep 100`. Note: `adb input text` mangled `%` characters, not an app fault | F4-1-terminal, F4-2-typed, F4-3-ctrl-c, F4-4-ls |
| K1 | SKIPPED (not proven) | Never captured the notification while a reply was running (shade shots showed the idle row only). Open item | none |
| K2 | SKIPPED | Needs a needs-you notification with Allow/Deny from the shade; not exercised | none |
| K3 | SKIPPED | Not captured (single finished reply, no grouped rows seen) | none |
| K4 | PASS | Shade shows "OpenCode Mobile . on this phone / Ready . nothing running / Your agent keeps working while you use other apps." with New chat and Stop OpenCode | K4-1-ready-row |
| K9 | ROUGH | Settings > Background: "Stay connected in the background" on, "Running now", 6-hour Android 15 explanation. Copy glitch: "On this Google, allow these:" (maker name inserted where a sentence needs the phone brand); the "Open" labels collide with the description text on "Don't optimize battery" and "Allow background activity" | K9-1-background |
| N2 | PASS | Report a problem: "Review report" shows the exact text, GitHub-is-public warning, Open GitHub form / Copy report / Share; diagnostics lines are timings only, no secrets seen. Minor: lines read "OCTRACE OCTRACE" doubled | N2-1-report, N2-2-review |
| N3 | PASS | Recent app exits: "No unexpected closes recently." with one routine close folded and expandable; "No crash reports yet" | N3-1-exits-section, N3-2-exits-expanded, N3-0-scrolled |
| N4 | ROUGH (partial) | "Save crash reports on this phone" toggle is on and explained ("Never sent automatically"); a real crash was not triggered so saved report, preview and share were not seen | N4-1-consent-exits-expanded |
| N7 | PASS | About: "OpenCode Mobile 1.4.0+2370"; Details shows package id and signing SHA-256 `1DE5BF08...D60C` = the local release key. (Matrix expected +54; this build is 2370) | N7-1-about, N7-3-details |
| L5 | PASS | Dark default; Light chosen: Conversations and chat have off-white panels, readable text, no red | L5-1-appearance, L5-2-light-appearance, L5-3-light-conversations, L5-4-light-chat |
| A13 (last) | PASS | This phone > Remove OpenCode: sheet says conversations and settings are deleted and projects stay; "Remove OpenCode, keep my projects" and "Delete everything..." (type OpenCode to confirm). Used Delete everything: afterwards This phone shows "OpenCode 2 - Not set up" with "Set up OpenCode". Android system "Clear storage" route not tried | A13-1-bottom, A13-2-warning, A13-3-delete-everything, A13-4-typed, A13-5-after, A13-6-later |

Counts: PASS 15 (incl. 2 partial), ROUGH 9, SKIPPED 4 (C7, K1, K2, K3), FAIL 0 outright.

## Failures and rough spots (reproduction)

1. A4 setup stall. Wiped Pixel_6, install, Welcome > On this phone > default setup. Expected: all steps Done in about 6 min. Saw: no progress for ~8 min on 2 GB and on 4 GB; recovered only via details > Continue setup and an app force-stop; a later step (Python) stopped once more. Total ~35 min. Also a one-line log "Termux RUN_COMMAND permission is required" every minute while setup ran.
2. A11 AI Team first attempt stopped before finishing; Continue setup fixed it (same pattern as earlier SIGTERM record).
3. E1 model naming mismatch: chip "Cat Jam Free" vs notice and Settings "Nemotron 3.5 Super VL Free".
4. D7 the card for a file write says "Open this folder? /etc/*".
5. C4/C5 "No reasoning available." shown as the label of a folded command row.
6. K9 "On this Google, allow these:" and "Open" label overlapping text.
7. N2 diagnostics lines print "OCTRACE OCTRACE".

## Not run, and why

- K1/K2/K3: notification shade during a running reply, Allow/Deny from the shade and grouped finished replies were not captured; rerun with a longer-running prompt and a shade screenshot taken within seconds.
- C7: chip-to-box result not confirmed.
- D3 Allowed actions list/removal, D4 sub-agent inheritance, C6 context ring, N4 real crash: not exercised.
- Matrix asked for 4 GB; first attempt was 2 GB, final run 4 GB.
