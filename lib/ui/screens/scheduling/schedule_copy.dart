import 'package:intl/intl.dart';

import '../../../l10n/app_localizations.dart';

String scheduleErrorCopy(AppLocalizations l, String? code) => switch (code) {
  'busy' => l.scheduleBusy,
  'needs_you' || 'permission_required' => l.scheduleNeedsYou,
  'auth_required' => l.scheduleSignInAgain,
  'cleartext_unconfirmed' => l.scheduleAllowHttp,
  'agent_failed' => l.scheduleAgentFailed,
  'certificate_changed' => l.scheduleCertificateChanged,
  'certificate_invalid' => l.scheduleCertificateInvalid,
  'stale_target' || 'wrong_project' => l.scheduleTargetChanged,
  'interrupted' => l.scheduleInterrupted,
  'timeout' => l.scheduleTimeout,
  'uncertain_delivery' => l.scheduleUncertain,
  'missed' => l.scheduleMissed,
  'unsupported' => l.scheduleUnsupported,
  _ => l.scheduleUnavailable,
};

/// An agent's name for people: "build" reads "Build", "claude-code" reads
/// "Claude Code". Names that already carry capitals are left alone.
String scheduleAgentLabel(String name, [String? locale]) {
  final trimmed = name.trim();
  if (trimmed.isEmpty || trimmed != trimmed.toLowerCase()) return trimmed;
  return trimmed
      .split(RegExp(r'[-_\s]+'))
      .where((word) => word.isNotEmpty)
      .map((word) => toBeginningOfSentenceCase(word, locale))
      .join(' ');
}

/// A moment the way a person says it: "in 5 min", "Today, 3:10 AM",
/// "Tomorrow, 8:00 AM", "Mon, 8:00 AM", "Oct 28, 8:00 AM". The year appears
/// only for moments more than about six months away (or past).
String scheduleWhen(AppLocalizations l, DateTime moment, DateTime now) {
  final t = moment.toLocal();
  final n = now.toLocal();
  final clock = DateFormat.jm(l.localeName).format(t);
  final diff = t.difference(n);
  if (!diff.isNegative && diff < const Duration(minutes: 60)) {
    return l.scheduleInMinutes(
      '${diff.inMinutes < 1 ? 1 : diff.inMinutes + 1}',
    );
  }
  final days = DateTime(
    t.year,
    t.month,
    t.day,
  ).difference(DateTime(n.year, n.month, n.day)).inDays;
  if (days == 0) return l.scheduleToday(clock);
  if (days == 1) return l.scheduleTomorrow(clock);
  if (days > 1 && days < 7) {
    return '${DateFormat.E(l.localeName).format(t)}, $clock';
  }
  if ((days >= 7 || days < 0) && days.abs() < 183) {
    return '${DateFormat.MMMd(l.localeName).format(t)}, $clock';
  }
  return '${DateFormat.yMMMd(l.localeName).format(t)}, $clock';
}
