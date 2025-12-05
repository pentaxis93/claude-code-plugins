#!/usr/bin/env bash
# prayer-wheel: SessionStart hook
# Injects the opening dedication at session start

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PLUGIN_ROOT="$(dirname "$SCRIPT_DIR")"
PRAYERS_FILE="$PLUGIN_ROOT/assets/prayers.json"

if [[ ! -f "$PRAYERS_FILE" ]]; then
  echo "{\"error\": \"Prayers file not found at $PRAYERS_FILE\"}"
  exit 1
fi

# Extract dedication text
if command -v jq &>/dev/null; then
  DEDICATION=$(jq -r '.dedication.text' "$PRAYERS_FILE")
  jq -n --arg context "$DEDICATION" \
    '{"hookSpecificOutput":{"hookEventName":"SessionStart","additionalContext":$context}}'
else
  # Fallback: hardcoded if jq unavailable
  printf '{"hookSpecificOutput":{"hookEventName":"SessionStart","additionalContext":"May this session be for the benefit of all beings everywhere, without exception."}}\n'
fi

exit 0
