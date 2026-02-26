# Loading Experts

How to inject an expert plugin into your current session — or into a sub-agent or cron job.

---

## The key concept

Loading an expert does **not** modify `SOUL.md`. It injects the expert's domain knowledge *alongside* your existing soul context. When you unload, the expert context drops but your identity is untouched.

---

## Basic usage

```bash
# Load an expert for the current session
bash ~/clawd/scripts/load-expert.sh fitness-performance-coach

# List available experts
bash ~/clawd/scripts/load-expert.sh list

# Load multiple experts (they collaborate in-session)
bash ~/clawd/scripts/load-expert.sh management-consultant futurist

# Unload (signal to drop expert context)
bash ~/clawd/scripts/load-expert.sh off
```

---

## Asking the agent to load an expert

You don't need to run the script manually. Just use the `/expert` command:

```
/expert executive-coach           # load for this session
/expert management-consultant     # switch experts mid-session  
/expert management-consultant futurist   # load two collaborating experts
/expert list                      # see all available experts
/expert off                       # unload; back to base SOUL.md
```

Or just ask naturally:

> *"Load the executive coach expert"*
> *"Switch to management consultant mode"*
> *"I need you as a futurist for this"*
> *"Unload the expert, back to normal"*

---

## What happens when an expert is loaded

The expert's `EXPERT.md` content (plus `skills/`, `PLAYBOOK.md`, `USER.md` if they exist) is injected into the current session context:

```
[your SOUL.md — already loaded at session start]
+
[EXPERT.md: domain expertise, cognitive approach, tools, staying current]
+
[skills/: deep knowledge library — auto-loaded with the expert]
+
[PLAYBOOK.md: org-level configuration — if present]
+
[USER.md: personal configuration — if present, generated during onboarding]
```

The agent now has both. `SOUL.md` is unchanged on disk and in context — the expert was added, not substituted.

---

## Scope of a loaded expert

A loaded expert affects **only the current session thread**. Sub-agents and cron jobs running concurrently are not affected — they run in isolated contexts.

For a clean start with a newly loaded expert (no prior conversation history in the window), start a new thread after loading.

---

## Automatic loading via channel routing

Experts can be bound to Slack channels and loaded automatically on every message — no `/expert` command needed.

See [Channel Routing](channel-routing.md) for setup and current mappings.

---

## Expert for a single sub-agent task

For a bounded task where you don't want to change the main session at all:

> *"Spawn an executive coach sub-agent to debrief my meeting with [name]"*

The main session stays clean. The sub-agent gets both `SOUL.md` and the expert injected, handles the task, and returns the result.

See [Sub-agent integration](sub-agents.md).

---

## Transparency badge

The first response in a session with an expert loaded includes a transparency footer:

```
─────
🎯 expert: executive-coach | channel-bound: none
📋 commands: /clarity-session · /difficult-conversation · /decision-unpacker
🔧 skill: none
```

This appears once per session thread — not on every message.

---

## Switching experts mid-session

Loading a new expert via `/expert [name]` unloads any previously active expert before loading the new one. You can't stack experts accidentally — to run multiple experts simultaneously, load them together in a single command:

```
/expert management-consultant futurist    # ✅ both active, collaborating
/expert management-consultant             # then later: /expert futurist  ← ❌ replaces, doesn't stack
```

---

## Troubleshooting

**The agent doesn't seem to be behaving differently after loading.**
Role injection works from the point of loading forward. Earlier conversation history is already in the window. Start a new thread for the cleanest effect, or ask the agent: *"Confirm what expert you have loaded and what domain knowledge is now active."*

**`Expert not found: [name]`**
Run `bash ~/clawd/scripts/load-expert.sh list` to see available experts. The expert directory must exist at `~/clawd/clawd-prj/kung-fu/experts/[name]/EXPERT.md`.

**Expert context seems to be bleeding into subsequent sessions.**
Expert injection is session-scoped. A new thread starts clean with only `SOUL.md`. If an expert is persisting unexpectedly, check whether `AGENTS.md` has been modified to load additional files at startup, or whether channel routing is active for that channel.
