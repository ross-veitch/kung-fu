# Reference: load-expert.sh

Full CLI reference for the session role loader.

---

## Synopsis

```bash
load-expert.sh [OPTIONS] [ROLE_NAME]
```

---

## Commands

### Load a role

```bash
load-expert.sh <role-name>
```

Reads `~/clawd/experts/<role-name>/EXPERT.md` and injects it into the active main session as a system event. `SOUL.md` is not modified.

**Example:**
```bash
load-expert.sh health-coach
# → Role loaded: health-coach
# → SOUL.md unchanged
```

---

### Unload (back to bare soul)

```bash
load-expert.sh --unload
```

Sends a system event to drop the role context from the active session. `SOUL.md` is unchanged (it was never changed).

---

### List available roles

```bash
load-expert.sh --list
```

Lists all role directories in `~/clawd/experts/`.

**Example output:**
```
Available roles:
    creative-writer
    data-engineer
    executive-assistant
    finance-analyst
    health-coach
    research-analyst
    travel-planner
```

---

### Preview a role

```bash
load-expert.sh --preview <role-name>
```

Prints the `EXPERT.md` to stdout without loading. Useful for reviewing before injecting.

---

### Show active role

```bash
load-expert.sh --current
```

Prints the name of the currently loaded role (if any). Tracked via a lightweight state file — not by inspecting session context.

---

## Options

| Option | Description |
|--------|-------------|
| `--list` | List all available roles |
| `--preview <name>` | Print EXPERT.md without loading |
| `--unload` | Unload current role |
| `--current` | Show active role name |
| `--no-notify` | Inject file only; don't send session notification |
| `--roles-dir <path>` | Override roles directory (default: `~/clawd/experts/`) |
| `--soul-file <path>` | Soul file to verify is intact (default: `~/clawd/SOUL.md`) |
| `--help` | Print usage |

---

## Exit codes

| Code | Meaning |
|------|---------|
| 0 | Success |
| 1 | Role not found |
| 2 | Roles directory not found |
| 3 | EXPERT.md not readable |
| 4 | Session notification failed (injection still queued) |

---

## Environment variables

| Variable | Default | Description |
|----------|---------|-------------|
| `CLAWD_DIR` | `~/clawd` | Workspace root |
| `CLAWD_ROLES_DIR` | `$CLAWD_DIR/roles` | Roles library location |
| `CLAWD_SOUL_FILE` | `$CLAWD_DIR/SOUL.md` | Soul file (verified intact, never modified) |

---

## Notes

- `SOUL.md` is never modified by this script — role injection is additive, not replacement
- Session injection is a system event — if the main session is in an isolated context, the notification may not be received immediately; start a new thread for the cleanest effect
- State file for `--current` is stored at `~/.clawd-role-state` — delete to reset
