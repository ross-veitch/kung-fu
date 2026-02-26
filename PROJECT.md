# Project Kung Fu — Expert Plugin System
**Status:** 🟢 Active / Ongoing
**Channel:** #clawd-prj-kung-fu (C0AGC1WLX7Y)
**Started:** 2026-02-22
**Last Updated:** 2026-02-26 (22:30 SGT)
**Repo:** https://github.com/rossveitch/kung-fu
**Config overlay:** `~/clawd/kung-fu-config/` (private, stays in clawd repo)

## Goal
Build a modular expert plugin system that layers domain expertise on top of SOUL.md (base identity), enabling Ross to invoke specialist personas for different contexts — strategy sessions, health, training, legal, data analysis, etc.

## Architecture (Three-Layer Cascade)
```
SOUL.md                     ← permanent base identity, never touched
+ EXPERT.md                 ← domain expertise (publishable, generic)
+ PLAYBOOK.md               ← org-level config (local only, Wego-specific)
+ USER.md                   ← personal config (local only, Ross-specific)
[on demand]
+ Plugin full content       ← load-plugin.sh <path> when task requires it
```

## Expert Inventory (14 total as of 2026-02-26)
| Expert | Channel Binding | Status |
|--------|----------------|--------|
| data-analyst | — | ✅ |
| executive-assistant | #clawd-ops-meeting-prep, #clawd-prj-crm, #clawd-prj-kung-fu | ✅ |
| executive-coach | — (new Feb 26) | ✅ Includes /meeting-debrief (Granola → Slack DM) |
| financial-analyst | — | ✅ |
| fitness-performance-coach | #clawd-prj-training (C0AGAUJL9L2) | ✅ Full-standard commands |
| futurist | — | ✅ |
| lawyer | — | ✅ |
| longevity-human-optimization-physician | #clawd-prj-health (multi) | ✅ |
| management-consultant | #clawd-prj-strategy (C0AG0E1K2U8) | ✅ |
| mandarin-chinese-language-teacher | — | ✅ |
| news-editor | cron injection (MENA, daily digest) | ✅ |
| research-analyst | — | ✅ |
| software-engineer | #clawd-prj-health (multi) | ✅ |
| travel-concierge | — | ✅ |

## Key Infrastructure
- **load-expert.sh:** `bash ~/clawd/scripts/load-expert.sh <name> [name2...]` — loads manifest (lightweight, 93% context reduction)
- **load-plugin.sh:** `bash ~/clawd/scripts/load-plugin.sh <plugin-path>` — on-demand full plugin content
- **channel-routing.json:** `~/clawd/kung-fu-config/config/channel-routing.json` — auto-bind experts to Slack channels (config overlay)
- **Invocation methods:** channel-bound (auto), `/expert <name>`, cron injection, sub-agents

## Vendor Submodules
- `vendor/knowledge-work-plugins/` (Anthropic Cowork plugins)
- `vendor/claude-plugins-official/` (Claude Code official plugins)

## Key Decisions
- **Naming:** Expert Plugins (not Role Packs); EXPERT.md (not ROLE.md); /experts/ (not /roles/)
- **Lazy loading:** Manifest only by default; full content on demand via load-plugin.sh
- **Virtual employees:** EXPERT.md + PLAYBOOK.md only (no USER.md)
- **Command standard:** Multi-phase workflows, GREEN/YELLOW/RED classification, escalation triggers, output templates

## Standing Instructions
- **Always update docs after significant changes.** Any time an expert is added/modified, a command is added, infrastructure changes, or channel bindings change: update `docs/roles/index.md`, `README.md` expert table, and any relevant howto docs. No exceptions.

## Feb 26 Changes
1. **executive-coach** expert created — leadership coaching, decision-making, high-stakes conversations, post-meeting debrief
2. **Meeting debrief system** built — `~/clawd/scripts/meeting-debrief.mjs` reads Granola transcripts + notes, analyzes via Claude, posts private debrief to Ross's DM. Cron: `meeting-debrief-daily` at 6pm SGT. Uses `microphone`/`system` audio source attribution (microphone=Ross, system=others).
3. **Docs updated (afternoon)** — `docs/roles/index.md` (all 14 experts), `README.md` (table + docs index), new `docs/howto/channel-routing.md`, `docs/howto/improving-experts.md`, `docs/howto/authoring-playbook.md`, `docs/howto/getting-started.md`, `docs/reference/design-decisions.md` (full rewrite), fixed `docs/howto/loading.md` stale flags, fixed `CONTRIBUTING.md` broken path
4. **Docs updated (evening)** — fixed remaining stale content across 4 files:
   - `docs/architecture.md` — injection stack (added PLAYBOOK/USER layers), file structure, "How loading works", terminology (Role→Expert Plugin)
   - `docs/howto/cron-jobs.md` — stale `~/clawd/experts/` paths (×2) → correct `clawd-prj/kung-fu` paths
   - `docs/howto/sub-agents.md` — stale path + injection stack now shows 5 layers (SOUL/EXPERT/PLAYBOOK/USER/task)
   - `docs/howto/custom-roles.md` — "Role pack"→"Expert Plugin" (×3), `--unload`→`off`, grammar fixes
   - `docs/howto/skills-alignment.md` — stale paths (×3), "Role packs"→"Expert Plugins" (×2)
5. **executive-coach skills** — renamed `README.md` → `SKILL.md` in all 3 skill subdirs (load-expert.sh only auto-loads SKILL.md)

## Feb 24 Changes
1. **management-consultant** expert created + channel-bound to #clawd-prj-strategy (C0AG0E1K2U8)
2. **futurist** expert created (from ZIP spec) — "Exponential technology • Systems thinking • Strategic foresight" — no channel binding yet
3. **Staying Current System** built — `staying-current.mjs` + 5 fetcher scripts; `<!-- SOURCES -->` blocks in 5 EXPERT.md files; 5 weekly crons (Mon–Tue, 7–9am SGT); first live run (news-editor) = ~$0.08, quality excellent
4. **EXPERT.md SOURCES blocks added** to: news-editor, futurist, fitness-performance-coach, management-consultant, longevity-human-optimization-physician

## Remaining Work
- [ ] Rewrite commands for remaining 9 experts to full fitness-coach standard (multi-phase, GREEN/YELLOW/RED)
- [ ] Update `commands/create-expert.md` to include PLAYBOOK.md creation step
- [ ] Assign futurist expert to appropriate channel (if any)
- [ ] PLAYBOOK.md review workflow for first-time invocation (track in `data/playbook-reviewed.json`)
- [ ] Add `executive-presence/SKILL.md` stub to executive-coach (dir exists, file missing)
- [ ] Test meeting-debrief.mjs non-dry-run end-to-end (Slack post never confirmed working)

## Waiting On
- Ross to identify which channel (if any) should auto-bind futurist expert
