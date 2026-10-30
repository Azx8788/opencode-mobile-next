import 'package:opencode_mobile/domain/custom_provider_config.dart';
import 'package:opencode_mobile/ui/screens/custom_provider_screen.dart';
import 'package:widgetbook/widgetbook.dart';

import '../catalog.dart';

/// A relay the catalogue does not have, filled in the way someone with a
/// `/v1` endpoint and two model IDs would leave it.
const _filled = CustomProviderConfig(
  id: 'relay',
  name: '',
  protocol: CustomProviderProtocol.chatCompletions,
  baseURL: 'https://relay.example.com/v1',
  models: [
    CustomProviderModel(id: 'qwen3-coder', name: 'Qwen3 Coder'),
    CustomProviderModel(id: 'glm-4.6'),
  ],
  credentialEnv: 'RELAY_API_KEY',
);

CatalogComponent customProviderScreen() => catalogComponent(
  area: 'Servers',
  screen: 'CustomProviderScreen',
  name: 'Add a provider',
  useCases: [
    WidgetbookUseCase(
      name: 'Empty form',
      builder: (_) => const CustomProviderScreen(),
    ),
    WidgetbookUseCase(
      name: 'Filled in',
      builder: (_) => const CustomProviderScreen(initial: _filled),
    ),
  ],
);
