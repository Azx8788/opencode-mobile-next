# Widget picker entries, 2026-10-17 (build 2500)

Owner report: a widget is dropped square when the user picks wide. A launcher takes one size per provider, so the app declared only 2x2. Each approved size is now its own picker entry (own receiver, own appwidget-provider file, preview, label and description); every entry is freely resizable and draws through the same renderer.

| Picker entry | Declared size | Placed from the picker at | Shot |
|---|---|---|---|
| Conversations | 2x2 (default) | 2 wide, 4 tall cells on this launcher grid (its drop was held to the free column) | [shot](conversations-2x2.png) |
| Conversation, wide | 4x2 | full width, 2 rows | [shot](conversation-wide-4x2.png) |
| Conversations list | 4x4 | 3 columns wide, 4 rows (icons took the first column) | [shot](conversations-list-4x4.png) |
| Conversation strip | 4x1 | full width, 1 row | [shot](conversation-strip-4x1.png) |
| Usage | 2x2 (default) | 2x2 | [shot](usage-2x2.png) |
| Usage, wide | 4x2 | full width, 2 rows | [shot](usage-wide-4x2.png) |

The picker itself lists all six under "OpenCode Mobile" with their sizes: [shot](picker-entries.png).

Each shot is one screen with that entry as dropped from the picker on a Pixel_6 emulator (API 34). The widgets read "Open the app to connect" because this fresh emulator install had no live connection when they were placed; their size, not their content, is what this record proves. Content in each size is covered by `docs/qa/widget-sizes-2026-10-16/`.

## Gaps

- The 2x2 conversations entry was dropped in a column squeezed by app icons, so it is taller than 2 cells in that shot; the picker lists it as 2 x 2. The list entry likewise landed 3 columns wide. This is the launcher fitting a drop around icons, not the entry's declared size.
- The update fan-out is proved by `WidgetProvidersTest` (no widget lookup skips the list) and by the code path (`refreshAll` walks `WidgetProviders`), not by watching a live change reach all six entries at once.
- A Nubia NX721J launcher was not available; the pre-Android-12 `minWidth`/`minHeight` path is checked in unit tests only (`legacyHeight`).

## Checks

- Kotlin `:app:testReleaseUnitTest --tests '*Widget*'`: 97 tests, 0 failures (WidgetProvidersTest adds 6).
- `tool/qa/preflight.sh int/ui-batch-2026-10-14`: OK.
- Diff against `int/ui-batch-2026-10-14` (f92b30f4d): 15 files, all widget manifest/xml/strings/Kotlin/tests; no file deleted, no unrelated file changed.
