# OpenCode 1 removal: core client evidence

On 2026-10-15 a scratch `@opencode/cli@2.0.29` installed under a temporary
prefix ran on `127.0.0.1:4097` with private XDG data, config, cache and state.
The helper read the generated serve password in memory, used Basic user
`opencode`, and never printed the password, device code, sign-in URL or log.
No owner server or phone was accessed. The helper stopped its exact child PID.

`scratch-probe.json` records the sanitized results:

- Revert commit returned HTTP 204 for a newly created empty session. This
  proves callable availability; it does not independently retest truncation
  of a populated staged history (the 2026-10-14 evidence covers that).
- OpenAI integration advertised browser, shared-token and headless OAuth.
  Headless begin returned HTTP 200 and a URL/instructions, status was pending,
  and cancel returned HTTP 204. No account sign-in was completed.
- Both operations were already wired in the OpenCode 2 operations gateway;
  their UI/controller contracts survive removal of the OpenCode 1 client.
- The scratch session was deleted and the scratch server stopped.

The OpenCode 1 client, generated SDK and generator are deleted. Shared models,
HTTP-history utilities, provider presentation, operation defaults and connection
probing moved into `lib/domain/`. The probe recognizes a legacy health response
only to reject it with the plain upgrade message, never to open an OC1 client.

This is source and scratch API evidence, not phone qualification or release
approval. Full-suite and build results are recorded by the integration owner.
