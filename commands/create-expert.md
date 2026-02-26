---
name: create-expert
description: >
  Guide through creating a new Kung Fu expert plugin from scratch.
  Use when: create a new expert, add a new expert plugin, build an expert plugin, I want a [X] expert.
---

# Create Expert Plugin

Build a new generic expert plugin through a 5-phase guided process. Delivers a publishable expert plugin with `~~` placeholders, ready for onboarding.

## Phase 1: Research

**Goal**: Understand what the best version of this role looks like in the real world.

Before writing anything, research:
1. What is the correct professional title used in industry? (not our shorthand)
2. Who are 3–5 exemplary humans in this role? What makes them exceptional?
3. What are the core frameworks, methodologies, or schools of thought in this domain?
4. What are the critical sub-disciplines or knowledge areas?
5. What separates average practitioners from world-class ones?

Use `perplexity` skill for research. Synthesise findings before proceeding.

**Output**: Confirmed role title + professional bio + list of role models.

## Phase 2: Component Plan

**Goal**: Decide what `skills/` domains and `commands/` playbooks are needed.

Present a component plan:

| Component | Count | Purpose |
|-----------|-------|---------|
| skills/ domains | N | [what domain knowledge to cover] |
| commands/ | N | [what SOPs/playbooks to include] |

Identify `~~` placeholders — anything user-specific that must be filled during onboarding:
- Tools and platforms (~~primary-tool, ~~data-source)
- Preferences (~~currency, ~~timezone)
- Goals (~~primary-goal)
- Context (~~company-name, ~~role-at-company)

Get confirmation before proceeding.

## Phase 3: Design

**Goal**: Specify each component in detail. Resolve ambiguities before writing.

For each `skills/` domain:
- What core concepts should be in `SKILL.md`?
- What goes in `references/` (detailed tables, frameworks, citation lists)?

For each `commands/` playbook:
- What user request triggers this command?
- What are the steps?
- What's the output format?

## Phase 4: Implementation

**Goal**: Create all expert plugin files following the Kung Fu structure.

Order of operations:
1. Create directory structure
2. Write `.plugin/plugin.json` manifest
3. Write `EXPERT.md` (generic, ~~ placeholders, professional bio, cognitive approach)
4. Write `skills/[domain]/SKILL.md` files (lean, < 3000 words each)
5. Write `skills/[domain]/references/` for detailed content
6. Write `commands/[command].md` SOPs
7. Do NOT write `USER.md` or `PLAYBOOK.md` inside the expert directory — both are created during onboarding (Phase 5) and live in the **config overlay** at `~/clawd/kung-fu-config/experts/[expert-name]/`

**EXPERT.md rules:**
- Open with a professional bio: "You are a [title]. [2-3 sentence identity statement]."
- Cognitive approach section: how does this expert think? What biases do they bring intentionally?
- Reference which Anthropic knowledge-work-plugins this role uses (if any)
- List `~~` placeholders with descriptions of what they represent
- NO personal data, company names, account details, or real URLs

**Progressive disclosure for skills:**
- `SKILL.md` body: synthesised principles, core frameworks, key heuristics (< 3000 words)
- `references/`: detailed tables, citation lists, example outputs, edge cases

## Phase 5: Onboarding

**Goal**: Create the private config overlay files — `PLAYBOOK.md` and `USER.md` — for this expert.

Both files live in the **config overlay** (`~/clawd/kung-fu-config/experts/[expert-name]/`), **not** in the shared repo. They are never committed to the public kung-fu repository.

### 5a — Create PLAYBOOK.md (org-level config)

PLAYBOOK.md is the org-level layer: company context, tools, standards, and defaults specific to the organisation. It is publishable within the org but not to the public repo.

Ask the user:
- What tools/platforms does this expert use at this org? (specific product names, not generics)
- Are there org-specific standards or defaults? (e.g. "all financial models use SGD as base currency")
- Are there org-specific constraints? (e.g. "all contracts must use Singapore law unless client insists otherwise")
- What data sources are available at this org? (specific files, APIs, Slack channels, databases)

Write `~/clawd/kung-fu-config/experts/[expert-name]/PLAYBOOK.md`:
```markdown
# PLAYBOOK.md — [Role Name] @ [Org Name]

## Org context
[Company name, industry, size, key product lines — enough for the expert to understand the business]

## Tools and platforms
[Specific products used at this org — not generic categories]

## Standards and defaults
[Org-specific rules: currency, jurisdiction, formatting, approval flows]

## Data sources
[Specific file paths, API endpoints, Slack channels, databases available at this org]

## Org constraints
[Things that are always true at this org that shape how the expert should behave]
```

### 5b — Create USER.md (personal config)

USER.md resolves the `~~` placeholders from EXPERT.md into actual values for this specific user.

Run a structured conversation to fill in each placeholder:

```
For each ~~ placeholder in the expert plugin:
  - Explain what it's for
  - Ask the user for the value
  - Record in USER.md
```

Also gather open-ended context:
- What specific goals does the user have in this domain?
- Any past history or context that's relevant?
- Constraints, preferences, or non-negotiables?

Write `~/clawd/kung-fu-config/experts/[expert-name]/USER.md`:
```markdown
# USER.md — [Role Name]
## Resolved configuration
- ~~[placeholder]: [value]

## Personal context
[user-specific goals, history, constraints]

## Tools and accounts
[specific platforms, credentials locations, data sources]
```

## Quality checklist

Before marking the expert plugin as complete:

**Shared repo (publishable):**
- [ ] `EXPERT.md` contains zero personal data, real email addresses, company names, or specific account details
- [ ] All user-specific items are marked with `~~` or moved to `USER.md`
- [ ] `plugin.json` is complete with name, version, description, keywords
- [ ] At least one `skills/` domain is populated with `SKILL.md`
- [ ] At least three `commands/` playbooks are written to the full standard (frontmatter, input gathering, classification, output template, escalation)
- [ ] Role could be published to ClawHub and used by anyone without modification

**Config overlay (private — never committed to public repo):**
- [ ] `~/clawd/kung-fu-config/experts/[name]/PLAYBOOK.md` created with org context, tools, standards, data sources
- [ ] `~/clawd/kung-fu-config/experts/[name]/USER.md` created with all `~~` placeholders resolved
- [ ] Neither file is in the shared repo or tracked by its git history
