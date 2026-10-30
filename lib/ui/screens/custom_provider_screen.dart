import 'package:flutter/material.dart';

import '../../domain/custom_provider_config.dart';
import '../../l10n/app_localizations.dart';
import '../app_iconography.dart';
import '../kit/kit.dart';

AppLocalizations _l10nOf(BuildContext context) =>
    lookupAppLocalizations(Localizations.localeOf(context));

/// Adds a provider the server's catalogue does not know: a relay, a company
/// gateway, anything with an address and a protocol.
///
/// The app does not write the server's config, so the last step is a config
/// entry to copy: that keeps a typo here from breaking a working profile, and it
/// stays available on both server versions. Nothing typed here leaves the
/// phone until the person pastes it into the server themselves.
///
/// States: empty form; filled form; a field that cannot be used (its reason
/// under it, once Generate was pressed); config ready (a sheet with the JSON,
/// its copy action, and what still has to happen on the server).
class CustomProviderScreen extends StatefulWidget {
  /// What the form starts with. The catalog uses it to show a filled form; the
  /// app opens the screen empty.
  final CustomProviderConfig? initial;

  const CustomProviderScreen({super.key, this.initial});

  @override
  State<CustomProviderScreen> createState() => _CustomProviderScreenState();
}

class _CustomProviderScreenState extends State<CustomProviderScreen> {
  final TextEditingController _id = TextEditingController();
  final TextEditingController _baseUrl = TextEditingController();
  final TextEditingController _models = TextEditingController();
  final TextEditingController _env = TextEditingController();
  CustomProviderProtocol _protocol = CustomProviderProtocol.chatCompletions;

  /// Errors stay quiet until the first Generate: a form that is red before
  /// anything was typed reads as a failure, not a form.
  bool _submitted = false;

  /// Once the person edits the variable name, the ID no longer rewrites it.
  bool _envEdited = false;

  /// The model list survives leaving the screen: a relay's IDs are copied from
  /// somewhere else and easy to lose. It belongs to the app rather than one
  /// server, because the entry is not written to any server.
  late final _draft = KitDraft(
    target: 'custom-provider',
    profileId: KitDraft.appWide,
    controller: _models,
  );

  @override
  void initState() {
    super.initState();
    final initial = widget.initial;
    if (initial == null) return;
    _id.text = initial.id;
    _baseUrl.text = initial.baseURL;
    _models.text = formatModelLines(initial.models);
    _protocol = initial.protocol;
    _env.text = initial.credentialEnv ?? initial.suggestedEnvName;
    _envEdited = true;
  }

  @override
  void dispose() {
    _id.dispose();
    _baseUrl.dispose();
    _models.dispose();
    _env.dispose();
    super.dispose();
  }

  CustomProviderConfig get _config => CustomProviderConfig(
    id: _id.text,
    name: '',
    protocol: _protocol,
    baseURL: _baseUrl.text,
    models: parseModelLines(_models.text),
    credentialEnv: _env.text,
  );

  void _idChanged(String value) {
    if (!_envEdited) {
      _env.text = CustomProviderConfig.suggestedEnvNameFor(value);
    }
    setState(() {});
  }

  Future<void> _generate() async {
    setState(() => _submitted = true);
    final config = _config;
    if (!config.isReady) return;
    final l10n = _l10nOf(context);
    await showKitSheet<void>(
      context,
      title: l10n.customProviderReadyTitle,
      icon: AppIconography.checkCircle,
      height: KitSheetHeight.full,
      primary: KitAction(
        key: const ValueKey('custom-provider-done'),
        label: l10n.isolatedTaskClose,
        onPressed: () => Navigator.of(context).pop(),
      ),
      body: (_) => _ReadyBody(config: config),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = _l10nOf(context);
    final config = _config;
    return KitScreen(
      width: KitScreenWidth.list,
      topBar: KitTopBar(title: l10n.customProviderTitle),
      bottom: KitActionBlock(
        primary: KitAction(
          key: const ValueKey('custom-provider-generate'),
          label: l10n.customProviderGenerate,
          icon: AppIconography.check,
          onPressed: _generate,
        ),
      ),
      body: ListView(
        key: const ValueKey('custom-provider-form'),
        padding: KitScreen.padding(context),
        children: [
          KitField(
            label: l10n.customProviderIdLabel,
            controller: _id,
            kind: KitFieldKind.mono,
            hint: 'relay',
            helper: l10n.customProviderIdHelper,
            error: _shown(config.idProblem, l10n),
            onChanged: _idChanged,
            textInputAction: TextInputAction.next,
            fieldKey: const ValueKey('custom-provider-id'),
          ),
          _gap(context),
          _label(context, l10n.customProviderProtocolLabel),
          KitSegmented<CustomProviderProtocol>(
            key: const ValueKey('custom-provider-protocol'),
            semanticsLabel: l10n.customProviderProtocolLabel,
            selected: _protocol,
            onChanged: (value) => setState(() => _protocol = value),
            segments: [
              KitSegment(
                value: CustomProviderProtocol.chatCompletions,
                label: l10n.customProviderProtocolChat,
              ),
              KitSegment(
                value: CustomProviderProtocol.anthropicMessages,
                label: l10n.customProviderProtocolMessages,
              ),
              KitSegment(
                value: CustomProviderProtocol.responses,
                label: l10n.customProviderProtocolResponses,
              ),
            ],
          ),
          _gap(context),
          KitField(
            label: l10n.customProviderBaseUrlLabel,
            controller: _baseUrl,
            kind: KitFieldKind.url,
            hint: 'https://…',
            helper: l10n.customProviderBaseUrlHelper,
            error: _shown(config.baseUrlProblem, l10n),
            onChanged: (_) => setState(() {}),
            fieldKey: const ValueKey('custom-provider-url'),
          ),
          _gap(context),
          KitField(
            label: l10n.modelTitleCompact,
            controller: _models,
            kind: KitFieldKind.multiline,
            minLines: 3,
            maxLines: 8,
            hint: 'qwen3-coder\nglm-4.6 = GLM 4.6',
            helper: l10n.customProviderModelsHelper,
            error: _shown(config.modelsProblem, l10n),
            draft: _draft,
            onChanged: (_) => setState(() {}),
            fieldKey: const ValueKey('custom-provider-models'),
          ),
          _gap(context),
          KitDetailsFold(
            label: l10n.mcpSetupAdvanced,
            initiallyExpanded: false,
            foldKey: const ValueKey('custom-provider-advanced'),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                KitField(
                  label: l10n.customProviderEnvLabel,
                  controller: _env,
                  kind: KitFieldKind.mono,
                  helper: l10n.customProviderEnvHelper,
                  error: _shown(config.envProblem, l10n),
                  onChanged: (_) {
                    _envEdited = true;
                    setState(() {});
                  },
                  fieldKey: const ValueKey('custom-provider-env'),
                ),
                _gap(context),
                KitText(
                  config.protocol.package,
                  role: KitTextRole.caption,
                  tone: KitTextTone.secondary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// The reason under a field, or nothing until Generate was pressed.
  String? _shown(CustomProviderProblem? problem, AppLocalizations l10n) =>
      _submitted && problem != null ? _problemText(problem, l10n) : null;

  Widget _gap(BuildContext context) =>
      SizedBox(height: KitTokens.of(context).space5);

  Widget _label(BuildContext context, String text) => Padding(
    padding: EdgeInsetsDirectional.only(bottom: KitTokens.of(context).space2),
    child: KitText(text, role: KitTextRole.label, tone: KitTextTone.secondary),
  );
}

/// The config entry, why it is a snippet rather than a file, and the one thing
/// the config cannot carry: the key.
class _ReadyBody extends StatelessWidget {
  const _ReadyBody({required this.config});

  final CustomProviderConfig config;

  @override
  Widget build(BuildContext context) {
    final l10n = _l10nOf(context);
    final json = config.toJson();
    final env = config.credentialEnv?.trim() ?? '';
    final selection = config.defaultModelSelection;
    return Column(
      key: const ValueKey('custom-provider-result'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        KitText(l10n.customProviderReadyIntro, role: KitTextRole.body),
        SizedBox(height: KitTokens.of(context).space5),
        KitCodeBlock(
          text: json,
          language: 'json',
          fileName: 'opencode.json',
          maxLines: 24,
          // The package name is longer than a phone is wide: wrap rather than
          // make the person scroll sideways to read their own config.
          wrap: true,
          copyText: json,
          copyLabel: l10n.kitCopy,
          blockKey: const ValueKey('custom-provider-json'),
        ),
        if (env.isNotEmpty) ...[
          SizedBox(height: KitTokens.of(context).space5),
          KitText(
            l10n.customProviderKeyHint(env),
            role: KitTextRole.caption,
            tone: KitTextTone.secondary,
          ),
        ],
        if (selection != null) ...[
          SizedBox(height: KitTokens.of(context).space3),
          KitText(
            l10n.customProviderDefaultModel(selection),
            role: KitTextRole.caption,
            tone: KitTextTone.secondary,
          ),
        ],
      ],
    );
  }
}

String _problemText(CustomProviderProblem problem, AppLocalizations l10n) {
  return switch (problem) {
    CustomProviderProblem.idEmpty => l10n.customProviderIdEmpty,
    CustomProviderProblem.idInvalid => l10n.customProviderIdInvalid,
    CustomProviderProblem.idTooLong => l10n.customProviderIdTooLong,
    CustomProviderProblem.baseUrlEmpty => l10n.customProviderUrlEmpty,
    CustomProviderProblem.baseUrlInvalid => l10n.customProviderUrlInvalid,
    CustomProviderProblem.baseUrlNotHttp => l10n.customProviderUrlNotHttp,
    CustomProviderProblem.baseUrlHasCredentials =>
      l10n.customProviderUrlCredentials,
    CustomProviderProblem.baseUrlHasQuery => l10n.customProviderUrlQuery,
    CustomProviderProblem.modelsEmpty => l10n.customProviderModelsEmpty,
    CustomProviderProblem.modelInvalid => l10n.customProviderModelInvalid,
    CustomProviderProblem.modelDuplicate => l10n.customProviderModelDuplicate,
    CustomProviderProblem.envInvalid => l10n.customProviderEnvInvalid,
  };
}
