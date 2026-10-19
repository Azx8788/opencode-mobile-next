# Scheduled prompts: frontend contract — 2026-10-15

Status: implementation contract, not runtime qualification.

Finish line: create a schedule from a conversation or project, execute a bounded
background prompt with the app closed, find its ordinary conversation through a
notification and run history, and edit, pause or delete it across restarts/reboot.
Non-goals: widget changes, OC1 removal, transport trust changes, arbitrary cron,
unattended permission approval, external host setup and production deployment.

## Product and timing

Schedules belong to a saved profile and pinned project/workspace; a target is
an existing conversation or a new conversation each run. The chosen agent and
optional model are captured at save, never silently replaced with current UI
selection. Authentication is resolved from the profile's existing secure store.

- Weekdays at local HH:mm (initial choice 08:00), every N whole hours (1–168),
  or once at an absolute future instant.
- Weekdays follow the device timezone; intervals use a fixed UTC anchor and do
  not drift. Time/timezone changes re-arm calendar schedules.
- A delivery more than 15 minutes after its due instant is late. User choice:
  one catch-up execution, or a skipped history entry. Multiple missed intervals
  collapse into one record; no burst replay. Next run advances into the future.
- Exact-alarm access is optional. Without it Android schedules approximately.
  Even with it, Android, connectivity and battery restrictions can delay work.
  Force-stop prevents execution until the person opens the app again.
- Pause cancels future triggers. Delete removes schedule and its history.
  Neither reverses a prompt already sent. An edited revision invalidates old
  alarms. Busy conversations are skipped; no queue, steering or interrupt.

## Dart API (owned by schedule coordinator)

`ScheduledPromptsController` is a ChangeNotifier with `load()`,
`save(ScheduledPrompt)`, `setEnabled(id, enabled)`, `delete(id)`,
`setDigest(ScheduledPromptDigest)`, `refreshPlatformStatus()`,
`requestExactAlarm()`. It exposes `schedules`, `runs`, `digest`, `loading`,
`errorCode` and `platformStatus`. Screen construction receives controller and
an optional target; controller is scoped to one profile. Mutation failures are
visible and do not report a saved schedule. Successful persistence is followed
by replacement of that profile's native alarm index.

`ScheduledPromptStore` exposes `load(profileId)`, `save(schedule)`,
`delete(profileId,id)`, `setEnabled(profileId,id,bool)`,
`history(profileId,{scheduleId})`, `recordRun(profileId,run)`,
`digest(profileId)` and `setDigest(profileId,settings)`.

`ScheduledPrompt` fields: id, profileId, profileFingerprint, prompt,
projectPath, workspace?, sessionId?, agent?, modelProviderId?, modelId?,
recurrence, missedPolicy, enabled, nextRunAt?, createdAt, revision.
`ScheduleRecurrence`: once(at), weekdays(hour,minute), interval(hours,anchor).
Run fields: id, scheduleId, scheduledAt, startedAt, finishedAt?, status
(running/ran/failed/skipped), late, sessionId?, errorCode?. `ran` means prompt
accepted into an ordinary conversation, not an assertion that an AI task
succeeded. UI uses “Started”; completion requires observed terminal state.

Native compare-and-set serializes edits and background history writes across
Flutter engines. Store key `oc.scheduledPrompts.<profileId>` contains version 1
schedules, bounded history and digest preference. Profile deletion removes it
through the existing sweep; native index/claims also use profile-scoped keys.
Corrupt or unknown schema is an admission failure, never empty-success data.

## Native/background contract

Channel `oc/scheduled_prompts`:

- `readStore {key}` → JSON string or null.
- `casStore {key,expected,value}` → bool; synchronized and profile-existence
  fenced. CAS failures retry from a fresh read, not a stale cached envelope.
- `replaceProfile {profileId,entries:[{id,revision,dueAtMs}],digestAtMs?}`.
- `cancelProfile {profileId}` cancels pending work before profile deletion.
- `status` → supported/exactAllowed/batteryExempt/notificationsAllowed.
- `activePhoneLease` → bool; private admission check before interactive sends
  to the managed phone server. A true result blocks the send until the bounded
  scheduled run releases its server; unrelated remote agents are unaffected.
- `requestExactAlarm` opens Android's permission settings on an explicit tap.

AlarmManager uses SCHEDULE_EXACT_ALARM when allowed, with unique WorkManager
fallback; boot, clock and permission changes re-arm saved entries. Neither
native alarm extras nor notifications contain prompts, paths or credentials.
The native worker claims `id:revision:dueAtMs` durably before execution, runs one
bounded headless engine, and does not retry uncertain sends. A stale claim is
reported as interrupted, never reissued. WorkManager lifetime is bounded below
ten minutes; there is no continuous dataSync foreground service assumption.

Entrypoint `scheduledPromptMain` registers `ready`, accepts `execute` with
profileId/scheduleId/revision/scheduledAtMs/deadlineEpochMs, and returns
status/error?/sessionId?/late. It reloads saved profile and schedule, verifies
revision/fingerprint/deletion, opens a short-lived gateway, negotiates current
protocol, verifies target and busy state, then makes one prompt attempt.
Remote gateway acceptance leaves server work running. A phone-runtime lease
starts only an installed managed runtime when needed, waits within budget,
and stops only the exact runtime instance the lease started. A timeout or
permission wait is recorded honestly with its conversation. A run never
auto-approves permission requests or retries a potentially accepted mutation.

OC2 dispatch uses health/dialect negotiation then gateway create/prompt.
Codex direct and Paseo require cold-session hydration before checking busy;
locally cached status alone is not authoritative. There is no atomic remote
“send only if idle” primitive: a competing external client remains a race.
Unsupported authentication, changed routing or unavailable phone ownership
refuses dispatch rather than constructing another connection path.

## UI states and copy keys

Kit-only screen and editor: empty, loading, scheduled, paused, completed-once,
failed-to-save, unavailable, history. Ordinary options precede advanced timing
and missed-run policy. Existing navigation levels are reused. Transitions
150–250 ms; no red; amber only when the person must act. EN and AR copy is
required, with generated localization after copy settles.

Keys (prefix `schedule`): Title, Create, Edit, Prompt, Target, ThisConversation,
NewConversation, Agent, Weekdays, EveryHours, Once, Time, Hours, NextRun, Save,
Pause, Resume, Delete, History, Started, Running, Failed, Skipped, Late,
MissedRuns, CatchUp, SkipMissed, TimingNotice, ExactAccess, BatteryNotice,
Digest, DigestDescription, Empty, NoHistory, Unsupported, SaveFailed,
NeedsYou, Busy, Unavailable, TargetChanged, Interrupted, Timeout,
PhoneBusy, PhoneCheckFailed,
NotificationTitle, NotificationBody, DigestTitle, DigestBody.

Errors are stable codes with localized fixed copy: unavailable, unsupported, stale_target, wrong_project, busy, auth_required,
needs_you, timeout, interrupted, uncertain_delivery, missed, agent_failed.
Store errors include stale_schedule, schedule_expired and storage_unavailable.
No raw server error, prompt or credential appears in notifications/history.
History can open its resulting conversation even for a failed/uncertain run.

Morning digest defaults OFF, per profile, initially 08:00 local. It counts
started/failed/skipped records since its last durable delivery cutoff, without
model-generated text or prompt content. A claim is saved before notification;
a crash can miss a digest but cannot duplicate it. Empty periods are silent.
Taps open schedule history; individual run notifications open their session
through revalidated profile routing. Denied notifications do not erase history.

## Ownership and acceptance

- Model/store worker: new lib/scheduling model, recurrence, store and unit tests.
- Native worker: new scheduler/worker/lease Kotlin, manifest and registration,
  Gradle dependency, scheduler Kotlin tests. No widget source edits.
- Dispatch worker: new gateway lease/runner Dart and tests. No protocol edits.
- Coordinator: contract, controller, entrypoint, kit UI, navigation, localization,
  profile deletion hook, catalog, integration and evidence.

Each worker owns its writes and reads the contract; shared-library edits remain
with one owner. Review is source-only; coordinator serializes heavy checks.
Acceptance includes recurrence/DST/missed-policy/claim tests, persistence/edit/
delete tests, gateway failures and cleanup, native re-arm/dedup tests, widget
flows, analyzer/preflight/full suite, then emulator-5562 only: create, next-run
list, closed-app notification and history captures. No owner phone/server,
push, release or production claim is part of acceptance.

References: [existing reminders](../check-in-reminders.md),
[research gap 3](../../marketing/launch-2026-10/VOICE-OF-USERS.md),
[Android alarms](https://developer.android.com/develop/background-work/services/alarms),
[exact access](https://developer.android.com/about/versions/14/changes/schedule-exact-alarms),
[foreground limits](https://developer.android.com/develop/background-work/services/fgs/timeout).


## Implementation checkpoint

The Android store is the cross-engine authority: its CAS envelope, claim ledger,
index and failure recovery share one lock. Native recovery writes interrupted
history and advances a matching recurrence even if Dart cannot start; boot and
foreground registration rebuild from envelopes so a crash between save and
index registration cannot lose a schedule. Deletion retains a native tombstone
until the profile registry commits, then the profile sweep removes all keys.
The morning digest preserves an already-due cutoff while other prompts settle.

Available adapters: saved OC2, Codex direct and Paseo connections; the installed
managed OC2 server also has a bounded process-identity lease. Transient in-app
phone-agent helper targets remain unavailable: their credential/ownership
routing has no qualified cold helper lease. They are not silently mapped onto
an OC2 target. No OC1 adapter or widget file was changed.

The final emulator test uses a deterministic OC2 QA fixture with explicitly
labeled responses. It proves app-closed scheduling, persistence, notifications
and normal conversation routing, not real model/provider execution.

## Device-found timestamp regression

Store transition identity compares timestamp instants with full microsecond
precision. Local `DateTime.now()` values become UTC on serialization; their
`isUtc` flag is not part of run identity. This applies to the pre-send session
checkpoint, terminal receipt and next-occurrence compare-and-set. Terminal
status and routing remain immutable.

## Temporary phone-server admission

An owned temporary server keeps its hard guest timeout and watchdog. Interactive
composer, retry, queue, slash/shell and bound GenUI sends check `activePhoneLease`
immediately before dispatch; active leases use `schedulePhoneBusy`, and a failed
check uses `schedulePhoneCheckFailed`. Remote agents skip this phone check.
`oc.schedulePhoneLease.<profileId>` stores only private lease identity and bounded
boot/elapsed-clock deadlines, before launch, so process death cannot expose a
still-running guest to interactive work. A reboot invalidates the old marker;
wall-clock changes on the same boot cannot shorten its monotonic deadline.
The foreground widget voice/steer call sites belong to the separate widget job;
their matching two-line guard integration is pending the owner scope decision.
