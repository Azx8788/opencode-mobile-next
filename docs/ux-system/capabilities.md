# Capabilities and supported hosts

Updated 2026-10-15 after OpenCode 1 support ended. The reviewed source is [capabilities.json](capabilities.json); per-host notes and source evidence remain there. Feature controls use ServerCapabilities, not server flavor.

Managed phone servers upgrade to OpenCode 2 while preserving their original OpenCode 1 data. Remote OpenCode 1 servers must be upgraded on their host. The app offers no OpenCode 1 runtime picker.

✓ supported · ◐ partial · ✗ unavailable · — not applicable

| Capability | In-app | Termux | OC2 computer | Codex direct | Paseo | Demo |
|---|---|---|---|---|---|---|
| `server.any` | ✓ | ✓ | ✓ | ✓ | ✓ | ◐ |
| `server.oc2` | ✓ | ✓ | ✓ | ✗ | ✗ | ✗ |
| `server.codex` | ✗ | ✗ | ◐ | ✓ | ◐ | ✗ |
| `server.paseo` | ✗ | ✓ | ◐ | — | ✓ | ✗ |
| `phone.builtin` | ✓ | ◐ | — | — | — | — |
| `phone.termux` | ◐ | ✓ | — | — | — | — |
| `phone.any` | ✓ | ✓ | — | — | — | — |
| `model.auth` | ✓ | ✓ | ✓ | ◐ | ◐ | — |
| `team.on` | ✓ | ◐ | ✓ | ◐ | ◐ | ✗ |
| `team.phone` | ✓ | ◐ | ✗ | ✗ | ✗ | ✗ |
| `team.control` | ✓ | ✓ | ◐ | ◐ | ◐ | ✗ |
| `claude.local` | ✗ | ✓ | — | — | — | ✗ |
| `voice.model` | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| `mcp.any` | ◐ | ◐ | ◐ | ✗ | ✗ | ✗ |
| `project.open` | ✓ | ✓ | ✓ | ◐ | ◐ | ✗ |
| `project.git` | ✓ | ✓ | ✓ | ✗ | ✗ | ✗ |
| `perm.notifications` | ✓ | ✓ | ✓ | ✓ | ✓ | — |
| `perm.battery` | ✓ | ✓ | ✓ | ✓ | ✓ | — |
| `perm.camera` | ◐ | ◐ | ✓ | ✗ | ✗ | — |
| `perm.mic` | ✓ | ✓ | ✓ | ✓ | ✓ | ◐ |
| `network.tailscale` | — | — | ✓ | ◐ | ✓ | — |
| `quota.collector` | ✗ | ✗ | ◐ | ✗ | ✗ | ✗ |
| `agent.a2a` | ✓ | ✓ | ✓ | ✓ | ✓ | ◐ |
| `flag:fileBrowsing+terminal` | ✓ | ✓ | ✓ | ✗ | ✗ | ◐ |
| `flag:terminal` | ✓ | ✓ | ✓ | ✗ | ✗ | ◐ |
| `flag:sessionDiff` | ✓ | ✓ | ✓ | ✗ | ✗ | ◐ |
| `flag:serverCatalog` | ✓ | ✓ | ✓ | ✗ | ✗ | ◐ |
| `flag:toolInventory` | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ |
| `flag:usageStatistics` | ✓ | ✓ | ✓ | ◐ | ✗ | ✗ |
| `flag:stagedRevert+sessionNotes` | ✓ | ✓ | ✓ | ✗ | ✗ | ✗ |
| `flag:worktreeCreate+sessionShare+managedWorkspaces` | ◐ | ◐ | ◐ | ✗ | ✗ | ✗ |
| `flag:developmentServices` | ✓ | ✓ | ✓ | ✗ | ✗ | ✗ |
| `flag:remoteUpgrade` | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ |
| `flag:promptAttachments` | ✓ | ✓ | ✓ | ✗ | ✗ | ✓ |

## Enable flows

The full flow evidence and capability-specific limitations are recorded in the JSON source.

### server.any

- Phone: Set up → progress checklist → Name your first project → conversation (setup v2 screens A-C)
- Computer: install OpenCode 2, run `opencode2 pair`, scan the QR (or type the address)

### phone.builtin

- Set up (one tap; Customize to drop Python)
- Leave the app if you like — notification mirrors progress
- Ready → name a project → conversation

### phone.termux

- Target: the same v2 checklist, with person-steps as rows that wait: 'Get Termux (F-Droid)' → 'Allow this app to run commands' → then the same components installed through the bridge

### server.oc2

- Set up OpenCode 2 on the selected host. Existing managed OpenCode 1 servers move automatically while preserving the original data; a failed move presents recovery.

### server.paseo

- Computer: `paseo` start on the private network (servers_screen.dart:3022-3025) → add server → one connection drives every agent installed there

### claude.local

- Today (Termux only): Set up → sign in: Termux opens, approve in the browser, paste code (app_en.arb:17753) → 'Claude Code on this phone' appears as a second server
- Target: component 'claude' (dependsOn node) in the same engine for the in-app host; sign-in as a person-step row that waits; ends by adding the second profile beside 'This phone'

### model.auth

- Providers → pick → OAuth (browser via openExternalLink) or key
- Codex: Codex account page
- Paseo: sign in in the agent CLI on the host

### team.on

- In-app: Settings › Plugins › 'Run an AI team on this phone' › Add (opens Add tools with AI Team on → progress) → 'Turn on AI Team for {project}'
- Termux: team onboarding steps (to merge into v2)
- Computer: run Gas City (host guide) → the app finds it or you enter its address

### team.control

- Computer: run the Gas City host front (team-host-guide-sheet), re-probe from the phone

### voice.model

- Pick a pack (dimmed when RAM is below its need) → download → dictate

### mcp.any

- Technical: Add MCP server form (remote URL + headers, or local command + env)
- Agent-driven (owner): 'I want X' → an agent installs and configures it; or connect an OSS MCP registry and toggle servers (KitAskAgent proposal)

### project.open

- Phone: create or browse
- Computer: type a path (no create)

### project.git

- OpenCode 2: Initialize Git (project-health)
- Phone: team turn-on adds an origin

### perm.notifications

- System permission prompt from Notifications settings

### perm.battery

- Keep running step row opens the Android battery setting

### perm.camera

- System prompt; denied → Open app settings or Paste code

### perm.mic

- System prompt; blocked → Open app settings

### network.tailscale

- Install Tailscale on phone (Play Store via openExternalLink) and computer, sign in both, enter the 100.x / MagicDNS address

### quota.collector

- No path in the app: the collector is 'separately installed' at the server's origin (provider_quota_client.dart:1-3)

### agent.a2a

- Add → inspect card → save; credential if required

### server.codex

- Run the token command on the computer, add the server, sign in on the Codex account page

## Product rules

- Offer at the moment of need, in the place the missing feature would be (Terminal's 'This phone' source, the composer before the first send, the Claude Code search result, the Work tab team door) — Settings lists state, it is never the only path.
- One offer per screen: a capability is offered by exactly one row or notice on a screen; the same screen never shows it twice (fixes team-plugin-sheet 'Off' twice).
- No dead ends: any 'finish X first' carries the button that does X (fixes local_agent_onboarding.dart:779-800).
- Nothing vanishes silently: when the host cannot do something, the entry stays as one muted line saying which host can ('Files aren't available on Codex — open them on the computer'); the Server capabilities page lists the rest.
- State the cost before the tap, from the component registry: download size, installed size, time, 'needs a Claude subscription', battery/heat, and 'uses N of the phone's background process budget' for long-running components.
- Pre-flight before downloading: CPU (64-bit), free space, RAM; an unsupported phone is told before, never after a failed install.
- Every install goes through setup v2's progress view (resume, notification, Continue setup); no second installer UI (Termux wizard, team onboarding steps, Claude Code panel, builtin-server-setup all merge in).
- Never nag: 'Not now' folds an offer to one quiet row (TeamDiscoverMemory pattern) per capability per server; re-offer only when the context changes (new server, the person taps the feature).
- Automation-first: where configuration is involved (MCP, providers, settings), offer 'Ask the agent to do it' beside the technical form.
- Every install has an undo that says what data survives (projects, sign-ins) before anything is deleted.
