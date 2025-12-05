#!/usr/bin/env bash
# prayer-wheel: Stop hook
# Injects the merit dedication when the session ends

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PLUGIN_ROOT="$(dirname "$SCRIPT_DIR")"
PRAYERS_FILE="$PLUGIN_ROOT/assets/prayers.json"

if [[ ! -f "$PRAYERS_FILE" ]]; then
  echo "{\"error\": \"Prayers file not found at $PRAYERS_FILE\"}"
  exit 1
fi

# Extract merit dedication text
if command -v jq &>/dev/null; then
  MERIT=$(jq -r '.merit.text' "$PRAYERS_FILE")
  jq -n --arg context "$MERIT" \
    '{"hookSpecificOutput":{"hookEventName":"Stop","additionalContext":$context}}'
else
  printf '{"hookSpecificOutput":{"hookEventName":"Stop","additionalContext":"By this merit, may all beings be free from suffering and its causes. May they find lasting happiness and its causes."}}\n'
fi

exit 0
