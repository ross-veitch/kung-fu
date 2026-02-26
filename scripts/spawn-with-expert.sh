#!/usr/bin/env bash
# spawn-with-expert.sh — spawn a sub-agent with an expert plugin pre-loaded
# Usage: ./spawn-with-expert.sh <expert-name> "<task>"

EXPERT_NAME="$1"
TASK="$2"
KUNG_FU_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SOUL_MD="$HOME/clawd/SOUL.md"
EXPERT_DIR="$KUNG_FU_DIR/experts/$EXPERT_NAME"

if [ -z "$EXPERT_NAME" ] || [ -z "$TASK" ]; then
  echo "Usage: spawn-with-expert.sh <expert-name> \"<task>\""
  exit 1
fi

EXPERT_MD="$EXPERT_DIR/EXPERT.md"
USER_MD="$EXPERT_DIR/USER.md"

SOUL="$(cat "$SOUL_MD" 2>/dev/null || echo '')"
EXPERT="$(cat "$EXPERT_MD")"
USER_CONTEXT="$(cat "$USER_MD" 2>/dev/null || echo '')"

FULL_TASK="$SOUL
---
$EXPERT"

if [ -n "$USER_CONTEXT" ]; then
  FULL_TASK="$FULL_TASK
---
$USER_CONTEXT"
fi

FULL_TASK="$FULL_TASK
---
$TASK"

echo "$FULL_TASK"
