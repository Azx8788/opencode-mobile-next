# Existing golden differences

The full Flutter suite at Dart revision `e5f603b4e` found seventeen existing screen-test failures
in five files. Isolated reruns on untouched base `a7f8fe21b` reproduced them:

| File | Cases | Base pixel difference |
| --- | --- | --- |
| `test/goldens/phone_server_screens_golden_test.dart` | phone_running/stopped, dark/light | 7.34%; 27,677 dark / 27,666 light pixels |
| `test/goldens/team_discover_golden_test.dart` | intro, OpenCode inside the app, dark/light | 4.44%; 16,727 dark / 16,724 light pixels |

[Phone baseline output](baseline-phone-golden.txt) and
[team baseline output](baseline-team-golden.txt) were captured through the
hostname-redacting build-server wrapper. Both used `tool/qa/vps_test.sh` with
one test process, from an isolated detached checkout of the base revision.
The feature candidate reruns are recorded with the full-suite result.

Source comparison found that the relevant screens, fixtures, theme, fonts and
setup dependencies are unchanged by this feature. Base commit `f441c209c`
made installed-tool inventory checks require complete results and introduced
failure/retry presentation. These older fixtures do not supply those results;
the checked-in images still show the prior installed/download presentation.
The phone images predate that change (`0f4fbcdea`), as do the team intro images
(`bad7dc1fc`). These other-job files and images were left unchanged.

The additional `test/revamp/screen_team_1_golden_test.dart` cases (phone/wide,
dark/light) fail before comparison: `KitSkeletonRows` remains when the fixture
expects none. The [isolated base run](baseline-team-revamp-golden.txt) reproduces
all four. The relevant team screen remains unchanged by scheduled prompts.

Six more comparisons in `test/revamp/slice_close_servers_phone_golden_test.dart`
(start failed phone/wide, install failed, switch stopped, up to date phone/wide)
also reproduce on the untouched base. The [base output](baseline-phone-close-golden.txt)
records identical pixel differences. They exercise the existing phone inventory
presentation and are outside this feature's owned files.

The isolated base run also reproduces the Termux host image difference in
`test/revamp/termux_v2_host_golden_test.dart` (8.69%, 32,753 pixels).
See [Termux baseline output](baseline-termux-golden.txt).
