#!/usr/bin/env bash
# install.sh — one-command setup for Project Kung Fu
#
# Run from your clawd workspace root:
#   bash clawd-prj/kung-fu/install.sh
#
# What this does:
#   1. Creates symlinks to load-expert.sh and spawn-with-expert.sh in ~/clawd/scripts/
#   2. Creates the private config overlay directory (~/clawd/kung-fu-config/)
#   3. Copies the channel-routing example if no routing config exists yet
#   4. Verifies the installation worked
#
# Safe to re-run: existing symlinks and config files are not overwritten.

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CLAWD_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"
SCRIPTS_DIR="$CLAWD_DIR/scripts"
CONFIG_DIR="$CLAWD_DIR/kung-fu-config"

echo ""
echo "🥋 Installing Project Kung Fu..."
echo ""

# ── Step 1: Scripts directory ─────────────────────────────────────────────────
if [ ! -d "$SCRIPTS_DIR" ]; then
  mkdir -p "$SCRIPTS_DIR"
  echo "  ✅ Created $SCRIPTS_DIR"
fi

# Symlink load-expert.sh
LOAD_EXPERT_LINK="$SCRIPTS_DIR/load-expert.sh"
LOAD_EXPERT_TARGET="$SCRIPT_DIR/scripts/load-expert.sh"
if [ -L "$LOAD_EXPERT_LINK" ]; then
  echo "  ⏭  $LOAD_EXPERT_LINK already symlinked — skipping"
elif [ -f "$LOAD_EXPERT_LINK" ]; then
  echo "  ⚠️  $LOAD_EXPERT_LINK is a regular file (not a symlink) — replacing with symlink"
  rm "$LOAD_EXPERT_LINK"
  ln -s "$LOAD_EXPERT_TARGET" "$LOAD_EXPERT_LINK"
  echo "  ✅ Symlinked load-expert.sh"
else
  ln -s "$LOAD_EXPERT_TARGET" "$LOAD_EXPERT_LINK"
  echo "  ✅ Symlinked load-expert.sh"
fi

# Symlink spawn-with-expert.sh
SPAWN_LINK="$SCRIPTS_DIR/spawn-with-expert.sh"
SPAWN_TARGET="$SCRIPT_DIR/scripts/spawn-with-expert.sh"
if [ -L "$SPAWN_LINK" ]; then
  echo "  ⏭  $SPAWN_LINK already symlinked — skipping"
elif [ -f "$SPAWN_LINK" ]; then
  echo "  ⚠️  $SPAWN_LINK is a regular file (not a symlink) — replacing with symlink"
  rm "$SPAWN_LINK"
  ln -s "$SPAWN_TARGET" "$SPAWN_LINK"
  echo "  ✅ Symlinked spawn-with-expert.sh"
else
  ln -s "$SPAWN_TARGET" "$SPAWN_LINK"
  echo "  ✅ Symlinked spawn-with-expert.sh"
fi

# ── Step 2: Config overlay ────────────────────────────────────────────────────
if [ ! -d "$CONFIG_DIR" ]; then
  mkdir -p "$CONFIG_DIR/config"
  mkdir -p "$CONFIG_DIR/experts"
  echo "  ✅ Created config overlay at $CONFIG_DIR"
else
  echo "  ⏭  Config overlay already exists at $CONFIG_DIR — skipping"
fi

# ── Step 3: Channel routing example ──────────────────────────────────────────
ROUTING_FILE="$CONFIG_DIR/config/channel-routing.json"
ROUTING_EXAMPLE="$SCRIPT_DIR/config/channel-routing.example.json"
if [ ! -f "$ROUTING_FILE" ] && [ -f "$ROUTING_EXAMPLE" ]; then
  mkdir -p "$CONFIG_DIR/config"
  cp "$ROUTING_EXAMPLE" "$ROUTING_FILE"
  echo "  ✅ Copied channel-routing.example.json → kung-fu-config/config/channel-routing.json"
  echo "     Edit this file to bind Slack channels to experts automatically."
elif [ -f "$ROUTING_FILE" ]; then
  echo "  ⏭  channel-routing.json already exists — skipping"
else
  echo "  ⚠️  channel-routing.example.json not found — skipping"
fi

# ── Step 4: Verify ────────────────────────────────────────────────────────────
echo ""
echo "  Verifying installation..."

ERRORS=0
[ ! -x "$LOAD_EXPERT_LINK" ] && echo "  ❌ load-expert.sh not executable" && ERRORS=$((ERRORS+1))
[ ! -x "$SPAWN_LINK" ] && echo "  ❌ spawn-with-expert.sh not executable" && ERRORS=$((ERRORS+1))
[ ! -d "$CONFIG_DIR/experts" ] && echo "  ❌ config overlay missing" && ERRORS=$((ERRORS+1))

EXPERT_COUNT=$(bash "$LOAD_EXPERT_LINK" list 2>/dev/null | grep -c "^  " || true)
[ "$EXPERT_COUNT" -lt 1 ] && echo "  ❌ load-expert.sh list returned no experts" && ERRORS=$((ERRORS+1))

if [ "$ERRORS" -eq 0 ]; then
  echo ""
  echo "  ✅ Installation complete! Found $EXPERT_COUNT experts."
  echo ""
  echo "──────────────────────────────────────────────────────"
  echo ""
  echo "  Next steps:"
  echo ""
  echo "  1. Ask your agent to load an expert:"
  echo "     \"Load the management consultant expert\""
  echo ""
  echo "  2. Or run it directly:"
  echo "     bash ~/clawd/scripts/load-expert.sh management-consultant"
  echo ""
  echo "  3. The first time you load an expert, your agent will"
  echo "     offer to run onboarding to personalise it for you."
  echo ""
  echo "  4. To bind a Slack channel to an expert automatically,"
  echo "     edit: $CONFIG_DIR/config/channel-routing.json"
  echo ""
  echo "  Full docs: $(cd "$SCRIPT_DIR" && pwd)/docs/howto/getting-started.md"
  echo ""
else
  echo ""
  echo "  ❌ Installation completed with $ERRORS error(s). Check the output above."
  exit 1
fi
