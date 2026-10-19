# Git page: frontend contract (2026-10-19, issue #104)

This is the backend slice of the Git page: pull, push, commit and branches,
each behind a button. It has no screens yet; the layout waits on the owner's
poll (A/B/C). Build any layout from this contract. Don't call `lib/domain/git`
or a shell from the UI: watch the two controllers below and call their
methods.

Sign-in and credential design: `docs/design/git-page-push-feasibility-2026-10-19.md`.

## Files

| Layer | File | What it holds |
|---|---|---|
| state | `lib/state/git_page_controller.dart` | `GitPageController` (ChangeNotifier): the view state, busy state, last result and abilities |
| state | `lib/state/github_account.dart` | `GitHubAccountController` (ChangeNotifier): GitHub device sign-in; `GitHubTokenStore` |
| state | `lib/state/git_workspace.dart` | `resolveGitWorkspace(...)`, `GitHost`, `GitUnavailableReason` |
| ui | `lib/ui/git_words.dart` | Maps every typed state to localized copy. Use only these helpers. |
| domain | `lib/domain/git/git_models.dart` | `GitSnapshot`, `GitStatus`, `GitFileChange`, `GitBranch(es)`, `GitCommit`, `GitRemote` |
| domain | `lib/domain/git/git_repository.dart` | `GitAction`, `GitActionResult`, `GitActionNote`, `isValidGitBranchName` |
| domain | `lib/domain/git/git_problem.dart` | `GitProblem`, `GitFailure` |
| domain | `lib/domain/git/github_device_flow.dart` | `GitHubSignInProblem`, `gitHubAuthorizedAppsUrl` |

## Wiring (screen side)

```dart
final resolution = resolveGitWorkspace(
  profile: controller.profile,        // ConnectionController
  gateway: controller.api,
  directory: controller.directory,    // the open project
);
final account = GitHubAccountController(profileId: profile.id)..load();
final page = GitPageController(resolution: resolution, account: account)
  ..refresh();                        // first read; call again on pull-to-refresh
```

Dispose both controllers with the screen. Build a new `GitPageController`
when the project or connection changes; a controller is bound to one folder.

## Where it works (capability gating)

The resolver picks the first match. It goes by where the server runs and by
`ServerCapabilities`, never by the flavor enum.

| `GitHost` | When | Commands run through | GitHub sign-in |
|---|---|---|---|
| `phoneLinux` | the in-app OpenCode (`looksLikeInAppServer`) | `BuiltinLinux.run` | **Offered.** The token is handed over for each push or pull. |
| `termux` | the app-managed Termux server | `TermuxBridge.run` inside `proot-distro login opencode-ubuntu` | Not offered. The push uses Termux's own Git sign-in. |
| `server` | `gateway.capabilities.remoteShell` and `gateway is RemoteShellGateway` (OpenCode 2, `POST /api/shell`) | the server's shell | Not offered. The token is never sent; the server uses its own Git sign-in. |
| none | anything else (OpenCode 1, Codex, Paseo) | none | `GitPageUnavailable(serverCannotRunCommands)` |

`GitPageController.abilities` (`GitPageAbilities`) is what buttons read:

| Field | True when |
|---|---|
| `canPull` | on a branch, the branch has an upstream, no merge or rebase is half-done |
| `canPush` | on a branch, the branch has a commit, and the repository has a remote |
| `canCommit` | there are changes and none of them are conflicts |
| `canSwitchBranch` | no merge or rebase is half-done |
| `offersGitHubSignIn` | `phoneLinux`: show the GitHub sign-in row |
| `usesOwnGitSignIn` | `termux` or `server`: show `gitUsesOwnSignIn` instead |

A disabled button still deserves a reason. Use the problem copy that matches:
detached is `gitProblemDetachedHead`, no upstream is `gitProblemNoUpstream`,
no remote is `gitProblemNoRemote`, conflicts are `gitProblemConflicts`, and a
half-done operation is `gitProblemOperationInProgress`.

## GitPageController

### View: `page.view` (sealed `GitPageView`)

| Value | Show | Copy |
|---|---|---|
| `GitPageLoading` | the first read is in flight and there is nothing yet | `gitBusyRefresh` |
| `GitPageUnavailable(reason)` | an empty state with no actions | `gitUnavailableText(reason, l10n)` |
| `GitPageNotRepository` | an empty state | `gitNotRepositoryTitle`, `gitNotRepositoryBody` |
| `GitPageReady(snapshot)` | the page | see below |
| `GitPageFailed(failure)` | an error state with Try again (`refresh()`) | `gitProblemText(failure.problem, l10n)`; `failure.details` under Details only |

`page.snapshot` is the last good `GitSnapshot`. A refresh that fails after a
good read keeps the snapshot on screen and reports the failure in `lastResult`.

### Snapshot contents (`GitSnapshot`)

- `status.branch` (`GitBranchState`) has:
  - `head`: null when detached; show `gitDetachedHead`.
  - `upstream`: null shows `gitNotPushedYet`.
  - `ahead` and `behind`: `gitAhead(count)` and `gitBehind(count)`.
  - `unborn`: true shows `gitNoCommitsYet`.
- `status.files` is a list of `GitFileChange`. Each has:
  - `path`, plus `originalPath` for a rename or copy;
  - `staged` and `unstaged` kinds;
  - `conflict` (`GitConflictKind`), non-null while the file is unmerged;
  - line counts: `totalAdded` and `totalDeleted` (null when unknown), and
    `binary`.

  Use `gitChangeLabel(file, l10n)` for the kind label. `status.clean` shows
  `gitCleanTitle` and `gitCleanBody`.
- `operation` (`GitOperation`) is not `none` while a merge, rebase,
  cherry-pick or revert is half-done. `gitOperationText(op, l10n)` gives the
  banner text.
- `commits` holds the last 30 commits (`logLimit` sets the count). Each has
  `shortId`, `subject`, `authorName`, `time` (UTC), `refs` and `isMerge`.
- `branches` (`GitBranches`) has:
  - `local`: each with `current`, `upstream`, `ahead`, `behind` and
    `upstreamGone`;
  - `remote`;
  - `remoteOnly`: remote branches with no local branch yet. Switching to
    `branch.localName` creates a tracking branch.
- `remotes` holds each remote's `name` and `kind` (`gitHubHttps`,
  `gitHubSsh`, `other`). Addresses are never kept, because they can contain
  credentials. Use `gitHubSsh` with `offersGitHubSignIn` to show
  `gitHubPushOverHttps`.

### Actions

Each action returns a `Future<GitActionResult?>`. The result is `null` when
nothing ran: another action was busy, or the page is unavailable. Only one
action runs at a time. After each write the controller reads the repository
again.

| Method | Git | Busy copy | Success note, then copy |
|---|---|---|---|
| `refresh()` (returns void) | status, numstat, log, branches, remotes in one round trip | `gitBusyRefresh` | none |
| `pull()` | `pull --ff-only` | `gitBusyPull` | `upToDate` or `pulled` |
| `push()` | `push`, or `push --set-upstream origin <branch>` on the first push | `gitBusyPush` | `upToDate`, `pushed` or `pushedAndTracking` |
| `commit(paths, message)` | `add -A -- paths` then `commit -m message -- paths`, so only those paths are committed | `gitBusyCommit` | `committed` (`result.commit` is the short id) |
| `switchBranch(name)` | `switch name` | `gitBusySwitchBranch` | `switched` |
| `createBranch(name)` | `switch -c name` | `gitBusyCreateBranch` | `created` |
| `discard(file)` | by kind: `restore --staged --worktree`, `clean -f` (untracked), `rm -f` (added) | `gitBusyDiscard` | `discarded` |
| `setIdentity(name, email)` | `config user.name/user.email`, for this repository only | `gitBusySaveIdentity` | `identitySaved` |

- `page.busy` holds the running `GitAction` and is null when idle.
  `gitBusyText(action, l10n)` gives the busy copy and
  `gitActionLabel(action, l10n)` gives the button label.
- `page.lastResult` holds the last `GitActionResult`. Show it with
  `gitResultText(result, l10n, offersGitHubSignIn: abilities.offersGitHubSignIn)`.
  Show `result.failure.details` only under Details; it is already scrubbed of
  tokens. `clearLastResult()` dismisses it.
- Validate the branch-name field live with `isValidGitBranchName(name)`.
  Invalid names never reach a shell.
- Ask before `discard`. Use `gitDiscardConfirmTitle(file)` and
  `gitDiscardConfirmBody`; the confirm button is `gitActionDiscard`.
- The commit form uses `gitCommitMessageHint`. The identity form uses
  `gitIdentityName` and `gitIdentityEmail`, with the button
  `gitActionSaveIdentity`. Offer the identity form when a commit fails with
  `identityMissing`.

### Problems (`GitProblem`): copy and the way forward

Every problem has copy: `gitProblemText(problem, l10n, offersGitHubSignIn:)`
returns the `gitProblem<Name>` key. Map these to buttons:

| Problem | Suggested action |
|---|---|
| `authRequired` | `phoneLinux`: GitHub sign-in (`gitProblemAuthRequiredSignIn`). Elsewhere: the copy only. |
| `gitHubTokenRejected` | Already signed out (the controller called `account.tokenRejected()`); show Sign in. |
| `pushRejected` | Pull |
| `noUpstream` | Push (the first push sets the upstream) |
| `identityMissing` | the identity form, then `setIdentity` |
| `localChangesBlock` | Commit or Discard |
| `nothingSelected`, `emptyMessage` | focus the file list or the message field |
| `timedOut`, `network`, `environmentUnavailable`, `repositoryLocked`, `unknown` | Try again |
| `conflicts`, `operationInProgress`, `cannotFastForward`, `unsafeRepository`, `signingFailed`, `hookRejected` | none in v1: they are resolved on that device (an "Open terminal" link can come later) |

Every other problem has copy only.

## GitHubAccountController (phoneLinux only)

`account.state` (sealed `GitHubSignInState`):

| Value | Show | Copy and actions |
|---|---|---|
| `GitHubSignInLoading` | nothing yet | |
| `GitHubSignedOut(problem?, details)` | a Sign in button, plus the problem if there is one | `gitHubSignIn`; the problem text from `gitHubSignInProblemText(problem, l10n)` |
| `GitHubRequestingCode` | progress | `gitHubRequestingCode`; `gitHubCancel` calls `cancelSignIn()` |
| `GitHubAwaitingUser(userCode, verificationUri, expiresAt)` | the code, large and selectable, with Copy and Open buttons | `gitHubEnterCode`, `gitHubCopyCode`, `gitHubOpenGitHub` (open `verificationUri` with **`openExternalLink`**), `gitHubWaiting`, `gitHubCancel` |
| `GitHubFinishing` | progress | `gitHubFinishing` |
| `GitHubSignedIn(login)` | the account row | `gitHubSignedInAs(login)`; `gitHubSignOut` asks first (`gitHubSignOutBody`), then calls `signOut()`; `gitHubManageAccess` opens `gitHubAuthorizedAppsUrl` with `openExternalLink` |

`startSignIn()` runs the whole flow and completes when the flow ends. Polling
follows GitHub's `interval` and `slow_down`. The token is stored under
`oc.githubToken.<profileId>`, registered with `KitRedact`, and deleted with
the profile (`ProfileStore.remove`) and by `resetSavedSignIns`.

Sign-in problems (`GitHubSignInProblem`), each with a `gitHubProblem<Name>` key:

- `expired`
- `denied`
- `deviceFlowDisabled` (the OAuth App lacks "Enable Device Flow")
- `network`
- `tokenRejected`
- `unexpected`

## Security rules the UI must keep

- Open every GitHub URL through `openExternalLink`.
- Never show `failure.details` or `GitHubSignedOut.details` as the message.
  They go under Details only.
- Never ask the controller for the token. `tokenForGit()` is for
  `GitPageController` only.
- Don't add a "send my token to the server" switch. It is out of scope for v1
  (feasibility doc §4).

## Proven and unproven

- **Proven by tests:**
  - the parsers, on real `git` 2.43 output;
  - the scripts and envelope, with exact text and quoting;
  - the full flows, run by real `sh` and `git` on the test machine against a
    local bare remote;
  - the token-file lifecycle, and that the token is absent from scripts and
    Details;
  - device flow against a fake GitHub;
  - the deletion sweep.
- **Not proven:**
  - Git under the phone's proot Ubuntu and Termux's `proot-distro` (64 KB
    output tail, `base64` and `mktemp` present);
  - a real GitHub sign-in (client id `Ov23liG1iMtZQSsgpXz4` must have device
    flow switched on);
  - a real push over HTTPS with the helper;
  - `/api/shell` on a live stable 2.0.x server (the contract comes from
    beta-18600 and protocol notes §10).
