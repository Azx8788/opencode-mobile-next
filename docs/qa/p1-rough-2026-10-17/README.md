# p1-rough fixes, emulator check (2026-10-17)

Build 2485 (items B4, Q1, M2, M3) and build 2486 (B5, which needed a second fix), release APKs from `tool/qa/vps_build_apk.sh`, Pixel_6 emulator (emulator-5570, wiped). Servers: OpenCode 2.0.28 on port 4099 and a throwaway-cert TLS proxy on 4443, both in a scratch dir. No credentials shown.

| Item | Screenshot | What it shows |
|---|---|---|
| B4 names | [servers sheet](B4-servers-sheet.png) | "Computer at 10.0.2.2:4443 (secure)" and "Computer at 10.0.2.2:4099" |
| B4 form | [form](B4-form-one-notice.png) | the certificate notice appears once |
| B5 | [before](B5-before-fix-build-2485.png) [after](B5-edit-certificate-only.png) [trust choice](B5-trust-choice.png) | after: only the certificate state with Re-check; Re-check leads to "Trust replacement certificate" (not tapped) |
| Q1 | [time sheet](Q1-time-sheet-keyboard.png) | keyboard open, AM/PM whole above Set |
| M2 | [resent](M2-resent-once.png) | after "Send again" the prompt shows once, no Waiting card |
| M3 | [reopened](M3-reopened-composer-empty.png) | app force-stopped at send: the unconfirmed marker shows, composer is empty |

Notes: the first B5 fix (build 2485) did not hide the line on the Edit server page; the emulator caught it and build 2486 fixes it. M3's duplicate-in-composer case needs the kill to land before the draft is cleared; the timing is not reproducible on demand, so that exact case is covered by `test/queue_single_prompt_test.dart` (fails without the fix). G1 (install bytes) was not run on the emulator: it needs the in-app Linux setup and a 250 MB download.
