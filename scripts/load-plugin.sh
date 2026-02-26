#!/usr/bin/env bash
# load-plugin.sh — on-demand full content load for a specific plugin.
# Called by the agent when a task actually requires a plugin's commands/skills.
#
# Usage: ./load-plugin.sh <plugin-path>
#
# plugin-path is relative to vendor/:
#   knowledge-work-plugins/product-management
#   claude-plugins-official/plugins/feature-dev
#
# Output: full plugin content (README + skills + commands) → stdout
# The agent reads this output and uses it to complete the task.

PLUGIN_PATH="$1"
KUNG_FU_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PLUGIN_DIR="$KUNG_FU_DIR/vendor/$PLUGIN_PATH"
PLUGIN_NAME=$(basename "$PLUGIN_PATH")

if [ -z "$PLUGIN_PATH" ]; then
  echo "Usage: load-plugin.sh <plugin-path>"
  echo "  e.g. load-plugin.sh knowledge-work-plugins/product-management"
  echo "  e.g. load-plugin.sh claude-plugins-official/plugins/feature-dev"
  exit 1
fi

if [ ! -d "$PLUGIN_DIR" ]; then
  echo "Plugin not found: $PLUGIN_PATH"
  echo "Expected at: $PLUGIN_DIR"
  exit 1
fi

CONTENT=""

# ── README ─────────────────────────────────────────────────────────────────
[ -f "$PLUGIN_DIR/README.md" ] && CONTENT="$(cat "$PLUGIN_DIR/README.md")"

# ── skills/ ────────────────────────────────────────────────────────────────
if [ -d "$PLUGIN_DIR/skills" ]; then
  for DOMAIN_DIR in "$PLUGIN_DIR/skills"/*/; do
    SKILL_FILE="$DOMAIN_DIR/SKILL.md"
    if [ -f "$SKILL_FILE" ]; then
      CONTENT="$CONTENT

---

$(cat "$SKILL_FILE")"
    fi
  done
fi

# ── commands/ ──────────────────────────────────────────────────────────────
if [ -d "$PLUGIN_DIR/commands" ]; then
  for CMD_FILE in "$PLUGIN_DIR/commands"/*.md; do
    [ -f "$CMD_FILE" ] && CONTENT="$CONTENT

---

$(cat "$CMD_FILE")"
  done
fi

echo "Plugin loaded: $PLUGIN_NAME ($PLUGIN_PATH)" >&2
echo "─────────────────────────────────────────" >&2
echo "$CONTENT"
