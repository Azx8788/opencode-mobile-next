import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../l10n/app_localizations.dart';
import '../../../scheduling/controller.dart';
import '../../../scheduling/models.dart';
import '../../kit/kit.dart';
import 'schedule_copy.dart';
import 'schedule_editor_screen.dart';

class ScheduledPromptsScreen extends StatefulWidget {
  const ScheduledPromptsScreen({
    super.key,
    required this.controller,
    required this.target,
    this.agents = const [],
    this.onOpenRun,
  });
  final ScheduledPromptsController controller;
  final ScheduledPrompt target;
  final List<String> agents;
  final Future<void> Function(ScheduledPromptRun)? onOpenRun;
  @override
  State<ScheduledPromptsScreen> createState() => _ScheduledPromptsScreenState();
}

class _ScheduledPromptsScreenState extends State<ScheduledPromptsScreen>
    with WidgetsBindingObserver {
  ScheduledPromptsController get c => widget.controller;
  @override
  void initState() {
    super.initState();
    c.addListener(_changed);
    WidgetsBinding.instance.addObserver(this);
    unawaited(c.load());
  }

  void _changed() {
    if (mounted) setState(() {});
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) unawaited(c.load());
  }

  @override
  void dispose() {
    c.removeListener(_changed);
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  Future<void> _act(Future<void> Function() action) async {
    try {
      await action();
    } catch (_) {
      /* Controller exposes failure. */
    }
  }

  Future<void> _edit([ScheduledPrompt? schedule]) => pushKitPage<void>(
    context,
    (_) => ScheduleEditorScreen(
      controller: c,
      target: ScheduledPrompt(
        id: DateTime.now().microsecondsSinceEpoch.toString(),
        profileId: widget.target.profileId,
        profileFingerprint: widget.target.profileFingerprint,
        prompt: '',
        projectPath: widget.target.projectPath,
        workspace: widget.target.workspace,
        sessionId: widget.target.sessionId,
        agent: widget.target.agent,
        modelProviderId: widget.target.modelProviderId,
        modelId: widget.target.modelId,
        recurrence: const ScheduleRecurrence.weekdays(),
        createdAt: c.now(),
      ),
      agents: widget.agents,
      existing: schedule,
    ),
  );

  String _date(DateTime time, AppLocalizations l) =>
      scheduleWhen(l, time, c.now());

  /// What the schedule is: its prompt's first line.
  String _name(ScheduledPrompt s, AppLocalizations l) {
    final first = s.prompt
        .split('\n')
        .map((line) => line.trim())
        .firstWhere((line) => line.isNotEmpty, orElse: () => '');
    return first.isEmpty ? l.schedulePrompt : first;
  }

  /// The name in a question: long prompts are cut so the title stays short.
  String _shortName(ScheduledPrompt s, AppLocalizations l) {
    final name = _name(s, l);
    return name.length <= 40 ? name : '${name.substring(0, 40).trimRight()}…';
  }

  String _rule(
    BuildContext context,
    ScheduledPrompt s,
    AppLocalizations l,
  ) => switch (s.recurrence.kind) {
    // The next run already carries the time; a paused schedule has none.
    ScheduleRecurrenceKind.weekdays =>
      s.nextRunAt == null
          ? '${l.scheduleWeekdays} · ${DateFormat.jm(l.localeName).format(DateTime(2000, 1, 1, s.recurrence.hour, s.recurrence.minute))}'
          : l.scheduleWeekdays,
    ScheduleRecurrenceKind.interval => l.scheduleEveryNHours(
      '${s.recurrence.hours}',
    ),
    ScheduleRecurrenceKind.once =>
      s.nextRunAt == null
          ? '${l.scheduleOnce} · ${_date(s.recurrence.at!, l)}'
          : l.scheduleOnce,
  };

  /// One supporting line (screen standard, no cut-off text): "Next: Today,
  /// 8:00 AM · Every weekday". Agent and conversation live in the editor.
  String _line(BuildContext context, ScheduledPrompt s, AppLocalizations l) {
    final state = s.nextRunAt == null && _spent(s)
        ? l.scheduleFinished
        : !s.enabled
        ? l.schedulePaused
        : s.nextRunAt == null
        ? l.scheduleFinished
        : l.scheduleNextRun(_date(s.nextRunAt!, l));
    return '$state · ${_rule(context, s, l)}';
  }

  /// A one-time schedule whose moment has passed is finished, not paused.
  bool _spent(ScheduledPrompt s) =>
      s.recurrence.kind == ScheduleRecurrenceKind.once &&
      !s.recurrence.at!.isAfter(c.now());

  String _status(ScheduledPromptRun run, AppLocalizations l) =>
      switch (run.status) {
        ScheduledPromptRunStatus.ran => l.scheduleStarted,
        ScheduledPromptRunStatus.running => l.scheduleRunning,
        ScheduledPromptRunStatus.failed => l.scheduleFailed,
        ScheduledPromptRunStatus.skipped => l.scheduleSkipped,
      };
  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return KitScreen(
      topBar: KitTopBar(
        title: l.scheduleTitle,
        actions: c.platformStatus.supported
            ? [
                KitAction(
                  label: l.scheduleCreate,
                  icon: Icons.add,
                  onPressed: _edit,
                ),
              ]
            : const [],
      ),
      body: ListView(
        padding: EdgeInsets.all(KitTokens.of(context).space4),
        children: [
          if (c.errorCode != null)
            KitStateView(
              icon: Icons.info_outline,
              title: c.errorCode == 'unsupported'
                  ? l.scheduleUnsupported
                  : l.scheduleSaveFailed,
              size: KitStateSize.inline,
            ),
          if (c.loading && c.schedules.isEmpty)
            KitStateView(
              icon: Icons.schedule,
              title: l.scheduleRunning,
              size: KitStateSize.inline,
            )
          else if (c.schedules.isEmpty && c.errorCode == null)
            KitStateView(
              icon: Icons.schedule,
              title: l.scheduleEmpty,
              size: KitStateSize.inline,
              primary: KitAction(label: l.scheduleCreate, onPressed: _edit),
            ),
          for (final schedule in c.schedules)
            KitRow(
              title: _name(schedule, l),
              titleMaxLines: 3,
              supporting: TextSpan(text: _line(context, schedule, l)),
              onTap: () => _edit(schedule),
              below: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (!_spent(schedule))
                    KitIconButton(
                      icon: schedule.enabled
                          ? Icons.pause_outlined
                          : Icons.play_arrow_outlined,
                      tooltip: schedule.enabled
                          ? l.schedulePause
                          : l.scheduleResume,
                      onPressed: () => unawaited(
                        _act(
                          () => c.setEnabled(schedule.id, !schedule.enabled),
                        ),
                      ),
                    ),
                  KitIconButton(
                    icon: Icons.delete_outline,
                    tooltip: l.scheduleDelete,
                    onPressed: () => unawaited(
                      showKitConfirm(
                        context,
                        title: l.scheduleDeleteNamedTitle(
                          _shortName(schedule, l),
                        ),
                        body: l.scheduleDeleteBody,
                        confirmLabel: l.scheduleDelete,
                        kind: KitConfirmKind.neutral,
                        icon: Icons.delete_outline,
                        action: () => c.delete(schedule.id),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (c.platformStatus.supported) ...[
            SizedBox(height: KitTokens.of(context).space4),
            KitSwitchRow(
              title: l.scheduleDigest,
              value: c.digest.enabled,
              onChanged: (v) => unawaited(
                _act(
                  () => c.setDigest(
                    ScheduledPromptDigest(
                      enabled: v,
                      hour: c.digest.hour,
                      minute: c.digest.minute,
                      lastDeliveredAt: v && !c.digest.enabled
                          ? c.now()
                          : c.digest.lastDeliveredAt,
                    ),
                  ),
                ),
              ),
            ),
            KitText(l.scheduleDigestDescription, role: KitTextRole.secondary),
            if (c.digest.enabled)
              KitRow(
                title: l.scheduleTime,
                supporting: TextSpan(
                  text: TimeOfDay(
                    hour: c.digest.hour,
                    minute: c.digest.minute,
                  ).format(context),
                ),
                onTap: () async {
                  final value = await showKitTimePicker(
                    context,
                    title: l.scheduleDigest,
                    initial: TimeOfDay(
                      hour: c.digest.hour,
                      minute: c.digest.minute,
                    ),
                  );
                  if (value != null) {
                    await _act(
                      () => c.setDigest(
                        ScheduledPromptDigest(
                          enabled: true,
                          hour: value.hour,
                          minute: value.minute,
                          lastDeliveredAt: c.digest.lastDeliveredAt,
                        ),
                      ),
                    );
                  }
                },
              ),

            SizedBox(height: KitTokens.of(context).space4),
            KitText(l.scheduleHistory, role: KitTextRole.rowTitle),
            if (c.runs.isEmpty)
              KitText(l.scheduleNoHistory, role: KitTextRole.secondary),
            for (final run in c.runs)
              KitRow(
                title:
                    '${_status(run, l)}${run.late ? ' · ${l.scheduleLate}' : ''} · ${_date(run.scheduledAt, l)}',
                titleMaxLines: 2,
                supportingMaxLines: 3,
                supporting: TextSpan(
                  text: run.errorCode == null
                      ? l.scheduleNotificationBody
                      : scheduleErrorCopy(l, run.errorCode),
                ),
                onTap: run.sessionId == null || widget.onOpenRun == null
                    ? null
                    : () => _act(() => widget.onOpenRun!(run)),
              ),
            SizedBox(height: KitTokens.of(context).space4),
            if (!c.platformStatus.exactAllowed)
              KitButton.secondary(
                label: l.scheduleExactAccess,
                onPressed: () => _act(c.requestExactAlarm),
              ),
            if (!c.platformStatus.batteryExempt)
              KitText(l.scheduleBatteryNotice, role: KitTextRole.secondary),
            if (!c.platformStatus.notificationsAllowed)
              KitText(l.scheduleNotificationsOff, role: KitTextRole.secondary),
          ],
        ],
      ),
    );
  }
}
