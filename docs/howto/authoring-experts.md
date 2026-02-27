# Authoring Expert Plugins

How to write an Expert Plugin that injects real, practitioner-grade domain capability — without touching `SOUL.md`.

---

## The cardinal rule

**An expert plugin adds knowledge. It does not change personality.**

Tone, directness, wit, relationship context — that's in `SOUL.md` and stays there. An expert plugin answers: *"what should the agent know and do differently in this domain?"* Not: *"how should the agent sound?"*

If you find yourself writing "be more formal and precise" — stop. That's a personality change. Put it in `SOUL.md` if it's permanently true, or just ask the agent to adjust for a specific task.

---

## File structure

```
experts/[expert-name]/
├── .plugin/
│   └── plugin.json        ← manifest: name, version, description
├── EXPERT.md              ← the expert identity: who they are, how they think,
│                             what tools they use, how they stay current
├── skills/                ← deep knowledge library, auto-loaded with expert
│   └── [domain]/
│       ├── SKILL.md       ← synthesised expertise (< 3000 words)
│       └── references/    ← detailed frameworks, tables, source material
└── commands/              ← step-by-step SOPs for common scenarios
    └── [command].md       ← one playbook per command
```

Personal and org-specific config live **outside** this repo in the private config overlay:
```
~/clawd/kung-fu-config/experts/[expert-name]/
├── PLAYBOOK.md            ← org-level defaults (tools, standards, communication style)
└── USER.md                ← personal config (goals, accounts, history, preferences)
```

---

## EXPERT.md — the expert identity

The core of every plugin. It defines who this expert is — their professional background, depth of expertise, cognitive approach, tools, and how they stay current. Everything here should be **generic and publishable**: it works for any user, with no personal data anywhere.

### Required sections

#### 1. Header (front matter)
```yaml
---
name: growth-marketer
version: 0.1.0
---
```

#### 2. Introduction paragraph
Who this expert is. Written as if describing the world's best human practitioner in this field — what they know, what makes them exceptional, what they do when they engage with a problem. This is the cognitive anchor for the entire plugin.

#### 3. "The depth of your expertise"
The substance of what this expert knows. **This is the most important section.** Be specific. Not "you know about marketing" — "you know attribution models, channel incrementality, CAC/LTV ratios by channel, booking curve interpretation, and the difference between correlation and causation in campaign reporting."

Write the non-obvious things. The tacit knowledge that a 15-year practitioner has that won't be in any textbook summary. The things a novice wouldn't know to ask about.

#### 4. Cognitive approach / "How you work"
How this expert thinks, not just what they know. Their diagnostic workflow. What they do first when given a problem. What questions they always ask. What common mistakes they call out.

Example (for a Product Manager):
> *You start with the problem, not the solution. When someone brings a feature request, you reframe it as a user problem and validate whether it's worth solving. You run discovery sprints before build sprints.*

#### 5. "Tools & stack"
The specific tools a world-class practitioner in this field actually uses. Organised by category (analytics, research, modelling, etc.). Where tools require personalisation, use `~~` placeholders.

Example:
```markdown
**Analytics**: Mixpanel (product analytics), Amplitude; Segment (event routing)
**SEO**: Semrush (keyword research), Ahrefs (backlinks), Google Search Console

After onboarding, `~~analytics-platform` and `~~primary-channel` specify the stack.
```

#### 6. "Staying current"
Books, newsletters, communities, X follows, podcasts, and conferences that a world-class practitioner in this domain reads and participates in. This section serves two purposes: it helps the agent reason with current domain knowledge, and it feeds the automated learning loop (`staying-current.mjs`).

Include a `<!-- SOURCES -->` block for the learning loop:
```html
<!-- SOURCES
- name: Lenny's Newsletter | url: https://www.lennysnewsletter.com | type: newsletter
- name: Andrew Chen | handle: @andrewchen | type: twitter
- name: r/ProductManagement | subreddit: ProductManagement | type: reddit
-->
```

#### 7. "What you don't do"
The constraints. What this expert explicitly declines or hands off. Essential for setting expectations and preventing overreach. (e.g., "You are not a lawyer. You flag legal risk and recommend involving counsel, but you don't interpret complex law.")

#### 8. "Core commands"
Brief listing of available commands with one-line descriptions. Reference the `commands/` directory. Example:
```markdown
- `/write-prd` — Write a product requirements document from problem statement and research
- `/prioritize` — Prioritise a backlog using RICE + strategic fit
```

#### 9. "Core skills"
Brief listing of available skills with one-line descriptions. Reference the `skills/` directory. Example:
```markdown
- `skills/product-strategy/` — Jobs-to-be-done, opportunity solution trees, North Star metrics
- `skills/user-research/` — Interview techniques, survey design, synthesis
```

#### 10. "Onboarding placeholders"
A table of `~~` placeholder values that get resolved during onboarding and written to `USER.md`. These are the variables that turn a generic expert into a personalised one.

```markdown
| Placeholder | What it represents |
|-------------|-------------------|
| `~~company-name` | Name of the company |
| `~~north-star-metric` | Primary product success metric |
| `~~pm-tool` | Roadmap tool (Linear, Jira, Notion, etc.) |
```

---

## The `~~` placeholder system

Generic Expert Plugins use `~~` prefixes to mark anything that needs to be personalised:

```markdown
Primary analytics platform: ~~analytics-platform
Home airport: ~~home-airport
Reporting currency: ~~reporting-currency
```

After onboarding, `USER.md` resolves each one:

```markdown
## Resolved configuration
- ~~analytics-platform: Mixpanel
- ~~home-airport: SIN
- ~~reporting-currency: USD
```

This is what makes an expert feel built for you personally, while keeping the shared plugin generic.

---

## skills/ — the knowledge library

Each `skills/[domain]/SKILL.md` is a synthesised expertise document covering a sub-discipline of the expert's domain. Target length: 1500–3000 words. Structure typically:

- Brief intro: what this skill is and why it matters
- Core frameworks with explanation of when to use each
- The non-obvious insights (what separates adequate from excellent)
- Common mistakes or failure modes
- Measurement / how to know if it's working
- References to source material

Put detailed tables, lengthy frameworks, or citation lists in `skills/[domain]/references/` to keep SKILL.md lean and fast to load.

---

## commands/ — the playbooks

Each `commands/[command].md` is a step-by-step SOP for one common scenario. Structure:

1. **When to use** — what triggers this command
2. **Steps** — numbered, specific, actionable steps
3. **Output format** — what the response should look like (template or example)

Commands must be **specific**. "Help the user make a decision" is noise. A command that walks through reversibility, pre-mortem, 10/10/10 analysis, and dissent mapping is useful.

A complete expert should have 3–6 commands covering the scenarios it handles most frequently.

---

## plugin.json — the manifest

```json
{
  "name": "growth-marketer",
  "version": "0.1.0",
  "description": "Full-funnel growth: paid acquisition, SEO, CRO, lifecycle marketing, experimentation.",
  "anthropic_plugin": null
}
```

For experts that build on an Anthropic vendor plugin:
```json
{
  "anthropic_plugin": "anthropics/knowledge-work-plugins/data"
}
```

---

## Quality bar

**The swap test**: Replace the user's personal answers in `USER.md` with someone else's. Does anything in the output change? If not, the personalised context isn't doing its job.

**SOPs must be specific**: Generic steps are useless. A `/pricing-analysis` command that walks through elasticity modelling, competitive positioning, and scenario analysis is useful. "Help analyse pricing" is not.

**Domain expertise must include the non-obvious**: If `EXPERT.md` reads like a Wikipedia summary, it hasn't captured how practitioners actually think. The goal is tacit knowledge — what a 20-year veteran knows that isn't in any textbook.

**The length test**: Expert Plugins over ~3000 tokens add cost with diminishing returns. If `EXPERT.md` is very long, move deep content into `skills/` files (loaded on demand) or `commands/` files (referenced when needed).

---

## Common mistakes

**Writing personality, not knowledge:**
```
❌ "You are a world-class financial analyst who communicates with clarity and precision."
✅ "Your default valuation approach: DCF + comps + precedent transactions, show as a football field.
   Always challenge growth rate assumptions first — they drive 80% of DCF value."
```

**Vague skill references:**
```
❌ "Use relevant data sources"
✅ "STR for hotel benchmarking | OAG for airline capacity data | ATPCO for airline fare filing"
```

**No onboarding placeholders:**
An expert with no `~~` placeholders will give the same advice to a 5-person startup and a 50,000-person enterprise. That's not an expert — it's a Wikipedia article.

**Missing commands:**
Commands are the "what to actually do" when a scenario comes up. An expert without commands is a knowledge dump, not a practitioner. At minimum: 3 commands for the most frequent scenarios.

**Reproducing SOUL.md content:**
If you're writing about tone, relationship, how to talk to the user, or generic response style — stop. That lives in `SOUL.md`.

---

## Testing your expert

```bash
# Load the expert in your current session
bash ~/clawd/scripts/load-expert.sh [expert-name]

# Run 3 representative tasks:
# 1. A common scenario the expert handles → does the output match what a world-class
#    practitioner would actually produce?
# 2. The same task without the expert loaded → is the output meaningfully different?
# 3. A cross-domain question → does the expert still sound like itself (SOUL.md personality)?

# Unload when done
bash ~/clawd/scripts/load-expert.sh off
```

An expert plugin that doesn't produce measurably better output on representative domain tasks isn't earning its token cost.

---

## See also

- [Creating experts from scratch](creating-experts.md) — the full 5-phase creation process
- [Authoring a PLAYBOOK.md](authoring-playbook.md) — org-level configuration
- [Improving experts](improving-experts.md) — iterating on existing experts
- [Staying current](staying-current.md) — the automated learning loop
