# Channel Routing

How to automatically load an expert based on which Slack channel a message comes from — without typing `/expert` every time.

---

## The idea

Some conversations live in a specific context. Your `#health` channel is always about fitness and longevity. Your `#strategy` channel is always a management consulting context. Rather than manually loading an expert at the start of every session, **channel routing** binds a Slack channel to one or more experts — the agent loads them automatically on every inbound message from that channel.

> Same conversation. Same thread. No setup required. The expert just shows up.

---

## How it works

On every inbound Slack message, the agent checks the channel ID against `config/channel-routing.json`. If a match is found, it runs `load-expert.sh` with the mapped expert name(s) before generating a response.

```
Inbound message from #clawd-prj-strategy
    ↓
Check channel-routing.json: "C0AG0E1K2U8" → "management-consultant"
    ↓
Run: load-expert.sh management-consultant
    ↓
Agent responds with management-consultant expertise loaded
```

This happens silently on every message — no confirmation, no announcement. The expert is just active.

---

## Configuration

Edit `config/channel-routing.json`:

```json
{
  "CHANNEL_ID": "expert-name",
  "CHANNEL_ID": ["expert-a", "expert-b"]
}
```

**Single expert:**
```json
{
  "C0AG0E1K2U8": "management-consultant"
}
```

**Multi-expert collaboration** — both experts are loaded and collaborate in the session:
```json
{
  "C0AEZP8TGV9": ["longevity-human-optimization-physician", "software-engineer"]
}
```

### Finding a Slack channel ID

Channel IDs appear in the Slack URL when you open a channel in the browser:
`https://app.slack.com/client/WORKSPACE/C0AG0E1K2U8`
                                              ↑ this is the channel ID

Or right-click a channel name → **Copy link** → the ID is at the end.

---

## Current channel → expert mappings

| Channel | Expert(s) |
|---------|-----------|
| `#clawd-prj-training` | `fitness-performance-coach` |
| `#clawd-prj-health` | `longevity-human-optimization-physician` + `software-engineer` |
| `#clawd-ops-meeting-prep` | `executive-assistant` |
| `#clawd-prj-crm` | `executive-assistant` |
| `#clawd-prj-kung-fu` | `executive-assistant` |
| `#clawd-prj-strategy` | `management-consultant` |

---

## The `/expert` command (session-level override)

Channel routing loads experts automatically and silently. If you want to override or load an expert in a channel that doesn't have one bound:

```
/expert executive-coach          # load for this session
/expert management-consultant    # switch experts mid-session
/expert list                     # see all available experts
/expert off                      # unload; back to base SOUL.md
```

Session-level `/expert` loads persist for the thread. A new thread starts fresh (no expert unless channel-routing applies).

---

## Multi-expert channels

When a channel maps to an array of experts, `load-expert.sh` runs them in sequence and concatenates their context with a separator header. Each expert brings its domain; `SOUL.md` is always the base.

This is useful for channels where two domains naturally collaborate — e.g., a health + software channel where you need both clinical knowledge and technical implementation ability in the same conversation.

---

## Transparency badge

The first response in each session includes a transparency footer showing which expert is active and how it was loaded:

```
─────
🎯 expert: management-consultant | channel-bound: #clawd-prj-strategy
📋 commands: /strategy · /frame · /deck
🔧 skill: none
```

This only appears once per session thread, not on every message.

---

## PLAYBOOK review on first invocation

Experts with a `PLAYBOOK.md` (org-specific configuration) trigger a one-time review on first use:

1. The full `PLAYBOOK.md` is shown in Slack
2. You're asked to approve or edit it
3. Once approved, the expert proceeds — and won't show the review again
4. Review status is tracked in `data/playbook-reviewed.json`

This ensures the org-level defaults are explicitly approved before the expert acts on them.
