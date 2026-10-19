# Dev-server preview (2026-10-16)

Finish line: tapping `http://localhost:5173` (or `127.0.0.1`, `0.0.0.0`,
`[::1]`, with a port) in a conversation opens the running app inside the app.
Non-goals: a full browser, split screen, tapping links in raw tool output.

## What the person sees

1. The agent starts a dev server and writes `http://localhost:5173` in a reply.
2. The link is underlined like any link. Tapping it opens **Preview**: the page
   full screen, with Reload, Open in browser and Copy address in the bar.
   Back steps back through the page's own history first, then leaves.
3. On a server that is not the phone itself, the link is pointed at that
   server's host (same port) and one plain note says the dev server must listen
   on `0.0.0.0` to be reachable from the phone.
4. Nothing answering: "Nothing is answering on port N" with Try again. The
   technical reason is never shown.
5. No server connected, or a server with no usable address: a plain alert says
   why and to use a browser instead.
6. The conversation menu gains **Preview a running app** (under Go to) once the
   conversation has mentioned a local port, in message text or tool output. It
   lists the ports newest first, each saying "On this phone" or "On <host>".
7. Any other link behaves exactly as before: `openExternalLink`.

## Routing rules (`lib/domain/dev_preview.dart`)

- Only `http(s)` links to `localhost`, `127.x`, `0.0.0.0`, `::1` with an explicit
  port, and no embedded credentials, are claimed. All else is not ours.
- Server host is loopback (the in-app Ubuntu runs in the phone's network
  namespace): load `127.0.0.1:<port>`; `0.0.0.0` is rewritten to `127.0.0.1`.
- Server host is anything else: load `<link scheme>://<server host>:<port><path>`
  and show the 0.0.0.0 note.
- No server, a runtime-only leased transport, or an address without a host:
  blocked with an explanation. The flavor enum is never consulted.

## Security note

The preview is a deliberate, narrow exception to "every URL the app did not
author goes through `openExternalLink`". The address it loads is not taken from
the link text: it is built from the link's scheme, port and path plus either
`127.0.0.1` (the phone) or the host of a server the person saved. A link can
therefore choose only a port and a path, never a host.

The web view (`lib/ui/kit/kit_web_preview.dart`):

- **One origin.** A navigation request loads only when host and port equal the
  opened origin and the scheme is http(s) with no credentials
  (`devPreviewMayLoad`). A main-frame navigation anywhere else is cancelled and
  sent through `openExternalLink` (confirmation, http warning, scheme policy).
  Sub-frame requests to other origins are cancelled silently. `javascript:`,
  `intent:`, `file:`, `data:` never load.
- **No bridge.** No `addJavaScriptChannel`, no `JavaScriptChannel`; the page
  cannot call into the app. JavaScript itself is on, because dev servers need it.
- **No shared state.** Cache, local storage and cookies are cleared when the
  preview opens and again when it closes; third-party cookies are refused. The
  app has no other web view, and no app credential is ever placed in a request.
- **Fewer doors.** On Android file access and content access are off,
  geolocation is off; camera, microphone and permission prompts are never
  granted (no handler is installed, so the default is deny).
- **Cleartext.** Dev servers are http. The manifest already permits cleartext
  for the profile traffic; a remote preview of a plain-http dev server is the
  person's own server over their own network (typically Tailscale), and the
  note says what is being shown and from where.
- **Not a browser.** No address bar, no tabs, no downloads UI. "Open in
  browser" hands the current address to `openExternalLink`.
- Desktop and web builds have no web view: the screen says so and offers the
  browser.

Known limit: a malicious page on the dev server runs in the web view with
JavaScript and can reach whatever the phone's network allows from that origin
(including other loopback ports through ordinary requests; it cannot read
them across origins). This is the same exposure as opening the page in the
phone's browser, without that browser's cookies or sessions.

## Release impact

New dependencies `webview_flutter` and `webview_flutter_android` (native
plugin) and the dev dependency `webview_flutter_platform_interface`. This is a
native change: it needs a new Shorebird release, not a patch.

## One place for dev servers (added 2026-10-16)

Finish line: the loop "an agent starts a server, I see it running, I read its
logs, I open the preview" happens from Files > Development services.

- **What is listed.** The saved commands (as before), then **Also running**:
  servers started some other way. On the phone's own server this is every
  program listening on a TCP port in the in-app Linux, found by one script
  (`ListeningPorts.script`, `lib/domain/listening_ports.dart`): the listening
  rows of `/proc/net/tcp{,6}`, matched by socket inode to `/proc/<pid>/fd/*`,
  with each process's command line, working folder and where its standard
  output goes. If Android hides `/proc/net` from the app, the script falls
  back to connecting to the usual dev ports on loopback (3000, 5173, 8080 ...);
  a port found that way shows as "Port N" without a process. On any server,
  commands that server runs as managed shells are listed too, with the ports
  their own output printed. A remote server's terminals cannot be seen; the
  screen says so in one line.
- **Row.** Name, "Running command - Port 5173", the command, an **Open preview**
  button (through `openDevPreview`, same security rules) and a Stop button.
  Tapping the row reads its logs. The menu has Preview port N, Logs, Stop,
  Save as command (hidden once a saved command has the same text) and Copy.
- **Logs.** Saved commands and shells read the managed shell's output; a program
  is read only when its standard output is a plain file (`tail -c 65536`);
  otherwise the sheet says plainly that the output is not kept where the app
  can read it. The viewer is `KitLogPanel(searchable: true)`: follow, pause,
  search with marks, wrap, copy all, selection, jump to newest, 2,000 lines
  at most. ANSI colour codes are stripped at the source (`withoutTerminalCodes`).
- **Stop.** A shell is ended through the server (asks first). A program gets
  TERM, then KILL after two seconds, by a script that checks the pid's command
  line still starts with what the person saw, so a reused pid is never hit.
  The in-app OpenCode server's port (4097) and sshd/opencode/paseo are never
  listed.
- **Other entry points.** The preview screen shows **Logs** when the server is
  known (opened from this screen or from the conversation menu). The
  conversation menu's "Preview a running app" lists found servers first
  ("Running now: vite") then ports mentioned in the conversation; it is offered
  when the conversation mentioned a port or the server is the phone.
- **Cost.** The scan is one short bash script in the in-app Linux every
  second timer tick (10 s) while the screen is open and in the foreground;
  never in the background.

## Not done

- Tapping a URL inside raw tool output or the terminal view. Those render
  as plain monospace text; the ports they print are listed in the conversation
  menu instead.
