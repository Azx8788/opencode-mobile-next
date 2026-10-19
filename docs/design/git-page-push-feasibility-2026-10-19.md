# Git page: pushing to GitHub - feasibility (2026-10-19, issue #104)
Research only. Nothing built or run. Sources: docs.github.com (OAuth device flow,
GitHub App user tokens), git-scm.com/docs/gitcredentials, docs.gitlab.com OAuth,
and this repo (`lib/builtin/builtin_linux.dart`, `lib/termux/bridge.dart`,
`docs/opencode2-protocol-notes.md`).

## Recommendation
| Environment | Verdict | Why |
|---|---|---|
| Built-in Ubuntu (proot) | GO | App can run a script; token stays in app memory + Keystore. |
| Termux | GO (second) | Same flow, but the script goes through Termux RUN_COMMAND intents. |
| Remote OpenCode 2 server | GO, default = server's own git creds | `POST /api/shell` runs commands; do not send our token by default. |
| Remote OpenCode 1 server | NO-GO for now | No documented shell endpoint found in contracts/SDK. |

## 1. GitHub sign-in (device flow)
- `POST https://github.com/login/device/code` with `client_id` (+ `scope`) -> user_code,
  verification_uri `https://github.com/login/device`, `interval`, `expires_in` (900 s).
- Poll `POST https://github.com/login/oauth/access_token` with `client_id`, `device_code`,
  `grant_type=urn:ietf:params:oauth:grant-type:device_code`. Handle `authorization_pending`,
  `slow_down` (+5 s), `expired_token`, `access_denied`.
- **Only client_id is needed. No client_secret** (docs: "not needed for the device flow").
- Needs a registered OAuth App or GitHub App, and **"Enable Device Flow" ticked in that app's
  settings**; otherwise `device_flow_disabled`. client_id is public, safe to ship.
- Scopes (OAuth App): `repo` for private repos, `public_repo` for public only. Use `repo`.
  Org repos with OAuth-app restrictions need org approval of the app.
- Expiry: OAuth App tokens are long-lived unless the app opts in to expiring tokens (8 h access,
  6 month refresh); `offline_access` scope requests an expiring token. Refresh via
  `grant_type=refresh_token`; docs say no client_secret is needed for device-flow tokens
  (OAuth Apps). Refresh rotates both tokens: store the new pair atomically.
- GitHub App alternative: device flow works too (same endpoints, enable in app settings), token
  expires after 8 h by default, refresh token 6 months. Permissions are fine-grained
  (Contents: write, Metadata: read) but the user must **install** the app on chosen repos, and
  refresh for GitHub Apps probably needs the client secret (not stated on the page I read;
  verify before choosing - a secret cannot ship in the APK).
- **Pick: OAuth App, device flow, scope `repo`, expiring tokens off or on with refresh.**
  Simplest, no secret. GitHub App is the least-privilege upgrade later.

## 2. Handing the token to git
Ranked, safest first, all HTTPS:

1. **Per-command credential helper reading from a private 0600 file or fd, deleted after.**
   `git -c credential.helper= -c credential.helper='!f(){ test "$1" = get && printf "username=x-access-token\npassword=%s\n" "$(cat "$OC_TOKEN_FILE")"; }; f' push`
   `credential.helper=` first clears any stored helper (gitcredentials: empty string resets
   list). Nothing is written to `~/.git-credentials` or the repo config. Add `GIT_TERMINAL_PROMPT=0`.
2. `GIT_ASKPASS` pointing to a tiny script that prints the token (asked for Username then
   Password). Works, but needs two prompts handled and a script on disk. Equivalent exposure.
3. `-c http.extraHeader="Authorization: Bearer ..."`: **no**. Token lands in argv (visible in
   `ps`/proc cmdline and logs), and GitHub documents Basic for git over HTTPS, not Bearer.
4. Local-socket helper asking the app: strongest in theory (token never on disk), but no
   existing channel from proot to the Dart side; costs a new native piece. Defer.

Token reaching the shell at all: `BuiltinLinux.run(script)` takes only a script string, so the
token must be written to a temp file under the app's private dir (inside the proot rootfs it is
visible to that Linux), `chmod 600`, used, `shred`/`rm` in a `trap ... EXIT`. Never put the token
in the script text (the existing run API logs and surfaces the last 64 KB of output, and
`runAgentSetupCheck` is documented "never for credentials").

SSH remotes (`git@github.com:o/r.git`): do not touch the user's key. Per command:
`git -c url."https://github.com/".insteadOf=git@github.com: push`. (Works for `ssh://git@github.com/`
with a second insteadOf.) Do not rewrite the stored remote; tell the user it pushed over HTTPS.
If the user has no token, offer to push over their existing SSH key instead (no change).

## 3. How the app runs commands today
- Built-in Linux: `BuiltinLinux.run(String script, {timeout})` -> `{exitCode, output(last 64 KB)}`
  via `oc/builtin_linux` `run`. **No env or stdin parameter** (Kotlin `linux.run(script, timeout,
  agentUser)`). Per-command env must be baked into the script (e.g. `OC_TOKEN_FILE=... git ...`).
  Adding an `env` map is a small channel change (both halves are single-owner).
- Termux: `TermuxBridge.run(script, {background, workdir, timeout})`; also no env arg, and
  needs `allow-external-apps=true`. Script travels in an Intent: do not put the token in it; write
  the 0600 file via a first call, as above.
- Exit code and truncated output only: parse `git push` errors for human copy
  (rule "no raw errors"); never print the output verbatim, scrub it for the token.

## 4. Remote servers
- OpenCode 2: `POST /api/shell {command, cwd?, timeout}` -> `Shell.Info`, then
  `GET /api/shell/{id}` (exit) and `/output` (cursor paging). Non-interactive, and the command
  is not shown in a session transcript (unlike `/session/{id}/shell`). Also `PUT
  /api/session/{id}/environment` exists but is session-scoped. Not yet wrapped in `lib/api2/`
  or the domain gateway (grep found none): needs a capability flag, e.g. `canRunShell`.
- OpenCode 1: no shell endpoint found in `packages/opencode_sdk` or the contracts. NO-GO.
- Security: sending our GitHub token to a remote server hands a `repo`-scope credential to
  someone else's machine (and the shell output file `file` keeps combined output server-side).
  Default: run `git push` with the server's own credentials; show a clear
  "needs sign-in on that server" message when it fails with 401/403. Optional later: opt-in,
  per-server, "Send a one-time token", only for servers the user owns, token in a 0600 file removed after.

## 5. Other hosts
- GitLab: device authorization grant is documented (`/oauth/authorize_device`, poll
  `/oauth/token`), introduced 17.2 behind a flag, on by default 17.3, GA 17.9; docs show no
  client secret. Git over HTTPS needs scope `write_repository`; example token lives 7200 s;
  the page documents no refresh token for this flow. Self-managed hosts: the user registers
  the app and gives host + client_id. Basic username `oauth2`.

## Exact flow (local environments)
1. Git page -> "Sign in to GitHub": device code request, show code + button via
   `openExternalLink` (`lib/ui/widgets/external_link.dart`), poll respecting `interval`.
2. Store `oc.githubToken.<profileId>` (and refresh/expiry) in flutter_secure_storage;
   add to `ProfileStore.profileScopedPreferenceKeys` and `deleteProfileAndLocalData`.
3. Push: write token file (0600), run the helper-based `git push`, remove file in `trap`.
4. On 401/403: clear the stored token, ask to sign in again. Refresh first if expired.
5. Sign-out button revokes locally (and links to GitHub's authorized-apps page).

## Owner must do
- Register a GitHub **OAuth App** (Settings > Developer settings), tick **Enable Device Flow**,
  give us the **client_id** only. Callback URL can be a placeholder. Decide on expiring tokens.

## Risks
- Token readable by other processes in the same Linux while the temp file exists (short window).
- `repo` scope is broad; org approval prompts confuse users. GitHub App later would reduce this.
- Run API logs 64 KB of output: scrub; add a test that push output never contains the token.
- Remote shell is OC2-only; the server may lack git or credentials.
- proot may lack `git` or CA bundle in a fresh rootfs; check `git --version` first.

## Size estimate
- Device-flow client + token store + deletion sweep + tests: ~1 day (about 400 lines).
- Local push via built-in Linux/Termux (helper script, temp file, error mapping, tests): ~1 day.
- OC2 remote shell wrapper + capability flag + UI path: ~1 day.
- Optional `env` param on `oc/builtin_linux` `run` (Kotlin + Dart): half a day.
- Total v1: ~3 to 4 days; GitLab host support +1 day.
