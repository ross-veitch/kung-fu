---
name: create-role
description: >
  Guide through creating a new Kung Fu expert plugin from scratch.
  Use when: create a new role, add a new role, build a expert plugin, I want a [X] role.
---

# Create Role

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
7. Do NOT write `USER.md` — that's created during onboarding (Phase 5)

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

**Goal**: Populate `USER.md` with resolved values for all `~~` placeholders.

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

Write `USER.md`:
```markdown
# USER.md — [Role Name]
## Resolved configuration
- ~~[placeholder]: [value]

## Personal context
[user-specific goals, history, constraints]

## Tools and accounts
[specific platforms, credentials locations, data sources]
```

`USER.md` is NOT committed to the public repo — it stays local.

## Quality checklist

Before marking the role as complete:
- [ ] `EXPERT.md` contains zero personal data, real email addresses, company names, or specific account details
- [ ] All user-specific items are marked with `~~` or moved to `USER.md`
- [ ] `plugin.json` is complete with name, version, description, keywords
- [ ] At least one `skills/` domain is populated
- [ ] At least one `commands/` playbook is written
- [ ] Role could be published to ClawHub and used by anyone without modification
