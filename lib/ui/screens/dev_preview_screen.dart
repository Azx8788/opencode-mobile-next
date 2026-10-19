import 'dart:async';

import 'package:flutter/material.dart';

import '../../domain/dev_preview.dart';
import '../../l10n/app_localizations.dart';
import '../app_iconography.dart';
import '../kit/kit_buttons.dart';
import '../kit/kit_dialog.dart';
import '../kit/kit_notice.dart';
import '../kit/kit_page_route.dart';
import '../kit/kit_screen.dart';
import '../kit/kit_top_bar.dart';
import '../kit/kit_web_preview.dart';
import '../widgets/external_link.dart';

/// Opens the in-app preview for [link] on the connected server, or says in
/// plain words why it cannot be shown. Called when a local link is tapped in
/// a conversation and when a port is chosen from the conversation menu.
///
/// [serverBaseUrl] is the saved server's address (null when none);
/// [leased] is true for a runtime-only private transport, which has no
/// address to point a link at. [supported] overrides the platform check
/// (tests).
Future<void> openDevPreview(
  BuildContext context,
  DevPreviewLink link, {
  required String? serverBaseUrl,
  bool leased = false,
  bool? supported,
  Future<bool> Function(Uri uri)? launcher,
  VoidCallback? onLogs,
}) async {
  final target = DevPreviewTarget.resolve(
    link,
    serverBaseUrl: serverBaseUrl,
    leased: leased,
  );
  final l10n = AppLocalizations.of(context);
  if (target.route == DevPreviewRoute.blocked) {
    final noServer = target.block == DevPreviewBlock.noServer;
    await showKitAlert(
      context,
      title: noServer
          ? l10n.devPreviewNoServerTitle
          : l10n.devPreviewNoHostTitle,
      body: noServer ? l10n.devPreviewNoServerBody : l10n.devPreviewNoHostBody,
      icon: AppIconography.browser,
      alertKey: const ValueKey('dev-preview-blocked'),
    );
    return;
  }
  await Navigator.of(context).push<void>(
    KitPageRoute<void>(
      builder: (_) => DevPreviewScreen(
        target: target,
        supported: supported,
        launcher: launcher,
        onLogs: onLogs,
      ),
    ),
  );
}

/// The in-app preview of a dev server (map page `dev-preview`): the page
/// full screen with Reload, Open in browser and Copy address in the bar.
/// A remote server gets one plain note: the dev server has to listen on
/// 0.0.0.0. Back steps back through the page's own history first, then
/// leaves.
class DevPreviewScreen extends StatefulWidget {
  DevPreviewScreen({
    super.key,
    required this.target,
    this.supported,
    this.launcher,
    this.onLogs,
  }) : assert(target.uri != null);

  final DevPreviewTarget target;
  final bool? supported;

  /// Test seam for [openExternalLink].
  final Future<bool> Function(Uri uri)? launcher;

  /// Opens this server's logs when they are known; the bar then shows Logs.
  final VoidCallback? onLogs;

  @override
  State<DevPreviewScreen> createState() => _DevPreviewScreenState();
}

class _DevPreviewScreenState extends State<DevPreviewScreen> {
  final _web = KitWebPreviewController();

  Uri get _origin => widget.target.uri!;
  Uri get _shown => _web.current ?? _origin;

  @override
  void initState() {
    super.initState();
    _web.addListener(_changed);
  }

  void _changed() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    _web
      ..removeListener(_changed)
      ..dispose();
    super.dispose();
  }

  void _openInBrowser() => unawaited(
    openExternalLink(context, _shown.toString(), launcher: widget.launcher),
  );

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final target = widget.target;
    final port = '${_origin.port}';
    final browser = KitAction(
      key: const ValueKey('dev-preview-browser'),
      label: l10n.devPreviewOpenInBrowser,
      icon: AppIconography.externalLink,
      onPressed: _openInBrowser,
    );
    return KitScreen(
      topBar: KitTopBar(
        title: l10n.devPreviewTitle,
        subtitle: '${_origin.host}:$port',
        actions: [
          if (widget.onLogs != null)
            KitAction(
              key: const ValueKey('dev-preview-logs'),
              label: l10n.servicesLogs,
              icon: AppIconography.text,
              onPressed: widget.onLogs,
            ),
          KitAction(
            key: const ValueKey('dev-preview-reload'),
            label: l10n.devPreviewReload,
            icon: AppIconography.retry,
            onPressed: () => unawaited(_web.reload()),
          ),
          browser,
          KitAction.copy(
            key: const ValueKey('dev-preview-copy'),
            label: l10n.devPreviewCopyAddress,
            text: () => _shown.toString(),
          ),
        ],
      ),
      loading:
          (widget.supported ?? KitWebPreview.platformSupported()) &&
          _web.phase == KitWebPreviewPhase.loading,
      loadingLabel: l10n.devPreviewLoading,
      header: [
        if (target.needsAllInterfaces)
          KitNotice(
            key: const ValueKey('dev-preview-remote-note'),
            icon: AppIconography.info,
            message: l10n.devPreviewRemoteNote(port, target.host ?? ''),
          ),
      ],
      body: KitWebPreview(
        origin: _origin,
        controller: _web,
        supported: widget.supported,
        unsupportedAction: browser,
        onLeave: (uri) => unawaited(
          openExternalLink(context, uri.toString(), launcher: widget.launcher),
        ),
      ),
    );
  }
}
