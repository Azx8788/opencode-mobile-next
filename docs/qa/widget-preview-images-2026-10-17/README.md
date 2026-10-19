# Widget picker preview images (2026-10-17)

Static `android:previewImage` PNGs for the six home-screen widget entries, light
(`res/drawable-nodpi`) and dark (`res/drawable-night-nodpi`). Launchers that
cannot inflate `previewLayout` (ZTE/Nubia `com.zte.mifavor.launcher`) fall back to them.

Made from release APK build 2513 of this branch on the Pixel_6 emulator (420 dpi):
the launcher's own widget picker rendered the current `widget_*_preview*.xml`
layouts, each card was cropped to its exact bounds (colour match against the
card/background colour, then bounds checked), and a supersampled rounded-rect alpha
mask (24dp sessions cards, 16dp usage cards, matching `widget_card_bg` /
`widget_background`) made the corners transparent. Border pixels equal the
resource colours exactly. All files are 17-92 KB.

| Entry | Size px | Files |
|---|---|---|
| Conversations 2x2 | 462x586 | light-/dark-sessions.png |
| Usage 2x2 | 462x586 | light-/dark-usage.png |
| Conversation strip 4x1 | 966x272 | light-/dark-sessions_strip.png |
| Conversation wide 4x2 | 966x586 | light-/dark-sessions_wide.png |
| Usage wide 4x2 | 966x586 | light-/dark-usage_wide.png |
| Conversation list 4x4 | 966x1214 | light-/dark-sessions_list.png |

If a preview layout changes, these images must be regenerated.
