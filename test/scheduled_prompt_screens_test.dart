import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:opencode_mobile/domain/models.dart';
import 'package:opencode_mobile/l10n/app_localizations.dart';
import 'package:opencode_mobile/scheduling/controller.dart';
import 'package:opencode_mobile/scheduling/models.dart';
import 'package:opencode_mobile/scheduling/platform.dart';
import 'package:opencode_mobile/scheduling/store.dart';
import 'package:opencode_mobile/ui/app_theme.dart';
import 'package:opencode_mobile/ui/screens/scheduling/schedule_copy.dart';
import 'package:opencode_mobile/ui/screens/scheduling/schedule_editor_screen.dart';
import 'package:opencode_mobile/ui/screens/scheduling/schedule_routes.dart';
import 'package:opencode_mobile/ui/screens/scheduling/scheduled_prompts_screen.dart';

class _Backend implements ScheduledPromptBackend {
  final values = <String, String>{};
  bool failWrites = false;
  @override
  Future<String?> read(String key) async => values[key];
  @override
  Future<bool> compareAndSet(String key, String? expected, String value) async {
    if (failWrites) {
      throw const ScheduledPromptStoreException('storage_unavailable');
    }
    if (values[key] != expected) return false;
    values[key] = value;
    return true;
  }
}

class _Platform extends ScheduledPromptsPlatform {
  bool supported = true;
  @override
  Future<SchedulePlatformStatus> status() async => SchedulePlatformStatus(
    supported: supported,
    exactAllowed: true,
    batteryExempt: true,
    notificationsAllowed: true,
  );
  @override
  Future<void> replaceProfile(
    String profileId,
    List<Map<String, Object?>> entries, {
    DateTime? digestAt,
  }) async {}
  @override
  Future<List<Map<String, dynamic>>> readReceipts(String profileId) async => [];
  @override
  Future<void> acknowledgeReceipts(String profileId, List<String> ids) async {}
}

void main() {
  final now = DateTime(2030, 1, 7, 7);
  final l = lookupAppLocalizations(const Locale('en'));
  late _Backend backend;
  late ScheduledPromptStore store;
  late ScheduledPromptsController controller;
  late ScheduledPrompt target;
  late _Platform platform;
  ScheduledPromptRun? opened;

  setUp(() {
    backend = _Backend();
    platform = _Platform();
    store = ScheduledPromptStore(backend: backend, now: () => now);
    controller = ScheduledPromptsController(
      profileId: 'profile',
      store: store,
      platform: platform,
      now: () => now,
    );
    target = ScheduledPrompt(
      id: 'morning',
      profileId: 'profile',
      profileFingerprint: 'routing',
      prompt: 'Summarize overnight changes',
      projectPath: '/project',
      sessionId: 'session',
      agent: 'build',
      recurrence: const ScheduleRecurrence.weekdays(),
      createdAt: now,
      nextRunAt: now.add(const Duration(hours: 1)),
    );
    opened = null;
  });

  Future<void> pump(WidgetTester tester, {Widget? home}) async {
    tester.view.physicalSize = const Size(600, 1100);
    tester.view.devicePixelRatio = 1;
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });
    addTearDown(controller.dispose);
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.light(),
        locale: const Locale('en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home:
            home ??
            ScheduledPromptsScreen(
              controller: controller,
              target: target,
              agents: const ['build', 'plan'],
              onOpenRun: (run) async {
                opened = run;
              },
            ),
      ),
    );
    await tester.pumpAndSettle();
  }

  Future<void> tapText(WidgetTester tester, String text) async {
    final finder = find.text(text).last;
    await tester.ensureVisible(finder);
    await tester.tap(finder);
    await tester.pumpAndSettle();
  }

  testWidgets(
    'empty list creates a saved weekday schedule after prompt validation',
    (tester) async {
      await pump(tester);
      expect(find.text(l.scheduleEmpty), findsOneWidget);
      await tapText(tester, l.scheduleCreate);
      await tapText(tester, l.scheduleSave);
      expect(find.text(l.scheduleInvalid), findsOneWidget);
      expect(await store.load('profile'), isEmpty);
      await tester.enterText(
        find.byType(TextField).first,
        'Prepare the morning summary',
      );
      await tapText(tester, l.scheduleSave);
      final saved = (await store.load('profile')).single;
      expect(saved.prompt, 'Prepare the morning summary');
      expect(saved.recurrence.kind, ScheduleRecurrenceKind.weekdays);
      expect(saved.nextRunAt?.toLocal(), DateTime(2030, 1, 7, 8));
      expect(saved.nextRunAt?.toLocal().weekday, DateTime.monday);
      expect(find.text(l.scheduleEmpty), findsNothing);
    },
  );

  testWidgets('editing interval validates bounds and persists revision', (
    tester,
  ) async {
    await store.save(target);
    await pump(tester);
    await tester.tap(find.textContaining(l.scheduleWeekdays).first);
    await tester.pumpAndSettle();
    await tapText(tester, l.scheduleRepeat);
    await tapText(tester, l.scheduleEveryHours);
    await tester.enterText(find.byType(TextField).last, '0');
    await tapText(tester, l.scheduleSave);
    expect(find.text(l.scheduleInvalid), findsOneWidget);
    await tester.enterText(find.byType(TextField).last, '3');
    await tapText(tester, l.scheduleSave);
    final saved = (await store.load('profile')).single;
    expect(saved.recurrence.hours, 3);
    expect(saved.recurrence.kind, ScheduleRecurrenceKind.interval);
    expect(saved.revision, 2);
    expect(saved.nextRunAt?.toLocal(), DateTime(2030, 1, 7, 10));
  });

  testWidgets('each row names its prompt and has visible pause and delete', (
    tester,
  ) async {
    await store.save(target);
    await pump(tester);
    expect(find.text('Summarize overnight changes'), findsOneWidget);
    expect(find.textContaining('Every weekday'), findsOneWidget);
    expect(find.textContaining('Today, 8:00'), findsOneWidget);
    expect(find.textContaining('2030'), findsNothing);
    expect(find.byTooltip(l.schedulePause), findsOneWidget);
    expect(find.byTooltip(l.scheduleDelete), findsOneWidget);
  });

  testWidgets('pause and resume persist then delete removes history', (
    tester,
  ) async {
    await store.save(target);
    await store.recordRun(
      'profile',
      ScheduledPromptRun(
        id: 'run',
        scheduleId: target.id,
        scheduledAt: now,
        startedAt: now,
        status: ScheduledPromptRunStatus.ran,
        sessionId: 'session',
      ),
    );
    await pump(tester);
    await tester.tap(find.byTooltip(l.schedulePause));
    await tester.pumpAndSettle();
    expect((await store.load('profile')).single.enabled, isFalse);
    expect(find.textContaining(l.schedulePaused), findsOneWidget);
    await tester.tap(find.byTooltip(l.scheduleResume));
    await tester.pumpAndSettle();
    expect((await store.load('profile')).single.enabled, isTrue);
    await tester.tap(find.byTooltip(l.scheduleDelete));
    await tester.pumpAndSettle();
    expect(
      find.text(l.scheduleDeleteNamedTitle('Summarize overnight changes')),
      findsOneWidget,
    );
    expect(find.text(l.scheduleDeleteBody), findsOneWidget);
    await tapText(tester, l.scheduleDelete);
    expect(await store.load('profile'), isEmpty);
    expect(await store.history('profile'), isEmpty);
  });

  testWidgets('a finished one-time schedule says no more runs, not paused', (
    tester,
  ) async {
    await store.save(
      target.copyWith(
        enabled: false,
        clearNextRunAt: true,
        recurrence: ScheduleRecurrence.once(now),
      ),
    );
    await pump(tester);
    expect(find.textContaining(l.scheduleFinished), findsOneWidget);
    expect(find.textContaining(l.schedulePaused), findsNothing);
  });

  testWidgets('history opens resulting conversation for failed runs', (
    tester,
  ) async {
    await store.save(target);
    await store.recordRun(
      'profile',
      ScheduledPromptRun(
        id: 'needs-you',
        scheduleId: target.id,
        scheduledAt: now,
        startedAt: now,
        status: ScheduledPromptRunStatus.failed,
        sessionId: 'session',
        errorCode: 'needs_you',
        late: true,
      ),
    );
    await pump(tester);
    final row = find.textContaining('${l.scheduleFailed} · ${l.scheduleLate}');
    await tester.ensureVisible(row);
    await tester.tap(row);
    await tester.pumpAndSettle();
    expect(opened?.sessionId, 'session');
    expect(opened?.errorCode, 'needs_you');
  });

  testWidgets('failed save remains in editor and does not invent persistence', (
    tester,
  ) async {
    await controller.load();
    backend.failWrites = true;
    await pump(
      tester,
      home: ScheduleEditorScreen(controller: controller, target: target),
    );
    await tapText(tester, l.scheduleSave);
    expect(find.text(l.scheduleSaveFailed), findsOneWidget);
    expect(await store.load('profile'), isEmpty);
    expect(find.byType(ScheduleEditorScreen), findsOneWidget);
  });

  testWidgets(
    'one-time editor shows the scheduled instant and rejects past time',
    (tester) async {
      await controller.load();
      final past = target.copyWith(
        recurrence: ScheduleRecurrence.once(
          now.subtract(const Duration(hours: 1)),
        ),
      );
      await pump(
        tester,
        home: ScheduleEditorScreen(controller: controller, target: past),
      );
      expect(
        find.textContaining(l.scheduleOnce, findRichText: true),
        findsOneWidget,
      );
      await tapText(tester, l.scheduleSave);
      expect(find.text(l.scheduleInvalid), findsOneWidget);
      expect(await store.load('profile'), isEmpty);
    },
  );

  testWidgets(
    'unsupported platform explains unavailability without create action',
    (tester) async {
      platform.supported = false;
      await pump(tester);
      expect(find.text(l.scheduleUnsupported), findsOneWidget);
      expect(find.text(l.scheduleCreate), findsNothing);
    },
  );

  test('each run failure says what happened and what to do next', () {
    final l = lookupAppLocalizations(const Locale('en'));
    final copy = {
      for (final code in [
        'auth_required',
        'cleartext_unconfirmed',
        'agent_failed',
        'unavailable',
        'needs_you',
        'certificate_changed',
        'certificate_invalid',
      ])
        code: scheduleErrorCopy(l, code),
    };
    // A password prompt or an agent error is not "a request to answer", and
    // neither is an unreachable server.
    expect(copy['auth_required'], contains('sign in'));
    expect(copy['cleartext_unconfirmed'], contains('allow HTTP'));
    expect(copy['agent_failed'], contains('error'));
    expect(copy['unavailable'], contains('server could not be reached'));
    expect(copy['certificate_changed'], contains('certificate changed'));
    expect(copy['certificate_changed'], contains('Open the server'));
    expect(copy.values.toSet(), hasLength(copy.length));
  });

  test('a schedule for a conversation keeps that conversation\'s model', () {
    // 2026-10-17 emulator proof: the conversation used a free model, the app
    // default was a model whose sign-in had lapsed, and the scheduled run
    // switched the conversation to the default, so no reply came back.
    final appDefault = ModelRef(providerID: 'openai', modelID: 'gpt-5.6-sol');
    final existing = scheduleSelectionSeed(
      sessionSelection: SessionSelection(
        model: ModelRef(providerID: 'opencode', modelID: 'free-model'),
        agent: 'plan',
      ),
      defaultModel: appDefault,
      defaultAgent: 'build',
    );
    expect(existing.model, isNull);
    expect(existing.agent, 'plan');

    final unknownAgent = scheduleSelectionSeed(
      sessionSelection: const SessionSelection(agentKnown: false),
      defaultModel: appDefault,
      defaultAgent: 'build',
    );
    expect(unknownAgent.agent, 'build');

    final fresh = scheduleSelectionSeed(
      sessionSelection: null,
      defaultModel: appDefault,
      defaultAgent: 'build',
    );
    expect(fresh.model, appDefault);
    expect(fresh.agent, 'build');
  });
}
