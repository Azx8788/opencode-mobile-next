# Scheduled prompts run again: emulator proof, 2026-10-17

Branch `fix/schedule-run` (based on `int/ui-batch-2026-10-14` at 2ee28f7b9). Release proof P1 rows Q2 and Q8 had
every scheduled run end as "Failed · The agent could not be reached".

Device: emulator-5554 (AVD `OC_API35`, Android 15). Servers:
- (a) OpenCode 2.0.29 on this PC, `0.0.0.0:4097`, added in the app as `http://10.0.2.2:4097` with "Allow HTTP for this server".
- (b) the app's in-app phone server (In-app Ubuntu, OpenCode 2), set up on this emulator.
The model was the free `opencode/deepseek-v4.1-flash-free`. No password is shown anywhere.

## Root cause

`lib/scheduling/agent_connection.dart` (`ScheduledAgentConnection.open`, the `Api2Client.connect` call) built the
scheduled transport without `cleartextConfirmedOrigin` and without the certificate pin. The background isolate did
load the person's plain-HTTP consent (`ProfileStore.loadForWidgetAction`), but the transport never got it. Its request
guard (`validateServerTrust` in `lib/api2/transport.dart`) therefore refused the first health call with
`ServerCleartextConsentException`. The runner recorded that as `unavailable`, which reads as "could not be reached".
The foreground connection (`lib/state/connection/connect.dart`) and the widget runner pass both values; this path did not.

## Builds

| Build | What it has |
|---|---|
| 2390 | Installed before this work. Shows the failure. |
| 2480 | Fix 1: the scheduled transport carries the plain-HTTP consent and pin. Delivery works. |
| 2481 | Fix 1 plus fix 2: a schedule for an existing conversation keeps that conversation's model. |

Fix 2 came out of the 2480 run. The prompt arrived, but the schedule had copied the app-wide default model (GPT-5.6 Sol,
whose sign-in had lapsed on this server) and switched the conversation to it. So no reply came back (a4).

## Screens

Before the fix, build 2390, plain-HTTP server, app swiped away:
- [a0](a0-before-fix-2390-failed.png): the same failure as Q2. History says "Failed · The agent could not be reached".

Build 2480, plain-HTTP server, app swiped away. After the swipe there was no app process (`pidof` was empty):
- [a1](a1-http-scheduled.png): "Once", next run in 2 minutes.
- [a2](a2-http-recents-before-swipe.png): Recents before the swipe.
- [a3](a3-http-notification.png): "Your scheduled prompt started".
- [a4](a4-http-conversation-reply.png): the prompt reached the conversation. "Model → gpt-5.6-sol" shows fix 2's bug: no reply.
- [a5](a5-http-history-started.png): history says "Started".

Build 2481, in-app phone server (b), every app task swiped away:
- [b1](b1-inapp-scheduled.png): the schedule.
- [b2](b2-inapp-recents-before-swipe.png): Recents before the swipe. [b2 cleared](b2-inapp-recents-cleared.png): "No recent items".
- [b3](b3-inapp-notification.png): "Your scheduled prompt started".
- [b4](b4-inapp-conversation-reply.png): the conversation has the scheduled prompt and the reply "INAPP". The model was not switched.
- [b5](b5-inapp-history-started.png): history says "Started".

Build 2481, plain-HTTP server (a), every app task swiped away:
- [c1](c1-http-scheduled.png): the schedule.
- [c2](c2-http-recents-cleared.png): "No recent items".
- [c3](c3-http-notification.png): "Your scheduled prompt started".
- [c4](c4-http-conversation-reply.png): the scheduled prompt and the reply "PLAINHTTP".
- [c5](c5-http-history-started.png): history says "Started".

## Notes

- For the 2481 runs the app process stayed alive after the swipe. The in-app server's foreground service keeps it
  running. The scheduled run still happens in its own background engine, as in the closed-app 2480 run.
- (b) ran while the in-app server was already up. The path that starts the phone server for a run
  (`acquirePhoneServer` with `started == true`) was not exercised here.
- Tapping a "started" notification opened the conversations list, not the scheduled conversation. Q2 saw something
  similar. Fixed in the follow-up below.
- Tests: `test/scheduled_prompt_runner_test.dart` (consent and pin reach the scheduled transport; an unallowed
  plain-HTTP server names itself) and `test/scheduled_prompt_screens_test.dart` (failure copy, schedule seed). With
  each fix reverted, its test fails.

## Follow-up: notification tap and certificate copy (branch `fix/schedule-run-2`, builds 2490-2492)

**Notification tap.** Build 2490 had a Dart-side fix: the payload is resolved by `resolveScheduledOpen`, and the route
waits for the startup connection. The tap still opened the Conversations list. A diagnostic build (2491, not committed)
showed `consumeOpen` returned no extras, and `dumpsys activity intents` showed the run's PendingIntent was never sent.

The cause was Android. It had folded the scheduled notification and the in-app server's ongoing "Ready" notice into one
automatic group ("2"). A tap on that collapsed row starts the app through the group's own intent, without the run's
extras. Starting `MainActivity` directly with the same extras routed correctly. Build 2492 gives the scheduled
notification its own group key, so it is never folded.

Build 2492, in-app server, every app task swiped away, "once in 2 minutes":
- [d1](d1-notification-standalone.png): the scheduled notification stands on its own. The "Ready" notice sits apart under Silent.
- [d2](d2-after-tap-conversation.png): after the tap, the app opens that schedule's conversation with the scheduled prompt and its reply "ROUTED".

A failed run without a conversation routes to the schedule's history. `test/scheduled_prompt_open_route_test.dart`
covers this, and the diagnostic build showed it too: a direct start whose session the schedule never used opened
Scheduled prompts. The morning summary carries an empty schedule ID. That never matched `'__digest'`, so the summary
tap opened nothing; it now opens the history.

**Changed certificate.** The transport now tags trust refusals, and the runner records `certificate_changed` (or
`certificate_invalid`) instead of `unavailable`. History then reads "The server's certificate changed. Open the server to
check it before the next run." `test/scheduled_prompt_runner_test.dart` covers this. This was not shown on the emulator.

Note: the app process stayed alive after the swipe here, because the in-app server's service keeps it running. So
this run did not exercise a cold-start race between the tap and the startup connect. The Dart wait guards against
that race, but no test or device run covers it.
