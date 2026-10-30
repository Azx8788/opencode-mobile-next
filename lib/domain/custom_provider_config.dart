import 'dart:convert';

/// What an endpoint speaks. OpenCode 2 loads one runtime package per wire
/// protocol, so the protocol is the only thing that picks the package: a
/// gateway that answers `POST /v1/messages` must not be sent through the
/// OpenAI-compatible package just because it also answers `/v1/models`.
enum CustomProviderProtocol {
  /// `POST /v1/chat/completions`, `messages` array, `Bearer` auth. The widest
  /// compatible surface, and what most relays and gateways answer.
  chatCompletions(package: '@opencode/ai/providers/openai-compatible'),

  /// `POST /v1/messages`, `system` as its own field, `x-api-key` auth. Claude
  /// through a relay keeps prompt caching and multi-part content intact here.
  anthropicMessages(package: '@opencode/ai/providers/anthropic-compatible'),

  /// `POST /v1/responses`, `instructions`/`input` instead of `messages`.
  /// Fewest relays implement it; keep it for endpoints that only do this.
  responses(package: '@opencode/ai/providers/openai-compatible/responses');

  const CustomProviderProtocol({required this.package});

  /// The runtime package that speaks this protocol.
  final String package;
}

/// Why a field cannot be used as typed. Each value maps to one sentence in the
/// screen, so the person reads what to change rather than a parser trace.
enum CustomProviderProblem {
  idEmpty,
  idInvalid,
  idTooLong,
  baseUrlEmpty,
  baseUrlInvalid,
  baseUrlNotHttp,
  baseUrlHasCredentials,
  baseUrlHasQuery,
  modelsEmpty,
  modelInvalid,
  modelDuplicate,
  envInvalid,
}

/// One model on the endpoint. [id] is what OpenCode stores and shows; the
/// upstream name is the same unless the endpoint needs a different one.
class CustomProviderModel {
  const CustomProviderModel({required this.id, this.name});

  final String id;
  final String? name;
}

/// A provider entry the person wrote by hand, ready to be pasted into the
/// server's config.
///
/// Everything here is pure: the screen collects text, this decides whether it
/// is usable and what the config says. Nothing is sent anywhere, so a wrong
/// answer costs a copy-and-paste, not a broken profile.
class CustomProviderConfig {
  const CustomProviderConfig({
    required this.id,
    required this.name,
    required this.protocol,
    required this.baseURL,
    required this.models,
    this.credentialEnv,
  });

  /// The provider ID: the config key, and the prefix in `id/model`.
  final String id;
  final String name;
  final CustomProviderProtocol protocol;
  final String baseURL;
  final List<CustomProviderModel> models;

  /// Environment variable the server reads the key from, when the person
  /// asked for that instead of pasting a key into the config.
  final String? credentialEnv;

  static final RegExp _idPattern = RegExp(r'^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$');
  static final RegExp _envPattern = RegExp(r'^[A-Z][A-Z0-9_]*$');

  /// Trimmed ID, lowercased: `My-Gateway` and `my-gateway` are one provider.
  static String normalizeId(String raw) => raw.trim().toLowerCase();

  /// The environment variable the form offers for a given ID, before the
  /// person edits it.
  static String suggestedEnvNameFor(String raw) {
    final base = normalizeId(
      raw,
    ).replaceAll(RegExp('[^a-z0-9]+'), '_').replaceAll(RegExp(r'^_+|_+$'), '');
    return '${base.isEmpty ? 'PROVIDER' : base.toUpperCase()}_API_KEY';
  }

  /// The name OpenCode shows. Falls back to the ID so a half-filled form still
  /// produces something a person can recognise in the picker.
  String get displayName {
    final trimmed = name.trim();
    return trimmed.isEmpty ? id : trimmed;
  }

  /// `MY_GATEWAY_API_KEY` for `my-gateway`: the name a relay user is most
  /// likely to already have exported.
  String get suggestedEnvName => suggestedEnvNameFor(id);

  CustomProviderProblem? get idProblem {
    final value = normalizeId(id);
    if (value.isEmpty) return CustomProviderProblem.idEmpty;
    if (value.length > 48) return CustomProviderProblem.idTooLong;
    if (!_idPattern.hasMatch(value)) return CustomProviderProblem.idInvalid;
    return null;
  }

  CustomProviderProblem? get baseUrlProblem {
    final raw = baseURL.trim();
    if (raw.isEmpty) return CustomProviderProblem.baseUrlEmpty;
    final uri = Uri.tryParse(raw);
    if (uri == null) return CustomProviderProblem.baseUrlInvalid;
    if (uri.scheme != 'http' && uri.scheme != 'https') {
      return CustomProviderProblem.baseUrlNotHttp;
    }
    if (uri.host.isEmpty) return CustomProviderProblem.baseUrlInvalid;
    // A key pasted into the URL would be copied into a file the person may
    // share; refuse rather than store it in the wrong place.
    if (uri.userInfo.isNotEmpty) {
      return CustomProviderProblem.baseUrlHasCredentials;
    }
    if (uri.hasQuery || uri.hasFragment) {
      return CustomProviderProblem.baseUrlHasQuery;
    }
    return null;
  }

  CustomProviderProblem? get modelsProblem {
    if (models.isEmpty) return CustomProviderProblem.modelsEmpty;
    final seen = <String>{};
    for (final model in models) {
      final id = model.id.trim();
      if (id.isEmpty || id.length > 128 || id.contains(RegExp(r'[\s/]'))) {
        return CustomProviderProblem.modelInvalid;
      }
      if (!seen.add(id)) return CustomProviderProblem.modelDuplicate;
    }
    return null;
  }

  CustomProviderProblem? get envProblem {
    final value = credentialEnv?.trim() ?? '';
    if (value.isEmpty) return null;
    return _envPattern.hasMatch(value)
        ? null
        : CustomProviderProblem.envInvalid;
  }

  CustomProviderProblem? get firstProblem =>
      idProblem ?? baseUrlProblem ?? modelsProblem ?? envProblem;

  bool get isReady => firstProblem == null;

  /// The base URL without a trailing slash: `…/v1` and `…/v1/` must not become
  /// `…/v1//chat/completions` inside the runtime package.
  String get normalizedBaseUrl {
    var value = baseURL.trim();
    while (value.endsWith('/')) {
      value = value.substring(0, value.length - 1);
    }
    return value;
  }

  /// One entry under `providers`. Field names are OpenCode 2's: `package` is the
  /// runtime, `settings.baseURL` is where the endpoint goes, and `models` is
  /// keyed by the ID the app uses.
  Map<String, Object?> toProviderEntry() {
    final entry = <String, Object?>{
      'name': displayName,
      if ((credentialEnv?.trim() ?? '').isNotEmpty)
        'env': [credentialEnv!.trim()],
      'package': protocol.package,
      'settings': {'baseURL': normalizedBaseUrl},
      'models': {
        for (final model in models)
          model.id.trim(): {
            if (model.name?.trim().isNotEmpty == true)
              'name': model.name!.trim(),
          },
      },
    };
    return entry;
  }

  /// The smallest document that adds this provider to a server: one key under
  /// `providers`. It is a snippet, not a whole file, so it can be merged into a
  /// config that already has other keys.
  Map<String, Object?> toDocument() => {
    'providers': {normalizeId(id): toProviderEntry()},
  };

  String toJson() =>
      '${const JsonEncoder.withIndent('  ').convert(toDocument())}\n';

  /// `provider/model` for the first model, the string a person pastes into
  /// `model` to make this the default.
  String? get defaultModelSelection {
    final id = normalizeId(this.id);
    final first = models.isEmpty ? null : models.first.id.trim();
    if (id.isEmpty || first == null) return null;
    return '$id/$first';
  }
}

/// Reads one model per line, `id` or `id = display name`. Blank lines are
/// skipped so a pasted column with a trailing newline is not an error.
List<CustomProviderModel> parseModelLines(String raw) {
  final models = <CustomProviderModel>[];
  for (final line in raw.split('\n')) {
    final text = line.trim();
    if (text.isEmpty) continue;
    final separator = text.indexOf('=');
    if (separator < 0) {
      models.add(CustomProviderModel(id: text));
      continue;
    }
    final id = text.substring(0, separator).trim();
    final name = text.substring(separator + 1).trim();
    if (id.isEmpty) continue;
    models.add(CustomProviderModel(id: id, name: name.isEmpty ? null : name));
  }
  return models;
}

/// The same list as editable text, so the field can be reopened without losing
/// what was typed.
String formatModelLines(List<CustomProviderModel> models) {
  return models
      .map(
        (model) =>
            model.name == null ? model.id : '${model.id} = ${model.name}',
      )
      .join('\n');
}
