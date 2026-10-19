#!/usr/bin/env bash
# Replays the owner's phone with a real Claude Code binary and fake files:
# the Terminal sign-in (HOME=/home/oc, no CLAUDE_CONFIG_DIR) against the
# app's launches (HOME and CLAUDE_CONFIG_DIR under .oc-profiles/<id>), before
# and after PhoneAgentClaudeHome.prepare. No account: the sign-in file is a
# dummy that `claude auth status` reads without the network.
#
#   docs/qa/claude-phone-auth-2026-10-16/e2e-simulation.sh [claude-binary]
set -euo pipefail
claude="${1:-$(command -v claude)}"
repo="$(git rev-parse --show-toplevel)"
kotlin="${KOTLIN_HOME:-$HOME/.sdkman/candidates/kotlin/current}"
work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT
cat > "$work/Main.kt" <<'EOF'
package io.github.eslamasabry.opencode_mobile
import java.io.File
fun main(args: Array<String>) { println(PhoneAgentClaudeHome.prepare(File(args[0]), args[1], File(args[2]))) }
EOF
"$kotlin/bin/kotlinc" -nowarn -d "$work/out" \
  "$repo/android/app/src/main/kotlin/io/github/eslamasabry/opencode_mobile/PhoneAgentClaudeHome.kt" \
  "$work/Main.kt" 2>/dev/null
prepare() { java -cp "$work/out:$kotlin/lib/kotlin-stdlib.jar" io.github.eslamasabry.opencode_mobile.MainKt "$R/home/oc" p1 "$R/root"; }
R="$work/rootfs"
mkdir -p "$R/home/oc/.oc-profiles/p1" "$R/root"
status() {
  env -i "$@" PATH=/usr/bin:/bin DISABLE_AUTOUPDATER=1 CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=1 \
    timeout 30 "$claude" auth status --json 2>/dev/null |
    python3 -c 'import json,sys; d=json.load(sys.stdin); print("loggedIn=%s configDirectory=%s" % (d["loggedIn"], d["configDirectory"].split("/rootfs")[-1]))'
}
app() { status HOME="$R/home/oc/.oc-profiles/p1" CLAUDE_CONFIG_DIR="$R/home/oc/.oc-profiles/p1/claude" CLAUDE_HOME="$R/home/oc/.oc-profiles/p1/claude"; }
term() { status HOME="$R/home/oc"; }

echo "claude: $("$claude" --version)"
echo "1. Signed in from the Terminal (su oc -c claude): ~/.claude/.credentials.json"
mkdir -p "$R/home/oc/.claude"
printf '%s\n' '{"claudeAiOauth":{"accessToken":"sk-ant-oat01-dummy","refreshToken":"sk-ant-ort01-dummy","expiresAt":4102444800000,"scopes":["user:inference","user:profile"],"subscriptionType":"pro"}}' \
  > "$R/home/oc/.claude/.credentials.json"
chmod 600 "$R/home/oc/.claude/.credentials.json"
echo "   terminal: $(term)"
echo "   app (every app launch before the fix): $(app)"
echo "2. The fixed app prepares the folder before it launches Claude"
echo "   prepare: $(prepare)"
echo "   app: $(app)"
echo "   terminal: $(term)"
echo "   ~/.claude -> $(readlink "$R/home/oc/.claude")"
echo "3. Sign out with the app's environment"
env -i HOME="$R/home/oc/.oc-profiles/p1" CLAUDE_CONFIG_DIR="$R/home/oc/.oc-profiles/p1/claude" PATH=/usr/bin:/bin \
  DISABLE_AUTOUPDATER=1 CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=1 timeout 30 "$claude" auth logout >/dev/null 2>&1
echo "   app: $(app)"
echo "   terminal: $(term)"
echo "   kept: $(ls "$R/home/oc/.claude.before-app/.credentials.json" | sed "s|$R||")"
echo "   second prepare: $(prepare)"
