# Change classes

Every change that reaches users belongs to one of four classes. The class
decides how it ships, the version number and the gates it must pass. Severity
(P0-P3) is separate: it says how fast, never which path.

Propose the class with `tool/qa/classify_change.py <base> [<head>]`; the
classifier reads the diff and commits and prints the class, the reasons with
paths and the required gates. A person can only move the class up.

| Class | What it is | Ships as | Version |
| --- | --- | --- | --- |
| hotfix | Crash, data loss, security or a broken core path (setup, chat, approvals) in the released version. Dart-only, smallest diff. | `shorebird patch` against the exact release | unchanged; the patch number counts up |
| fix | Bug fixes. Native and pubspec changes allowed. No new features, no behaviour changes. | new Shorebird release | `x.y.Z` +1, build number +1 |
| feature | New features or visible behaviour changes. | new release, two-layer notes | `x.Y.0`, build number +1 |
| breaking | Dropped support, stored-data format or migration changes, signer/package/minSdk changes, removed capabilities. | new release, "What changes for you" first | `X.0.0`, build number +1 |

The build number (`+N` in `pubspec.yaml`) rises on every release and never on a
patch. A release that mixes classes takes the largest one.

## Examples from this repo

- hotfix: a Dart-only crash fix in the chat screen against `v1.4.0+54`, with a
  test that fails on the released code; the token-refresh trap in 1.2.0 would
  have been one.
- fix: a Kotlin foreground-service crash, a dependency bump, widget spacing
  corrections that change no behaviour.
- feature: home-screen widgets and Continue with... (1.4.0), the phrase chips
  above the input box, a new Settings group, new l10n keys for a new screen.
  Widget polish is a fix when it only repairs, a feature when people see
  something new.
- breaking: OpenCode 1 removal (`lib/api/` and the generated SDK deleted, phones
  moved to OpenCode 2 by a migration), a removed `oc.` preference key, a raised
  minSdk, a different signer or application id, a removed `ServerCapabilities`
  flag.

## Gates

| Gate | hotfix | fix | feature | breaking | Tool |
| --- | --- | --- | --- | --- | --- |
| Repro test that fails without the fix | yes | | | | revert the fix, run the test, watch it fail |
| Preflight | yes | yes | yes | yes | `tool/qa/preflight.sh <last release tag>` (prints the proposed class, commit rules, analyze, repo-scanning tests) |
| Full split suite | yes | yes | yes | yes | `tool/qa/run_tests_fast.sh`, or `tool/qa/run_serial_tests.py` (what `scripts/release.sh` runs) |
| Device proof | of that one fix | of affected areas | matrix rows for each feature | upgrade test from the last release | emulator or device, `docs/qa/<feature>-<date>/README.md` |
| Real-life matrix rows | | | yes | yes | `docs/qa/real-life-matrix-2026-10-16/README.md` |
| Judged screenshots | | | yes | yes | one screen per image |
| Store and site text | | | yes | yes | `tool/release/release_notes.py store` |
| Two-layer notes | | | yes | yes, "What changes for you" first | `tool/release/release_notes.py check docs/releases/vX.Y.Z+N.md` |
| Migration notes | | | | yes | in the release notes and `docs/qa/` |
| Owner OK | yes | | | explicit sign-off | before any publish, tag or promotion |

Each gate of a smaller class also applies to the larger classes. A hotfix is
staged first: `scripts/release.sh patch-plan` and `docs/release/patch-canary.md`.

## What the tools enforce

- `scripts/release.sh patch` refuses a native/pubspec/asset diff (existing check)
  and then runs `tool/qa/classify_change.py <release tag> HEAD --require hotfix`;
  a range that is a fix, feature or breaking change cannot ship as a patch.
- `tool/qa/classify_change.py --require <class>` exits 1 when the proposed class
  is larger than the one required; otherwise it exits 0 (and 64 on bad input).
- `tool/qa/preflight.sh` prints the proposed class for `<base>..HEAD`, never
  failing on it.
- Release notes may carry a `Change class:` line above the first heading;
  `tool/release/release_notes.py check` rejects an unknown value and warns when
  it disagrees with the classifier for the range since the previous release tag.
- A merge commit may end its body with `Change-Class: <class>`; the commit check
  accepts it, rejects an unknown value and never requires it. The classifier
  reports the declared classes next to its own.

## What the classifier looks at

- Not a hotfix: `android/`, `engine/`, `*.so`, `build.gradle*`,
  `AndroidManifest.xml`; `pubspec.yaml`, `pubspec.lock`, `assets/`, `fonts/`,
  `third_party/`; non-Dart files under `lib/`; a diff over 12 files or 300 lines.
- Breaking: a directory such as `lib/api/` or `packages/` removed, three or
  more files deleted under `lib/api`, `lib/api2`, `lib/domain` or `packages/`;
  `oc.` preference keys removed or renamed; migration or schema code added or
  removed under `lib/`, or `profile_store` / `migration_runner` / schema files
  changed; removed `ServerCapabilities` / `ServerFlavor` members; `minSdk`,
  `applicationId`, `namespace` or signing lines in Gradle; a manifest `package`
  change; a `type!:` commit subject.
- Feature: new files under `lib/ui/screens/` or `lib/ui/kit/`, new keys in
  `lib/l10n/app_en.arb`, new `oc.` preference keys (an addition needs no
  migration by itself, but it asks the question), `feat` commits.
- Otherwise fix; hotfix when the diff is Dart-only and small.

It is a proposal from paths and lines, not from meaning. A behaviour change in
an unchanged-looking file still needs a person to raise the class.
