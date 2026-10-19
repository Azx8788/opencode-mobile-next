# Agent and provider marks, RTL mirroring, glyph meaning (2026-10-18)

Branch `fix/agent-marks`, base `int/ui-batch-2026-10-14` (564d6a4f1). Evidence is
widget/golden renders only; no emulator, no phone.

## What changed

1. **Agent marks.** Every agent with a logo shows its own single-colour mark
   instead of the shared terminal glyph: Claude, Codex, Gemini, Qwen, Goose,
   Pi (also worn by Oh My Pi, a Pi build) and OpenCode (`opencode` and
   `opencode2`). `fx` has no logo and keeps the generic glyph. Drawn by the new
   kit part `KitMark` in the surrounding icon colour (no brand colours), at the
   neighbouring Phosphor glyph's size (20 dp) with an 8% inset so the optical
   weight matches. Wired through `KitRow.icon`, `KitRowIcon`,
   `KitChip.summary` and `KitFeedItem(agentMark:)`; a chat row from a non-default
   agent now shows its mark before the agent name in the meta line.
2. **Provider logos.** Lookup order: bundled mark, then the cached models.dev
   download (unchanged: sparkle "no logo" detection, weekly refresh, size and
   type checks), then initials. 79 marks are bundled; they cover 102 of the 232
   provider ids models.dev lists (2026-10-18), so most providers draw offline.
   The remaining 130 ids are small gateways and hosts that lobe-icons has no
   logo for (for example helicone, requesty, scaleway,
   vultr, hetzner, databricks, gitlab, clarifai); they still get their models.dev
   logo, or initials when models.dev has none. A loaded logo now has an opaque
   backing so thin marks do not show the initials through. `PRIVACY.md`, the
   Arabic copy and the site say common logos are bundled and the rest are
   downloaded from models.dev by provider name and cached.
3. **RTL mirroring.** See the table below.
3b. **Glyph meaning.** See the second table.

## Licences

All 79 marks in `assets/marks/` are from **lobe-icons** (LobeHub), set
`x-lobe-icons` in the agent-glyphs skill, **MIT**. Licence text:
`LICENSES/MIT-lobe-icons.txt`; notice in `THIRD_PARTY_NOTICES.md` ("Agent and
provider marks"). Files are unchanged except for dropping `<title>`; all use
`fill="currentColor"`. Brand logos remain trademarks of their owners and are used
only to name the agent or provider.

Agents use claude, codex, gemini, qwen, goose, opencode, pi (and copilot for the
GitHub Copilot provider); the rest are provider marks. The id-to-mark table is
`lib/domain/mark_catalog.dart`.

## RTL mirroring (`matchTextDirection`)

191 `AppIconography` entries audited against the skill's rule. Before: 9 true.
After: 12 true, pinned by `test/app_iconography_mirroring_test.dart`.

| Entry | Glyph | Before | After | Why |
|---|---|---|---|---|
| login | signIn | no | **mirror** | arrow enters the door in reading direction |
| externalLink | arrowSquareOut | no | **mirror** | arrow points up and toward the end, like Material open_in_new |
| returnKey | keyReturn | no | **mirror** | the return arrow runs against the reading direction |
| chevronUp, chevronDown | caret | mirror | mirror (kept) | vertical and symmetric, so the flag is a no-op; left as it was so no RTL render changes |
| back, forward, chevronLeft, chevronRight, nested, reply, undo | | mirror | mirror | unchanged, correct |

Left alone on purpose (objects, rotation or contract): send (arrow up),
retry/restart/sync (rotation), history/restore (clock), play/pause/stop, volume,
chat bubbles, launch, text-line glyphs (`docs/design/iconography/contract.md`
limits mirroring to navigation directions).

## Meaning audit (Phosphor 2.1.0, no library change)

Fonts are the full Phosphor TTFs under `assets/fonts/phosphor/`; every glyph is a
`const IconData` under `@staticIconProvider`, so release tree-shaking keeps the
new ones. All 191 entries and ~2,700 uses were read; only wrong picks changed.

| Entry | Used for | Old glyph | New glyph | Why |
|---|---|---|---|---|
| networkCheck | "Test connection", "Check address" | speedometer | wifiHigh | a gauge reads as speed, not "does it connect" (a connected plug was tried and read as a broken plug at 20 dp) |
| lowPriority | Move to background chip and notice, board "Priority" | arrowDown | caretDoubleDown | was the same drawing as `down` (jump to bottom); a double caret reads "lower" |
| inbox (3 call sites: first-run notify sheet, chat notify offer, Automation "needs you" consent) | "Notify me when the agent needs you" | trayArrowDown | notificationImportant (bell ringing) | notification offers showed an inbox tray |

Reviewed and kept (reason): Settings = slidersHorizontal and projects =
buildings (fixed by the iconography contract, with visible labels); systemTheme
and contrast share circleHalf but sit on different screens; restart
(counter-clockwise) vs retry (clockwise) are different acts; privacy / policy /
secureNetwork share shieldCheck for one meaning (privacy and safety).

## Evidence (one screen per image; `before/` = prior golden, `after/` = new)

| Screen | Before | After |
|---|---|---|
| Agent picker (mixed rows) | before/agents_sheet_mixed_light.png | after/agents_sheet_mixed_light.png |
| Agent picker (list) | before/agents_sheet_list_light.png | after/agents_sheet_list_light.png |
| Settings > Agents | before/agents_settings_many_light.png | after/agents_settings_many_light.png |
| New chat, agent chip (Claude Code) | (terminal glyph) | after/agents_new_chat_chip_light.png |
| Conversations list, Claude Code row | before/agents_home_status_light.png | after/agents_home_status_light.png |
| Provider list (all marks, 412 wide) | initials only offline | after/providers_marks_list_light.png, after/providers_marks_list_dark.png |
| Chat notify offer | before/chat_notify_light.png | after/chat_notify_light.png |
| Notifications and background | before/p67_consent_answers_light.png | after/p67_consent_answers_light.png |
| Running work sheet (background notice) | before/chat_running_work_sheet_loaded_light.png | after/chat_running_work_sheet_loaded_light.png |
| Add server, Test connection | before/add_server_failed_light.png | after/add_server_failed_light.png |

Judged on the renders: marks sit centred, are not clipped, and weigh like the
Phosphor glyphs beside them (the dimmed rows keep their muted tone). Dark
variants and 1280x800 renders are in `test/goldens/`.

## Checks run

`flutter analyze lib test tool` clean. Focused: `provider_logo_store_test`
(marks list matches the folder, every catalog agent resolves, store never
fetches), `provider_logo_test`, `app_iconography_mirroring_test`,
`app_iconography_test`, `kit_ratchet_test`, `agents_ui_test`,
`chats_new_chat_test`, `model_picker_test`, and the goldens listed above. Full
suite not run.
