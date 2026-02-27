# Getting Started

From zero to your first working expert in 15 minutes.

---

## Prerequisites

- [OpenClaw](https://github.com/openclaw/openclaw) installed and running
- `~/clawd/SOUL.md` — your agent's permanent identity file (OpenClaw sets this up)
- `~/clawd/AGENTS.md` — configured to read `SOUL.md` at startup
- A Slack workspace (or other supported messaging channel)

---

## Step 1 — Clone the repo

```bash
cd ~/clawd
git clone --recurse-submodules https://github.com/rossveitch/kung-fu clawd-prj/kung-fu
```

The `--recurse-submodules` flag pulls the Anthropic vendor plugins alongside the repo.

---

## Step 2 — Install the scripts

```bash
bash clawd-prj/kung-fu/install.sh
```

These need to be in `~/clawd/scripts/` so the agent can call them from any session.

---

## Step 3 — Load your first expert

Pick an expert from the [index](../experts/index.md) that's immediately useful to you. For most people, `executive-assistant` or `research-analyst` is a good first choice.

**Option A — Ask your agent:**
> *"Load the executive assistant expert"*

**Option B — Run the script:**
```bash
bash ~/clawd/scripts/load-expert.sh executive-assistant
```

The expert is now active in your current session. The first response will show the transparency badge confirming what's loaded.

---

## Step 4 — Onboarding (automatic on first load)

The first time you load an expert, the script detects that no `USER.md` or `PLAYBOOK.md` exists and injects a **first-use notice** into its output. Your agent will see this and proactively offer to run onboarding before doing anything else:

> *"I notice this is your first time loading the Executive Assistant expert — I don't have your personal context yet. Want to run the 5–10 minute onboarding now? I'll ask you a series of questions and write your personalised config. You only do this once."*

Say yes, and the agent will walk through the onboarding questions one at a time, then write two files to your private config overlay:
- `~/clawd/kung-fu-config/experts/[name]/USER.md` — your personal configuration
- `~/clawd/kung-fu-config/experts/[name]/PLAYBOOK.md` — your organisation's configuration

**You can also trigger onboarding manually at any time:**
> *"/onboard"* or *"Run the executive assistant onboarding"*

After onboarding, both files are loaded automatically on every subsequent session — no re-onboarding needed unless your context changes significantly.

---

## Step 5 — What onboarding produces

The agent asks ~10–15 questions across two parts:

**Part 1 — Personal config (USER.md):** Your specific tools, accounts, timezone, goals, and context. Resolves all `~~placeholder` values in the expert so advice is tailored to *you*.

**Part 2 — Organisation config (PLAYBOOK.md):** Company name, stage, tools, standards, and constraints. Ensures the expert applies your org's defaults automatically.

Both files are stored in `~/clawd/kung-fu-config/` — your private overlay directory. They are never committed to the shared kung-fu repo.

---

## Step 6 — Set up Slack channel routing (optional)

To have an expert load automatically whenever a message comes from a specific Slack channel:

```bash
# Copy the example config
# install.sh already copied the example — just edit with your channel IDs
nano ~/clawd/kung-fu-config/config/channel-routing.json
```

Format:
```json
{
  "C0ABC123456": "management-consultant",
  "C0DEF789012": ["longevity-human-optimization-physician", "software-engineer"]
}
```

Find a channel ID in Slack: right-click the channel name → Copy link → the ID is at the end of the URL.

See [Channel Routing](channel-routing.md) for full details and current mappings.

---

## Step 7 — Enable the learning loop (optional)

For experts with a `<!-- SOURCES -->` block (check with `grep -l "SOURCES" clawd-prj/kung-fu/experts/*/EXPERT.md`), set up weekly learning:

```bash
# Test a dry run first
node ~/clawd/scripts/staying-current.mjs management-consultant --dry-run

# Set up a weekly cron via your agent
# "Create a weekly cron for staying-current.mjs management-consultant, Mondays 7am"
```

See [Staying Current](staying-current.md) for a full guide.

---

## You're done

**Quick reference for daily use:**

```
/expert [name]           Load an expert for this session
/expert list             See all available experts
/expert off              Unload — back to base SOUL.md

/clarity-session         (executive-coach) Work through a leadership challenge
/decision-unpacker       (executive-coach) Slow down on a big decision
/strategy                (management-consultant) Run a strategy analysis
/plan-trip               (travel-concierge) Plan a trip end-to-end
/deep-research           (research-analyst) Run a deep research task
```

**To create a new expert:**
> *"Create a new expert: [name]"*

See [Creating Experts](creating-experts.md) for what to expect.

---

## Troubleshooting

**Expert loaded but agent doesn't seem different**
Earlier conversation history is already in the window. Start a new thread for the cleanest effect.

**PLAYBOOK.md not loading**
Check that `KUNG_FU_CONFIG_DIR` is set to `~/clawd/kung-fu-config` and the file exists at `~/clawd/kung-fu-config/experts/[name]/PLAYBOOK.md`.

**`load-expert.sh: expert not found`**
Run `bash ~/clawd/scripts/load-expert.sh list` to see available experts. The expert directory must exist at `clawd-prj/kung-fu/experts/[name]/EXPERT.md`.

**Channel routing not working**
Verify the channel ID in `channel-routing.json` matches the actual Slack channel ID (not the channel name — the alphanumeric ID starting with `C`).
