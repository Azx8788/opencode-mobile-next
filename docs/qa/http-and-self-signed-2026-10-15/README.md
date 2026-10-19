# HTTP consent and self-signed certificate trust — 2026-10-15

Issues: [#85](https://github.com/Eslamasabry/opencode-mobile-next/issues/85),
[#38](https://github.com/Eslamasabry/opencode-mobile-next/issues/38).
Branch: `codex/http-and-self-signed`; base: `92057d08fdf372032d96790003d9ca547a718512`.

Finish line: add an OpenCode 2 server over explicitly approved remote HTTP or
fingerprint-pinned HTTPS, reconnect after restart, and block a changed certificate.
Non-goals: OpenCode 1 changes, owner-server changes, emulator/device qualification,
APK builds/signing, releases, pushes, or issue comments.

## What the user sees

1. Enter the server's explicit `http://` or `https://` address (or paste pairing
   data). A bare remote address still defaults to HTTPS; no failed HTTPS request
   is retried over HTTP.
2. For any non-loopback HTTP address, testing and saving wait for confirmation.
   The warning sheet names the exact origin and says password and code travel
   unencrypted. Private ranges and Tailscale get softer context; public hosts
   get a stronger interception/public-Wi-Fi warning. Closing the sheet grants
   nothing. **Use it anyway** opens the review sheet; choosing **Allow HTTP for
   this server** there permits that origin only.
3. An HTTPS certificate that normal system trust rejects produces a certificate
   explanation and **Check certificate**. Inspection performs a TLS handshake
   without HTTP headers or credentials. The sheet shows SHA-256 and validity
   dates and asks the user to compare the fingerprint through a trusted channel.
4. **Trust this fingerprint** retries with the exact certificate. Saving stores
   that pin for the profile and origin. It survives restart and widget-action
   profile loading. Expired and not-yet-valid certificates still fail.
5. A different certificate blocks before credentials, even if normal PKI trusts
   its replacement. **The server's certificate changed** offers **Re-check
   certificate**, opening the affected profile. Inspection is not approval;
   **Trust replacement certificate** is a separate explicit choice.
6. Changing host/port/scheme does not transfer trust. Deleting the profile sweeps
   its HTTP consent and certificate pin.

## Security and persistence

- `oc.cleartextOk.<profileId>` stores the canonical approved HTTP origin.
- `oc.certificatePin.<profileId>` stores JSON `{origin,sha256}`. These additive
  preferences are separate from profile metadata and contain no credentials.
  Existing profiles do not acquire trust automatically. The generic profile
  deletion sweep removes both, including dotted profile IDs.
- OpenCode 2 HTTP, SSE, downloads and terminal WebSockets use per-client trust.
  Pinned TLS uses an empty root store and checks the leaf DER SHA-256 during the
  handshake. It overrides issuer/hostname validation for the exact approved
  identity, while retaining validity-date checks. No global TLS override exists.
- Redirects and cross-origin requests are blocked, including caller attempts to
  enable redirects. A stale protocol cache cannot route a pinned profile through
  a transport that ignores the pin.
- Android's existing `base-config cleartextTrafficPermitted="true"` is retained.
  Static XML cannot enumerate arbitrary runtime user-entered hosts or IP ranges;
  the Dart per-origin choice is the enforceable boundary. Other transports keep
  their own existing gates.
- Credential registration/redaction remains in the OC2 transport. Certificate
  inspection has no password argument. User-visible failures use localized
  authored copy; diagnostic detail remains separate.

## Ownership and checks

Three independent implementation slices used fixed field/transport interfaces:
profile model/store/URL validation; domain trust + OC2 transport; kit/editor/copy.
The coordinating slice owned connection/pairing/widget wiring, validation,
commits and evidence. No file under `lib/api/` was edited.

The first transport tests and live proof caught a custom-socket bug: supplying a
raw `Socket` through `HttpClient.connectionFactory` bypasses Dart's automatic TLS.
The final factory explicitly uses `SecureSocket.startConnect` for HTTPS. A raw
TCP sentinel regression verifies the first bytes are a TLS handshake, never HTTP
or Basic authentication. Failed early attempts are not counted as passing proof.

### Live network proof

[`live-proof.json`](live-proof.json) records **nine passing checks** against a
scratch OpenCode 2.0.29 server on port 4098, reached through the PC's non-loopback
LAN IPv4, plus a Python TLS proxy with two generated self-signed certificates.
Inspection, untrusted TLS and rotated-pin rejection all produced zero HTTP/auth
bytes, including a check for accidental plaintext before TLS. A fresh Dart
process reused the same pin successfully. Flutter tests separately prove saved
profile persistence; this is not an Android restart/device test.

Reproduce with `tool/qa/httptrust_live_proof.py --help`. The harness copies an
explicitly supplied standalone OC2 binary into private scratch space, isolates
XDG data/config/cache/state, captures its password privately, and cleans up by
exact PID. The installed launcher was broken, so its home package was not repaired.
The owner's port 4150 and data were untouched. Proof processes are stopped and
private logs/keys removed. No build-server host is recorded in this evidence.

### Validation record

- Pinned Flutter 3.47.1 dependencies resolved; English/Arabic generated.
- Full `flutter analyze --no-pub`: **No issues found** (final source run: 23.3 seconds), under
  `OC_TEST_SLOTS=1 tool/qa/machine_lock.sh analyze`, after resolving Widgetbook's
  separate dependencies.
- All Flutter tests ran through `tool/qa/vps_test.sh`, with pinned Flutter
  3.47.1 on the build server. No local Flutter test or emulator process ran.
- Development checks covered OC2 HTTP/SSE/terminal authentication, consent,
  persistence/deletion, pairing, saved-profile/editor actions, widget routing,
  keyboard behavior and kit manifest. Earlier failures were corrected and
  rerun; these development runs are not a claimed full-suite pass.
- Final screenshot fixture run: **21 passed**, including 16 Tailscale screen
  states and five warning-sheet tests (Arabic at 2x and explicit year display).
  The 24 new trust gallery screenshots also generated successfully and passed
  the contrast/overflow harness. Integration verification uses normal golden
  comparison, without `--update-goldens`.
- Read-only final transport/security review found no additional concrete issues.
- Widgetbook includes the real server editor's HTTP/pin states and warning
  content. The catalog coverage check still reports four pre-existing missing
  screens: `LiveStylePickerScreen`, `LiveStylePreviewScreen`,
  `WidgetConfigureScreen`, `WidgetSteerScreen`. See
  [`catalog-baseline.json`](catalog-baseline.json). This slice removes
  `ServersScreen` from the existing coverage baseline; it does not suppress the
  unrelated missing screens. Widgetbook's separate standard-test gate has not
  been run.
- Follow-up preflight fixes register the preference and editor part, shorten
  warning copy without dropping risk information, and add the gallery
  regeneration instructions. The affected gates plus refreshed screenshots
  passed **82 tests** remotely. Two Python wrapper-path failures were tooling
  errors; both passed after correcting the temporary wrapper.

### Complete manifest run and follow-up

The complete [`full-manifest.txt`](full-manifest.txt) contains 1,451 files,
including nested goldens. At `3a4965918307c29cfaa96ca1c0b1368e4db3311b`, the
build server ran 406 standalone files and 1,045 files in 12 aggregates, using
the repository aggregate eligibility/exclusion rules and concurrency 3. Every
manifest file was assigned exactly once, all 418 entrypoints completed, and
all 24 failing original files were then rerun separately without source changes.
The only unrelated working-tree edit was the coordinator's APK build-script lock.

[`full-suite-summary.json`](full-suite-summary.json) records the revision,
timestamps, exact counts, failed test names, and all 229 declared skips:

- Initial run: **20,377 passed, 229 skipped, 64 failed**.
- Standalone reruns: **460 passed, 49 failed**.
- Fifteen failures did not reproduce: the GasCity coverage fixture accidentally
  matched its random port `36001` against the ignored-value probe `3600`; the
  code-block, Team HTTP, Termux-migration, phone-consent and release-blocker
  failures appeared only when sharing an aggregate process.

The run found 25 feature integration failures: two probe-adapter fixtures,
18 copy-only screenshot baselines, two outdated copy assertions, one tracing
fixture without HTTP consent, and missing overflow/reduced-motion registrations
for the new kit parts. These were corrected afterwards. The temporary aggregate
wrappers also triggered the suppression scan; those wrappers were removed,
without changing the scanner or its baseline.

The remaining 23 failures reproduced separately and are outside this feature:

- **17 inventory-dependent phone/Team checks**: 13 image mismatches and four
  pre-screenshot assertions. Reviewed image pairs show an installed-component
  summary replaced by `Checking what’s installed…` or loading skeletons. The
  Termux fixtures seed `PhoneSetup.engine` but leave `PhoneSetup.termux`
  unseeded; the Team fixtures also omit installed-inventory setup. The affected
  screen, inventory, Termux and fixture sources are unchanged from the branch
  base. Their baselines were retained, not regenerated with loading states.
- **Five repository-hygiene checks** require `git ls-files`. The copied
  worktree's Git metadata points at the local checkout, which is unavailable on
  this runner. These checks remain unverified remotely.
- **One native session-link check** cannot invoke `kotlinc` on the runner's
  PATH. This is not an Android compile pass.

The first direct-file full attempt was stopped early and is not counted as a
completed gate. The complete attempt above took about two hours on a contended
server. For future runs above roughly 50 files, use `tool/qa/run_tests_split.sh`
as the coordinator requested, with execution placement respecting the job's
machine restrictions. Do not substitute a long `vps_test.sh` file list.

This is a completed manifest run with failures, **not a full-suite pass**.
Subsequent focused verification applies to the corrected feature; it does not
retroactively make this candidate run green.

### Corrected feature verification

Source revision `0500dfba2` includes the follow-up fixes:

- **418 tests passed** across 15 affected files through `vps_test.sh`, serially.
  This includes both OC2 probe dialects, first-run and Tailscale copy, tracing
  redaction, warning-sheet reduced motion, kit registrations, normal comparison
  of all 18 refreshed editor images, transport pinning/consent, profile trust
  persistence and HTTP consent in the add flow.
- **Four overflow cases passed**, covering public/private HTTP and first/changed
  certificates across nine sizes, three text scales and English/Arabic: **216
  combinations**, with no new overflow baseline.
- English/Arabic localization output regenerated and changed Dart files
  formatted under the single machine-lock slot. Full analyzer clean.

- `tool/qa/preflight.sh HEAD~4` at `0500dfba2`: **passed**. G33 checked all four
  feature commits and formatting of 63 changed Dart files; generated
  localization matched; **809 Python QA-tool tests passed (two skipped)**;
  **161 repository-scanning Flutter tests passed**. Temporary local command
  wrappers kept Dart work under one machine-lock slot and routed every Flutter
  test to the build server. No runner or gate was weakened or committed.

[`verification.json`](verification.json) records the final source revision and
the focused commands' file lists and results. The final QA commit only records
evidence; it changes no application or test source after these checks.

## Accessibility and screenshots

The kit sheet supports explicit dismissal, scrolling and focus. Fingerprints are
expanded, selectable, left-to-right monospace text, including in Arabic. Widget
coverage includes Arabic at 2× text. Gallery fixtures cover light/dark and phone/
wide layouts; generated screenshots are under `test/goldens/kit/kit_server_trust_*`.

## Shipping state

Implemented locally. No emulator, Android build, device test, signing, push,
issue comment, deployment or release is part of this job. This branch is for the
coordinator to merge with the separate OpenCode 1 removal.

Merge note: the shared probe currently imports the existing `ServerProbeResult`
and injectable `serverProbe` symbols from `lib/api/server_probe.dart`. Preserve
or relocate those shared contracts during OpenCode 1 removal, along with the
origin-consent and certificate-pin arguments on the OpenCode 2 connection paths.
The coordinator's `tool/qa/vps_build_apk.sh` change remains untouched and is not
included in this branch's feature commits.
