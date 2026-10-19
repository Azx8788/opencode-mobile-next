# Demo polish, 2026-10-18 (build 2532, Claude Code via Paseo)

Before screenshots: `before/`. Widget tests, no emulator, no phone.

| Bug | Cause | Fix | Proof |
| --- | --- | --- | --- |
| Title cut mid-word | The Paseo daemon titles a new agent from the first prompt, clipped hard at 60 characters with no ellipsis (create-agent-title.js). The kit bar already ellipsises overflow and reserves half the bar for the actions. | `paseoClippedTitle` in `lib/paseo/mappers.dart` adds "…" to a 58-60 character title that does not end like a sentence. | `test/paseo_title_clip_test.dart` (fails without the fix) |
| Rejected permission read "Failed" / "Tool failed." | Paseo records a rejected call as a failed tool call whose error is "Permission denied" (or Claude's "The user doesn't want to proceed"); the mapper dropped that text. OpenCode 1 and 2 already map their wording to "You declined this". | `paseoDeclinedToolCall` maps those to the declined marker. Real failures unchanged. | `test/paseo_tool_output_test.dart` (fails without the fix); OC1/OC2 already covered by `test/chat_turn_fixes_test.dart` |
| Landscape card clipped | The request card sat in two nested scrollers; the outer was anchored at its bottom, cutting the question off the top. | One scroller (`_RequestScrollHost`), anchored at the top; the card scrolls to its last row. | `test/chat_landscape_request_test.dart` (fails without the fix); `after/landscape-permission.png` (one-off render from this test, blocky test font; not a ratcheted golden) |
| Approval chip missing in landscape | Deliberately hidden under 420 dp of body height unless automatic. | Shown in every window. | same test |

Unproven: a custom reason typed with Reject comes back from Paseo as that text, so such a call still reads as failed. Not run on a device or against a live Paseo.
