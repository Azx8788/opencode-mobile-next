// KitStepLight (docs/ux-system/kit-api/KitStepLight.md): the running step on a
// timeline keeps its glyph under one travelling light, flashes a tick when it
// ends, springs back to the glyph, and rests as a still outline under reduced
// motion. Its counter ticks by the second.
import 'package:clock/clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:opencode_mobile/l10n/app_localizations.dart';
import 'package:opencode_mobile/ui/app_theme.dart';
import 'package:opencode_mobile/ui/kit/chat/kit_step_timeline.dart';
import 'package:opencode_mobile/ui/kit/chat/kit_tool_row.dart';
import 'package:opencode_mobile/ui/kit/kit_motion.dart';
import 'package:opencode_mobile/ui/kit/kit_status_mark.dart';

Widget _app(Widget child, {bool reduce = false}) => MaterialApp(
  theme: AppTheme.dark(),
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  builder: (context, widget) => MediaQuery(
    data: MediaQuery.of(context).copyWith(disableAnimations: reduce),
    child: widget!,
  ),
  home: Scaffold(body: SingleChildScrollView(child: child)),
);

Widget _timeline(KitToolStatus status, {DateTime? startedAt}) =>
    KitStepTimeline(
      label: 'Ran 1 command',
      icon: AppIconography.tools,
      expanded: true,
      onPressed: () {},
      steps: [
        KitToolRow(
          kind: KitToolKind.shell,
          title: 'Shell',
          status: status,
          startedAt: startedAt,
        ),
      ],
    );

Finder get _light => find.byKey(const ValueKey('kit-step-light'));
Finder get _tick => find.byKey(const ValueKey('kit-step-tick'));
Finder get _glyph => find.byIcon(AppIconography.terminal);

void main() {
  tearDown(() => KitMotion.loops = false);

  testWidgets('a running step keeps its glyph under a light, no spinner', (
    tester,
  ) async {
    KitMotion.loops = true;
    await tester.pumpWidget(_app(_timeline(KitToolStatus.running)));
    await tester.pump(const Duration(milliseconds: 400));
    expect(_glyph, findsOneWidget);
    expect(_light, findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsNothing);
    expect(find.byType(KitStatusMark), findsNothing);
    final painter = tester.widget<CustomPaint>(_light).painter!;
    // The lap is moving: the painter listens to a running controller.
    expect(tester.binding.hasScheduledFrame, isTrue);
    expect(painter, isNotNull);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('finishing flashes the tick, then the glyph springs back', (
    tester,
  ) async {
    KitMotion.loops = true;
    await tester.pumpWidget(_app(_timeline(KitToolStatus.running)));
    await tester.pump(const Duration(milliseconds: 100));
    await tester.pumpWidget(_app(_timeline(KitToolStatus.done)));
    await tester.pump(const Duration(milliseconds: 50));
    expect(_light, findsNothing);
    expect(_tick, findsOneWidget);
    await tester.pump(const Duration(milliseconds: 500));
    expect(_tick, findsOneWidget);
    await tester.pump(const Duration(milliseconds: 200));
    expect(_tick, findsNothing);
    expect(_glyph, findsOneWidget);
    await tester.pump(const Duration(milliseconds: 200));
    expect(tester.hasRunningAnimations, isFalse);
    expect(
      tester
          .widget<Transform>(
            find.ancestor(of: _glyph, matching: find.byType(Transform)).first,
          )
          .transform
          .getMaxScaleOnAxis(),
      1,
    );
  });

  testWidgets('reduced motion: a still outline, no ticking controller', (
    tester,
  ) async {
    KitMotion.loops = true;
    await tester.pumpWidget(
      _app(_timeline(KitToolStatus.running), reduce: true),
    );
    await tester.pump();
    expect(_light, findsOneWidget);
    expect(_glyph, findsOneWidget);
    expect(tester.hasRunningAnimations, isFalse);
  });

  testWidgets('the counter ticks by the second and leaves no timer behind', (
    tester,
  ) async {
    final started = clock.now().subtract(const Duration(seconds: 12));
    await tester.pumpWidget(
      _app(_timeline(KitToolStatus.running, startedAt: started)),
    );
    expect(find.text('12 s'), findsOneWidget);
    await tester.pump(const Duration(seconds: 2));
    expect(find.text('14 s'), findsOneWidget);
    await tester.pump(const Duration(seconds: 51));
    expect(find.text('1 min 5 s'), findsOneWidget);
    // Finished: the counter and its timer are gone.
    await tester.pumpWidget(_app(_timeline(KitToolStatus.done)));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('kit-step-counter')), findsNothing);
    await tester.pumpWidget(const SizedBox());
    expect(tester.binding.transientCallbackCount, 0);
  });
}
