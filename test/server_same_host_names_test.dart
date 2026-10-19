// Servers on one host are told apart by port (and "(secure)") in the
// Manage servers list and in the header chip, as in the switcher sheet
// (release-proof re-check B4, 2026-10-17). Both fail on f37c3df24, where
// the list showed profile.name and the chip cut the name before the port.
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show RenderParagraph;
import 'package:flutter_test/flutter_test.dart';
import 'package:opencode_mobile/l10n/app_localizations.dart';
import 'package:opencode_mobile/state/profiles.dart';
import 'package:opencode_mobile/ui/app_theme.dart';
import 'package:opencode_mobile/ui/kit/kit_top_bar.dart';

import 'support/phone_server_scenes.dart';

ServerProfile _p(String id, String url) => ServerProfile(
  id: id,
  name: 'Computer at 10.0.2.2',
  baseUrl: url,
  flavor: ServerFlavor.v2,
  serverVersion: '2.0.29',
  password: 'synthetic',
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Manage servers rows carry the port and (secure)', (
    tester,
  ) async {
    final done = await mountPhoneServerScene(
      tester,
      PhoneServerScene.servers,
      light: false,
      boundary: GlobalKey(),
      seededProfiles: [
        _p('plain', 'http://10.0.2.2:4097'),
        _p('tls', 'https://10.0.2.2:4443'),
      ],
    );
    expect(find.text('Computer at 10.0.2.2:4097'), findsOneWidget);
    expect(find.text('Computer at 10.0.2.2:4443 (secure)'), findsOneWidget);
    expect(find.text('Computer at 10.0.2.2'), findsNothing);
    await done();
  });

  testWidgets('the header chip shortens the host, never the port', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(360, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.light(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: KitTopBar.shell(
            controls: KitShellControls(
              server: 'Computer at 10.0.2.2:4443',
              serverStatus: 'Connected',
              serverTone: AppStatusTone.ok,
              onServer: () {},
              onSearch: () {},
            ),
          ),
        ),
      ),
    );
    expect(tester.takeException(), isNull);
    expect(find.text(':4443'), findsOneWidget);
    // The host is what was cut (ellipsis), not the port.
    final head = tester.renderObject<RenderParagraph>(
      find.text('Computer at 10.0.2.2'),
    );
    expect(head.didExceedMaxLines, isTrue);
  });
}
