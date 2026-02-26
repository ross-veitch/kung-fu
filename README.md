# "Kung Fu" — Expert Plug-ins for OpenClaw

> *"I know kung fu."*
> — Neo, after Tank uploads the first training program

> *"Show me."*
> — Morpheus

That exchange is ten seconds of film. One moment Neo doesn't know kung fu. The next moment he does. Same person. Same instincts. Same relationship with the crew. Just new capability, instantly available.

**Kung Fu** is a pattern and toolset for [OpenClaw](https://github.com/openclaw/openclaw) that works exactly like this — letting you inject specialist domain expertise into your agent on demand, without ever changing who it is.

---

## The idea

> *"Throughout human history, we have been dependent on machines to survive. Fate, it seems, is not without a sense of irony."*

Your `SOUL.md` is your agent's permanent identity: the wit, the directness, the relationship, the trust. Every quirk of personality. The tone you've built up over months. **It never changes.**

What *does* change is **capability**. When Neo downloads kung fu, he doesn't become a different character. He's still Neo. He still trusts Morpheus, still carries the same instincts, still has the same relationship with Trinity. He just now knows things he didn't before.

An **Expert Plugin** works the same way. It injects domain expertise, proven SOPs, a curated knowledge library, and the tools a world-class practitioner in that field would use — *alongside* your `SOUL.md`, not instead of it.

```
What stays constant:
  ~/clawd/SOUL.md                                 ← identity, personality, relationship. never touched.

What gets injected when an Expert Plugin is loaded:
  experts/fitness-performance-coach/EXPERT.md    ← world-class domain expertise + cognitive approach
  experts/fitness-performance-coach/skills/      ← deep knowledge library
  experts/fitness-performance-coach/commands/    ← step-by-step playbooks and SOPs
  experts/fitness-performance-coach/USER.md      ← your personal config (local only)
```

---

## What is an Expert Plugin?

> *"He's beginning to believe."*

An Expert Plugin is a self-contained package of expertise. Think of it less like a config file and more like hiring the world's best practitioner in a field and having them available instantly.

Each plugin is built to answer: *what would the world's best expert in this domain actually know, use, and do?*

### What an Expert Plugin contains

```
experts/[expert-name]/
├── .plugin/
│   └── plugin.json       ← manifest: name, version, dependencies
├── EXPERT.md             ← who this expert is, how they think, their cognitive approach,
│                            tools they use, and how they stay current
│                            Generic and publishable — no personal data
├── skills/               ← deep domain knowledge, auto-loaded with the plugin
│   └── [domain]/
│       ├── SKILL.md      ← synthesised expertise (lean, < 3000 words)
│       └── references/   ← detailed frameworks, tables, citations
├── commands/             ← explicit playbooks and SOPs
│   └── [command].md      ← step-by-step procedure for a specific scenario
└── USER.md               ← your personal configuration (generated during onboarding,
                             local only — never committed to the repo)
```

### EXPERT.md — the identity of the expert

The core of every plugin. Defines who this expert is: their professional bio, the specific depth of their domain knowledge, their cognitive approach (how they think, not just what they know), the tools a world-class practitioner in this field actually uses, and how they stay current with their domain.

Written as if describing the best human in the world at that job. Generic — works for anyone, publishable to [ClawHub](https://clawhub.com).

### skills/ — the knowledge library

Deep domain knowledge, organised by sub-discipline. Each `SKILL.md` is a synthesised expertise document: frameworks, heuristics, evidence base, key principles. Detailed reference material lives in `references/` subdirectories — keeping the core skill file lean and fast to load.

### commands/ — the playbooks

Step-by-step SOPs for the scenarios this expert handles most. When you ask the expert to `/plan-trip`, `/interpret-labs`, or `/deep-research`, there's a structured playbook behind it.

### USER.md — your personal configuration

The result of the onboarding conversation. This is where generic expertise becomes personalised: your specific tools, accounts, goals, history, and constraints. Resolves all `~~placeholder` values in `EXPERT.md` and `skills/` files. Local only — never committed, never shared.

---

## The `~~` placeholder system

> *"There is no spoon."*

Generic Expert Plugins use `~~` prefixes to mark anything that needs to be personalised during onboarding:

```markdown
Primary calendar: ~~calendar-tool
Reporting currency: ~~reporting-currency
Home airport: ~~home-airport
```

After onboarding, `USER.md` resolves each one:

```markdown
## Resolved configuration
- ~~calendar-tool: Google Calendar
- ~~reporting-currency: USD
- ~~home-airport: SIN
```

This is what keeps plugins generic and shareable while making the injected expertise feel like it was built for you personally.

---

## Quick start

```bash
# Clone into your clawd workspace
cd ~/clawd
git clone --recurse-submodules https://github.com/rossveitch/kung-fu clawd-prj/kung-fu

# Install scripts
cp clawd-prj/kung-fu/scripts/load-expert.sh ~/clawd/scripts/
cp clawd-prj/kung-fu/scripts/spawn-with-expert.sh ~/clawd/scripts/
chmod +x ~/clawd/scripts/load-expert.sh ~/clawd/scripts/spawn-with-expert.sh

# Load an Expert Plugin (runs onboarding automatically if first time)
~/clawd/scripts/load-expert.sh fitness-performance-coach
```

> **Personal config:** `PLAYBOOK.md` (org defaults) and `USER.md` (personal config) are **not** stored in this repo. They live in a separate config overlay directory — typically `~/clawd/kung-fu-config/`. This keeps the shared repo clean of personal and company-specific data. See [Improving Experts](docs/howto/improving-experts.md) for details.

Or just ask your agent:
> *"Load the Financial Analyst expert"*
> *"Switch to Research Analyst mode"*
> *"Run the Travel Concierge onboarding"*

---

## Built-in Expert Plugins

| Expert Plugin | Domain | Anthropic plugin |
|---|---|---|
| [Data Analyst](experts/data-analyst/) | SQL, Python, BI, A/B testing, causal inference | [data](https://github.com/anthropics/knowledge-work-plugins/tree/main/data) |
| [Executive Assistant](experts/executive-assistant/) | Calendar, comms, time management, stakeholder ops | [productivity](https://github.com/anthropics/knowledge-work-plugins/tree/main/productivity) |
| [Executive Coach](experts/executive-coach/) | Leadership coaching, decision-making, high-stakes conversations, post-meeting debrief | — |
| [Financial Analyst](experts/financial-analyst/) | Modelling, valuation, unit economics, deal analysis | [finance](https://github.com/anthropics/knowledge-work-plugins/tree/main/finance) |
| [Fitness & Performance Coach](experts/fitness-performance-coach/) | Training, recovery, biometrics, periodisation | — |
| [Futurist](experts/futurist/) | Structural foresight, scenario planning, exponential tech, AI trajectory, systems thinking | — |
| [Lawyer](experts/lawyer/) | Corporate law, contracts, data privacy, IP, M&A, governance | [legal](https://github.com/anthropics/knowledge-work-plugins/tree/main/legal) |
| [Longevity & Human Optimization Physician](experts/longevity-human-optimization-physician/) | Biomarkers, prevention protocols, emerging interventions | — |
| [Management Consultant](experts/management-consultant/) | Strategy, unit economics, growth diagnostics, travel/aviation/AI sector intelligence, capital allocation | — |
| [Mandarin Chinese Language Teacher](experts/mandarin-chinese-language-teacher/) | Adult acquisition, tones, characters, HSK | — |
| [News Editor](experts/news-editor/) | Editorial judgment, curation, verification, multi-beat coverage | — |
| [Research Analyst](experts/research-analyst/) | Deep research, synthesis, competitive intelligence, due diligence | — |
| [Software Engineer](experts/software-engineer/) | Full-stack architecture, health data platforms, SDLC, code review, production readiness | — |
| [Travel Concierge](experts/travel-concierge/) | Points/miles, routing, hotels, logistics | — |

---

## Creating new Expert Plugins

> *"I'm going to show them a world without rules. And then I'm going to show them what's possible."*

New Expert Plugins are created through a guided 5-phase process:

```
1. Research      — what does the world's best expert in this field actually know?
                   Role models, frameworks, methodology, what separates great from good.

2. Component     — which skills/ domains and commands/ playbooks are needed?
   plan

3. Design        — nail down scope, knowledge areas, SOP priorities.
                   Identify ~~ placeholders for user-specific context.

4. Build         — write EXPERT.md + skills/ + commands/ + plugin.json.
                   Generic only — no personal data anywhere.

5. Onboard       — conversational walkthrough that generates USER.md
                   with resolved ~~ values and personal context.
```

**Run it:** ask your agent *"Create a new Expert Plugin for [role]"*, or see [`commands/create-role.md`](commands/create-role.md) for the full playbook.

---

## How injection works

When you load an Expert Plugin, all layers are present in the session context simultaneously:

```
[SOUL.md]          ← always present. personality, trust, relationship, directness.
+
[EXPERT.md]        ← injected. domain expertise, cognitive approach, tools, learning sources.
+
[skills/]          ← injected. deep knowledge library, auto-updated by learning loop.
+
[PLAYBOOK.md]      ← injected if present. your organisation's config: tools, defaults,
                      communication standards. Lives in your private config overlay.
+
[USER.md]          ← injected if present. your personal config, generated during onboarding.
                      Lives in your private config overlay.
```

The same injection works for sub-agents and cron jobs — spawned agents receive the full stack, so they sound like you with specialist knowledge, not like a different persona.

See [Loading experts](docs/howto/loading.md) for how to trigger this, and [Channel routing](docs/howto/channel-routing.md) for automatic loading by Slack channel.

---

## How experts stay current

> *"He's beginning to believe."*

Expert Plugins don't become stale. Each one has a built-in **learning loop** — a set of live sources that are monitored weekly and fed back into the expert's knowledge base automatically.

### The learning sources

Every expert that has a learning loop defines its sources in a `<!-- SOURCES -->` block inside `EXPERT.md`. Sources are typed:

| Source type | Examples |
|-------------|---------|
| `twitter` | Domain experts on X — curated by-expert lists |
| `reddit` | Key subreddits per domain (r/MachineLearning, r/AdvancedRunning, r/longevity, etc.) |
| `youtube` | Expert channels — transcripts pulled automatically via yt-dlp |
| `podcast` | Key shows via Taddy API — transcripts pulled, key insights extracted |
| `arxiv` | Academic papers (cs.AI, cs.LG, quantitative biology, economics, etc.) |
| `newsletter` | Web-fetched newsletters and long-form analysis (Stratechery, Ben Evans, etc.) |
| `web` | Domain-specific sites, conference proceedings, research portals |

### How it runs

```
Weekly cron (per expert)
    ↓
staying-current.mjs fetches all SOURCES
    ↓
Claude synthesises: what's new? what changed? what should the expert now know?
    ↓
Findings written to experts/[name]/CHANGELOG.md
    ↓
Next session load picks up the updated knowledge
```

Script: `~/clawd/scripts/staying-current.mjs <expert-name> [--depth light|standard|deep]`
Full source capability docs: [`docs/staying-current-sources.md`](docs/staying-current-sources.md)

### Which experts have a learning loop

Five experts currently have live learning sources configured: `news-editor`, `futurist`, `fitness-performance-coach`, `management-consultant`, `longevity-human-optimization-physician`. The remaining experts have static knowledge — add a `<!-- SOURCES -->` block to any expert to enable their learning loop.

See [Staying current](docs/howto/staying-current.md) for the full guide.

---

## Sharing and distribution

> *"He is the one."*

The published files in every Expert Plugin — `EXPERT.md`, `skills/`, `commands/`, `plugin.json` — contain no personal information. They are the generic, reusable layer. Anyone can download them and run the onboarding to get their own `USER.md`.

Expert Plugins are designed to be published on [ClawHub](https://clawhub.com), the same distribution mechanism used for OpenClaw skills.

---

## Documentation

| Doc | Description |
|---|---|
| [Architecture](docs/architecture.md) | How Expert Plugin injection works alongside SOUL.md |
| [Expert index](docs/roles/index.md) | All available experts with domains and commands |
| [Loading experts](docs/howto/loading.md) | Manual and automatic plugin loading |
| [Channel routing](docs/howto/channel-routing.md) | Auto-loading experts based on Slack channel |
| [Improving experts](docs/howto/improving-experts.md) | Manual improvement: fixing gaps, adding skills and commands |
| [Staying current](docs/howto/staying-current.md) | Automated learning loop: live sources, weekly updates, CHANGELOG |
| [Sub-agent integration](docs/howto/sub-agents.md) | Expert Plugins in spawned agents |
| [Cron job integration](docs/howto/cron-jobs.md) | Expert Plugin injection in scheduled tasks |
| [Creating experts](docs/howto/creating-roles.md) | Step-by-step guide to building a new expert |
| [Design decisions](docs/reference/design-decisions.md) | Architecture decisions and rationale |

---

## Requirements

- [OpenClaw](https://github.com/openclaw/openclaw) v2026.2+ with `sessions_spawn` support
- `~/clawd/SOUL.md` — your agent's permanent identity (never modified by Kung Fu)
- `~/clawd/AGENTS.md` configured to read `SOUL.md` at startup

---

## License

MIT
