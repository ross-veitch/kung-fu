#!/usr/bin/env bash
# load-expert.sh — inject an Expert Plugin into the current session
#
# Loading order (five-layer cascade — most specific wins):
#   1. EXPERT.md          — generic domain expertise (publishable, from kung-fu repo)
#   2. Anthropic plugin   — vendor plugin content (from submodule, lazy manifest only)
#   3. skills/            — expert's own domain knowledge (publishable, from kung-fu repo)
#   4. PLAYBOOK.md        — org-level config: company standards, tools, playbooks
#                           Looked up in: $KUNG_FU_CONFIG_DIR/experts/<name>/PLAYBOOK.md
#                           Falls back to: <expert-dir>/PLAYBOOK.md (legacy/local-only)
#   5. USER.md            — personal config: individual preferences, accounts, goals
#                           Looked up in: $KUNG_FU_CONFIG_DIR/experts/<name>/USER.md
#                           Falls back to: <expert-dir>/USER.md (legacy/local-only)
#
# First-use detection:
#   If USER.md or PLAYBOOK.md are missing, a ⚠️ FIRST-USE NOTICE is injected into
#   the output. This notice instructs the agent to proactively offer onboarding
#   before responding to any other request. The onboarding playbook is at
#   experts/<name>/commands/onboard.md — run it with /onboard or by asking the agent.
#
# Config overlay:
#   Set KUNG_FU_CONFIG_DIR to a directory containing org/personal config files.
#   Default: ~/clawd/kung-fu-config
#   This keeps PLAYBOOK.md and USER.md out of the shared kung-fu repo.
#
# Usage: ./load-expert.sh <expert-name> [expert-name2 ...]   (multi-expert: outputs are concatenated)
#        ./load-expert.sh list                               (show available experts)
#        ./load-expert.sh off                                (signal unload)

# Resolve the real script location — follow symlinks so this works whether the script
# is run directly from the repo or via a symlink in ~/clawd/scripts/.
_SCRIPT_SOURCE="$0"
while [ -L "$_SCRIPT_SOURCE" ]; do
  _SCRIPT_DIR="$(cd -P "$(dirname "$_SCRIPT_SOURCE")" && pwd)"
  _SCRIPT_SOURCE="$(readlink "$_SCRIPT_SOURCE")"
  # Handle relative symlink targets
  [[ "$_SCRIPT_SOURCE" != /* ]] && _SCRIPT_SOURCE="$_SCRIPT_DIR/$_SCRIPT_SOURCE"
done
_REAL_SCRIPT_DIR="$(cd -P "$(dirname "$_SCRIPT_SOURCE")" && pwd)"

# KUNG_FU_DIR can be overridden via environment variable if needed.
KUNG_FU_DIR="${KUNG_FU_DIR:-$(cd "$_REAL_SCRIPT_DIR/.." && pwd)}"
VENDOR_DIR="$KUNG_FU_DIR/vendor/knowledge-work-plugins"

# Config overlay directory — where PLAYBOOK.md and USER.md live (outside the shared repo)
KUNG_FU_CONFIG_DIR="${KUNG_FU_CONFIG_DIR:-$HOME/clawd/kung-fu-config}"

# Handle meta-commands
if [ -z "$1" ] || [ "$1" = "list" ]; then
  echo "Available experts:"
  echo ""
  for EDIR in "$KUNG_FU_DIR/experts"/*/; do
    ENAME="$(basename "$EDIR")"
    PJSON="$EDIR/.plugin/plugin.json"
    if [ -f "$PJSON" ]; then
      # Extract description from plugin.json using python3
      DESC=$(python3 -c "import json,sys; d=json.load(open('$PJSON')); print(d.get('description',''))" 2>/dev/null)
    else
      DESC=""
    fi
    if [ -n "$DESC" ]; then
      printf "  %-42s %s\n" "$ENAME" "$DESC"
    else
      printf "  %s\n" "$ENAME"
    fi
  done
  exit 0
fi

if [ "$1" = "off" ]; then
  echo "Expert Plugin unloaded. Reverting to base SOUL.md context only."
  exit 0
fi

# Support multiple expert names: load-expert.sh <name1> [name2] ...
# Each expert is loaded in sequence; outputs are concatenated with a separator.
EXPERT_NAMES=("$@")

# Validate all names first
for EXPERT_NAME in "${EXPERT_NAMES[@]}"; do
  if [ ! -d "$KUNG_FU_DIR/experts/$EXPERT_NAME" ]; then
    echo "Expert not found: $EXPERT_NAME"
    echo ""
    echo "Available experts:"
    ls "$KUNG_FU_DIR/experts/"
    exit 1
  fi
done

# Load and concatenate
COMBINED_CONTENT=""
for EXPERT_NAME in "${EXPERT_NAMES[@]}"; do

EXPERT_DIR="$KUNG_FU_DIR/experts/$EXPERT_NAME"

# ── 1. Core EXPERT.md ─────────────────────────────────────────────────────────
CONTENT="$(cat "$EXPERT_DIR/EXPERT.md")"

# ── 2. Plugin manifest (lazy loading) ────────────────────────────────────────
# Plugins are NOT eagerly loaded. Instead, a lightweight manifest is injected
# describing what is available and when to use each plugin.
# To load a plugin's full content on demand:
#   bash ~/clawd/scripts/load-plugin.sh <plugin-path>
# Supports both string entries and object entries with "path", "when", "commands".
PLUGIN_JSON="$EXPERT_DIR/.plugin/plugin.json"
if [ -f "$PLUGIN_JSON" ]; then
  MANIFEST=$(python3 -c "
import json, os, sys

kung_fu_dir = os.path.dirname(os.path.dirname('$PLUGIN_JSON'))
vendor_dir = os.path.join(kung_fu_dir, 'vendor')

try:
    data = json.load(open('$PLUGIN_JSON'))
    plugins = data.get('plugins', [])
    if not plugins:
        sys.exit(0)

    lines = []
    lines.append('')
    lines.append('---')
    lines.append('## Available Plugins (lazy-loaded)')
    lines.append('')
    lines.append('The following plugins are available. Load a plugin when the task calls for it:')
    lines.append('  bash ~/clawd/scripts/load-plugin.sh <plugin-path>')
    lines.append('')

    for p in plugins:
        if isinstance(p, str):
            path = p
            when = None
            commands = []
        else:
            path = p.get('path', '')
            when = p.get('when', '')
            commands = p.get('commands', [])

        name = os.path.basename(path)
        plugin_dir = os.path.join(vendor_dir, path)

        # Auto-extract description from plugin manifest if no 'when' provided
        if not when:
            for manifest_path in [
                os.path.join(plugin_dir, '.claude-plugin', 'plugin.json'),
                os.path.join(plugin_dir, '.plugin', 'plugin.json'),
            ]:
                if os.path.exists(manifest_path):
                    try:
                        m = json.load(open(manifest_path))
                        when = m.get('description', '')
                    except:
                        pass
                    break

        cmd_str = ' '.join(commands) if commands else ''
        line = f'- **{name}** ({path})'
        if when:
            line += f': {when}'
        if cmd_str:
            line += f'. Commands: {cmd_str}'
        lines.append(line)

    print('\n'.join(lines))
except Exception as e:
    pass
" 2>/dev/null)
  [ -n "$MANIFEST" ] && CONTENT="$CONTENT$MANIFEST"
fi

# ── 3. Expert's own skills/ ───────────────────────────────────────────────────
if [ -d "$EXPERT_DIR/skills" ]; then
  for DOMAIN_DIR in "$EXPERT_DIR/skills"/*/; do
    SKILL_FILE="$DOMAIN_DIR/SKILL.md"
    [ -f "$SKILL_FILE" ] && CONTENT="$CONTENT

$(cat "$SKILL_FILE")"
  done
fi

# ── 4. PLAYBOOK.md (org-level config — stored in config overlay, not in repo) ──
# Check config overlay first, fall back to expert dir (backwards compat)
PLAYBOOK_MD=""
if [ -f "$KUNG_FU_CONFIG_DIR/experts/$EXPERT_NAME/PLAYBOOK.md" ]; then
  PLAYBOOK_MD="$KUNG_FU_CONFIG_DIR/experts/$EXPERT_NAME/PLAYBOOK.md"
elif [ -f "$EXPERT_DIR/PLAYBOOK.md" ]; then
  PLAYBOOK_MD="$EXPERT_DIR/PLAYBOOK.md"
fi

if [ -n "$PLAYBOOK_MD" ]; then
  CONTENT="$CONTENT

---
## Organisation Playbook

$(cat "$PLAYBOOK_MD")"
fi

# ── 5. USER.md (personal config — stored in config overlay, not in repo) ──────
# Check config overlay first, fall back to expert dir (backwards compat)
USER_MD=""
if [ -f "$KUNG_FU_CONFIG_DIR/experts/$EXPERT_NAME/USER.md" ]; then
  USER_MD="$KUNG_FU_CONFIG_DIR/experts/$EXPERT_NAME/USER.md"
elif [ -f "$EXPERT_DIR/USER.md" ]; then
  USER_MD="$EXPERT_DIR/USER.md"
fi

if [ -n "$USER_MD" ]; then
  CONTENT="$CONTENT

---
## Personal Configuration

$(cat "$USER_MD")"
fi

# ── 6. First-use prompt — inject onboarding call-to-action if config is missing ──
# This surfaces prominently in the agent's context so it proactively offers onboarding.
MISSING_FILES=()
[ -z "$USER_MD" ] && MISSING_FILES+=("USER.md (personal config)")
[ -z "$PLAYBOOK_MD" ] && MISSING_FILES+=("PLAYBOOK.md (organisation config)")

if [ ${#MISSING_FILES[@]} -gt 0 ]; then
  MISSING_LIST=$(printf '%s, ' "${MISSING_FILES[@]}")
  MISSING_LIST="${MISSING_LIST%, }"  # strip trailing comma+space
  CONTENT="$CONTENT

---
## ⚠️ FIRST-USE NOTICE — ACTION REQUIRED

**This is the first time loading the $EXPERT_NAME expert in this environment.**

Missing personalisation files: $MISSING_LIST

Without these files the expert operates in generic mode — it doesn't know your specific context, tools, company, or goals. Personalisation is what makes the expert perform at the level of a world-class practitioner *working with you specifically*.

**Agent instruction:** Before responding to any other request, surface this notice to the user and offer to run onboarding now. Say something like:

> *\"I notice this is your first time loading the $(echo "$EXPERT_NAME" | tr '-' ' ') expert — I don't have your personal context yet. Want to run the 5–10 minute onboarding now? I'll ask you a series of questions and write your personalised config. You only do this once. (/onboard to start, or skip and continue in generic mode)\"*

The onboarding playbook is at: $EXPERT_DIR/commands/onboard.md"
fi

# ── Accumulate into combined output ──────────────────────────────────────────
if [ -n "$COMBINED_CONTENT" ]; then
  COMBINED_CONTENT="$COMBINED_CONTENT

═══════════════════════════════════════════════════════
## Collaborating Expert: $EXPERT_NAME
═══════════════════════════════════════════════════════

$CONTENT"
else
  COMBINED_CONTENT="$CONTENT"
fi

done  # end: for EXPERT_NAME in "${EXPERT_NAMES[@]}"

# ── Output ───────────────────────────────────────────────────────────────────
LOADED_LIST=$(IFS=', '; echo "${EXPERT_NAMES[*]}")
echo "" >&2
echo "Expert Plugin(s) loaded: $LOADED_LIST" >&2
echo "─────────────────────────────────────────" >&2
echo "$COMBINED_CONTENT"
