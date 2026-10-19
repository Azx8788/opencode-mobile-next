# First-run polish, 2026-10-18 (branch fix/first-run-polish)

Seen on a fresh install of release 2550 (Android 15 emulator). Emulator and phone not used for proof; tests only.

## 1. Notification permission never asked
Cause: nothing on the setup path requested POST_NOTIFICATIONS; the progress screen only promised "We'll notify you".
Fix: `PhoneSetupProgressScreen` asks once per app run when it opens (existing `oc/voice` request, which returns true at once if already granted and which Android stops showing after repeated refusals). Until the answer is yes the note says "Setup keeps going. Open OpenCode again to see how far it got." (en and ar).
Tests (`test/phone_setup_progress_screen_test.dart`): asks once; declined shows no "notify" promise. Both fail with the ask removed.

## 2. False problem badge
Cause (code-proven, device store not readable): the Settings badge counts error and android-exit entries. `AppExitRecovery` kept every notable exit, including a force stop of an idle app (reinstall, "clear data", `am force-stop`, swipe), as a problem. Nothing of ours was running, so it is not a failure.
Fix: a force stop with no server/team running is no longer recorded. Crashes, memory kills and any stop that took the server or team still are.
Test (`test/app_exit_recovery_test.dart`): idle stop records nothing; crash and stop-with-server still record. Fails without the fix.
Unproven: which two entries the owner saw (release build; the emulator's store could not be read). If one was an uncaught error it is not covered.

## 3. List widget has no Reject
Fix: both list row layouts gain a Reject pill (`wc_btn2`) before Allow, shown only when the widget is at least 290dp wide (`WidgetLayoutPolicy.listShowsReject`), so the question keeps room. Narrower 4-cell lists keep Allow alone; the card layout and the app still offer Reject.
Tests (`WidgetSessionCardLayoutTest`, run with `./gradlew :app:testReleaseUnitTest --tests '*WidgetSessionCardLayoutTest*'`): layout has the pill before Allow, hidden by default; width policy. The layout test fails with the XML reverted. Not seen on a launcher.
