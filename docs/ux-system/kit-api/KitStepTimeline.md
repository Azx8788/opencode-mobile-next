# KitStepTimeline — API (2026-10-09)

Group: chat. File `lib/ui/kit/chat/kit_step_timeline.dart`. Rules: STATE-16, KIT-41, AUTO-15, LOOK-5, MOT-5, PERF-2, A11Y-8, LAY-8. Built on request of the owner (2026-10-09): "do something similar to the Claude app's grouping sheet, but without bottom sheets". Visual reference: the Claude app's "Summary" sheet, drawn inline.

## Purpose

A turn's work as one quiet line that opens **in place** to a timeline. Closed it is a glyph, plain words and a chevron: no pill, no frame, no fill. Open, the steps hang off a thin rail under it in the order they happened. No bottom sheet.

`KitWorkLine` (the host-facing part: counts, state, steps) draws itself with this part; a screen builds `KitWorkLine`, not `KitStepTimeline`.

## Public API

```dart
class KitStepTimeline extends StatelessWidget {
  const KitStepTimeline({
    required String label,            // the line's words
    required IconData icon,           // the group's glyph, text2
    required bool expanded,
    required VoidCallback onPressed,  // the line was tapped
    required List<Widget> steps,      // KitToolRow, KitMessage.thought, any widget
    String? spoken,                   // screen-reader words; null reads label
    Widget? mark,                     // in the glyph's place: the live or failed mark
    Widget? head,                     // a row above the first step ("Show N earlier steps")
    Animation<double>? fade,          // paints the opened steps in
    Key? lineKey, Key? stepsKey,
  });

  static bool inside(BuildContext context);
  static Widget node(BuildContext context, {required Widget child,
      double lineHeight = 22, double top = 0, IconData? icon, Widget? mark});
  static Widget sentence(BuildContext context, {required Widget child});
  static Widget previewCard(BuildContext context, {required KitStepPreview preview,
      required VoidCallback onOpen, required String label, Key? key});
  static IconData iconFor({int read, searched, listed, edited, ran, fetched, delegated, other});
}

class KitStepPreview {            // data, not a widget
  KitStepPreview(List<KitDiffLine> lines, {bool more});
  KitStepPreview.fromPatch(String patch, {int maxLines = 6});
  KitStepPreview.fromText(String text, {int maxLines = 6});            // a new file
  KitStepPreview.fromTexts({String? before, String? after, int maxLines = 6});
}
```

`KitToolRow` gains `preview: KitStepPreview?`.

## The line

- Glyph (20 dp, grows with text to the kit's icon cap) in `text2`, the words in `secondary`/`text2`, the kit's one disclosure chevron (D10). Hugs its words; the whole line is the 48 dp tap target. Two lines of words, then the end is cut; from 1.3x text the words wrap in full.
- `mark` replaces the glyph: the working mark while the work runs (collapsed only: opened, the running step on the rail carries the one mark), the failed mark when it ended on a failure.
- When open and there are steps, the rail leaves the glyph and runs into the first step.

## The rail

A 2-physical-pixel stroke in `text3` at half strength, down the middle of the glyph column (glyph width + `space2`; the words of the line and of every step start where the column ends). The stroke mirrors under right-to-left. Every step sits in a slot that paints its stretch of the rail; the last slot stops at its node.

A step draws its own node through `KitStepTimeline.node`; outside a timeline `node` returns its child, so rows keep their plain look anywhere else. A step with no node (plain text) still sits beside the rail.

| Node | Used for |
|---|---|
| Small grey dot (6 dp, `text3`) | a sentence: `KitMessage.thought`, prose between steps (`sentence`) |
| Tile (glyph width, `surface3`, glyph in `text2`) | a tool step by its kind: read, search, shell, edit, web, agent… |
| The state's mark in the node's place | running/background (the live mark), waiting, failed, stopped |

One live mark: the running step on the rail (or a thought that is still thinking) carries it; the closed line carries it only while folded.

## Steps on the rail

- `KitToolRow`: title in `rowTitle` (the step's words), the file or detail muted under it (`KitText.mono` for a path), counts and the state's words at the end, a chevron when it opens. Rows are top-aligned in a box at least 48 dp tall, so the first line (and so the node) sits at a fixed place.
- `KitToolRow.agent`: the same, the state's mark or the agent glyph as the node.
- `KitMessage.thought` / `.notice`: a dot (or the notice's glyph as a tile) and the words; opens in place.

## Preview card (file write or edit)

`previewCard`: at most 6 lines of what the step changed, in `mono`: a gutter of `+n` / `−n` / `n` (the diff roles; sign only when the call carries no numbers), the line clipped (no wrap) and a tint from `codeAddedSurface` / `codeRemovedSurface`. On `surface1` in the code shape. When more lines follow, the last lines fade (`ShaderMask`, paint only). The whole card is one tap target: it opens the step, whose `body` is the full view (`KitCodeBlock` / `KitDiffView`, "Open full output" included). The card shows only for a finished step (`done`), and not while the step is open. Code is laid out left to right under Arabic.

## States

None of its own (`States: none`): it lays out the line and the steps it is given. Running, waiting, done, failed and stopped are the host's (`KitWorkLine`) and each step's.

## Accessibility

- The line is one button node with the expanded state and `spoken`; its glyph and chevron are excluded.
- Nodes are decoration: no semantics, no taps.
- A row's semantics are its words (title, file, counts, state, time); the preview card is a button named by the file with the hint "Open its details".
- 48 dp targets everywhere; 2.0 text wraps, nothing overflows at 320 dp.

## Motion

None of its own. The host may pass `fade` (the opened steps' paint-only fade, MOT-5). The live mark is `KitStatusMark`'s (a still dot under reduced motion). No shimmer: the turn's live line keeps the chat's one moving light.

## RTL

The glyph column, the rail and the nodes sit at the start edge (the right under Arabic); the preview card's code is left to right; paths stay isolated left to right.

## Long work

The timeline builds the steps it is given, in a column. The host keeps long work cheap: `KitWorkLine` builds at most `stepCap` steps at a time and reveals earlier ones in chunks (PERF-2).

## Node states and the running light (2026-10-11, owner picks "From above, both sides" and a look per state)

`KitStepTimeline.node(state: KitStepNodeState)` (what `KitToolRow` passes) draws the step's glyph in its tile and, per state, an outline or the light over it (`lib/ui/kit/chat/kit_step_light.dart`, a part of the timeline library). `KitStepTimeline.sweep(context, active:, child:)` sweeps a soft light over a running step's name. `KitToolRow(startedAt:)` adds a seconds counter (`KitTurnLive.elapsedText`, tabular figures). `KitStepTimeline(stalled: true)` holds every light where it is, dimmed, while the connection is down (not yet passed by the chat screen; the kit side is done).

| State (`KitToolStatus`) | Look |
| --- | --- |
| queued (`pending`, `notRun`) | dim neutral outline, no light |
| running | the light, below |
| waiting (`waitingForYou`) | outline filled in `attention`, breathing 0.5 to 1 over 1.6 s; nothing travels |
| background | the light, 4 s lap, 60% intensity |
| done | tick flash 600 ms, glyph grows back (size .4 to 1, 260 ms); only after running or background |
| failed | outline flashes `danger` 300 ms, then the failed mark |
| stopped | the light fades out over 200 ms, glyph stays, no tick |
| stalled (host flag) | light and name sweep freeze, 50% intensity |

The lap (2 s; Calm doubles it): 0 to 28% one 14 dp light down the rail above the node, fading in, `easeInOutQuad`; 26 to 66% it splits at the node's top centre and both halves fill the outline down each side at once (fill 1.8 dp, 8 dp head 2.6 dp), meeting at the bottom centre; 64 to 95% one 14 dp light on down the rail below the node, `easeOutQuad`, fading out; 70 to 100% the filled outline dims from .75 to 0.

Geometry is real, read at paint time: the outline is the tile's own rounded rectangle (`size * .3` radius) with the stroke inside the edge, split at the top and bottom centre; the rail light is on the rail's own x and width (device-pixel aligned); the distance above and below is measured to the real previous (or the group header's rail stub) and next node through the timeline's registry of slot boxes, so rows that open or resize mid-lap never leave it on stale numbers. The last step has no next node: it draws its own 14 dp fading rail. Round caps only on the moving heads; the fill has butt ends.

Reduced motion, Animations: Off, `KitMotion.loops` false: running is a still filled `accent` outline, waiting a still filled `attention` outline, the name is still; only the counter ticks. One lazily made `AnimationController` per moving node, disposed with it; `TickerMode` pauses it off-screen. Names in `KitMotion.step*`.

Not in the model, so not built: a "settled by the transcript safety net" state (the host maps it to stopped or notRun, which show no tick), per-step connection state (only the turn knows; `stalled` is the hook), and a header outline (the collapsed group line keeps its working mark).
