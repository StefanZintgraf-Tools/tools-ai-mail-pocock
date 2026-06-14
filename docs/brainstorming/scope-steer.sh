#!/usr/bin/env bash
#
# UserPromptSubmit hook: re-inject the AI-Mail brainstorm scope steer on every
# prompt, so it never fades from context over a long session.
#
# Gated by a flag file: does nothing unless `.brainstorm_scope_boundary_on.md`
# exists in this folder. Toggle the session on/off by creating/removing it.
#
# For UserPromptSubmit, stdout from an exit-0 hook is added to the model's
# context — so we just print the steer text; no JSON needed.

set -euo pipefail

DIR="$CLAUDE_PROJECT_DIR/docs/brainstorming"
FLAG="$DIR/.brainstorm_scope_boundary_on.md"
STEER="$DIR/scope_boundary.md"

# Drain the hook's JSON payload on stdin; we don't need it.
cat >/dev/null 2>&1 || true

# Gate: stay silent unless a brainstorm session is active and the steer exists.
[ -f "$FLAG" ]  || exit 0
[ -f "$STEER" ] || exit 0

cat "$STEER"
