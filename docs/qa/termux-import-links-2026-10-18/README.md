# Termux import: link2symlink Git objects, and the Git failure words (2026-10-18)

## Bug 1: moved projects kept dangling Git object links
- Cause: old Termux proot ran with link2symlink, so every Git hard link is a symlink to
  `.../proot-distro/containers/<name>/rootfs/.l2s/.l2s.tmp_obj_*`, a store the app cannot read.
- Fix (`lib/builtin/migration/termux_migration_transport.dart`, Termux-side script, where the
  links still resolve): `is_l2s_link` matches only links whose target is `*/proot-distro/*/.l2s/.l2s.*`.
  `measure_item` counts their target bytes; `pack` archives them in a second `tar --dereference`
  pass as regular files under the link's own name. All other links are untouched by that pass.
- Unreadable target: new `TermuxMigrationFailure.linkedFileUnreadable`, refused at inspect and pack
  with plain words (`migrationLinkedFileUnreadable` + Fix) instead of finishing with broken repos.
- Other symlinks (relative or absolute) are still refused as `unsupportedEntry`, as before: the
  importer in `migration_archive_store.dart` accepts only files and folders. Not widened here.

Tests (`test/termux_migration_transport_test.dart`, group "link2symlink links", real bash and tar):
archived as regular file with target contents; inspect counts bytes; unreadable target named;
ordinary relative and absolute symlinks still refused. Without the fix 3 of the 5 fail
(the two refusal tests pass on both, they guard against over-broad handling).

## Bug 2: raw Paseo error on New conversation
- Details label was `Paseo` + kind with no separator (`errorTag` in `lib/paseo/transport.dart`):
  now `Paseo unavailable`; the classifier set in `lib/domain/product_failure.dart` matches.
- New category `projectGit`: a `PaseoFailure` whose reason shows `Git command failed`, `bad object`,
  `not a git repository`, `garbage found`... says the project's Git history can't be read and to run
  `git fsck` or restore a copy. The daemon's text stays under Details.
- Copy: `productErrorProjectGit` (en, ar). No UI level added.
- Tests in `test/paseo_files_test.dart` "failure words"; the Git test fails without the fix
  (words stay "Couldn't reach your computer").

## Not proven
No emulator or phone run. Real `tar` on a host fixture only. Repair of already-migrated repos is a non-goal.
