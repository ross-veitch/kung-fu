# Reference: load-expert.sh

CLI reference for the expert session loader.

---

## Synopsis

```bash
bash ~/clawd/scripts/load-expert.sh <expert-name> [expert-name2 ...]
bash ~/clawd/scripts/load-expert.sh list
bash ~/clawd/scripts/load-expert.sh off
```

---

## Commands

### Load an expert

```bash
bash ~/clawd/scripts/load-expert.sh management-consultant
```

Reads and injects (in order):
1. `clawd-prj/kung-fu/experts/management-consultant/EXPERT.md`
2. All `skills/` domain files
3. `~/clawd/kung-fu-config/experts/management-consultant/PLAYBOOK.md` (if present)
4. `~/clawd/kung-fu-config/experts/management-consultant/USER.md` (if present)

`SOUL.md` is never modified.

---

### Load multiple experts (collaborative mode)

```bash
bash ~/clawd/scripts/load-expert.sh longevity-human-optimization-physician software-engineer
```

Both experts are loaded and concatenated with a separator header. Each brings its domain; `SOUL.md` stays the base. Useful for channels where two domains naturally collaborate.

---

### List available experts

```bash
bash ~/clawd/scripts/load-expert.sh list
```

Lists all expert directories in `clawd-prj/kung-fu/experts/`.

---

### Unload (signal to drop expert context)

```bash
bash ~/clawd/scripts/load-expert.sh off
```

Signals that expert context should be dropped. The clean way to unload is to start a new session thread — context in an active window can't truly be removed.

---

## Agent commands

You don't need to run the script manually. Use the `/expert` command:

```
/expert management-consultant        # load for this session
/expert management-consultant futurist   # load two collaborating experts
/expert list                         # see all available experts
/expert off                          # unload; back to base SOUL.md
```

---

## Environment variables

| Variable | Default | Description |
|----------|---------|-------------|
| `KUNG_FU_DIR` | directory containing `load-expert.sh`'s parent | Path to kung-fu repo root |
| `KUNG_FU_CONFIG_DIR` | `~/clawd/kung-fu-config` | Path to private config overlay (PLAYBOOK.md, USER.md) |

Override `KUNG_FU_CONFIG_DIR` to point at a different config directory:

```bash
KUNG_FU_CONFIG_DIR=/path/to/my-config bash ~/clawd/scripts/load-expert.sh executive-assistant
```

---

## What the script outputs

The script outputs the full injected context to stdout and prints status messages to stderr:

```
Expert Plugin(s) loaded: management-consultant
─────────────────────────────────────────
```

The stdout content is what gets injected into the session. Redirect to a file to preview:

```bash
bash ~/clawd/scripts/load-expert.sh management-consultant > /tmp/expert-preview.md
```

---

## Notes

- **`SOUL.md` is never modified.** Injection is additive.
- **Session-scoped.** Loaded expert context affects only the current thread. New thread = clean context (unless channel routing auto-loads).
- **Config overlay fallback.** If `PLAYBOOK.md` / `USER.md` are not found in `KUNG_FU_CONFIG_DIR`, the script falls back to the expert directory (backwards compatible with setups that store config alongside EXPERT.md).
- **Lazy plugin loading.** The script injects a lightweight manifest of available plugins. Full plugin content is loaded on demand via `load-plugin.sh`.
