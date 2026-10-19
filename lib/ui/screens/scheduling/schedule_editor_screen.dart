import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../l10n/app_localizations.dart';
import '../../../scheduling/controller.dart';
import '../../../scheduling/models.dart';
import '../../../scheduling/recurrence.dart';
import '../../kit/kit.dart';
import 'schedule_copy.dart';

class ScheduleEditorScreen extends StatefulWidget {
  const ScheduleEditorScreen({
    super.key,
    required this.controller,
    required this.target,
    this.agents = const [],
    this.existing,
  });
  final ScheduledPromptsController controller;
  final ScheduledPrompt target;
  final List<String> agents;
  final ScheduledPrompt? existing;
  @override
  State<ScheduleEditorScreen> createState() => _ScheduleEditorScreenState();
}

class _ScheduleEditorScreenState extends State<ScheduleEditorScreen> {
  late final TextEditingController _prompt;
  late final TextEditingController _hours;
  late ScheduleRecurrenceKind _kind;
  late TimeOfDay _time;
  late DateTime _once;
  late MissedRunPolicy _missed;
  late bool _thisConversation;
  String? _agent;
  String? _error;
  bool _saving = false;
  ScheduledPrompt get _seed => widget.existing ?? widget.target;
  @override
  void initState() {
    super.initState();
    final s = _seed;
    _prompt = TextEditingController(text: s.prompt);
    _hours = TextEditingController(text: s.recurrence.hours.toString());
    _kind = s.recurrence.kind;
    _time = TimeOfDay(hour: s.recurrence.hour, minute: s.recurrence.minute);
    _once =
        s.recurrence.at?.toLocal() ??
        DateTime.now().add(const Duration(hours: 1));
    _missed = s.missedPolicy;
    _thisConversation = s.sessionId != null;
    _agent = s.agent ?? widget.agents.firstOrNull;
  }

  @override
  void dispose() {
    _prompt.dispose();
    _hours.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_saving) return;
    final l = AppLocalizations.of(context);
    final now = widget.controller.now();
    final hours = int.tryParse(_hours.text);
    if (_prompt.text.trim().isEmpty ||
        (_kind == ScheduleRecurrenceKind.once && !_once.isAfter(now)) ||
        (_kind == ScheduleRecurrenceKind.interval &&
            (hours == null || hours < 1 || hours > 168))) {
      setState(() => _error = l.scheduleInvalid);
      return;
    }
    setState(() {
      _saving = true;
      _error = null;
    });
    final recurrence = switch (_kind) {
      ScheduleRecurrenceKind.weekdays => ScheduleRecurrence.weekdays(
        hour: _time.hour,
        minute: _time.minute,
      ),
      ScheduleRecurrenceKind.interval => ScheduleRecurrence.interval(
        hours: hours!,
        anchor: now.add(Duration(hours: hours)),
      ),
      ScheduleRecurrenceKind.once => ScheduleRecurrence.once(_once),
    };
    final seed = _seed;
    try {
      await widget.controller.save(
        ScheduledPrompt(
          id: seed.id,
          profileId: seed.profileId,
          profileFingerprint: widget.target.profileFingerprint,
          prompt: _prompt.text.trim(),
          projectPath: seed.projectPath,
          workspace: seed.workspace,
          sessionId: _thisConversation
              ? (seed.sessionId ?? widget.target.sessionId)
              : null,
          agent: _agent,
          modelProviderId: seed.modelProviderId,
          modelId: seed.modelId,
          recurrence: recurrence,
          createdAt: seed.createdAt,
          missedPolicy: _missed,
          enabled: true,
          nextRunAt: nextScheduledOccurrence(recurrence, now),
          revision: widget.existing == null ? 1 : seed.revision + 1,
        ),
      );
      if (mounted) Navigator.of(context).pop();
    } catch (_) {
      if (mounted) setState(() => _error = l.scheduleSaveFailed);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final names = {...widget.agents, ?_agent}.toList();
    return KitScreen(
      topBar: KitTopBar(
        title: widget.existing == null ? l.scheduleCreate : l.scheduleEdit,
      ),
      body: ListView(
        padding: EdgeInsets.all(KitTokens.of(context).space4),
        children: [
          KitField(
            label: l.schedulePrompt,
            controller: _prompt,
            kind: KitFieldKind.multiline,
            minLines: 3,
            maxLines: 7,
            maxLength: 32000,
          ),
          KitPickerRow<ScheduleRecurrenceKind>(
            title: l.scheduleRepeat,
            selected: _kind,
            choices: [
              KitChoice(
                value: ScheduleRecurrenceKind.weekdays,
                title: l.scheduleWeekdays,
              ),
              KitChoice(
                value: ScheduleRecurrenceKind.interval,
                title: l.scheduleEveryHours,
              ),
              KitChoice(
                value: ScheduleRecurrenceKind.once,
                title: l.scheduleOnce,
              ),
            ],
            onSelected: (v) => setState(() => _kind = v),
          ),
          if (_kind == ScheduleRecurrenceKind.interval)
            KitField(
              label: l.scheduleHours,
              controller: _hours,
              kind: KitFieldKind.number,
            )
          else
            KitRow(
              title: l.scheduleTime,
              supporting: TextSpan(
                text: _kind == ScheduleRecurrenceKind.once
                    ? scheduleWhen(l, _once, DateTime.now())
                    : DateFormat.jm(
                        l.localeName,
                      ).format(DateTime(2000, 1, 1, _time.hour, _time.minute)),
              ),
              trailing: const KitChevron(),
              onTap: () async {
                if (_kind == ScheduleRecurrenceKind.once) {
                  final value = await showKitDateTimePicker(
                    context,
                    title: l.scheduleTime,
                    initial: _once,
                    first: DateTime.now(),
                  );
                  if (mounted && value != null) setState(() => _once = value);
                } else {
                  final value = await showKitTimePicker(
                    context,
                    title: l.scheduleTime,
                    initial: _time,
                  );
                  if (mounted && value != null) setState(() => _time = value);
                }
              },
            ),
          KitPickerRow<bool>(
            title: l.scheduleTarget,
            selected: _thisConversation,
            choices: [
              if (widget.target.sessionId != null || _seed.sessionId != null)
                KitChoice(value: true, title: l.scheduleThisConversation),
              KitChoice(value: false, title: l.scheduleNewConversation),
            ],
            onSelected: (v) => setState(() => _thisConversation = v),
          ),
          if (names.isNotEmpty)
            KitPickerRow<String>(
              title: l.scheduleAgent,
              selected: _agent ?? names.first,
              choices: [
                for (final name in names)
                  KitChoice(value: name, title: scheduleAgentLabel(name)),
              ],
              onSelected: (v) => setState(() => _agent = v),
            ),
          KitExpandRow(
            title: l.scheduleOptions,
            children: [
              KitPickerRow<MissedRunPolicy>(
                title: l.scheduleMissedRuns,
                selected: _missed,
                choices: [
                  KitChoice(
                    value: MissedRunPolicy.catchUp,
                    title: l.scheduleCatchUp,
                  ),
                  KitChoice(
                    value: MissedRunPolicy.skip,
                    title: l.scheduleSkipMissed,
                  ),
                ],
                onSelected: (v) => setState(() => _missed = v),
              ),
              KitText(l.scheduleTimingNotice, role: KitTextRole.secondary),
              KitText(l.scheduleBatteryNotice, role: KitTextRole.secondary),
              KitDetailsFold(
                values: [
                  KitTechnicalValue(l.scheduleProject, _seed.projectPath),
                ],
              ),
            ],
          ),
          if (_error != null) KitText(_error!, role: KitTextRole.secondary),
          SizedBox(height: KitTokens.of(context).space4),
          KitButton.primary(
            label: l.scheduleSave,
            onPressed: _save,
            working: _saving,
          ),
        ],
      ),
    );
  }
}
