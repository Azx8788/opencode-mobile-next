import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:opencode_mobile/domain/custom_provider_config.dart';

CustomProviderConfig _config({
  String id = 'relay',
  String name = 'My Relay',
  CustomProviderProtocol protocol = CustomProviderProtocol.chatCompletions,
  String baseURL = 'https://relay.example.com/v1',
  List<CustomProviderModel> models = const [
    CustomProviderModel(id: 'qwen3-coder'),
  ],
  String? credentialEnv,
}) {
  return CustomProviderConfig(
    id: id,
    name: name,
    protocol: protocol,
    baseURL: baseURL,
    models: models,
    credentialEnv: credentialEnv,
  );
}

void main() {
  group('provider ID', () {
    test('accepts a lowercase name with inner dashes', () {
      expect(_config(id: 'my-relay-2').idProblem, isNull);
    });

    test('the ID is lowercased before it is stored', () {
      final config = _config(id: 'My-Relay');
      expect(config.idProblem, isNull);
      expect(config.toDocument()['providers'], contains('my-relay'));
    });

    test('rejects what would break an id/model reference', () {
      expect(_config(id: '').idProblem, CustomProviderProblem.idEmpty);
      expect(_config(id: '   ').idProblem, CustomProviderProblem.idEmpty);
      expect(
        _config(id: 'my relay').idProblem,
        CustomProviderProblem.idInvalid,
      );
      expect(
        _config(id: 'my_relay').idProblem,
        CustomProviderProblem.idInvalid,
      );
      expect(_config(id: 'relay/2').idProblem, CustomProviderProblem.idInvalid);
      expect(_config(id: '-relay').idProblem, CustomProviderProblem.idInvalid);
      expect(_config(id: 'relay-').idProblem, CustomProviderProblem.idInvalid);
      expect(_config(id: 'r' * 49).idProblem, CustomProviderProblem.idTooLong);
    });
  });

  group('base URL', () {
    test('accepts http for a server on the same machine', () {
      expect(
        _config(baseURL: 'http://127.0.0.1:8080/v1').baseUrlProblem,
        isNull,
      );
    });

    test('rejects a bare host, another scheme, or an inline credential', () {
      expect(
        _config(baseURL: 'relay.example.com/v1').baseUrlProblem,
        CustomProviderProblem.baseUrlNotHttp,
      );
      expect(
        _config(baseURL: '').baseUrlProblem,
        CustomProviderProblem.baseUrlEmpty,
      );
      expect(
        _config(
          baseURL: 'https://user:sk-123@relay.example.com/v1',
        ).baseUrlProblem,
        CustomProviderProblem.baseUrlHasCredentials,
      );
      expect(
        _config(
          baseURL: 'https://relay.example.com/v1?key=sk-123',
        ).baseUrlProblem,
        CustomProviderProblem.baseUrlHasQuery,
      );
    });

    test('drops trailing slashes so the path never doubles', () {
      expect(
        _config(baseURL: 'https://relay.example.com/v1///').normalizedBaseUrl,
        'https://relay.example.com/v1',
      );
    });

    test('keeps a path the person typed after the host', () {
      expect(
        _config(
          baseURL: 'https://relay.example.com/openai/v1',
        ).normalizedBaseUrl,
        'https://relay.example.com/openai/v1',
      );
    });
  });

  group('models', () {
    test('one ID per line, blank lines skipped', () {
      final models = parseModelLines('qwen3-coder\n\nglm-4.6\n');
      expect(models.map((model) => model.id), ['qwen3-coder', 'glm-4.6']);
    });

    test('an equals sign gives the model a display name', () {
      final models = parseModelLines('qwen3-coder = Qwen3 Coder');
      expect(models.single.id, 'qwen3-coder');
      expect(models.single.name, 'Qwen3 Coder');
    });

    test('the same model twice is refused', () {
      final config = _config(
        models: const [
          CustomProviderModel(id: 'a'),
          CustomProviderModel(id: 'a'),
        ],
      );
      expect(config.modelsProblem, CustomProviderProblem.modelDuplicate);
    });

    test('a model ID with a space or slash is refused', () {
      for (final id in ['a b', 'a/b']) {
        final config = _config(models: [CustomProviderModel(id: id)]);
        expect(config.modelsProblem, CustomProviderProblem.modelInvalid);
      }
    });

    test('an empty list is refused', () {
      expect(
        _config(models: const []).modelsProblem,
        CustomProviderProblem.modelsEmpty,
      );
    });

    test('the list round-trips through the field text', () {
      const models = [
        CustomProviderModel(id: 'a'),
        CustomProviderModel(id: 'b', name: 'B'),
      ];
      expect(parseModelLines(formatModelLines(models)).length, 2);
      expect(formatModelLines(models), 'a\nb = B');
    });
  });

  group('credentials', () {
    test('no environment variable means no env key in the config', () {
      expect(_config().toProviderEntry().containsKey('env'), isFalse);
    });

    test('the suggested name follows the provider ID', () {
      expect(_config(id: 'my-relay').suggestedEnvName, 'MY_RELAY_API_KEY');
    });

    test('a lowercase or punctuated name is refused', () {
      expect(
        _config(credentialEnv: 'my_key').envProblem,
        CustomProviderProblem.envInvalid,
      );
      expect(
        _config(credentialEnv: 'MY-KEY').envProblem,
        CustomProviderProblem.envInvalid,
      );
      expect(_config(credentialEnv: 'MY_KEY').envProblem, isNull);
    });
  });

  group('config document', () {
    test('one entry under providers, with the protocol package', () {
      final document = _config().toDocument();
      final providers = document['providers'] as Map<String, Object?>;
      final entry = providers['relay'] as Map<String, Object?>;
      expect(entry['name'], 'My Relay');
      expect(entry['package'], '@opencode/ai/providers/openai-compatible');
      expect(
        (entry['settings'] as Map<String, Object?>)['baseURL'],
        'https://relay.example.com/v1',
      );
      expect((entry['models'] as Map<String, Object?>).keys, ['qwen3-coder']);
    });

    test('each protocol names its own runtime package', () {
      Map<String, Object?> entryFor(CustomProviderProtocol protocol) =>
          (_config(protocol: protocol).toDocument()['providers']
                  as Map<String, Object?>)['relay']
              as Map<String, Object?>;

      expect(
        entryFor(CustomProviderProtocol.chatCompletions)['package'],
        '@opencode/ai/providers/openai-compatible',
      );
      expect(
        entryFor(CustomProviderProtocol.anthropicMessages)['package'],
        '@opencode/ai/providers/anthropic-compatible',
      );
      expect(
        entryFor(CustomProviderProtocol.responses)['package'],
        '@opencode/ai/providers/openai-compatible/responses',
      );
    });

    test('the emitted text parses back as JSON with the same shape', () {
      final text = _config(credentialEnv: 'RELAY_API_KEY').toJson();
      expect(text.endsWith('\n'), isTrue);
      final decoded = jsonDecode(text) as Map<String, Object?>;
      final entry =
          (decoded['providers'] as Map<String, Object?>)['relay']
              as Map<String, Object?>;
      expect(entry['env'], ['RELAY_API_KEY']);
      expect(text, contains('  "providers": {'));
    });

    test('an unnamed model keeps an empty body, not a null name', () {
      final entry = _config().toProviderEntry();
      final models = entry['models'] as Map<String, Object?>;
      expect(models['qwen3-coder'], isEmpty);
    });

    test('the default model selection is provider/model', () {
      expect(_config().defaultModelSelection, 'relay/qwen3-coder');
      expect(_config(models: const []).defaultModelSelection, isNull);
    });
  });

  group('readiness', () {
    test('a complete form is ready', () {
      expect(_config().isReady, isTrue);
      expect(_config().firstProblem, isNull);
    });

    test('the first problem is the one the person should fix first', () {
      final config = _config(id: '', baseURL: 'nope', models: const []);
      expect(config.firstProblem, CustomProviderProblem.idEmpty);
    });
  });
}
