# Git link repair for regular users (2026-10-18)

Branch `fix/git-link-repair` (worktree `oc_app-gitrepair`, base `9c2f85581` on
`int/ui-batch-2026-10-14`). Local commits only. Emulator `Pixel_6` (API 34,
`emulator-5554`); the owner's phone was not touched.

**Finish line:** a person whose project Git breaks this way repairs it from
New conversation with one action and no terminal, and no flow the app offers
leaves such a repository. **Non-goal:** objects that are truly gone (the sheet
says how many, and to clone again or restore a copy).

## How the owner's links got there

Not through any app flow. Every path that copies projects between Termux and
the app was checked (Termux migration, `project_export*`, `builtin_folders`,
`linux_storage`, `linux_reset_flow`, phone setup v2, Termux bridge scripts,
`BuiltinProjectStorage`, the rootfs unpacker), and the history of `lib/` and
`android/` has never held a link-preserving copy (`cp -a`, `rsync`, `tar -c`).
The migration refuses every link (`find ! -type f ! -type d`) and lands in
`projects/termux-<job>`, not directly in `/root/projects`.

The links' content proves how they were made: absolute **Termux host paths**
(`/data/data/com.termux/.../rootfs/.l2s/...`). That spelling exists only
outside proot; inside Termux's proot-distro the same entries look like regular
files. So they were archived by a tool running natively in Termux (keeping
links, with their Sep 18-19 times) and unpacked inside the app's Linux, which
can read shared storage. That is a hand or agent copy, not an app path.
Unproven: which session did it on Oct 14; no transcript on this PC shows it.

## App flows that could break repositories

The app's own proot also runs `--link2symlink` (no `PROOT_L2S_DIR`). On the
emulator every object of a repo made in the built-in Linux is
`objects/ab/<id> -> /data/data/<app>/files/projects/<repo>/.git/objects/ab/.l2s.tmp_obj_X0001`
(an absolute path next to the object). Consequences and fixes:

| Flow | Broke? | Fix | Test (fails without the fix) |
|---|---|---|---|
| Rename or move a project folder in the Linux (person, agent, any `mv`) | Yes: `mv` of a fresh repo gave `fatal: bad object HEAD` at once (build 2513) | `/etc/gitconfig` gets `core.createObject = rename` on each launch unless set: new objects are plain files (`BuiltinGitConfig.kt`). Emulator, build 2549: new repo, `mv`, `git status` works, 0 links (`prevention-mv-after-build.txt`) | `BuiltinGitObjectsTest.gitIsToldToRenameObjectsIntoPlace` |
| One-time move of Ubuntu's `/root/projects` to `files/projects` (older installs) | Yes: every link named the old folder | Links into the old folder are re-pointed after the rename, best effort (`BuiltinProjectStorage.kt`) | `BuiltinGitObjectsTest.movingTheProjectsFolderKeepsGitObjectLinksWorking` |
| Export projects (zip) | Yes: links skipped, so every object was missing and `.l2s.` files went in instead | A `.l2s.` link inside the app's files goes in as a regular file under its own name; `.l2s.` files stay out (`project_export.dart`). Emulator: exported zip, unzipped on the PC, `git fsck` clean for all three repos, 0 `.l2s.` entries (`export-check.txt`) | `project_export_test` "a repository made in Ubuntu exports with its Git objects" |
| Termux migration | Fixed before (97ebbaece) | - | - |
| Linux reset / reinstall | No | Links point into `files/projects`, which reset keeps; nothing points into the rootfs (a local clone gets plain files, checked on the emulator) | - |
| Agent user's view (`agent-root-view` at `/root`) | No | `/root/projects` is bound to the same host folder; `git status` as `oc` worked on a linked repo | - |

Also fixed on the way: the Git words never reached New conversation.
`MergedChatFeed` and `PaseoChatFeedSource` both wrap start failures in "Could
not start this chat. Refresh before trying again." (build 2546 on the
emulator: `01-build-2546-still-said-refresh.png`). A `ProductException` whose
cause is a Paseo Git failure is now `projectGit` (`product_failure.dart`;
tests in `paseo_files_test`, `merged_chat_feed_test`, both red without).

## The repair

`lib/builtin/git_link_repair.dart`, run on the app's side of the files (no
proot, so links look like links and the proot traps don't apply):

1. Find the repository at or above the folder under `/root/projects`, and
   every link under an `objects` folder of its Git folder.
2. A link whose bytes are on the app's side (or next to it under the same
   name, when the folder moved) becomes a plain file.
3. Links into a Termux proot-distro `.l2s` store are fetched from Termux:
   `TermuxBridge.run` (Run commands permission; "Allow and repair" asks
   Android for it) runs a script that `curl -T` uploads each store file to a
   one-time loopback server with a random bearer. Only store paths are asked
   for (checked in Dart and in the script). A loose object is used only when
   its inflated bytes hash to its name; a pack, index or reverse index only
   when its trailing checksum matches.
4. `git fsck --connectivity-only` and `git status` inside Ubuntu.

UI: on New conversation, "Git history can't be read." with **Repair** in
Retry's place (kit `KitComposerFailure` gains an optional fix action; no new
row). The sheet runs at once with progress, then: repaired with "Start the
conversation" (sends the kept message); files in Termux with "Allow and
repair"; Termux not answering with "Repair again" and "Open Termux"; files
gone with the count and the way forward. Technical text only under Details.
No red, kit parts only. Copy in en and ar.

Tests: `test/git_link_repair_test.dart` (real repos, real links, real git:
moved folder, Termux fetch with one tampered object refused, not allowed,
Termux gone, healthy, path limits, script uploads nothing outside a store,
pack checksums, a progress callback that can't cross isolates),
`test/chats_new_chat_test.dart` group "a project whose Git cannot be read"
(3 of 4 red without the screen change), `test/kit/kit_composer_test.dart`.

## Emulator proof (release APK 2549, signer 1DE5BF08...)

Setup, honest about what is real: Termux 0.118.3 on the emulator,
proot-distro 5.10 `opencode-ubuntu` (Ubuntu 24.04), a repo `ledger` made with
Ubuntu's git inside it, so its 9 objects are real link2symlink links into
Termux's `.l2s` store. The copy into the app's `files/projects` (links kept)
was done as root over adb, standing in for the unknown route on the owner's
phone. Claude Code 252 MB was installed through the app; its sign-in is a
placeholder file, so Claude itself answers "sign in again".

Before: `git status` in `ledger` and `notes` (a moved folder) said
`fatal: bad object HEAD` (`before-git-status.txt`).

1. `02-failure-offers-repair.png` - Claude Code, `ledger`, first message: the
   Git words with Repair.
2. `03-files-are-in-termux.png` - the app may not run commands in Termux yet.
3. `04-android-asks-for-termux.png` - Allow and repair asks Android.
4. `05-termux-did-not-answer.png` - Termux's bash failed to load a library:
   my own `pkg upgrade` as root had left new files with the wrong SELinux
   label. The sheet said so plainly; after relabelling, Repair again.
5. `06-repaired.png` - 9 Git files back; on disk 0 object links, `git fsck`
   clean as the agent user (`after-repair-on-disk.txt`).
6. `07-claude-code-started-in-ledger.png` - Start the conversation: Paseo
   created the Claude Code agent in `ledger` (its `git status` passed) and
   Claude replied asking for sign-in, as expected with a placeholder.
7. `08-export-finished.png` - export of all projects; the zip's repos all
   pass `git fsck` on the PC.

## Not proven

- The `notes` (moved folder) repair on the device: unit-tested with real git
  only; Claude Code went to "signed out" after the first reply, so the second
  run through New conversation could not reach Paseo.
- The owner's exact Oct 14 route (see above), a real Linux reset run, packs
  fetched from Termux on a device (unit-tested), and the Arabic layout.
- An empty `files/git-repair` staging folder stays after a repair (harmless).
- A failed start still leaves an app-side "New conversation" draft row
  (seen before this branch).
