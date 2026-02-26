# Improving Experts

How expert plugins get better over time — two tracks: manual fixes and automated learning.

---

## Two improvement tracks

### Track 1 — Manual: fix what you notice
Every real use of an expert reveals gaps. A domain it didn't cover well. A command that produced a weak output. A framework it was missing. A PLAYBOOK default that didn't match how you actually work.

```
Use the expert → notice a gap → edit the relevant file → re-load next session
```

No retraining. No fine-tuning. No infrastructure. Just editing a markdown file.

### Track 2 — Automated: live learning loop
Five experts run a weekly cron that fetches from live sources — X/Twitter, Reddit, YouTube, podcasts, arXiv, newsletters — synthesises what's new, and writes findings to `CHANGELOG.md`. The expert has current knowledge without anyone manually updating it.

See **[Staying Current](staying-current.md)** for the full guide to the learning loop, source types, and cron setup.

---

## What to improve and where

### 1. The expert got the domain wrong or missed something important
**File to update:** `EXPERT.md` — the `## The depth of your expertise` section
Add the missing sub-domain, sharpen the framing, or correct a misconception.

### 2. The expert used a weak framework or missed a better one
**File to update:** the relevant `skills/[domain]/README.md` or `SKILL.md`
Add the framework, explain when to apply it, and link to references if useful.

### 3. The expert ran a command and the output was mediocre
**File to update:** `commands/[command].md`
Tighten the steps, add better output format examples, add edge case handling.

### 4. The PLAYBOOK defaults don't match how you actually work
**File to update:** `PLAYBOOK.md` in the expert's directory
PLAYBOOK.md is org-level configuration. It's the right place for: communication defaults, tool preferences, what to avoid, specific people or context the expert should always know.

### 5. The expert keeps asking for information you've already given it
**File to update:** `USER.md` in the expert's directory
USER.md is your personal configuration layer — it resolves all `~~placeholder` values and holds personal context (your tools, accounts, goals, recurring contacts). Add whatever it keeps forgetting.

---

## The five layers of an expert (and which to touch)

```
EXPERT.md          ← generic, publishable. update when the core expertise is wrong.
skills/            ← domain knowledge. update when a framework is missing or weak.
commands/          ← playbooks. update when an output is mediocre or a step is missing.
PLAYBOOK.md        ← org defaults. update when team/company context is wrong.
USER.md            ← personal context. update when it keeps forgetting your preferences.
```

The lower you go in this list, the more personal and specific the change. `EXPERT.md` changes should be useful for anyone; `USER.md` changes are just for you.

---

## Versioning

Expert plugins use semantic versioning in `EXPERT.md`:

```yaml
---
name: executive-coach
version: 0.1.0
---
```

Bump the version when you make a meaningful change:
- **Patch** (0.1.0 → 0.1.1): small corrections, added examples, tightened language
- **Minor** (0.1.0 → 0.2.0): new skill area, new command, significant framework additions
- **Major** (0.1.0 → 1.0.0): complete rewrite, major scope change, breaking change to commands

The `news-editor` expert has a `CHANGELOG.md` — use this pattern for any expert you're actively iterating on.

---

## The CHANGELOG pattern

For experts you use heavily and iterate on, maintain a `CHANGELOG.md`:

```markdown
# News Editor — Changelog

## 0.3.0 — 2026-02-24
- Added MENA regional sources to editorial judgment skill
- Tightened /morning-digest output format
- PLAYBOOK updated with Skift/PhocusWire as tier-1 sources

## 0.2.0 — 2026-02-10
- Added geopolitics beat coverage
- New command: /signal-brief
```

This is especially useful if multiple people are using and improving the same expert.

---

## Adding a new skill area

When an expert needs a new knowledge domain that doesn't fit existing `skills/` directories:

1. Create `skills/[new-domain]/README.md` (or `SKILL.md` for the Anthropic convention)
2. Write the domain knowledge: frameworks, heuristics, evidence base, key principles
3. Add a reference in `EXPERT.md` under `## Core skills`
4. Bump the minor version

Keep skill files under 3,000 words. If a topic needs more depth, put the detailed content in a `references/` subdirectory and keep the main skill file as a navigable summary.

---

## Adding a new command

When a new use case recurs enough to deserve a structured playbook:

1. Create `commands/[command-name].md`
2. Structure it with: trigger, steps, output format
3. Add it to the `## Core commands` section of `EXPERT.md`
4. Test it on at least 3 real tasks before considering it stable

```markdown
---
name: my-new-command
description: One-sentence description of what this command does.
---

# /my-new-command

[When to use this command]

## Steps

1. [First step]
2. [Second step]
...

## Output format

[What a good output looks like]
```

---

## Iterating on PLAYBOOK.md

`PLAYBOOK.md` is reviewed once on first expert invocation (see [Channel Routing](channel-routing.md#playbook-review-on-first-invocation)). After that, it loads silently.

When you update `PLAYBOOK.md`, reset the review flag so you see the changes next time:

```bash
# Reset review status for one expert
node -e "
const fs = require('fs');
const f = '$HOME/clawd/clawd-prj/kung-fu/data/playbook-reviewed.json';
const d = JSON.parse(fs.readFileSync(f, 'utf8'));
delete d['executive-coach'];  // replace with expert name
fs.writeFileSync(f, JSON.stringify(d, null, 2));
console.log('Reset');
"
```

---

## Sharing improvements upstream

The generic layers (`EXPERT.md`, `skills/`, `commands/`) are publishable and can be contributed back to the main repo via PR. See [CONTRIBUTING.md](../../CONTRIBUTING.md) for guidelines.

`PLAYBOOK.md` and `USER.md` are personal/org-specific — never commit these.

---

## Quick feedback loop in practice

The fastest way to improve an expert after a mediocre output:

1. Identify the file responsible (see table above)
2. Open it: `code ~/clawd/clawd-prj/kung-fu/experts/[name]/[file].md`
3. Make the edit
4. Tell the agent: *"Re-load the executive-coach expert"* — it will pick up the changes in the current session
5. Re-run the task

No restart required. Changes take effect the next time the expert is loaded.
