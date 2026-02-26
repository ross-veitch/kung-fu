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
cp clawd-prj/kung-fu/scripts/load-expert.sh ~/clawd/scripts/
cp clawd-prj/kung-fu/scripts/spawn-with-expert.sh ~/clawd/scripts/
chmod +x ~/clawd/scripts/load-expert.sh ~/clawd/scripts/spawn-with-expert.sh
```

These need to be in `~/clawd/scripts/` so the agent can call them from any session.

---

## Step 3 — Set up the config overlay

The config overlay is where your personal and org-specific config lives — separate from the shared repo.

```bash
mkdir -p ~/clawd/kung-fu-config/config
mkdir -p ~/clawd/kung-fu-config/data
mkdir -p ~/clawd/kung-fu-config/experts
```

`load-expert.sh` looks here automatically (via `KUNG_FU_CONFIG_DIR`, which defaults to `~/clawd/kung-fu-config`).

---

## Step 4 — Load your first expert

Pick an expert from the [index](../roles/index.md) that's immediately useful to you. For most people, `executive-assistant` or `research-analyst` is a good first choice.

**Option A — Ask your agent:**
> *"Load the executive assistant expert"*

**Option B — Run the script:**
```bash
bash ~/clawd/scripts/load-expert.sh executive-assistant
```

The expert is now active in your current session. The first response will show the transparency badge confirming what's loaded.

---

## Step 5 — Run onboarding (first time only)

The first time you use an expert, run the onboarding to create your personal `USER.md`:

> *"Run the executive assistant onboarding"*

The agent will ask you ~10 questions about your setup: calendar tool, timezone, communication preferences, key people, current priorities. It takes about 10 minutes and writes `~/clawd/kung-fu-config/experts/executive-assistant/USER.md`.

After that, your `USER.md` is loaded automatically on every session — no re-onboarding.

---

## Step 6 — Write a PLAYBOOK.md (optional but recommended)

The `PLAYBOOK.md` adds your organisation's context to the expert: company name, tools, standards, and defaults.

```bash
cp clawd-prj/kung-fu/experts/executive-assistant/EXPERT.md /tmp/  # read to understand placeholders
nano ~/clawd/kung-fu-config/experts/executive-assistant/PLAYBOOK.md
```

See [Authoring a PLAYBOOK.md](authoring-playbook.md) for a full template and guide.

---

## Step 7 — Set up Slack channel routing (optional)

To have an expert load automatically whenever a message comes from a specific Slack channel:

```bash
# Copy the example config
cp clawd-prj/kung-fu/config/channel-routing.example.json ~/clawd/kung-fu-config/config/channel-routing.json

# Edit with your channel IDs
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

## Step 8 — Enable the learning loop (optional)

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
