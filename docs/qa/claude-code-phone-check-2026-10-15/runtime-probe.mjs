// Run from this checkout after installing the pinned dependencies in build/.
// Never inherits account credentials. The Python launcher supplies a clean env.
import { createRequire } from 'node:module';
import { resolve } from 'node:path';
const [version, endpoint, workspace] = process.argv.slice(2);
const require = createRequire(resolve(`build/claude-phone-repro/paseo-${version}/package.json`));
const WebSocket = require('ws');
const started = Date.now();
const socket = new WebSocket(endpoint);
let created = false;
let inventoryRequested = false;
let inventoryResponses = 0;
function emit(event) {
  process.stdout.write(JSON.stringify({ elapsedMs: Date.now() - started, ...event }) + '\n');
}
const timer = setTimeout(() => { emit({ result: 'timeout' }); socket.terminate(); }, 45000);
socket.on('open', () => socket.send(JSON.stringify({
  type: 'hello', clientId: 'oc-phone-isolated-repro', clientType: 'mobile',
  protocolVersion: 1, appVersion: '1.4.0',
  capabilities: { all_providers: true, hello_rejection: true },
})));
socket.on('message', raw => {
  const frame = JSON.parse(raw.toString());
  const message = frame.message ?? {};
  const payload = message.payload ?? {};
  // This home has no credentials, but still log only bounded useful fields.
  const selected = {};
  for (const key of ['status', 'version', 'requestId', 'error', 'message', 'code']) {
    if (['string', 'boolean', 'number'].includes(typeof payload[key])) selected[key] = String(payload[key]).slice(0, 500);
  }
  if (payload.agent) selected.agentStatus = payload.agent.status;
  if (message.type === 'agent_stream') selected.stream = payload;
  if (message.type === 'agent.provider_subagents.list.response') {
    selected.parentAgentId = payload.parentAgentId;
    selected.subagentCount = payload.subagents?.length;
    selected.error = payload.error;
  }
  if (message.type) emit({ type: message.type, ...selected });
  if (JSON.stringify(payload).includes('Not logged in')) {
    emit({ result: 'authentication_required' });
    if (!inventoryRequested && typeof payload.agentId === 'string') {
      inventoryRequested = true;
      // Let the failed foreground turn settle, then read the retained parent.
      setTimeout(() => {
        socket.send(JSON.stringify({ type: 'session', message: {
          type: 'fetch_agent_request', requestId: 'retained-parent',
          agentId: payload.agentId,
        }}));
        socket.send(JSON.stringify({ type: 'session', message: {
          type: 'agent.provider_subagents.list.request', requestId: 'retained-subagents',
          parentAgentId: payload.agentId,
        }}));
      }, 250);
    }
  }
  if (payload.requestId === 'retained-parent' || payload.requestId === 'retained-subagents') {
    inventoryResponses++;
    if (inventoryResponses === 2) socket.close();
  }
  if (message.type === 'status' && payload.status === 'server_info' && !created) {
    created = true;
    socket.send(JSON.stringify({ type: 'session', message: {
      type: 'create_agent_request', requestId: 'isolated-repro',
      config: { provider: 'claude', cwd: workspace, modeId: 'default' },
      initialPrompt: 'Reply only OK', labels: {}, clientMessageId: 'isolated-repro-prompt',
    }}));
  }
  if (message.type === 'create_agent_response' || message.type === 'error') {
    emit({ response: payload });
  }
});
socket.on('error', error => emit({ error: error.message }));
socket.on('close', () => { clearTimeout(timer); });
