# Widgetbook historical comparison

The additional Widgetbook standard ratchet **remains failed**. Historical replay
reproduces the disputed chat/recovery findings, and an explicitly adapted base
OC2 fixture reproduces the candidate capability findings. No new functional
regression was identified by this comparison; this is not a full Widgetbook pass
or approval to add baseline allowances.

## Revisions and execution

- Historical base: `5e3969ad6483fec3a312e61b027b84ea67dbc53d`.
- Candidate run and frozen app revision:
  `a7b106b35f9dad3ec393593681d47aaa9845399d`. The coordinator records completion
  at 2026-10-16 01:21:13 +04 and report retrieval at 01:22:53, after that commit
  and before the baseline-key rename. No intervening source sync occurred. This
  comparison does not replace the separate full app-suite qualification.
- Flutter **3.47.1**, framework
  `91f8bd75076e9c740aa13cf67eb9ec1a093f68f5`, Dart **3.13.1**.
- Replay ID: `20261015T213346Z`, in a separate owned scratch extraction of the
  base archive. Each selected scene runs at 412 × 915 in English at text scales
  1 and 2, Arabic at scale 1, and English dark at scale 1.

The unchanged-base replay rendered **18 scenes**; the adapted OC2 control
rendered **2 scenes**. All scene tests completed. Each run exited 1 solely at the
final ratchet. The supplied candidate report covers **70 scenes**. These selected
replays do not establish a full historical suite result.

## Findings

| Area | Historical result | Candidate comparison |
| --- | --- | --- |
| Conversation: 13 scenes | Includes the 10 newly flagged Arabic title cutoffs | All findings match exactly: rule, pass and detail. One scene has no finding. |
| Previous work needs Android recovery | `row-lines`, `first-view-items`, Arabic `cutoff` | Same three rules/passes and exact clipped Arabic text. The five-line warning stays at y=66. Lower content moves from y=661 to y=468; visible items increase 9 → 10 after OC1 UI removal. |
| OpenCode running in the app | Same three rules | Visible items increase 9 → 10. The old-generation Arabic cutoff disappears; remaining supporting-text clipping persists. |
| Capabilities, pristine allV1 fixture | `row-lines` only | Candidate also reports 8 first-view items. This comparison changes advertised capabilities, so it alone cannot attribute the difference to product layout. |
| Capabilities, adapted base OC2 fixture | `row-lines` plus 8 first-view items | Findings match candidate exactly. |
| Nothing optional | `row-lines` | Exact match. |

The base-only “OpenCode 2 has separate conversations” scene was retired with the
OC1 switch UI. Its absence is intentional.

The OC2 control changes only the capability scene's expression from
`ServerCapabilities.allV1` to base `api2ServerCapabilities`, adding that import.
Its historical “Everything on” name remains. Base OC2 capability arguments are
byte-identical to current `catalogServerCapabilities`. This is an **adapted
control**, not a pristine-base result. Compare its scene with the renamed
candidate `servers/what-this-server-can-do/opencode-2-capabilities`.

Commit `e94a4a378f07ebde4ab7b0564bcb8817197c6ce6` preserves the existing
`row-lines` baseline entry under that renamed key. It adds no allowance for
first-view density, chat clipping or recovery findings. Existing layout debt and
increased visible phone density remain visible to the ratchet.

## Coverage and provenance limits

The separate coverage checker still reports four pre-existing gaps:
`LiveStylePickerScreen`, `LiveStylePreviewScreen`, `WidgetConfigureScreen` and
`WidgetSteerScreen`. All four screen sources, the scanner and its baseline are
unchanged from the historical base; none had a catalog entry there. The coverage
check is **not passing**.

Replay dependency resolution left the root lockfile unchanged. The Widgetbook
lockfile changed only its local parent-package version metadata from
`1.3.0+53` to `1.4.0+54`; resolved dependency versions did not change. Toolchain
and font digests are captured. Reports do not embed a Git revision, so revision
provenance comes from the coordinator's frozen checkout/archive records.

Only selected sandboxed test fixtures were replayed. Flutter's test binding
intercepts ordinary HTTP clients; fake gateways, Linux and storage supply the
scene data. No real OpenCode listeners, owner data or credentials were used.
No baseline growth or product changes were made for this comparison.

## Evidence locations

Ignored local artifacts, retained for inspection:

- `build/oc1-decommission/widgetbook-standard.log`
- `build/oc1-decommission/widgetbook-review/standard_report.json`
- `build/oc1-decommission/widgetbook-coverage.log`
- `build/oc1-decommission/widgetbook-replay/20261015T213346Z/`: base revision,
  archive checksum and runner outcome.
- Its `replay-evidence/`: `base-selected.standard_report.json`,
  `base-oc2-capabilities.standard_report.json`, corresponding logs/exit codes,
  `base-oc2-fixture.patch`, toolchain, font digests and before/after lockfiles.

See the [decommission evidence](README.md) for the separate app qualification.
