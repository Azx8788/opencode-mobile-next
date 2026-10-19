# KitServerTrust

A per-server transport decision. The app shows the exact origin and, for HTTPS,
the SHA-256 fingerprint before a deliberate trust action. Dismissal never grants
permission. A certificate replacement uses the same component with explicit
changed-certificate wording.

## File and API

`lib/ui/kit/kit_server_trust.dart` exports:

```dart
class KitServerTrustBody extends StatelessWidget
Future<bool> showKitServerTrust(BuildContext context, {
  required String origin,
  String? fingerprintSha256,
  bool privateNetwork = false,
  bool certificateChanged = false,
  DateTime? validFrom,
  DateTime? validTo,
  Key? sheetKey,
})
```

| Input | Behavior |
| --- | --- |
| HTTP, private network | Explains unencrypted password and code; private network and Tailscale context |
| HTTP, public address | Explains interception and public Wi-Fi risk |
| First certificate | Requires comparison over a separate trusted channel |
| Changed certificate | Explains blocked connection and deliberate replacement trust |
| Validity dates | Shows the inspected certificate's date range when supplied |

States: none — this immutable decision body renders already inspected data.
The editor owns inspection progress, failure, origin changes, and persistence.

The origin uses the primary headline role so the server being trusted stays
readable and prominent. Both the origin and fingerprint remain left-to-right.
The fingerprint is deliberately expanded and selectable: it is essential to the
choice. It wraps in monospace and remains left-to-right in Arabic. Text, spacing,
and sheet framing come from the kit; the sheet scrolls at large text sizes.
Keyboard, reduced motion, dismissal, and focus follow `showKitSheet`.

Unit tests: `test/kit/kit_server_trust_test.dart`.
Gallery: `test/goldens/kit/kit_server_trust_golden_test.dart`.
