import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:opencode_mobile/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:opencode_mobile/ui/screens/custom_provider_screen.dart';

Widget _app() => MaterialApp(
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  home: const CustomProviderScreen(),
);

Future<void> _fill(
  WidgetTester tester, {
  String id = 'relay',
  String url = 'https://relay.example.com/v1',
  String models = 'qwen3-coder',
}) async {
  await tester.enterText(find.byKey(const ValueKey('custom-provider-id')), id);
  await tester.enterText(
    find.byKey(const ValueKey('custom-provider-url')),
    url,
  );
  await tester.enterText(
    find.byKey(const ValueKey('custom-provider-models')),
    models,
  );
  await tester.pump();
}

void main() {
  final l10n = lookupAppLocalizations(const Locale('en'));

  // The form is taller than the default 800x600 test window, and a ListView
  // only builds what it shows. A tall window keeps every field mounted, so a
  // failure here is about the form, not about where the test scrolled.
  setUp(() {
    // The model list keeps a draft, and restoring it reads the store.
    SharedPreferences.setMockInitialValues({});
    final view =
        TestWidgetsFlutterBinding.instance.platformDispatcher.implicitView!;
    view.physicalSize = const Size(520, 1600);
    view.devicePixelRatio = 1;
  });

  tearDown(() {
    final view =
        TestWidgetsFlutterBinding.instance.platformDispatcher.implicitView!;
    view.resetPhysicalSize();
    view.resetDevicePixelRatio();
  });

  testWidgets('an empty form names the first thing to fix', (tester) async {
    await tester.pumpWidget(_app());
    await tester.tap(find.byKey(const ValueKey('custom-provider-generate')));
    await tester.pumpAndSettle();

    expect(find.text(l10n.customProviderIdEmpty), findsOneWidget);
    expect(find.byKey(const ValueKey('custom-provider-json')), findsNothing);
  });

  testWidgets('a bad address is named under its field', (tester) async {
    await tester.pumpWidget(_app());
    await _fill(tester, url: 'relay.example.com/v1');
    await tester.tap(find.byKey(const ValueKey('custom-provider-generate')));
    await tester.pumpAndSettle();

    expect(find.text(l10n.customProviderUrlNotHttp), findsOneWidget);
    expect(find.byKey(const ValueKey('custom-provider-json')), findsNothing);
  });

  testWidgets('a complete form opens the entry with a copy action', (
    tester,
  ) async {
    await tester.pumpWidget(_app());
    await _fill(tester);
    await tester.tap(find.byKey(const ValueKey('custom-provider-generate')));
    await tester.pumpAndSettle();

    expect(find.text(l10n.customProviderReadyTitle), findsOneWidget);
    expect(find.byKey(const ValueKey('custom-provider-json')), findsOneWidget);
    expect(find.textContaining('RELAY_API_KEY'), findsWidgets);
  });

  testWidgets('the protocol switches the runtime package', (tester) async {
    await tester.pumpWidget(_app());
    await _fill(tester);
    await tester.tap(find.text(l10n.customProviderProtocolMessages));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('custom-provider-generate')));
    await tester.pumpAndSettle();

    expect(find.textContaining('anthropic-compatible'), findsWidgets);
  });

  testWidgets('errors appear only after the first Generate', (tester) async {
    await tester.pumpWidget(_app());
    await tester.pump();
    expect(find.text(l10n.customProviderIdEmpty), findsNothing);
  });
}
