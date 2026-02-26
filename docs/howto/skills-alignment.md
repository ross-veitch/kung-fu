# Anthropic Skills Alignment

Why expert plugins follow the OpenClaw/Anthropic skills file structure — and what that enables.

---

## The question

> Would our `~/clawd/experts/` file structure differ from Anthropic's plugins/skills structure, or could we/should we adopt their structure?

The short answer: **adopt it**. Here's why.

---

## OpenClaw skills structure

Every skill installed via OpenClaw (and `clawhub`) follows this structure:

```
~/clawd/skills/[skill-name]/
├── SKILL.md        ← manifest: description, instructions, how to use
└── scripts/        ← supporting scripts the skill needs
    └── [script].sh
```

`SKILL.md` defines:
- What the skill is for
- How to invoke it
- What parameters it takes
- Any setup or auth requirements

The agent reads `SKILL.md` as a usage guide. The scripts are the implementation.

---

## Why expert plugins use the same structure

Role packs are conceptually the same thing as skills — they're injected capability. The only difference is that skills are mostly tool-invocation guides (how to use a specific API or tool), while expert plugins are domain-knowledge guides (what to know and how to approach problems in a domain).

By aligning the file structure:

1. **Familiarity** — if you know how to write a skill, you know how to write a expert plugin. Same pattern, different content.
2. **Installability** — expert plugins can be published to `clawhub` and installed with `clawhub install role-health-coach`, exactly like any other skill. No special tooling.
3. **Discoverability** — `clawhub search role-` returns community-contributed expert plugins.
4. **Composability** — a expert plugin can reference installed skills directly, by name, as part of its SOPs. The agent already knows how to load and use those skills.

---

## The file convention

Role packs use `EXPERT.md` instead of `SKILL.md` to make the distinction clear (this is domain knowledge, not a tool guide). The directory structure is identical:

```
# Skill (tool guide)
~/clawd/skills/perplexity/
├── SKILL.md
└── scripts/search.mjs

# Role pack (domain knowledge)
~/clawd/experts/research-analyst/
├── EXPERT.md
└── scripts/           ← optional
```

---

## What EXPERT.md looks like vs SKILL.md

| | SKILL.md | EXPERT.md |
|--|----------|---------|
| Purpose | How to invoke a tool | What to know and do in a domain |
| Content | Commands, parameters, auth steps | Domain expertise, SOPs, skill pointers |
| Audience | Agent (read when tool is needed) | Agent (injected for duration of role) |
| Length | Short (usage guide) | Medium (knowledge pack) |
| References | External APIs | Installed OpenClaw skills |

---

## Using skills inside expert plugins

Because expert plugins reference installed skills by name, a `EXPERT.md` can say:

```markdown
## Skills to activate

For web research: use the `perplexity` skill (sonar-pro by default, sonar-deep-research for 
comprehensive analysis). Batch queries where possible.

For X/Twitter intelligence: use the `bird-search.sh` wrapper with `--json-full` flag.

For company/contact enrichment: prefer `apollo` over web search for professional data.
```

The agent loads these skill guides from `~/clawd/skills/[name]/SKILL.md` when needed. The expert plugin doesn't need to reproduce the skill documentation — it just points to what to use.

---

## Clawhub distribution

Because roles follow the skills structure, they can be published and installed like any other skill:

```bash
# Install a community expert plugin
clawhub install role-health-coach

# Update all installed roles
clawhub update role-*

# Publish your own expert plugin
clawhub publish ~/clawd/experts/my-custom-role
```

This means expert plugins are shareable across the OpenClaw community, just like skills.

---

## Summary

The decision to align expert plugins with the OpenClaw skills file structure is the simplest path that:
- Requires no bespoke tooling or special loader
- Enables expert plugins to be distributed via the existing clawhub ecosystem
- Makes role authoring familiar to anyone who's written a skill
- Allows expert plugins to reference and compose installed skills cleanly

When in doubt, follow the existing pattern.
