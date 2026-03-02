# "Kung Fu" — Expert Plug-ins for OpenClaw

> *"I know kung fu."*
> — Neo, after Tank uploads the first training program

> *"Show me."*
> — Morpheus

That exchange is ten seconds of film. One moment Neo doesn't know kung fu. The next moment he does. Same person. Same instincts. Same relationship with the crew. Just new capability, instantly available.

**Kung Fu** is a pattern and toolset for [OpenClaw](https://github.com/openclaw/openclaw) that works exactly like this — letting you inject specialist domain expertise into your agent on demand, without ever changing who it is.

> **What is OpenClaw?** [OpenClaw](https://github.com/openclaw/openclaw) is an open-source AI agent framework that gives you a persistent, personality-rich assistant running in your terminal and connected to your tools. Kung Fu is a plugin layer that sits on top of it.

---

## The idea

> *"Throughout human history, we have been dependent on machines to survive. Fate, it seems, is not without a sense of irony."*

Your `SOUL.md` is your agent's permanent identity: the wit, the directness, the relationship, the trust. Every quirk of personality. The tone you've built up over months. **It never changes.**

What *does* change is **capability**. When Neo downloads kung fu, he doesn't become a different character. He's still Neo. He still trusts Morpheus, still carries the same instincts, still has the same relationship with Trinity. He just now knows things he didn't before.

An **Expert Plugin** works the same way. It injects domain expertise, proven SOPs, a curated knowledge library, and the tools a world-class practitioner in that field would use — *alongside* your `SOUL.md`, not instead of it.

```
What stays constant:
  ~/clawd/SOUL.md                                             ← identity, personality, relationship. never touched.

What gets injected when an Expert Plugin is loaded:
  clawd-prj/kung-fu/experts/fitness-performance-coach/
    EXPERT.md              ← world-class domain expertise + cognitive approach + learning sources
    skills/                ← deep knowledge library (auto-updated by weekly learning loop)
    commands/              ← step-by-step playbooks and SOPs

  ~/clawd/kung-fu-config/experts/fitness-performance-coach/  ← private config overlay (not in shared repo)
    PLAYBOOK.md            ← your organisation's defaults, tools, and standards
    USER.md                ← your personal config, generated during onboarding
```

---

## What is an Expert Plugin?

> *"He's beginning to believe."*

An Expert Plugin is a self-contained package of expertise. Think of it less like a config file and more like hiring the world's best practitioner in a field and having them available instantly.

Each plugin is built to answer: *what would the world's best expert in this domain actually know, use, and do?*

**See it in action → [Before / After Demo](docs/examples/demo.md)** — same question, same model, with and without an expert loaded. The delta is the whole point.

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

Written as if describing the best human in the world at that job. Generic — works for anyone, publishable to [ClawHub](https://clawhub.com) *(coming soon — OpenClaw's planned package registry)*.

### skills/ — the knowledge library

Deep domain knowledge, organised by sub-discipline. Each `SKILL.md` is a synthesised expertise document: frameworks, heuristics, evidence base, key principles. Detailed reference material lives in `references/` subdirectories — keeping the core skill file lean and fast to load.

### commands/ — the playbooks

Step-by-step SOPs for the scenarios this expert handles most. When you ask the expert to `/plan-trip`, `/interpret-labs`, or `/deep-research`, there's a structured playbook behind it.

### Skills vs Commands — the most common point of confusion

| | Skills | Commands |
|---|---|---|
| **What it is** | Background knowledge, always present | Step-by-step playbook, run on request |
| **When it loads** | Automatically, with the expert | When you ask for it |
| **Analogy** | A doctor's pharmacology knowledge — present in every consultation | A clinical assessment protocol — followed when seeing a patient |
| **Example** | HRV interpretation frameworks | `/interpret-biometrics` — walks through a specific biometric check-in |

Skills inform every response. Commands are explicit SOPs you invoke for specific tasks.

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
git clone --recurse-submodules https://github.com/ross-veitch/kung-fu clawd-prj/kung-fu

# Run the installer (creates symlinks, config overlay, sets up channel routing)
bash clawd-prj/kung-fu/install.sh

# Load an Expert Plugin (runs onboarding automatically if first time)
bash ~/clawd/scripts/load-expert.sh fitness-performance-coach
```

> **Personal config:** `PLAYBOOK.md` (org defaults) and `USER.md` (personal config) are **not** stored in this repo. They live in a separate config overlay directory — typically `~/clawd/kung-fu-config/`. This keeps the shared repo clean of personal and company-specific data. See [Improving Experts](docs/howto/improving-experts.md) for details.

Or just ask your agent:
> *"Load the Financial Analyst expert"*
> *"Switch to Research Analyst mode"*
> *"Run the Travel Concierge onboarding"*

**Full walkthrough:** [Getting Started →](docs/howto/getting-started.md)

---

## Built-in Expert Plugins

The **Size** column shows the context cost when the expert loads (EXPERT.md + skills). Commands are on-demand and don't add to this. See [context budget guidance](docs/architecture.md#context-window-budget) for the full breakdown.

| Expert Plugin | Domain | Size | Anthropic plugin |
|---|---|---|---|
| [Data Analyst](experts/data-analyst/) | SQL, Python, BI, A/B testing, causal inference | 🟢 S | [data](https://github.com/anthropics/knowledge-work-plugins/tree/main/data) |
| [Executive Assistant](experts/executive-assistant/) | Calendar, comms, time management, stakeholder ops | 🟢 S | [productivity](https://github.com/anthropics/knowledge-work-plugins/tree/main/productivity) |
| [Executive Coach](experts/executive-coach/) | Leadership coaching, decision-making, high-stakes conversations, post-meeting debrief | 🟢 S | — |
| [Financial Analyst](experts/financial-analyst/) | Modelling, valuation, unit economics, deal analysis | 🟢 S | [finance](https://github.com/anthropics/knowledge-work-plugins/tree/main/finance) |
| [Fitness & Performance Coach](experts/fitness-performance-coach/) | Training, recovery, biometrics, periodisation | 🟡 M | — |
| [Futurist](experts/futurist/) | Structural foresight, scenario planning, exponential tech, AI trajectory, systems thinking | 🔴 XL | — |
| [Growth Marketer](experts/growth-marketer/) | Paid acquisition, SEO, CRO, lifecycle marketing, experimentation, attribution | 🟡 M | — |
| [Investment Banker](experts/investment-banker/) | M&A, capital raises, valuation, pitchbooks, due diligence, term sheets | 🟡 M | — |
| [Lawyer](experts/lawyer/) | Corporate law, contracts, data privacy, IP, M&A, governance | 🟢 S | [legal](https://github.com/anthropics/knowledge-work-plugins/tree/main/legal) |
| [Longevity & Human Optimization Physician](experts/longevity-human-optimization-physician/) | Biomarkers, prevention protocols, emerging interventions | 🟢 S | — |
| [Management Consultant](experts/management-consultant/) | Strategy, unit economics, growth diagnostics, travel/aviation/AI sector intelligence, capital allocation | 🟠 L | — |
| [Mandarin Chinese Language Teacher](experts/mandarin-chinese-language-teacher/) | Adult acquisition, tones, characters, HSK | 🟢 S | — |
| [MENA Market Specialist](experts/mena-market-specialist/) | Saudi, UAE, Egypt, GCC market entry, Vision 2030, regulatory, business culture | 🟡 M | — |
| [News Editor](experts/news-editor/) | Editorial judgment, curation, verification, multi-beat coverage | 🟢 S | — |
| [People Partner](experts/people-partner/) | Org design, talent, performance management, compensation, multi-jurisdiction HR | 🟡 M | — |
| [Pricing & Revenue Manager](experts/pricing-revenue-manager/) | Dynamic pricing, yield management, take rate strategy, OTA/hotel/airline economics | 🟢 S | — |
| [Product Manager](experts/product-manager/) | Product strategy, discovery, prioritisation, metrics, roadmap, PRDs | 🟡 M | — |
| [Research Analyst](experts/research-analyst/) | Deep research, synthesis, competitive intelligence, due diligence | 🟢 S | — |
| [Software Engineer](experts/software-engineer/) | Full-stack architecture, SDLC, code review, production readiness | 🟢 S | — |
| [Travel Concierge](experts/travel-concierge/) | Points/miles, routing, hotels, logistics | 🟢 S | — |
| [Travel Industry Analyst](experts/travel-industry-analyst/) | OTA economics, airline distribution, hotel distribution, competitive analysis, market sizing | 🟡 M | — |

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

**Run it:** ask your agent *"Create a new Expert Plugin for [role]"*, or see [`commands/create-expert.md`](commands/create-expert.md) for the full playbook.

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
Full source capability docs: [`docs/reference/staying-current-sources.md`](docs/reference/staying-current-sources.md)

### Which experts have a learning loop

Five experts currently have live learning sources configured: `news-editor`, `futurist`, `fitness-performance-coach`, `management-consultant`, `longevity-human-optimization-physician`. The remaining experts have static knowledge — add a `<!-- SOURCES -->` block to any expert to enable their learning loop.

See [Staying current](docs/howto/staying-current.md) for the full guide.

---

## Sharing and distribution

> *"He is the one."*

The published files in every Expert Plugin — `EXPERT.md`, `skills/`, `commands/`, `plugin.json` — contain no personal information. They are the generic, reusable layer. Anyone can download them and run the onboarding to get their own `USER.md`.

Expert Plugins are designed to be published on [ClawHub](https://clawhub.com) *(coming soon — OpenClaw's planned package registry)*, using the same distribution mechanism as OpenClaw skills.

---

## Documentation

| Doc | Description |
|---|---|
| [Getting started](docs/howto/getting-started.md) | Clone → install → onboard → load your first expert |
| [Architecture](docs/architecture.md) | How Expert Plugin injection works alongside SOUL.md |
| [Expert index](docs/experts/index.md) | All available experts with domains and commands |
| [Loading experts](docs/howto/loading.md) | Manual and automatic plugin loading |
| [Channel routing](docs/howto/channel-routing.md) | Auto-loading experts based on Slack channel |
| [Auto-invocation](docs/howto/auto-invocation.md) | Topic-based automatic expert loading with confidence tiers |
| [Authoring a PLAYBOOK.md](docs/howto/authoring-playbook.md) | Writing the org-level config layer for an expert |
| [Improving experts](docs/howto/improving-experts.md) | Manual improvement: fixing gaps, adding skills and commands |
| [Staying current](docs/howto/staying-current.md) | Automated learning loop: live sources, weekly updates, CHANGELOG |
| [Sub-agent integration](docs/howto/sub-agents.md) | Expert Plugins in spawned agents |
| [Cron job integration](docs/howto/cron-jobs.md) | Expert Plugin injection in scheduled tasks |
| [Updating](docs/howto/updating.md) | How to pull new experts and bug fixes; what auto-propagates |
| [Creating experts](docs/howto/creating-experts.md) | Step-by-step guide to building a new expert |
| [Design decisions](docs/reference/design-decisions.md) | Architecture decisions and rationale |
| [load-expert.sh reference](docs/reference/load-expert.md) | CLI reference for the expert loader script |

---

## Requirements

- [OpenClaw](https://github.com/openclaw/openclaw) v2026.2+ with `sessions_spawn` support
- `~/clawd/SOUL.md` — your agent's permanent identity (never modified by Kung Fu)
- `~/clawd/AGENTS.md` configured to read `SOUL.md` at startup
- `python3` — used by `load-expert.sh` for JSON parsing (standard on macOS and most Linux distros)

---

## License

MIT
