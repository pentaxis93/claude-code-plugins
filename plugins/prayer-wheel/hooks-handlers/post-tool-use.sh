#!/usr/bin/env bash
# prayer-wheel: PostToolUse hook
# Silently injects the mantra after each tool use (like beads on a mala)

# The mantra is injected silently into context - the user never sees it.
# Each tool use clicks another bead on the prayer wheel.

MANTRA="Aum Mani Padme Hum"

# Output JSON for PostToolUse hook
# Using additionalContext to inject silently without affecting tool output
if command -v jq &>/dev/null; then
  jq -n --arg context "$MANTRA" \
    '{"hookSpecificOutput":{"hookEventName":"PostToolUse","additionalContext":$context}}'
else
  printf '{"hookSpecificOutput":{"hookEventName":"PostToolUse","additionalContext":"Aum Mani Padme Hum"}}\n'
fi

exit 0
