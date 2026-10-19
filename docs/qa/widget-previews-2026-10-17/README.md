# Widget picker previews, 2026-10-17 (build 2510)

Review found the Conversation, wide preview blank and the Usage, wide preview one row on the old green bar. All six previews are now static layouts with sample content in the live look, each filling its own cell size. Each picker shot shows the whole preview with its label, in dark and light system themes (Pixel_6 emulator, API 34).

| Entry | Size | Preview content | Dark | Light |
|---|---|---|---|---|
| Conversations | 2x2 | Ready card: status, title, "3 min ago", Ask a follow-up pill with green mic | [dark](dark-conversations-2x2.png) | [light](light-conversations-2x2.png) |
| Conversation, wide | 4x2 | Needs-you card: question, command, From, Reject / Open / Allow once | [dark](dark-conversation-wide-4x2.png) | [light](light-conversation-wide-4x2.png) |
| Conversations list | 4x4 | Header "1 needs you · 1 working", a needs-you row with Allow, a working row, four ready rows, the new-conversation pill | [dark](dark-conversations-list-4x4.png) | [light](light-conversations-list-4x4.png) |
| Conversation strip | 4x1 | Working strip with live step and mic | [dark](dark-conversation-strip-4x1.png) | [light](light-conversation-strip-4x1.png) |
| Usage | 2x2 | Two providers, two windows each, ink bars at 62% and 18% | [dark](dark-usage-2x2.png) | [light](light-usage-2x2.png) |
| Usage, wide | 4x2 | Same, two columns wide | [dark](dark-usage-wide-4x2.png) | [light](light-usage-wide-4x2.png) |

Bars match the live widget (`WidgetLayoutPolicy.usageBar`): ink fill on a faint ink track (new `widgetInk`, `widgetBarTrack` at 0x38 alpha and `widgetAmber` colours in light and dark). Previews are static drawables and sample strings (English and Arabic); there is no data and no raw id.

## Empty state

A placed 4x2 with nothing to show: the message is centred across and down the card and an "Open" pill below it is the way in (tapping the card does the same): [shot](empty-state-4x2-dark.png). The empty list centres its message the same way (layout change; not shot separately).

## Gaps

- Preview sizes were judged on one launcher (the Pixel_6 emulator's). The previews are match_parent layouts, so they scale with each launcher's cell, but another launcher's rounding was not seen.
- The 2x2 usage preview uses "Wk 18% left" for its second window so it is not cut at that width; the wide one reads "Week 18% left".
- The empty list was not shot placed; the empty 2x1 and 4x1 keep their one centred line.
- Light-theme placed widgets were not re-shot here (see `docs/qa/widget-sizes-2026-10-16/`).

## Checks

- Kotlin `:app:testReleaseUnitTest --tests '*Widget*'`: 99 tests, 0 failures (WidgetProvidersTest adds previews and usage-bar checks).
- `tool/qa/preflight.sh int/ui-batch-2026-10-14`: see the final report.
