# Real-life test matrix for OpenCode Mobile (Android), 2026-10-16

Written from the repo at branch `int/ui-batch-2026-10-14` (APK line 1.4.0+54 plus the
batch fixes) and the in-flight branches `codex/scheduled-prompts` and
`feat/dev-server-preview`. Read-only on code: nothing was run for this document.
Every "last proof" cell comes from a record in `docs/qa/**` or `docs/verification/**`
that was read; where no record was found the cell says `never`.

OpenCode 1 is being removed, so every row assumes OpenCode 2 (OC2) unless it says
"Older OpenCode". Free models only (Cat Jam Free, Big Pickle) unless a row needs a key.

## How to read this

**Where it can run**

- `emulator-auto`: a script can drive it with adb, a fixture server or the mock model
  (`tool/qa/*`, `mock_llm.py`), no human eyes needed for the pass/fail.
- `emulator-manual`: an emulator can prove it, but a person has to look or tap
  (visual judgement, system dialogs, camera, share sheets).
- `owner-phone-only`: an emulator cannot prove it, and the reason is in the cell
  (OEM behaviour, real arm64 speed and RAM, real tailnet, signing lineage, hours-long
  limits, real launcher/wallpaper).

**Last proof** is one of: `PASS <where> <date> [record]`, `partial ...` (some of the
row proven, the rest named), `FAIL/open ...` (a bug was recorded and the fix is not
yet re-proven), or `never`. "never (tests/goldens only)" means unit, widget or golden
tests exist but nothing ran on an emulator or phone. Widget renders and goldens are
not device proof.

**Risk if broken for a new user**: H = a new user is stuck, loses work, or is
exposed (data, credentials). M = a main feature is degraded but there is a way round.
L = cosmetic or advanced.

**Record shorthand** (all under `docs/qa/` unless a path is given)

- P1 = `release-device-pass-2026-10-15/README.md` (APK 2323, Pixel_6 emulator, wiped)
- P2 = `release-device-pass-2026-10-15/pass2-2324.md`; P3 = `pass3-2325.md`;
  P4 = `pass4-1.4.0.md` (local 1.4.0+54, wiped emulator, ~2 GB RAM)
- EDGE = `edge-sweep-2026-10-15/README.md` (rank N); CCPC = `claude-code-phone-check-2026-10-15/`
- HTTP = `http-and-self-signed-2026-10-15/`; SCHED = branch `codex/scheduled-prompts`,
  `docs/qa/scheduled-prompts-2026-10-15/`; PREVIEW = branch `feat/dev-server-preview`,
  `docs/design/dev-server-preview-2026-10-16.md`
- CERT = `docs/verification/agent-certification-matrix.md` (2026-10-07/08)

**Known open bugs the matrix should re-check** (from P1-P4 and EDGE): "Installed" line
stale after setup (P2/P3/P4, may be fixed by `f441c209c`); Python step SIGTERM (P4);
spec shaping 9-30 min with no stop/retry (P1/P2, EDGE 22); notifications reported
granted on Android 8-12 when muted (EDGE 11); notification Test button silent when the
channel is muted (EDGE 12); widget stale "Working/Stop" after Allow/Reject (P3);
queue payload byte bound counts code units not UTF-8 (EDGE 23).

---

## 1. Install, first run, setup on the phone

| ID | Feature | Real-life scenario | Steps | Expected result | Where | Last proof | Risk |
|---|---|---|---|---|---|---|---|
| A1 | Fresh install and first launch | A new user sideloads the release APK on a phone that has never had the app | 1. `adb install` the release APK. 2. Open it. | First-run screen "Where does your coding agent run?" with three choices; no crash, no ANR | emulator-auto | PASS emulator 2026-10-15 [P1 step 1, P4] | H |
| A2 | Update over the previous release | User on 1.3.0 installs 1.4.0 from the GitHub page or Obtainium; has saved servers, a sign-in, a queued draft | 1. Install 1.3.0 signed with the public key, add a server and a draft. 2. `install -r` 1.4.0. 3. Open. 4. Settings > About, compare signer with `842284B2...11D1C`. | Servers, passwords, settings and drafts kept; About shows 1.4.0+54 and the same signer | owner-phone-only: the maintainer phone has the real signature lineage (three lineages exist; a wrong key means uninstall and data loss) | never (the smoke matrix box is unticked; only wiped installs were run) | H |
| A3 | Welcome: "Just show me" demo | Curious user with no server taps the demo | 1. Welcome > Just show me. 2. Send a prompt, open a diff, answer an approval. | Simulated conversation works offline; leaving the demo returns to Welcome | emulator-auto | partial: demo screens in goldens and `simple-first-run` (renders only); on-device never | M |
| A4 | Set up OpenCode on this phone (OC2 default) | Phone on Wi-Fi, 64-bit, first run | 1. Welcome > On this phone. 2. Accept defaults. 3. Wait for Linux base, Git and SSH, Python, Node.js, OpenCode 2. 4. Name the first project. | Each step shows Done, about 5 min; "OpenCode is ready, name your first project"; Connected to OpenCode 2.0.29 | emulator-auto (long, run in background) | PASS emulator 2026-10-15 [P1 step 1a ~5 min; P4 ~6 min on a 2 GB AVD] | H |
| A5 | Setup step fails once, Continue setup | Python step killed (SIGTERM) or Node download fails (`curl: not found`) | 1. Start setup. 2. When a step fails, read the words. 3. Tap Continue setup (no app restart). | Plain words, "Continue setup", completed steps kept, the retry finishes | emulator-manual (failure is not reproducible on demand; inject by killing the proot child with `adb shell kill`) | partial: P4 Python SIGTERM then Continue worked 2026-10-15; P3 `curl` failure needed force-stop (root cause fixed on branch, not re-proven) | H |
| A6 | Setup survives the app being killed or the phone rebooting | User swipes the app away or the battery dies at 40% of the download | 1. Start setup. 2. Mid-download `adb shell am force-stop` (and in a second run reboot the emulator). 3. Reopen. | Setup shows interrupted, resumes from the partial download, checksum is verified, no re-download from zero | emulator-auto for kill/reboot; owner-phone-only for OEM task-killer behaviour | never (EDGE 14 "controlled kill/reboot proof still required") | H |
| A7 | Setup with the network dropping or switching | Wi-Fi to mobile data mid-download; captive portal | 1. Start setup. 2. Toggle airplane mode for 60 s, then Wi-Fi off/mobile on. | Words about reconnecting, resumes by range request; a portal gives a checksum-failure recovery, not a crash | emulator-auto (airplane via `cmd connectivity`) | never (EDGE 13, 9 "left, guarded") | H |
| A8 | Setup with low storage | Phone has under 1 GB free | 1. Fill storage to ~600 MB free (`fallocate`). 2. Start setup. | Refuses early or fails with "not enough free storage" and a way forward; nothing half-installed is left claimed done | emulator-auto | never (EDGE 6 fixed in unit tests only) | H |
| A9 | Setup on a 2 GB-RAM phone | Cheap phone; Android kills proot | 1. Run setup on a 2 GB device. 2. Use the phone meanwhile. | Completes slowly; any kill leads to Continue setup, not a dead end | owner-phone-only: real lmkd/OEM memory pressure (the 2 GB AVD saw a SIGTERM with no lmkd line, cause unproven) | partial: P4 on a 2 GB AVD 2026-10-15, SIGTERM once | M |
| A10 | Unsupported phone (32-bit or no space for Ubuntu) | User with an armeabi-v7a phone taps On this phone | 1. Open the app on a 32-bit device or an x86 32-bit AVD. 2. Tap On this phone. | Says the phone is not supported before downloading; points to "On my computer" | emulator-manual (needs a 32-bit image) | never (capabilities doc: arm64-only, Node exits 64 on other CPUs) | M |
| A11 | Add tools: Python and AI Team | After first setup the user adds AI Team | 1. This phone > Add tools. 2. Pick Python and AI Team. 3. Wait. 4. Read the Installed line. | Job reaches Done (~3 min); Installed line lists Linux base, Git and SSH, Python, Node.js, OpenCode, AI Team | emulator-auto | partial: PASS install 2026-10-15 [P3 1b, P4 4]; OPEN: "Installed" line stale until refresh (P3, P4); inventory fix `f441c209c` not re-proven | M |
| A12 | Move from Termux | Existing user has projects in Termux | 1. Settings > Move from Termux. 2. Pick projects. 3. Confirm. 4. Open a moved project. | Projects copied (not moved) into the app; Termux copy untouched; chat works in the copy | emulator-manual (Termux APK + projects needed) | never on a device (`codex-termux-migration-2026-09-28`: tests only) | M |
| A13 | Remove from this phone / Clear storage guard | User wants space back or taps Android "Clear storage" | 1. This phone > Remove. 2. Read the warning about projects. 3. Confirm; separately try Android Clear storage. | Warning names that projects are deleted; Android's Clear storage opens the app page first with an export option; after removal setup is offered again | emulator-auto | never on a device (`slice-clear-storage-guard-2026-09-28`: tests/renders) | H |
| A14 | Notification permission asked at the right time | Android 13+ phone, first chat | 1. Fresh install on API 33. 2. Use the first chat. 3. Deny, then allow later from Settings > Notifications. | One "Notify you when the agent needs you?" banner; deny leaves a recoverable blocked notice; allow later works | emulator-auto (API 33 AVD) | partial: banner seen [P4]; deny/allow round trip never (EDGE 15) | M |
| A15 | Battery optimisation prompt and Keep running guidance | OEM phone that kills background apps | 1. Settings > Keep running in the background. 2. Follow the per-maker steps. 3. Leave the phone idle 30 min with a task running. | Answer saved before opening system settings; guidance names the maker; task survives | owner-phone-only: OEM task killers and standby buckets exist only on real devices | never (`doze-standby.md` checklist unrun; `force-stop-2026-09-26` "nothing ran on a device") | M |

## 2. Connect to a computer

| ID | Feature | Real-life scenario | Steps | Expected result | Where | Last proof | Risk |
|---|---|---|---|---|---|---|---|
| B1 | Pair by QR (`opencode2 pair`) | User runs `opencode2 pair` on the laptop and scans | 1. Welcome > On my computer. 2. Scan the QR. 3. Save and connect. | Server added with address and password, connects, shows OC2 version | emulator-manual (virtual-scene camera shows a QR image) | never on a device (`simple-first-run`: "real QR pairing separate verification") | H |
| B2 | Add by typed address | User types `192.168.1.20:4096` and a password | 1. Servers > Add. 2. Type address and password. 3. Save and connect (auto-check). | HTTPS assumed for a bare remote address; wrong password gives a plain-words error; success connects | emulator-auto (host OC2 on `10.0.2.2`) | partial: server editor goldens and `oc2-server-discovery`; `oc2` pass runs used the in-app server only | H |
| B3 | Plain-HTTP consent | Home server at `http://192.168.1.20:4096` | 1. Enter the `http://` address. 2. Save. 3. Read the warning sheet. 4. "Use it anyway" > "Allow HTTP for this server". | Save blocked until consent; sheet names the exact origin; softer for private/Tailscale, stronger for public; closing the sheet grants nothing; works after restart | emulator-auto | partial: PC live proof of 9 checks 2026-10-15 [HTTP live-proof.json] + widget tests; Android device never | H |
| B4 | Self-signed HTTPS: Check certificate and pin | VPS with a self-signed cert | 1. Add `https://host:port`. 2. See the certificate explanation. 3. Check certificate, compare SHA-256. 4. Trust this fingerprint. 5. Restart the app. | Handshake inspection sends no credentials; pinned connect works after restart; expired cert still fails | emulator-auto (TLS proxy fixture `tool/qa/httptrust_live_proof.py`) | partial: PC live proof 2026-10-15 [HTTP]; Android never | H |
| B5 | Changed certificate is blocked | The server cert is renewed or a MITM appears | 1. With a pin saved, swap the cert. 2. Reconnect. | Blocks before credentials; "The server's certificate changed" with Re-check; trust only by explicit choice; changing host/port drops trust | emulator-auto | partial: PC live proof (rotated-pin rejection) 2026-10-15 [HTTP]; Android never | H |
| B6 | Tailscale setup and connect from anywhere | User away from home, laptop on a tailnet | 1. Open Tailscale setup in the app. 2. Install/sign in to Tailscale. 3. Add the laptop's 100.x address. 4. Switch Wi-Fi to mobile data. | Guided steps per state; server reachable over mobile data; plain `ws://` only for Tailscale/loopback | owner-phone-only: needs the Tailscale app and the real tailnet (emulators lack it) | partial: state goldens only (`docs/qa/tailscale`); live never | M |
| B7 | `localhost` mistake guidance | User types `localhost` for a laptop server | 1. Add `localhost:4096`. | Says localhost is the phone itself; suggests the Tailscale/LAN address | emulator-auto | never (copy exists; no device run) | M |
| B8 | Server stops answering, then returns | Laptop sleeps for 10 min, wakes | 1. Connected chat. 2. Stop the server. 3. Wait past 8 s. 4. Start it. | "Isn't answering" after 8 s with a way out; auto reconnect; refetch, no duplicate messages | emulator-auto | partial: `work-tab-cleanup-2026-09-24` (OC1); OC2 reconnect by refetch tested in units; device never | H |
| B9 | Switch server / saved servers | User has laptop, VPS and phone server | 1. Open the switcher. 2. Switch. 3. Edit and Remove with names. | Switch names the target; Remove names the server and says what it deletes locally | emulator-auto | partial: `settings-rebuild-2026-10-12` emulator with two servers (OC1) | M |
| B10 | Bring-your-own host (SSH signer / VPS) | User wants the app to reach a VPS | 1. Host management > add host. 2. Authorise key. 3. Connect. | Key is generated and held in the Keystore; host check passes | owner-phone-only (needs a real host and key flow) | partial: `docs/verification/byo-host-2026-10-02.md`; not on a current build | L |
| B11 | Demo and diagnostics from a failed connect | Connect fails with TLS/auth/timeout | 1. Cause each failure. 2. Read the words. 3. Open Details. | Plain-word reason and next step; technical text only under Details; no password in text | emulator-auto | partial: `no-raw-errors-2026-09-27` renders; EDGE 5 fixed in tests | M |

## 3. Chat: send, steer, stop

| ID | Feature | Real-life scenario | Steps | Expected result | Where | Last proof | Risk |
|---|---|---|---|---|---|---|---|
| C1 | Send and stream a reply | First prompt to a free model | 1. Open a project. 2. Send "Reply with the word PONG only". | Reply streams, first words about 3 s, done about 3 s; Stop visible while running | emulator-auto | PASS emulator 2026-10-15 [P1 1c, P4 2] | H |
| C2 | Long answer (2+ min) | Agent writes a long answer with tools | 1. Ask for a long refactor. 2. Scroll while it streams. | Scrolls, no jank, no ANR, jump-to-latest pill works | emulator-manual (jank needs a look; real GPU differs) | partial: emulator QA 2026-09-28 on build 2062 (OC1); OC2 never | M |
| C3 | Steer while the agent works | User sees it going the wrong way and types a correction | 1. Start a long task. 2. Send "use tabs, not spaces" while running. | Message steers the running reply (no queue choice); Codex and Claude Code chats steer too | emulator-auto | never (tests/goldens only: `steer-not-queue-2026-10-14`) | H |
| C4 | Stop a reply | Agent runs `sleep 40` and the user stops it | 1. Start a long command. 2. Tap Stop in chat. | "You stopped this reply"; tool shows Failed; chat usable at once | emulator-auto | partial: Stop from the widget PASS 2026-10-15 [P1 4c]; in-chat Stop on OC2 never recorded (Claude abort PASS 2026-10-07 [CERT]) | H |
| C5 | Live status line and work folding | Agent reads files, edits, runs a command | 1. Send a multi-step task. 2. Open the folded work line. 3. Collapse steps. | One live line says what it is doing; steps fold into one openable line; no "taking longer" while a command runs | emulator-auto | partial: stall fix `stall-while-tool-runs-2026-10-14` (units); step timeline `step-timeline-2026-10-09` | M |
| C6 | One-line chat header and context ring | Long chat near the context limit | 1. Open a chat on a phone and a tablet. 2. Watch the ring past 50%. | Title line, quiet project line, server only when several; ring from 50% | emulator-manual | partial: renders 2026-10-14; P1 step 5 header dark/light 2026-10-15 | L |
| C7 | Phrase chips above the input | New chat on a fresh project | 1. Open a new chat. 2. Tap a starter chip. | Chip text enters the message box, starter leads | emulator-manual | partial: renders 2026-10-12; on a phone (learned on the owner's phone per git log) not recorded | L |
| C8 | `@` mentions and the project file picker | User types `read @ser` | 1. Type `@`. 2. Pick a file. 3. Send. | Suggestions from the project; chosen file is attached by name | emulator-auto | partial: PASS emulator 2026-10-14 on OC1 1.0.193 [file-mentions-2026-10-14]; OC2 not re-run | M |
| C9 | Attach a photo / take a picture | Screenshot of an error pasted to the agent | 1. Tap + > photo. 2. Pick from gallery or camera. 3. Send. | Thumbnail shows, opens full size; agent answers about it; Codex/Paseo say text only | emulator-manual (camera and picker) | partial: Claude photo card PASS 2026-10-07 [CERT images]; OC2 re-encodes images, not re-run | M |
| C10 | Markdown, code blocks, images in replies | Agent returns a table, code and an image link | 1. Ask for each. | Renders, scrolls horizontally for code, image tiles open full size, links go through the external-link guard | emulator-manual | partial: `markdown-reading-2026-09-08`, `md-images-2026-10-09` renders | L |
| C11 | Slash commands and command launcher | User runs a server command | 1. Type `/`. 2. Pick a command. 3. Send. | Per-backend command list; result shown | emulator-auto | never on OC2 on a device (renders only) | L |
| C12 | Find in a conversation / transcript search | Looking for an earlier answer | 1. Open find bar. 2. Search a word. | Jumps through matches | emulator-auto | never on a device (`transcript-search` verification is API-level) | L |
| C13 | Conversation menu: rename, pin, archive, delete, fork, share, export | Cleaning up the list | 1. Open ⋯. 2. Rename. 3. Archive with Undo. 4. Delete with confirm. 5. Export/Share link. | Undo for reversible, confirm for destructive, share asks before publishing | emulator-auto | partial: 1.3.0 notes; `session-recovery`; device never recorded for OC2 | M |
| C14 | Saved prompts / stash / prompt history | User reuses a prompt after a restart | 1. Save a draft. 2. Restart app. 3. Restore with Undo. | Draft survives restart; Undo works | emulator-auto | partial: `docs/verification/prompt-stash-and-history.md` (API/unit) | L |
| C15 | Session notes, relations, context, staged revert (Undo) | User undoes the last agent change | 1. Open a prompt's menu > Undo. 2. Confirm staged revert. | Changes revert and can be restored; same flow on every server | emulator-auto | partial: `staged-revert-beta-18600` live probe; device never | M |
| C16 | Running-work sheet / "Running on this phone" | User wonders what is using the battery | 1. Open Running work. 2. Stop a process. | Lists conversations and processes; stop works | emulator-auto | never on a device (renders `running-work`) | L |

## 4. Approvals

| ID | Feature | Real-life scenario | Steps | Expected result | Where | Last proof | Risk |
|---|---|---|---|---|---|---|---|
| D1 | Asks first: shell and file write | Agent wants to run `touch` and write a file | 1. Keep "Asks first". 2. Ask for each. | Permission card above the box with Reject / Allow once / Always allow; nothing runs before the tap | emulator-auto | PASS emulator 2026-10-15 [P2 3a, P3 2a] (the 2026-10-14 "never asked" bug is fixed) | H |
| D2 | Allow once / Reject in chat | Same | 1. Allow once. 2. Next request: Reject. | Allowed runs; rejected shows "declined", command did not run; a double tap does not double-send | emulator-auto | PASS Allow once 2026-10-15 [P2 3b]; Reject PASS [P3 2c]; double-tap never (EDGE 19) | H |
| D3 | Always allow and Allowed actions list | User is tired of prompts | 1. Tap Always allow on a safe command. 2. Open Settings > Allowed actions. 3. Remove the rule. | Rule saved with plain words; same action no longer asks; removable; rules die with the profile | emulator-auto | partial: buttons seen 2026-10-15 [P2]; tap and list never on a device (`saved_permissions` tests) | H |
| D4 | Auto-approve for a session (and sub-agents) | User wants to walk away | 1. Turn on auto-approve in a chat. 2. Spawn a sub-agent. 3. Run a command. | Runs with no prompt, inherited by sub-agents, scoped to that session, visible chip | emulator-auto | never (tests only: `session-auto-approval`) | H |
| D5 | Answer from Conversations / Inbox | Three chats wait; user answers from the list | 1. Wait for requests. 2. Answer under the row; use the 3 s Undo. | Answer sent after 3 s unless Undo; list updates; leaving the chat sends at once | emulator-auto | never on OC2 on a device (1.3.0 notes; goldens) | M |
| D6 | Question, form and plan cards | Agent asks a choice question or shows a form | 1. Trigger each. 2. Answer. 3. Undo. | Tap answers; form values and photos restored on Undo | emulator-auto | PASS emulator 2026-10-07 on Claude Code and OC2 forms [agent-tools-2026-10-07, `oc2-forms-device-2026-10-07`] | M |
| D7 | Permission written outside the project | Agent writes `/etc/x` | 1. Ask it. | Asks, names the path | emulator-auto | PASS 2026-10-15 [P2 3a] | H |

## 5. Models, providers and sign-in

| ID | Feature | Real-life scenario | Steps | Expected result | Where | Last proof | Risk |
|---|---|---|---|---|---|---|---|
| E1 | Model picker | User moves from the free model to a stronger one | 1. Tap the model chip. 2. Search, filter, pick. 3. Send. | Chip shows the model name (never a raw id); next reply uses it; Reload providers works | emulator-auto | partial: free models picked in every device pass 2026-10-15; filters/pricing renders `model-picker` | H |
| E2 | Add a provider with an API key | User pastes a Z.ai or Anthropic key | 1. Settings > Providers. 2. Add key. 3. Pick its model. 4. Send. | Key accepted and never echoed; "loaded" state; model usable | emulator-auto (typing helper; key from a file) | PASS emulator 2026-09-30 Z.ai key on OC1 [aiteam-e2e-2026-09-30]; OC2 key flow never | H |
| E3 | Provider sign-in with a device code (ChatGPT/OpenAI) | User with a ChatGPT Plus plan | 1. Providers > OpenAI headless. 2. Copy code. 3. Approve in the browser. 4. Return. | Code large with Copy; row says "Waiting for approval"; becomes Connected without tapping Finish | emulator-manual (browser sign-in with a real account) | PASS emulator 2026-10-14 but against OpenCode 1.19.0 [oauth-device-code-2026-10-14]; OC2 never | H |
| E4 | Provider errors in words | Key invalid or free quota gone | 1. Use a bad key. 2. Exhaust quota. | "Add or fix key" action; quota wording beats 429; no promise of automatic retries | emulator-auto | never (EDGE 4: tests only) | M |
| E5 | Provider logos and privacy | Offline or blocked favicon service | 1. Open Providers offline. | Rows render without logos, no spinner stuck | emulator-auto | never | L |
| E6 | Usage hub and quota | User checks spend | 1. Open Usage. 2. See busiest days and resets. | Numbers per server kind; OC2 Spent works; others say unavailable | emulator-auto | partial: `usage-beta-18600` live probe; device never | L |
| E7 | MCP, connectors, skills, commands | Add a Notion connector from the suggested card | 1. Integrations > Add. 2. Connect and sign in. 3. Use in chat. | Catalog / ask an agent / manual add; readiness shown | emulator-manual | partial: emulator runs `BD3-mcp-chat-2026-10-09` (feasibility); OAuth on OC2 not available (capabilities doc) | M |

## 6. Files, diffs, review, terminal, projects

| ID | Feature | Real-life scenario | Steps | Expected result | Where | Last proof | Risk |
|---|---|---|---|---|---|---|---|
| F1 | Create / open a project from the folder browser | New user names a first project; second opens an existing folder | 1. Project picker. 2. Create `my-app`. 3. Browse to a folder on the phone. | Folder created, git started, chat opens in it | emulator-auto | PASS emulator 2026-10-15 [P1 3d folder picker, P4 2] | H |
| F2 | Files browser, preview, search | User reads the file the agent wrote | 1. Project > Files. 2. Open md, json, csv, pdf, svg, image. 3. Search inside files. | Viewer renders each; search shows file and line | emulator-manual | partial: previews as goldens `common-file-previews`; device never on OC2 | M |
| F3 | Review changes and diff wrap | Agent edited 5 files | 1. Open Review. 2. Read the diff on a phone width. | Diffs wrap to the width; file list; discard guards | emulator-auto | partial: renders `revamp-screen-review`; AI Team receipts on a device 2026-10-15 [P1] | H |
| F4 | Terminal on the phone | User runs `ls` and Ctrl-C in the built-in Ubuntu | 1. This phone > Terminal. 2. Type with Gboard and the key bar. 3. Run `seq 1 200000`. | Typing works, key bar visible, no lag, tabs and rename | emulator-manual | PASS emulator 2026-09-24/25 [local-terminal-2026-09-24], not a real keyboard | M |
| F5 | Terminal on a computer server | Tablet with mouse, no keyboard | 1. Open Terminal on a server. 2. Use a mouse on a wide screen. | IME and key bar kept | emulator-manual (tablet AVD) | never (EDGE 10 fixed in tests) | M |
| F6 | Worktrees and "Where work runs" | User runs a task in an isolated worktree | 1. New conversation > isolated. 2. Review. 3. Move back. | Worktree created, diff reviewed; OC2 cannot create (says so) | emulator-auto | partial: `isolated-task`, 1.3.0 worktrees for Claude chats; OC2 device never | M |
| F7 | Open projects across servers, recent projects | Several projects | 1. Work tab > In other projects. | One list; switching shows the right server | emulator-auto | partial: multi-project slice 1 (owner notes); no QA record | M |
| F8 | Development services / dev commands | User starts `npm run dev` from the Project tab | 1. Start. 2. Stop. | State and logs; OC2 only | emulator-auto | never on a device (`development-services-2026-09-08` renders) | L |

## 7. Agents on the phone and other agent hosts

| ID | Feature | Real-life scenario | Steps | Expected result | Where | Last proof | Risk |
|---|---|---|---|---|---|---|---|
| G1 | Claude Code on the phone: Check this phone, install | New chat > Claude Code; first download | 1. New conversation > Claude Code. 2. Check this phone. 3. Watch progress. | Installed / Version / Connection / Ready steps, byte progress, resumable; ready then sign-in offered | emulator-manual (needs the fixed native build; long) | FAIL/open: owner saw "agent started but didn't answer" on NX721J; fix on `codex/claude-code-phone-check`, PC runtime proof only, no APK built [CCPC] | H |
| G2 | Claude Code sign in on the phone | User with a Claude subscription | 1. Sign in to Claude Code. 2. Open in browser. 3. Return. | "Signed in" only after a real check; account shown; Sign out works | owner-phone-only: needs the owner's real Claude account (emulator can run it with a test account) | partial: sign-in terminal PASS 2026-10-07/08 emulator [CERT]; current build never | H |
| G3 | Claude Code chat: tools, permissions, photos, abort, resume | Real task in Claude Code | 1. Chat. 2. Tool + approval. 3. Photo. 4. Stop. 5. Kill app, reopen, resume. | Each works; resume reopens old chat | emulator-auto (needs an account) | PASS emulator 2026-10-07/08 [CERT: smoke, tools, permission, images, abort, resume] | H |
| G4 | Update to a new pinned Claude/Paseo and rollback | App update changes the pin | 1. Install new build. 2. Check this phone. 3. Use previous version if offered. | Explains changed requirements, replaces idle helper, rollback only if verified | emulator-manual | never [CCPC "requires a new Android build"] | M |
| G5 | Codex on the phone | Codex via Paseo | 1. Install. 2. Sign in (ChatGPT). 3. Chat, steer. | Signed-out detected, then chat works | owner-phone-only: needs a real ChatGPT account and arm64 speed | partial: install/version PASS 2026-10-08 [CERT]; signedOut FAIL; the rest locked behind accounts; README says "not yet checked on a physical phone" | M |
| G6 | Gemini CLI on the phone | Gemini sign-in | same as G5 | same | owner-phone-only (Google account) | same as G5 | L |
| G7 | Qwen Code on the phone | Qwen account | same | same | owner-phone-only | same as G5 | L |
| G8 | Goose on the phone | Goose with a provider key | same | same | owner-phone-only | same as G5 | L |
| G9 | Pi on the phone | Oh My Pi | same | same | owner-phone-only | same as G5 (fx/Pi: install, version, signedOut PASS 2026-10-08) | L |
| G10 | Remove agent frees space | User out of space | 1. Agent sheet > Remove agent. | Space freed, profile intact | emulator-auto | PASS emulator 2026-10-08 [fa6-2026-10-08] | L |
| G11 | Paseo agents on a computer (Claude Code, Pi, Codex) | Laptop has a Paseo daemon on the tailnet | 1. Add server (Paseo). 2. Chat with Claude Code. 3. Files, Changes, Terminal, Worktrees. | Sessions, permissions, models; Fast mode chip; Files/Terminal in 1.3.0 | emulator-manual (daemon on PC); owner-phone for tailnet | partial: emulator spike 2026-09-19 (`docs/qa/paseo` images); 1.3.0 features not in a device record | M |
| G12 | Codex app-server direct, ChatGPT sign-in | Codex on a laptop | 1. Add Codex server. 2. Sign in. 3. Chat, steer, "Ask Codex…" | Own connection shown everywhere, steering works | emulator-manual | partial: `docs/verification/codex-connection-2026-09-07` with real CLI; steering never on a device | M |
| G13 | Continue with… (hand over to another agent) | Codex conversation to Claude Code | 1. Conversation ⋯ > Continue with…. 2. Pick Claude Code. 3. Edit the first message. 4. Send. | Masked record written to the project; new chat starts; both link to each other; after a provider error "Continue with another agent" appears | emulator-manual (two agents ready) | partial: sheet renders, "No other agent ready" 2026-10-15 [P1 step 5]; the handoff itself never (goldens `agent-handoff-ui-2026-10-14`) | H |
| G14 | Import from Claude Code | Conversation started on the computer | 1. New conversation > Import from Claude Code. 2. Pick one. | Continues in the app | emulator-manual | never on a device | M |
| G15 | Agent cards fallback | An agent card cannot be drawn | 1. Trigger a malformed card. | One quiet line, not raw fields | emulator-auto | partial: `agent-card-fallback-2026-10-14` | L |

## 8. AI Team

| ID | Feature | Real-life scenario | Steps | Expected result | Where | Last proof | Risk |
|---|---|---|---|---|---|---|---|
| H1 | Turn on AI Team (OC2) | User opens a project and turns it on | 1. Project > AI Team > Turn on. 2. Confirm the "Stop OpenCode briefly?" sheet. 3. Wait for 4 steps. | "AI Team is ready" in ~30 s; step times do not include the confirm wait (open P3) | emulator-auto | PASS emulator 2026-10-15 [P2 1b 27 s]; the `engine_in_use` failure after a failed first try fixed [P2] | H |
| H2 | Choose a model per role | Planner/Worker/Checker | 1. Team settings > Roles. 2. Pick a model each. | Rows save; "Server default" if empty; error words point at the Planner model | emulator-auto | PASS roles saved 2026-10-15 [P1 3d]; screens `team-models-setup-2026-10-15` | H |
| H3 | Project setup, spec, plan | Empty project, goal "Create NOTES.md" | 1. Pick folder. 2. "Make the first commit for me". 3. Write goal. 4. Approve spec and plan. | Spec shaped (elapsed minutes shown), plan reviewable | emulator-auto (long) | partial: PASS 2026-10-15 [P1 3d ~9 min]; OPEN: 30 min free-model run with no stop/retry [P2 5c, EDGE 22] | H |
| H4 | Run, merge to dev, receipt | Task executes in a lane | 1. Start. 2. Watch the board. 3. Open the receipt. | Task checked, merged into dev with before/after commits, "1 of 1 tasks" | emulator-auto (long) | PASS emulator 2026-10-15 [P1 3d ~10 min]; project header "0 working" label stale after finish (open P3-4) | H |
| H5 | Promote dev to main | User wants it on main | 1. Promote dev to main. 2. Confirm. | Confirmation names branches; main moves only after confirm | emulator-auto | partial: confirmation shown 2026-10-15 [P1] and 2026-09-30 (OC1); the actual promote not recorded | H |
| H6 | Interrupted task: Resume; app killed mid-run | Phone reboots while a worker runs | 1. Start a task. 2. Force-stop the app. 3. Reopen. | Task offers Resume; no double merge | emulator-auto | never (`aiteam-oc2-interrupted` branch tests only) | H |
| H7 | Pause / Delete project / Force stop an agent | User stops a runaway worker | 1. Pause. 2. Force stop an agent. 3. Delete project. | State changes; folder stays on delete | emulator-auto | never on OC2 on a device (1.3.0 notes) | M |
| H8 | Budgets and "Since you were away" digest | User returns after hours | 1. Set a budget. 2. Leave. 3. Reopen. | Digest lists what merged/needs you; budget stops work | emulator-auto | never | M |
| H9 | Thermal guard | Phone gets hot during a team run | 1. Run a team task in the sun / `cmd thermalservice override-status 3`. | Guard suspends the city at SEVERE and resumes after | emulator-manual (override) then owner-phone | never on a device [thermal-guard-2026-09-26: "right wait on the owner's RedMagic"] | M |
| H10 | AI Team Android process cap | Many workers on a 32-process Android limit | 1. Multi-lane run. 2. Watch process count. | No phantom kill | owner-phone-only: OEM process limits; the A14 emulator killed at 40 | partial: A15 emulator peak 33 procs 2026-09-24 [aiteam-builtin-2026-09-24] | M |
| H11 | AI Team on a computer (Gas City) | Host with a Gas City supervisor | 1. Add host. 2. Start a run. 3. Merge. | Read plane, controls, merge | owner-phone-only (needs host front on tailnet) | partial: PC write proof 2026-09-11 [`ai-team/write-proof-2026-09-11.md`]; no current device run | L |
| H12 | Scheduled jobs inside AI Team | "Every day at 09:00" | 1. Add a schedule. 2. Toggle. | Plain schedule words, toggles | emulator-auto | never (1.3.0 notes only) | L |

## 9. Home-screen widgets

| ID | Feature | Real-life scenario | Steps | Expected result | Where | Last proof | Risk |
|---|---|---|---|---|---|---|---|
| I1 | Place Conversations 1x1 | User drops the smallest widget | 1. Long-press home > Widgets > OpenCode. 2. Drop 1x1. | Status and counts, label not wrapped | emulator-manual (launcher) | never (only 2x2/free-slot placements seen) | M |
| I2 | Place Conversations 2x2 | Top conversation card | 1. Drop 2x2. 2. Style window opens. | Label on one line; Save keeps, Cancel removes | emulator-manual | partial: PASS Save/Cancel 2026-10-15 [P1 4a]; exact 2x2 size unconfirmed because style-sheet screenshots are blank (FLAG_SECURE) [P2 4c] | M |
| I3 | Place Conversations 4x2 list | List widget | 1. Drop 4x2. | List of conversations, tap opens right chat | emulator-manual | never | M |
| I4 | Style window: background and accent | Pick tinted + wallpaper accent | 1. Place a widget. 2. Choose solid/tinted/transparent. 3. Accent: wallpaper/app/preset. | Preview matches; widget follows wallpaper colours | owner-phone-only for wallpaper (Material You colours differ per device) | partial: sheet opens/saves [P1 4a]; wallpaper accent never | L |
| I5 | Allow once from the widget, app closed | Request arrives while on another app | 1. "Stay connected" off. 2. Trigger a request. 3. Tap Allow once on the widget. | Short connection, answered, widget count drops, command runs | emulator-auto | PASS emulator 2026-10-15 [P3 2b] (the P2 failure is fixed) | H |
| I6 | Reject from the widget | Same, reject | tap Reject | Server sees "declined"; widget updates | emulator-auto | PASS emulator 2026-10-15 [P3 2c]; stale "Working/Stop" afterwards open [P3] | M |
| I7 | Stop from the widget | Runaway command | tap Stop | Stops without opening the app | emulator-auto | PASS emulator 2026-10-15 [P1 4c] | H |
| I8 | Steer from the widget | Send a correction | tap Steer, type, send | Floating panel; message steers the run | emulator-manual | never (screen as goldens `widgets-v2-2026-10-15` only) | M |
| I9 | Voice prompt from the widget | Hands-busy | tap mic widget, speak | Transcribed on the phone, new reply starts | owner-phone-only (real mic) | never | M |
| I10 | Resume action | After a pause | tap Resume | Reply resumes | emulator-auto | never | L |
| I11 | Live timer and card slide | Two chats running | watch widget for 3 min | Timer ticks while "Stay connected" off; card slides between chats | emulator-manual | partial: timer PASS 2026-10-15 [P2 4a]; slide NOT RUN [P1 4e] | L |
| I12 | Usage widget colour thresholds | Quota running down | configure Usage widget, vary spend | Green, amber, grey | emulator-auto (fixture) | never (P1: shows "choose what to show" only) | L |
| I13 | Widget after reboot / app update | Phone restarts | reboot, check widgets | Widgets re-arm, show current state | emulator-auto | partial: `BB7-2026-10-09` boot/package replacement for the service; widgets never | M |
| I14 | Widget picker preview and names | Browsing widgets | open picker | Name "Conversations", short description, real preview | emulator-manual | partial: PASS name/preview 2026-10-15 [P2 4b]; description sentence remains (P3-B) | L |

## 10. Voice input

| ID | Feature | Real-life scenario | Steps | Expected result | Where | Last proof | Risk |
|---|---|---|---|---|---|---|---|
| J1 | Download the voice model during setup | User opts into Voice typing in Customize | 1. Setup > Customize > Voice typing. 2. Wait. | Model downloaded/checksummed; "High accuracy" gated by total RAM not memoryClass | emulator-manual | never (`voice-in-setup-2026-09-27`: tests) | M |
| J2 | Dictate a prompt | User speaks 20 s in a noisy room | 1. Tap mic. 2. Grant mic. 3. Speak. 4. Stop. | Text appears on the phone, no audio leaves it; denied mic shows a recovery | owner-phone-only: real mic, whisper speed on arm64 | never (renders `revamp-screen-voice-1`) | M |
| J3 | Voice in Arabic / mixed language | Arabic speaker | dictate Arabic | Correct script and RTL | owner-phone-only | never | M |

## 11. Notifications and background connection

| ID | Feature | Real-life scenario | Steps | Expected result | Where | Last proof | Risk |
|---|---|---|---|---|---|---|---|
| K1 | Working notification (one status row) | User leaves while a reply runs | 1. Start a long reply. 2. Press Home. 3. Pull the shade. | One silent row: title, project, progress, Open and Stop | emulator-auto | PASS emulator 2026-10-14 (OC1, mock model) [notifications-2026-10-14 n1, n2]; OC2 never | M |
| K2 | Needs-you alert with Allow/Deny | Permission arrives while the app is closed | trigger a request, tap Allow once in the shade | Masked command and chat name; only Allow once and Deny; answered | emulator-auto | partial: alert and buttons seen 2026-10-14 [n3, n3b]; tapping them not recorded | H |
| K3 | Finished replies grouped | Several chats finish | let 4 finish | One group with count; each "<chat> finished" | emulator-auto | PASS emulator 2026-10-14 [n4] | L |
| K4 | Idle / Ready row | After the last chat stops | wait | "Ready · nothing running", last reply | emulator-auto | PASS emulator 2026-10-14 [n6] | L |
| K5 | Waiting, Paused, Reconnecting, Setup rows, quiet hours | Network drops or quiet hours on | each condition | Matching row; quiet hours silent | emulator-auto | never on a device (notifications record "Not proven") | M |
| K6 | Tap a notification opens the right chat on the right server | Several servers; Codex chat | tap | Opens that chat with its own connection ("Ask Codex…") | emulator-auto | never (1.4.0 notes; tests) | M |
| K7 | Test notification and muted channel | User muted the channel | Notifications > Test | Failure notice with link to Android settings | emulator-auto | OPEN: EDGE 12 left, bug in source | M |
| K8 | Notifications on Android 8-12 | Old phone with app notifications off | Settings > Notifications | Shows blocked, offers settings | emulator-auto (API 31 AVD) | OPEN: EDGE 11 (reports granted) | M |
| K9 | Background connection (Stay connected) survives | App in background 30 min | enable Stay connected, leave | Foreground service holds, reply completes | emulator-auto | PASS emulator 2026-10-07 to 10-09 [BB2, BB3, BB7, BB9: crash supervision, restart, boot, package replacement]; long idle never | H |
| K10 | Android 15 six-hour dataSync cap | Phone connected all day | stay connected > 6 h | Pause receipt, notice "Android paused", Resume | owner-phone-only: real 6 h/24 h budget (emulator cannot fake `onTimeout`) | never (EDGE 17; `battery-pause-2026-10-08` tests only) | M |
| K11 | App swiped away / force-stop by OEM | RedMagic swipe kills the app | swipe from recents with a task running | Exit reason classified; guidance shown; reconnect on open | owner-phone-only: OEM behaviour | never (`force-stop-2026-09-26`: "nothing ran on a device") | M |
| K12 | Doze / standby overnight | Phone idle overnight | overnight with Stay connected | Task result waiting in the morning | owner-phone-only | never (`doze-standby.md`) | M |
| K13 | Check-in reminders | User asks for a nudge | enable reminders | Gentle reminder, honest timing | emulator-auto | never (renders) | L |

## 12. Look, language, size, layout

| ID | Feature | Real-life scenario | Steps | Expected result | Where | Last proof | Risk |
|---|---|---|---|---|---|---|---|
| L1 | Live background (20 looks, 3 intensities) | User picks Matrix rain | Settings > Appearance > Effects > Look | Live tiles, full preview, text keeps contrast, pauses in background and with reduced motion | emulator-manual; battery/GPU owner-phone | partial: looks render dark/light 2026-10-15 [P1 5]; only 10 looks in the 10-14 record, the other 10 and real GPU never; badge overlap light never (P3-3) | M |
| L2 | Text size (4 steps) and system 200% | Low-vision user | Text size Smallest/Large; phone font 200% | No overflow on chats, settings, setup; 48 dp targets | emulator-manual | partial: Smallest light 2026-10-15 [P1 5]; tests for Smallest | M |
| L3 | Arabic RTL end to end | Arabic-language phone | switch language to Arabic; run setup, chat, approval, AI Team | RTL mirrors, plurals, bidi in versions | emulator-manual | partial: `ar-review-2026-09-25` words only, "No device run"; goldens | H |
| L4 | Other languages (ja, zh, es, pt, ru) | Phone in Japanese | switch | First run and chat translated; others English | emulator-manual | never on a device (`fg5` renders) | L |
| L5 | Light / dark / follow system | Night use | toggle each | Panels off-white in light, no red failures | emulator-manual | PASS emulator 2026-10-15 [P1 step 5 dark and light] | L |
| L6 | Tablet, landscape, split-screen, rotation | Pixel Tablet, rotate mid-reply | rotate; split screen; keyboard | No lost draft; adaptive layout | emulator-auto (tablet AVD) | never (EDGE 20 "tests present, no whole-journey pass") | M |
| L7 | Reduced motion / animations off | Motion-sensitive user | system animations off | Instant transitions | emulator-auto | never | L |
| L8 | TalkBack | Blind user | enable TalkBack, run first chat | Labels, focus order | owner-phone-only (real TalkBack/Gboard) | never (ar-review: not read with TalkBack) | M |
| L9 | Huge message / output | Agent prints 5 MB log | ask for a big output | No freeze, bounded memory | emulator-auto | never (EDGE 21 remeasure) | M |

## 13. Offline, recovery, multi-server

| ID | Feature | Real-life scenario | Steps | Expected result | Where | Last proof | Risk |
|---|---|---|---|---|---|---|---|
| M1 | Send while offline | Train tunnel | airplane on; send; airplane off | Visible "waiting to send", sends once on reconnect | emulator-auto | never on a device (smoke matrix box unticked; EDGE 1-3 tests) | H |
| M2 | Network drops after Send | Prompt accepted but ack lost | cut network just after Send | No auto resend; "check before resending" review; one explicit resend | emulator-auto | never on a device (EDGE 1: tests/goldens) | H |
| M3 | App killed after the box clears | Process killed at send | send, `am kill` instantly, reopen | Unconfirmed marker kept for review | emulator-auto | never on a device (EDGE 2) | H |
| M4 | App killed while a reply streams | Android reclaims memory | kill during stream; reopen | Refetch shows the accepted state; OC2 deltas not replayed | emulator-auto | never on a device (EDGE 18) | H |
| M5 | Phone reboot with an open chat and a pending approval | Battery dies | reboot, reopen | Chat and pending request restored, notification re-posted | emulator-auto | partial: `BB7` boot restore (service) 2026-10-09; chat-level never | M |
| M6 | Drafts persist | Half-typed prompt, call arrives | background app, kill, reopen | Draft restored | emulator-auto | never on a device | M |
| M7 | Multi-server Inbox and While you were away | Laptop and phone server both need you | two servers with pending items | One list across servers, switches server first | emulator-auto | partial: two servers on emulator 2026-10-12 [settings-rebuild, OC1] | M |
| M8 | Second device on the same server | Laptop and phone, same chat | chat from both | No duplicate messages; stream shows both | emulator-auto | never | M |
| M9 | Profile deletion / forget everything | User forgets a server | Remove server | Keys `oc.*.<profileId>` swept: Keystore password, HTTP consent, cert pin, queued drafts, schedules | emulator-auto | never on a device (unit sweep tests; SCHED and HTTP add keys) | H |

## 14. Settings, diagnostics, update

| ID | Feature | Real-life scenario | Steps | Expected result | Where | Last proof | Risk |
|---|---|---|---|---|---|---|---|
| N1 | Settings structure and search | User looks for Notifications | open Settings; search | Five groups; personal choices everywhere, owned things under their server | emulator-manual | PASS emulator 2026-10-12 renders [settings-rebuild-2026-10-12] | L |
| N2 | Report a problem / diagnostics | Something broke | Settings > App diagnostics > Report a problem | Prefilled report, secrets removed, nothing sent unless the user sends | emulator-auto | PASS emulator 2026-10-09 [BD7 saved report APK 2202] | M |
| N3 | Recent errors and recent app exits | After a crash | open the lists | Plain words, problems first, details folded | emulator-auto | PASS emulator 2026-10-08/09 [diagnostics-exit-share, BD7] | L |
| N4 | Crash report consent | First crash | trigger a crash; toggle consent | Saved report only with consent; preview and share | emulator-auto | PASS emulator 2026-10-09 [BD7] | M |
| N5 | Performance trace | Support asks for timings | Diagnostics > Performance > Copy report | Report copies, no secrets | emulator-auto | partial: used in QA records | L |
| N6 | Shorebird patch on a released build | Dart-only fix shipped as a patch | install the release; publish patch; reopen twice | App runs patched code; About shows the patch number | owner-phone-only for the real update path; an emulator can prove the mechanism | never (no record of a patch applied on a device; 1.2.0 was the first Shorebird baseline) | H |
| N7 | About, licences, signer | Verify the signature | Settings > About | Version, signer fingerprint, open source list | emulator-auto | PASS emulator 2026-10-15 [P4 3 "OpenCode Mobile 1.4.0+54"] | L |
| N8 | Guide and Support | Stuck user | open Guide | Content matches current flows (OC2 default) | emulator-manual | never (copy not re-read since 1.4.0) | L |
| N9 | External links guard | Agent prints a URL | tap a link in a reply | Goes through confirmation (`openExternalLink`); http warned | emulator-manual | partial: tests; device never | H |
| N10 | Web sources and reviewed web search | Agent wants to search | allow/deny a source | Only approved sources | emulator-auto | partial: `web-search` record | L |

## 15. In-flight and retiring features

| ID | Feature | Real-life scenario | Steps | Expected result | Where | Last proof | Risk |
|---|---|---|---|---|---|---|---|
| Q1 | Scheduled prompts: create, list, next run | "Every weekday 08:00 run the tests" | 1. Conversation or project > Schedules. 2. Weekdays 08:00 (or once at +2 min). 3. Save. | Next run listed; the chosen agent/model is captured | emulator-auto (APK from `codex/scheduled-prompts`, loopback fixture) | partial: emulator-5562 APK 900056 2026-10-15 worker fired on time but failed on a UTC timestamp bug; fixed in `eac22a34b`; clean success not yet recorded [SCHED] | H |
| Q2 | Closed-app execution and notification | App swiped away at fire time | 1. Schedule +2 min. 2. Swipe the app. 3. Wait. | Prompt sent in an ordinary conversation, notification opens it; history shows Started | emulator-auto | partial: as Q1 (worker fired; dispatch failed before fix) | H |
| Q3 | Survives reboot / clock and timezone change | Phone reboots at 07:55 | schedule; reboot; change timezone | Alarms re-armed; interval keeps UTC anchor | emulator-auto | never on a device (tests for re-arm and clock rollback) | H |
| Q4 | Late and missed policy | Phone off at 08:00, on at 09:00 | power off across the time | One catch-up or a skipped entry, no burst replay | emulator-auto | never on a device | M |
| Q5 | Busy conversation, permission wait, uncertain send | Target chat already running | schedule onto a running chat | Skipped with "Busy"; never auto-approves; no retry after uncertain send | emulator-auto | never on a device (fixture tests) | H |
| Q6 | Phone-runtime lease | Schedule on the phone's own server, server stopped | fire with the managed server off | Starts only the owned runtime, stops only that instance, guards interactive sends | emulator-auto | partial: native lease tests 2026-10-15 [SCHED]; device never | H |
| Q7 | Exact alarm permission and battery notice | Android 12+ | tap Allow exact alarms | Opens system permission; without it, approximate wording | emulator-manual | never | M |
| Q8 | Pause, edit, delete a schedule; morning digest | User changes plans | pause, edit, delete; enable digest | Revision invalidates old alarms; delete removes history; digest counts only | emulator-auto | partial: digest correctly reported the failed run [SCHED]; rest tests | M |
| Q9 | Dev-server preview from a link | Agent says `http://localhost:5173` | tap the link in a reply | In-app Preview; reload, open in browser, copy address; one origin; other links leave via external-link guard | emulator-auto (needs a build of `feat/dev-server-preview`) | never (branch unmerged, tests only; native webview needs a new release, not a patch) | M |
| Q10 | Preview a running app from the menu; remote server note | Dev server on a laptop | conversation ⋯ > Preview a running app | Lists ports newest first; note about listening on 0.0.0.0; "Nothing is answering on port N" | emulator-manual | never | M |
| Q11 | Old OpenCode path while OC1 is still shipped | Phone still on Older OpenCode | This phone > Switch / Move to OC2 | Move never drops history; refuses plainly if both have chats; offer hidden when it cannot run | emulator-auto | PASS emulator 2026-10-15 [P3 3a-3c, P2 2]; OPEN (P0-2 original): not reproduced on a phone that first-ran on OC1 | H |
| Q12 | OC1 removal: new users never see Older OpenCode | After OC1 is dropped | fresh install | No OC1 option; saved OC1 profiles get a clear "move" message | emulator-auto | never (feature not yet landed) | H |
| Q13 | Claude Code phone check on the fixed build | Owner's reported failure | see G1 | see G1 | owner-phone-only for the original failure | never (see G1) | H |

---

## Run order

Constraints: PC is memory-limited. One emulator at a time, serialised (`tool/qa/machine_lock.sh`), each started with `-wipe-data` unless the batch says "continue". Long steps (setup, AI Team, spec shaping) run in the background with a poll. Use the release APK only (debug does not work with the Shorebird engine). Serial = no parallel emulators.

### Emulator batches

| Batch | AVD / state | Rows | Setup cost saved by grouping | Est. minutes |
|---|---|---|---|---|
| E0 Prep | none | build or fetch the APKs (release 1.4.0+54, `codex/scheduled-prompts`, `feat/dev-server-preview`), host OC2 server, HTTP/TLS fixtures, `mock_llm.py`, scheduled-prompt fixture, a Paseo daemon | one-time | 30 |
| E1 Fresh phone, happy path | Pixel_6 API 35, wiped, 4 GB | A1, A3, A4, A11, A13 (last), C1, C4, C5, C6, C7, F1, F2, F3, F4, D1, D2, D3, D4, D7, E1, K1-K4, K9, N2-N4, N7, L5 | one 6-minute Ubuntu install serves all | 110 |
| E2 Remote computer | same emulator, continue | B1 (virtual camera QR), B2, B3, B4, B5, B7, B8, B9, B11, M7, M8, C3 (on OC2), C8 | one host server | 60 |
| E3 AI Team | same emulator, continue (background polls) | H1-H8, H12, F6, F7 | team install and one model run (up to 45 min) | 90 |
| E4 Widgets and notifications | same emulator with launcher; then API 33 AVD for A14, K7 and API 31 AVD for K8 | I1-I14 (not I9), K2, K5, K6, K7, K8, A14 | one launcher session; two extra small AVDs | 90 |
| E5 Failure injection | fresh API 35, wiped, set up from E1's snapshot if possible | A5, A6, A7, A8, A9 (2 GB), A10 (32-bit AVD), M1-M6, C11, M9, Q11 | everything that kills or cuts the network, grouped | 100 |
| E6 Look, language, layout | Pixel Tablet API 35 plus Pixel_6 | L1-L4, L6, L7, L9, C2, C10, N1, N8 | rotate/tablet/RTL together | 70 |
| E7 Agents | Pixel_6, wiped, plus a PC Paseo daemon | G1, G3, G4, G10, G11, G12, G13, G14, G15, E2-E4, E6, E7 | Claude account used once | 80 |
| E8 Schedules and preview | emulator-5562 with `codex/scheduled-prompts` APK; second APK for preview | Q1-Q8, then Q9-Q10 on the preview build | two APKs, one fixture each | 75 |
| E9 Removal check | after OC1 removal lands | Q11, Q12 | none | 25 |
| **Total** | | | | **about 12 hours of wall time**, mostly background polling; about 4 hours of human attention |

### Owner-phone batch (one sitting)

Only what an emulator cannot prove. Do not screenshot the phone (owner rule: ask for screenshots from the owner instead); use `ps`, `dumpsys`, exit-info and the Details text. About 55 minutes plus two overnight waits that need no attention.

| Step | Rows | What the owner does | Minutes |
|---|---|---|---|
| 1 | A2, N6, N7 | Install the new APK over the current one; check About signer matches `842284B2...`; after a Shorebird patch is published, open the app twice and read the patch number | 8 |
| 2 | G1, G2, Q13 | New conversation > Claude Code > Check this phone; sign in; send one message (the exact failure the owner reported on NX721J) | 12 |
| 3 | B6, B10 | Tailscale: connect to the laptop on mobile data | 8 |
| 4 | J2, J3, I9 | Dictate once in English, once in Arabic; trigger voice from the widget | 6 |
| 5 | I4, I13 | Place a widget on the real launcher; pick the wallpaper accent; reboot and check it returns | 8 |
| 6 | A15, K11, K12 (start) | Turn on Stay connected, start a long task, swipe the app away, leave the phone idle overnight | 5, then overnight |
| 7 | K10, H9, H10 | Leave Stay connected on all day; start a multi-lane team run and note heat | 8, then up to 6 h |
| 8 | L8 | TalkBack through first chat | 5 |
| 9 | A9, A12 | Only if the phone has under 3 GB RAM or still has Termux projects | optional |
| 10 | G5-G9 | Only the one agent the owner has an account for | optional, 10 each |

---

## Gaps: features never proven on a device, sorted by risk

"Never" means no emulator or phone record for the real behaviour. Items marked in the H list that are "partial" in their row have a recorded part and a named device part still unrun. Within a risk level, rows are ordered by how many new users would hit them.

### Risk H

1. B1 Pair by QR (the headline connect path for OC2).
2. M1, M2, M3, M4 Offline send, lost acknowledgement, kill after send, kill during stream (data loss; fixes exist only as tests).
3. D4 Auto-approve for a session (security-relevant and never exercised).
4. C3 Steering while the agent works (a 1.4.0 headline change, tests only).
5. A6, A7, A8 Setup killed or rebooted mid-download, network cuts, low storage.
6. M9 Profile deletion data wipe (now covers consent, pins, schedules).
7. A2 Upgrade over the previous release keeps data and signer.
8. N6 Shorebird patch applied on a device.
9. A13 Remove from phone / Clear storage guard (deletes all projects).
10. H6 Resume of an interrupted AI Team task.
11. G13 Continue with… hand-over (the sheet renders; the handoff never ran).
12. Q3, Q5, Q6, Q12 Scheduled prompts across reboot, busy/uncertain sends, phone lease; OC1 removal.
13. D3 Always allow and the Allowed actions list.
14. G1 Claude Code Check this phone (fix not built into an APK).
15. B8 Reconnect after the server stops, on OC2.
16. L3 Arabic end to end.
17. E4 Provider error words; E3 device-code on OC2 (proof is against OC1).
18. B3-B5 HTTP consent and certificate pinning on Android (PC proof only).

### Risk M

A10, A12, A15, B6, B7, B10, C9 (OC2), C13, C15, D5, E1-E7 where noted, F2, F5, F6, F7, G4-G9, G14, H7, H8, H9, H10, I1, I3, I8, I9, I10, I13, J1-J3, K5-K8, K10-K12, L1, L2, L6, L8, L9, M5, M6, M8, N9, Q4, Q7-Q10.

### Risk L

C11, C12, C14, C16, D6 (OC2 re-run), E5, E6, F8, H11, H12, I12, K13, L4, L7, N8, N10.

---

## Counts (rows above)

- Features (rows): **162** (H 57, M 69, L 36).
- Proven on an emulator, whole row: 30 (PASS). Partly proven: 61 (24 of those have a named device part that was never run). Never proven: 64. Open bug without a re-proof: 3 (G1, K7, K8). So 67 rows have no device proof of the real behaviour.
- Where they run: emulator-auto 101, emulator-manual 38, owner-phone-only 23. Eleven of the 23 owner-only rows are also never-proven.
- No row has ever been proven on the owner's physical phone in a `docs/qa` record except as a reported symptom (G1) and the old OEM force-stop report; all "PASS" above are emulator results.
