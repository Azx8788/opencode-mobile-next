import 'package:flutter/material.dart';

import '../theme_roles.dart' show readableOn;
import 'kit_bidi.dart';
import 'kit_effects.dart';
import 'kit_icon.dart';
import 'kit_motion.dart';
import 'kit_tappable.dart';
import 'kit_text.dart';
import 'kit_tokens.dart';

/// Which state a [KitFeedItem] names in its meta line.
enum KitFeedStateTone {
  /// "Needs you": amber, the only amber on the list.
  needsYou,

  /// "Working": the accent colour.
  running,

  /// "Done": a reply finished since the person last opened it. Quiet green,
  /// news to read; "Needs you" always wins over it.
  done,

  /// "Failed", "Can't reopen": plain secondary text, never red.
  quiet,
}

/// One conversation in a feed (Chats home), two lines at most: the title on
/// one line, then one meta line in the small size. The meta line holds, in
/// order, the agent's name (only when it is not the default), the state word
/// (only when it matters), the project and the time:
/// "Needs you - shopfront - 2 h ago".
///
/// No preview, no Git mark, no pills: those live inside the conversation.
/// The whole row is one target. Its semantics read as one sentence: title,
/// agent, state, project, time. At large text the title and the meta line
/// each take a second line instead of being cut.
///
/// States: none - a conversation that exists; press, hover and focus come
/// from [KitTappable], and a missing state or time is only its content.
class KitFeedItem extends StatelessWidget {
  const KitFeedItem({
    super.key,
    required this.project,
    required this.title,
    required this.onTap,
    this.agent,
    this.agentMark,
    this.state,
    this.stateTone = KitFeedStateTone.quiet,
    this.time,
    this.semanticsLabel,
    this.tappableKey,
  });

  /// The project's name; a name the server chose, so it is isolated for
  /// bidirectional text here.
  final String project;

  final String title;

  /// The agent's name ('Claude Code'), first in the meta line; null for the
  /// default agent.
  final String? agent;

  /// A bundled brand mark (`assets/marks/<slug>.svg`) drawn just before
  /// [agent], the agent's logo at the meta line's text size. Null: none.
  final String? agentMark;

  /// The state word ("Needs you", "Working", "Failed"); null when nothing
  /// needs saying.
  final String? state;
  final KitFeedStateTone stateTone;

  /// The relative time ("2 h ago").
  final String? time;

  final VoidCallback onTap;

  /// Overrides the spoken sentence; null builds it from the parts.
  final String? semanticsLabel;
  final Key? tappableKey;

  @override
  Widget build(BuildContext context) {
    final tokens = KitTokens.of(context);
    final roles = tokens.roles;
    final agent = this.agent;
    final state = this.state;
    final time = this.time;
    // From 1.3x text the lines take a second line, so nothing is cut.
    final large = MediaQuery.textScalerOf(context).scale(1) > 1.3;
    final base = KitText.styleOf(
      context,
      KitTextRole.secondary,
      tone: KitTextTone.secondary,
    );
    final stateColor = switch (stateTone) {
      KitFeedStateTone.needsYou => roles.attention,
      KitFeedStateTone.running => roles.accent,
      KitFeedStateTone.done => readableOn(
        roles.success,
        [roles.surface1],
        4.7,
        toward: roles.text1,
      ),
      KitFeedStateTone.quiet => roles.text2,
    };
    final dot = ' \u00b7 ';
    final words =
        semanticsLabel ?? [title, ?agent, ?state, project, ?time].join(', ');
    final meta = TextSpan(
      style: base,
      children: [
        if (agent != null && agentMark != null)
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(
              padding: EdgeInsetsDirectional.only(end: tokens.space1),
              // The 20 dp mark scaled down to the meta line's text size.
              child: SizedBox.square(
                dimension: (base.fontSize ?? 13) + 2,
                child: FittedBox(
                  child: IconTheme(
                    data: IconThemeData(color: roles.text2),
                    child: KitIcon.mark(agentMark!),
                  ),
                ),
              ),
            ),
          ),
        if (agent != null) TextSpan(text: '${KitBidi.auto(agent)}$dot'),
        if (state != null) ...[
          if (stateTone == KitFeedStateTone.done)
            // The shape that tells Done from Working in a still image.
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Padding(
                padding: EdgeInsetsDirectional.only(end: tokens.space1),
                child: Icon(
                  Icons.check_rounded,
                  size: (base.fontSize ?? 13) + 1,
                  color: stateColor,
                ),
              ),
            ),
          if (stateTone == KitFeedStateTone.running)
            WidgetSpan(
              alignment: PlaceholderAlignment.baseline,
              baseline: TextBaseline.alphabetic,
              child: _StateSweep(
                color: stateColor,
                light: roles.text1,
                child: Text(
                  state,
                  style: base.copyWith(
                    color: stateColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          else
            TextSpan(
              text: state,
              style: TextStyle(
                color: stateColor,
                fontWeight: stateTone == KitFeedStateTone.needsYou
                    ? FontWeight.w600
                    : null,
              ),
            ),
          TextSpan(text: dot),
        ],
        TextSpan(text: KitBidi.auto(project)),
        if (time != null) TextSpan(text: '$dot$time'),
      ],
    );
    return KitTappable(
      tappableKey: tappableKey,
      onTap: onTap,
      label: words,
      child: ExcludeSemantics(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: tokens.gutter,
            vertical: tokens.space3,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  spacing: tokens.space1,
                  children: [
                    KitText(
                      KitBidi.auto(title),
                      role: KitTextRole.rowTitle,
                      maxLines: large ? 2 : 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    KitText.rich(
                      meta,
                      role: KitTextRole.secondary,
                      tone: KitTextTone.secondary,
                      maxLines: large ? null : 1,
                      overflow: large ? null : TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// The live word's light: a soft highlight sweeping over "Working" the way
/// a running step's name does (2.2 s a pass); a still word when motion is
/// off, reduced, or loops are paused.
class _StateSweep extends StatefulWidget {
  const _StateSweep({
    required this.color,
    required this.light,
    required this.child,
  });

  final Color color;
  final Color light;
  final Widget child;

  @override
  State<_StateSweep> createState() => _StateSweepState();
}

class _StateSweepState extends State<_StateSweep>
    with SingleTickerProviderStateMixin {
  late final AnimationController _sweep = AnimationController(
    vsync: this,
    duration: KitMotion.stepSweep,
  );
  bool _moving = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _moving =
        KitMotion.loops &&
        !KitMotion.reduced(context) &&
        KitEffects.of(context).motion != KitMotionLevel.off;
    if (!_moving) {
      _sweep.stop();
    } else if (!_sweep.isAnimating) {
      _sweep.repeat();
    }
  }

  @override
  void dispose() {
    _sweep.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_moving) return widget.child;
    final rtl = Directionality.of(context) == TextDirection.rtl;
    return AnimatedBuilder(
      animation: _sweep,
      child: widget.child,
      builder: (context, child) {
        final t = _sweep.value;
        final centre = -0.3 + 1.6 * (rtl ? 1 - t : t);
        return ShaderMask(
          key: const ValueKey('kit-feed-state-sweep'),
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) => LinearGradient(
            colors: [widget.color, widget.light, widget.color],
            stops: [
              (centre - 0.18).clamp(0.0, 1.0),
              centre.clamp(0.0, 1.0),
              (centre + 0.18).clamp(0.0, 1.0),
            ],
          ).createShader(bounds),
          child: child,
        );
      },
    );
  }
}
