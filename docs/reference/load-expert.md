# Reference: load-expert.sh

Full CLI reference for the expert session loader.

---

## Synopsis

```bash
bash ~/clawd/scripts/load-expert.sh <expert-name> [expert-name2 ...]
bash ~/clawd/scripts/load-expert.sh list
bash ~/clawd/scripts/load-expert.sh off
```

The script is a symlink to `clawd-prj/kung-fu/scripts/load-expert.sh` — updates to the repo propagate automatically.

---

## Commands

### Load an expert

```bash
bash ~/clawd/scripts/load-expert.sh management-consultant
```

Reads and injects the following layers in order (most specific wins):

1. `experts/management-consultant/EXPERT.md` — generic domain expertise
2. All `skills/` domain files — deep knowledge library
3. `~/clawd/kung-fu-config/experts/management-consultant/PLAYBOOK.md` — org config (if present)
4. `~/clawd/kung-fu-config/experts/management-consultant/USER.md` — personal config (if present)
5. `⚠️ FIRST-USE NOTICE` — injected if USER.md or PLAYBOOK.md are missing (see below)

`SOUL.md` is never modified.

---

### Load multiple experts (collaborative mode)

```bash
bash ~/clawd/scripts/load-expert.sh longevity-human-optimization-physician software-engineer
```

Both experts are loaded and concatenated with a separator header. Each brings its domain; `SOUL.md` stays the base. Useful for channels where two domains naturally collaborate (e.g. health + engineering).

---

### List available experts

```bash
bash ~/clawd/scripts/load-expert.sh list
```

Lists all experts with their one-line description from `plugin.json`:

```
Available experts:

  data-analyst                               SQL, Python, analytics, A/B testing, causal inference. ...
  executive-assistant                        Scheduling, comms, task management, stakeholder ops. ...
  management-consultant                      Strategy, unit economics, growth diagnostics, ...
  ...
```

---

### Unload

```bash
bash ~/clawd/scripts/load-expert.sh off
```

Outputs a signal string that tells the agent the expert context has been cleared. The agent should acknowledge and stop applying expert framing to subsequent responses.

---

## First-use detection

When an expert is loaded without a `USER.md` or `PLAYBOOK.md` in the config overlay, the script injects a `⚠️ FIRST-USE NOTICE` into its output. This notice:

- Identifies which config files are missing
- **Instructs the agent** to surface the notice to the user and offer to run `/onboard` before doing anything else
- Points to the expert's `commands/onboard.md` playbook

The agent will respond to the first message with something like:
> *"I notice this is your first time loading the management-consultant expert — I don't have your personal context yet. Want to run the 5–10 minute onboarding now? I'll ask you a series of questions and write your personalised config."*

To skip: just say "skip onboarding" or "continue without personalisation."
To run later: `/onboard` or *"Run the management-consultant onboarding"*

---

## Environment variables

| Variable | Default | Purpose |
|----------|---------|---------|
| `KUNG_FU_DIR` | Auto-resolved from script location | Override the path to the kung-fu repo root. Useful if the repo is checked out in a non-standard location. |
| `KUNG_FU_CONFIG_DIR` | `~/clawd/kung-fu-config` | Override the path to the private config overlay (where `USER.md` and `PLAYBOOK.md` live). Useful for teams sharing a config repo. |

Example:
```bash
KUNG_FU_CONFIG_DIR=/path/to/team-config bash ~/clawd/scripts/load-expert.sh lawyer
```

---

## How it resolves paths

The script follows symlinks to find its real location, so it works whether called directly from the repo or via a symlink in `~/clawd/scripts/`. `KUNG_FU_DIR` is computed from the real script location, not the symlink location.

```bash
# Both of these work identically:
bash ~/clawd/clawd-prj/kung-fu/scripts/load-expert.sh list
bash ~/clawd/scripts/load-expert.sh list          # symlink → same result
```

---

## Output format

`load-expert.sh` outputs the injected expert context to **stdout**. All warning and status messages go to **stderr**, so they don't pollute the context string.

This means you can safely capture the output:
```bash
EXPERT_CONTEXT=$(bash ~/clawd/scripts/load-expert.sh research-analyst)
```

---

## Used by

- The agent directly (asked to load an expert)
- `spawn-with-expert.sh` — wraps this to inject the expert context into a spawned sub-agent
- Cron tasks — via the cron job payload, which begins with: *"Read `experts/<name>/EXPERT.md` then proceed with: [task]"*
