# Conversations list widget mirrors the Conversations screen (2026-10-17)

Cause: the widget snapshot was fed only from the active controller's
`sortedSessions()` (current project, active profile), so a 4x4 widget showed one
two-day-old chat while the app listed a dozen across projects and connections.

Change:
- `ConnectionController.notifyListeners` also passes `others:` built from the
  merged chat feed (`chatFeed()`: all projects, all connections, subagents
  excluded) minus sessions the controller already holds (`widgets.dart`).
- `WidgetSessionSnapshot.update` merges them: needs-you, running, then newest,
  capped by `maxSessions`. Foreign rows carry only title, project name,
  updatedAt, busy (no preview, model, ask, todos, actions). Own rows are
  unchanged; with no foreign rows the order is unchanged. Running/pending
  counts include foreign rows.
- Tap: no Kotlin change. `_scheduleCodingAlertRoute` calls
  `openWidgetConversation(sessionID)` for widget taps: it opens the feed row
  with `openChatFeedItem` (switching project/connection as the list does) and
  then pushes the chat; if the row is not found it shows `/home`.

Privacy: titles/projects go through `safeWidgetTitle`/`safeWidgetProject`; no
directory, path or address is added; the tap carries only the session id and
the active profile id as before.

Tests (focused):
- `test/widget_snapshot_test.dart`: foreign rows ordered ask, run, new, old;
  plain details; no path leak; own row keeps its preview.
- `test/side_connections_test.dart`: `openWidgetConversation` on a Termux row
  opens it on Termux's own connection; unknown id returns false.
