# Design Decisions

Architectural decisions made, with rationale. Last updated: 2026-02-26.

---

## 1. Canonical packaging: ClawHub-installable Expert Plugins

**Decision:** Expert Plugins are designed to be installable via ClawHub as a first-class distribution unit.

**Rationale:** Expert Plugins are shareable, reusable domain bundles. The same distribution mechanism that makes Skills composable should apply to Expert Plugins. Anyone should be able to `clawhub install executive-coach` and get a world-class coaching expert without building one from scratch.

---

## 2. Main session injection: honest context-append

**Decision:** Accept the honest limitation — expert injection in the main session is context-append only. There is no true unload. Document this clearly; do not pretend otherwise.

**Rationale:** Pretending to unload while leaving the context in the session is misleading and causes unpredictable behaviour. Honest design is better than a convincing illusion.

---

## 3. Unload semantics: "start a new thread"

**Decision:** "Unload expert" means "start a new thread / session." This is the honest definition.

**Rationale:** A new thread is a genuinely clean context. It's the only mechanism that actually removes injected content from the active context.

---

## 4. Practitioner naming convention

**Decision:** Expert Plugins are named after the human practitioner. "Fitness & Performance Coach", "Research Analyst", "Executive Assistant" — not "Fitness", "Research", "Executive".

**Rationale:** Practitioner names are *role titles*, not tool names or feature flags. "Executive Coach" sounds like a person you'd hire. "Executive" sounds like a toggle. The naming convention sets the right mental model — you're loading a collaborator with domain expertise, not enabling a mode.

---

## 5. Expert Plugin file structure

**Decision:** Each Expert Plugin in the shared repo contains:

```
clawd-prj/kung-fu/experts/[expert-name]/
├── EXPERT.md              ← generic: domain expertise + cognitive approach + learning sources
├── skills/                ← deep domain knowledge (auto-loaded)
│   └── [domain]/
│       ├── SKILL.md       ← synthesised expertise, < 3000 words
│       └── references/    ← detailed frameworks and citations
├── commands/              ← step-by-step SOPs
│   └── [command].md
└── .plugin/
    └── plugin.json        ← manifest: name, version, dependencies
```

`PLAYBOOK.md` and `USER.md` are **not** stored here — they live in the private config overlay. See decision #10.

---

## 6. Expert creation: ask the agent

**Decision:** Creating a new Expert Plugin is triggered by asking the agent: *"Create a new expert: [name]"*. The agent runs the 5-phase process (research → component plan → design → build → onboard) autonomously, with the human in the loop for design decisions.

**Rationale:** The creation process is itself a good test of the system's capability. A sufficiently capable agent with good domain research tools should be able to build a high-quality expert in a single session.

See: `commands/create-expert.md` for the full playbook.

---

## 7. Skills vs Expert Plugins

**Decision:** Keep Skills and Expert Plugins as separate concepts:
- `~/clawd/skills/` — tool guides (perplexity, gog, bird-search, spotify-full)
- `~/clawd/clawd-prj/kung-fu/experts/` — practitioner bundles (executive-coach, futurist, research-analyst)

**Rationale:** Skills are tools you *use*. Expert Plugins are expertise you *embody*. The metaphor and mechanics are different. Skills tell the agent how to invoke an API. Expert Plugins tell the agent how to think in a domain.

---

## 8. `USER.md` naming (not `ONBOARDING.md`)

**Decision:** The personalised context file is `USER.md`. The onboarding process generates it, but the file is named after its audience (the user's context), not the process that creates it.

**Rationale:** `ONBOARDING.md` sounds like a process artifact. `USER.md` sounds like a persistent config file — which is what it is. Editors can open it and understand it without knowing the onboarding flow.

---

## 9. Published vs private split

**Decision:** A strict two-tier split:

**Published (shared repo, `github.com/ross-veitch/kung-fu`):**
- `EXPERT.md` — generic domain expertise, publishable
- `skills/` — domain knowledge, publishable
- `commands/` — SOPs, publishable
- `.plugin/plugin.json` — manifest, publishable

**Private (config overlay, `~/clawd/kung-fu-config/`):**
- `PLAYBOOK.md` — org config, never committed to shared repo
- `USER.md` — personal config, never committed to shared repo
- `config/channel-routing.json` — Slack channel IDs, never committed
- `data/` — runtime state, never committed

**Rationale:** The published layer must be genuinely generic — usable by any person or org without modification. The private layer is where it gets specific. The separation makes the public repo trustworthy: cloning it gives you no one else's company data, personal preferences, or internal tooling.

---

## 10. Config overlay pattern (added 2026-02-26)

**Decision:** `PLAYBOOK.md` and `USER.md` are stored in a separate directory (`~/clawd/kung-fu-config/`) rather than inside the kung-fu repo directory.

**Rationale:** The kung-fu repo is now a standalone public repo (`github.com/ross-veitch/kung-fu`). Storing personal/org files inside a cloned repo means either (a) those files get committed and exposed, or (b) you need `.gitignore` rules that can be accidentally circumvented. A physically separate overlay directory is simpler and more robust: the line between "shared" and "private" is a directory boundary, not a gitignore rule.

`load-expert.sh` checks `KUNG_FU_CONFIG_DIR` (default: `~/clawd/kung-fu-config`) for `PLAYBOOK.md` and `USER.md`, falling back to the expert directory for backwards compatibility.

---

## 11. PLAYBOOK.md naming

**Decision:** The org-level config file is named `PLAYBOOK.md` (not `ORG.md`, `COMPANY.md`, `CONFIG.md`, or `CONTEXT.md`).

**Rationale:** "Playbook" is a well-understood business term that carries the right connotation: *this is how we run plays here*. It implies situational rules and operating defaults, not just static config. Alternatives were considered:
- `ORG.md` — accurate but dry; reads like a config file
- `COMPANY.md` — too narrow (breaks for teams or individuals without a company)
- `CONTEXT.md` — too generic; conflicts with other "context" files in the workspace
- `CONFIG.md` — sounds like installation settings

"Playbook" won on intuition and business familiarity.

---

## 12. Learning loop: `<!-- SOURCES -->` blocks + weekly cron (added 2026-02-24)

**Decision:** Expert Plugins that require current knowledge define live learning sources in a `<!-- SOURCES -->` HTML comment block at the bottom of `EXPERT.md`. A weekly cron (`staying-current.mjs`) reads these sources, fetches content, synthesises learnings with Claude, and writes to `CHANGELOG.md`. The CHANGELOG is auto-loaded on next session.

**Source types supported:** X/Twitter, Reddit, YouTube, podcasts (Taddy API), arXiv, newsletters, web.

**Rationale:** Static knowledge goes stale. The alternatives were:
- Full EXPERT.md rewrites (expensive, manual, loses history)
- Embedding update prompts in the cron task (no structured source list, inconsistent)
- Separate learning config file (unnecessary indirection — sources are metadata about the expert)

The `<!-- SOURCES -->` block is the cleanest option: it lives in `EXPERT.md` next to the expert content it informs, is invisible when rendered, and is easily parsed by the learning script. The CHANGELOG pattern preserves history and makes learnings auditable.

**Cost:** ~$0.05–$0.15 per expert per week at standard depth. Negligible.

---

## 13. Multi-expert channels

**Decision:** `channel-routing.json` supports both single expert (`"CHANNEL_ID": "expert-name"`) and multi-expert arrays (`"CHANNEL_ID": ["expert-a", "expert-b"]`). When multiple experts are bound to a channel, `load-expert.sh` concatenates their content with a separator header.

**Rationale:** Some work contexts genuinely require multiple domains simultaneously. A health + technology channel needs both clinical knowledge and engineering capability in the same session. Stacking experts at load time is simpler than spawning collaborating sub-agents for every message.

---

## 14. Transparency badge (first response only)

**Decision:** The first response in any session with an expert loaded includes a footer showing which expert is active, how it was loaded (channel-bound vs manual), top 3 relevant commands, and any skill/plugin invoked. Subsequent responses do not include it.

**Rationale:** The badge provides a learning mechanism — users understand what's active and what commands are available. Once per session is enough; repeating it on every message is noise.
