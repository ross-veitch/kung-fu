#!/usr/bin/env bash
# uninstall.sh — remove Kung Fu from your clawd workspace
#
# What this does:
#   1. Removes symlinks created by install.sh (load-expert.sh, load-plugin.sh, spawn-with-expert.sh)
#   2. Optionally removes the private config overlay (kung-fu-config/)
#
# What this does NOT touch:
#   - The kung-fu repo itself (delete that manually with: rm -rf ~/clawd/clawd-prj/kung-fu)
#   - channel-routing.json (you may want to keep your channel bindings)
#   - Any cron jobs you've set up that reference kung-fu scripts
#
# Usage: bash uninstall.sh [--keep-config]

set -euo pipefail

CLAWD_DIR="${CLAWD_DIR:-$HOME/clawd}"
SCRIPTS_DIR="$CLAWD_DIR/scripts"
CONFIG_DIR="${KUNG_FU_CONFIG_DIR:-$CLAWD_DIR/kung-fu-config}"
KEEP_CONFIG=false

for arg in "$@"; do
  [[ "$arg" == "--keep-config" ]] && KEEP_CONFIG=true
done

echo "🥋 Kung Fu — uninstaller"
echo "Clawd dir: $CLAWD_DIR"
echo ""

# Remove symlinks
SYMLINKS=(load-expert.sh load-plugin.sh spawn-with-expert.sh)
for s in "${SYMLINKS[@]}"; do
  TARGET="$SCRIPTS_DIR/$s"
  if [ -L "$TARGET" ]; then
    rm "$TARGET"
    echo "🗑  Removed symlink: $TARGET"
  elif [ -f "$TARGET" ]; then
    echo "⚠️  $TARGET exists but is not a symlink — skipping (remove manually if needed)"
  else
    echo "⏭  $TARGET not found — skipping"
  fi
done

echo ""

# Optionally remove config overlay
if [ -d "$CONFIG_DIR" ]; then
  if [ "$KEEP_CONFIG" = true ]; then
    echo "⏭  Keeping config overlay: $CONFIG_DIR (--keep-config)"
  else
    echo "⚠️  This will permanently delete your personal config overlay:"
    echo "   $CONFIG_DIR"
    echo "   This includes all USER.md and PLAYBOOK.md files generated during onboarding."
    echo ""
    read -r -p "Delete config overlay? [y/N] " confirm
    if [[ "$confirm" =~ ^[Yy]$ ]]; then
      rm -rf "$CONFIG_DIR"
      echo "🗑  Removed config overlay: $CONFIG_DIR"
    else
      echo "⏭  Keeping config overlay"
    fi
  fi
else
  echo "⏭  No config overlay found at $CONFIG_DIR"
fi

echo ""
echo "✅ Uninstall complete."
echo ""
echo "Remaining manual steps (if desired):"
echo "  • Remove the repo:    rm -rf $CLAWD_DIR/clawd-prj/kung-fu"
echo "  • Remove channel routing entries from: $CONFIG_DIR/config/channel-routing.json"
echo "  • Remove any kung-fu cron jobs you've configured"
