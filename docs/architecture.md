# Architecture

How Expert Plugin injection works alongside your `SOUL.md`.

---

## The invariant: SOUL.md never changes

`SOUL.md` is never touched during expert loading. This is non-negotiable.

```
~/clawd/SOUL.md    ← identity, personality, tone, relationship. permanent.
```

When OpenClaw starts a session, it reads `SOUL.md` as part of startup (via `AGENTS.md`). That defines *who the agent is*. Kung Fu doesn't modify this — it adds domain capability on top of it.

> *"I know kung fu." Neo is still Neo. He just downloaded the skill.*

---

## What injection looks like

When an expert is active, the full stack is present in the session context simultaneously:

```
Session context:
  [SOUL.md — identity, personality, trust]               ← always present, never replaced
  +
  [EXPERT.md — domain expertise, cognitive approach]     ← generic; injected when expert active
  +
  [skills/ — deep knowledge library]                     ← auto-loaded with EXPERT.md
  +
  [PLAYBOOK.md — org-level config]                       ← injected if present in config overlay
  +
  [USER.md — personalised context for this user]         ← injected if present in config overlay
```

Same personality. New domain capability. Injection is additive, never substitutive.

**PLAYBOOK.md and USER.md** live outside the shared repo in a private config overlay (`~/clawd/kung-fu-config/`). See [The config overlay](#the-config-overlay) below.

---

## Expert Plugin file structure

Expert Plugins follow the `anthropics/knowledge-work-plugins` convention, extended with our additions.

```
clawd-prj/kung-fu/experts/[expert-name]/
├── .plugin/
│   └── plugin.json        ← manifest: name, version, description, plugin dependencies
├── EXPERT.md              ← generic: domain expertise + cognitive approach + learning sources.
│                             NO personal or org data. Uses ~~ placeholders for user-specific values.
│                             Publishable to ClawHub as-is.
├── skills/                ← deep domain knowledge, auto-loaded with the expert
│   └── [domain]/
│       ├── SKILL.md       ← lean (< 3000 words), synthesised expertise
│       └── references/    ← detailed frameworks, tables, citations
└── commands/              ← explicit SOPs and playbooks
    └── [command].md       ← step-by-step procedure for a specific scenario
```

**PLAYBOOK.md and USER.md are NOT stored here.** They live in the private config overlay:

```
~/clawd/kung-fu-config/experts/[expert-name]/
├── PLAYBOOK.md            ← org-level config: company standards, tools, communication defaults.
│                             Written once per org, shared across all agents.
└── USER.md                ← personal config: generated during onboarding.
                              Resolves ~~ placeholders. Individual to each user.
```

### What lives where

| Content | Location |
|---------|----------|
| Role identity + professional bio | `EXPERT.md` |
| Cognitive approach (how to think in this domain) | `EXPERT.md` |
| Domain expertise, frameworks, best practices | `skills/[domain]/SKILL.md` |
| Detailed reference material, tables, citations | `skills/[domain]/references/` |
| Step-by-step workflows and playbooks | `commands/[command].md` |
| Company name, tools, standard positions, approval authorities | `PLAYBOOK.md` (org layer) |
| Department-specific SOPs, risk tolerance, org data sources | `PLAYBOOK.md` (org layer) |
| User's name, personal accounts, individual preferences | `USER.md` (personal layer) |
| Individual goals, personal credentials, personal context | `USER.md` (personal layer) |
| Anything with a real email, URL, or account name | `PLAYBOOK.md` or `USER.md` |

---

## Skills vs commands

The most common point of confusion. They serve completely different purposes.

### Skills — passive background knowledge

`skills/[domain]/SKILL.md` files are **automatically loaded** when the expert plugin is active. The agent draws on them throughout the whole conversation without you asking. Think of them as the expert's reference library, always open.

A `SKILL.md` file contains: frameworks, heuristics, domain vocabulary, interpretation guides, best practices. It informs every response — passively.

**Example:** `fitness-performance-coach/skills/biometrics/SKILL.md` contains the HRV interpretation framework, heart rate zone thresholds, and escalation triggers. Any time the fitness coach is active, it *knows* this — you don't invoke it.

### Commands — explicit structured workflows

`commands/[command].md` files are **invoked by name** (`/command-name`). They define a step-by-step SOP for a specific recurring task: what inputs to gather, how to process them, what decision framework to apply, what the output looks like.

A command file contains: input gathering steps, a classification or decision framework, a specific output template, escalation triggers. It only runs when you call it.

**Example:** `/interpret-biometrics` is a full workflow: gather today's HRV + sleep + RHR → process each metric against optimal ranges → classify GREEN/YELLOW/RED → output a formatted readiness report. It uses the knowledge in `skills/biometrics/` but orchestrates it into a specific deliverable.

### Side by side

| | Skill | Command |
|---|---|---|
| When active | Whole session — passive | Only when invoked |
| How invoked | Auto-loaded with expert plugin | `/command-name` |
| Purpose | Background knowledge that improves all responses | Structured workflow producing a specific output |
| Format | Synthesised expertise (prose + tables) | Step-by-step procedure + output template |
| Example | HRV interpretation framework | Run a full biometric readiness report |

**The analogy:** A doctor knows pharmacology throughout every consultation (skill). When they see a patient, they follow a clinical assessment protocol (command). The command draws on the skill — but they're not the same thing.

### When to write a skill vs a command

**Write a skill when:** The agent needs to *know something* across all interactions in this domain — frameworks, heuristics, vocabulary, data sources.

**Write a command when:** There's a recurring task with a predictable structure — specific inputs, a decision process, a specific output format. If you find yourself writing the same instructions in multiple prompts, it belongs in a command.

---

## The three-layer configuration cascade

Expert Plugins support three configuration layers. More specific layers override less specific ones.

```
EXPERT.md      ← base: generic, publishable, no personal or org data
    +
PLAYBOOK.md    ← org layer: company standards, tools, approval authorities,
                  risk tolerance, regulatory context, department SOPs.
                  Written once, shared across all agents in the org.
                  Local only — never committed to the public repo.
    +
USER.md        ← personal layer: individual preferences, accounts, goals.
                  Each agent/user maintains their own.
                  Local only — never committed to the public repo.
```

**Loading priority**: `USER.md` > `PLAYBOOK.md` > `EXPERT.md`. If `USER.md` defines `reporting-currency: AED` and `PLAYBOOK.md` defines `reporting-currency: USD`, the personal layer wins for that agent. If `USER.md` is silent on something, `PLAYBOOK.md` governs. If `PLAYBOOK.md` is silent, `EXPERT.md` defaults apply.

### Why two local layers matter for org-wide deployment

When deploying Expert Plugins across an organisation (multiple agents, multiple users):

- **IT / ops team** writes one `PLAYBOOK.md` per expert — shared across all agents in the org. When a company standard changes, it's updated in one place.
- **Each individual** creates their own `USER.md` via the personal onboarding conversation.
- **Virtual employees** (AI agents with no individual user) load only `EXPERT.md` + `PLAYBOOK.md` — the org playbook IS their full configuration.

```
                        EXPERT.md (generic, shared with world)
                             +
Personal assistant  ──→  PLAYBOOK.md (org standards + tools)
                             +
                        USER.md (individual context)

Virtual employee  ────→  PLAYBOOK.md (org standards + tools)
                         [no USER.md — org config is the full config]
```

### What goes in PLAYBOOK.md vs USER.md

| Content | PLAYBOOK.md | USER.md |
|---------|-------------|---------|
| Company name, description, operating jurisdictions | ✓ | |
| Standard contract positions, liability caps | ✓ | |
| Approval authorities, sign-off thresholds | ✓ | |
| Company tools (JIRA URL, Slack workspace, ERP, etc.) | ✓ | |
| Company risk tolerance | ✓ | |
| Department-specific SOPs and escalation criteria | ✓ | |
| Individual name, title, personal email | | ✓ |
| Personal accounts (loyalty programmes, etc.) | | ✓ |
| Individual goals and preferences | | ✓ |
| Personal credentials and calendar access | | ✓ |

---

### The `~~` placeholder pattern

Generic `EXPERT.md` and `skills/` files use `~~` prefixes to mark anything that must be customised for the specific user during onboarding:

```markdown
Primary calendar tool: ~~calendar-tool
Reporting currency: ~~reporting-currency
Home airport: ~~home-airport
```

After onboarding, `USER.md` provides the resolved values:

```markdown
## Resolved configuration
- ~~calendar-tool: Google Calendar (your-email@company.com)
- ~~reporting-currency: USD
- ~~home-airport: SIN (Singapore Changi)
```

When role is loaded, both files are injected — the agent reads `USER.md` and applies the values to fill `~~` references in `EXPERT.md`. This keeps generic roles generic and shareable, while USER.md holds everything personal.

### plugin.json manifest

Every expert plugin has `.plugin/plugin.json`:

```json
{
  "name": "role-slug",
  "version": "0.1.0",
  "description": "One-line description of the role.",
  "author": { "name": "Author Name" },
  "plugins": ["anthropics/knowledge-work-plugins/[plugin-name]"],
  "keywords": ["domain", "function", "expertise-area"]
}
```

The `plugins` field lists any `anthropics/knowledge-work-plugins` packs this role builds on or references.

---

## The config overlay

Personal and org config live **outside** the shared repo in a private directory:

```
~/clawd/kung-fu-config/           ← private; stays in your own repo, never published
├── experts/
│   └── [expert-name]/
│       ├── PLAYBOOK.md           ← org-level config for this expert
│       └── USER.md               ← personal config (generated during onboarding)
├── config/
│   └── channel-routing.json      ← Slack channel → expert bindings
└── data/
    └── playbook-reviewed.json    ← tracks first-use PLAYBOOK review status
```

`load-expert.sh` checks `~/clawd/kung-fu-config/experts/[name]/` first for `PLAYBOOK.md` and `USER.md`, falling back to the expert directory for backwards compatibility. The lookup path is controlled by the `KUNG_FU_CONFIG_DIR` environment variable (default: `~/clawd/kung-fu-config`).

This keeps the shared repo clean — no personal emails, company names, Slack IDs, or account credentials ever touch it.

See [Authoring a PLAYBOOK.md](../howto/authoring-playbook.md) for a template and guide.

---

## How loading works

### Main session loading

`load-expert.sh` reads the full stack and injects into the current session:

```
bash ~/clawd/scripts/load-expert.sh management-consultant

Reads (in order):
  1. clawd-prj/kung-fu/experts/management-consultant/EXPERT.md    ← generic
  2. clawd-prj/kung-fu/experts/management-consultant/skills/       ← domain knowledge
  3. ~/clawd/kung-fu-config/experts/management-consultant/PLAYBOOK.md  ← org config (if present)
  4. ~/clawd/kung-fu-config/experts/management-consultant/USER.md      ← personal config (if present)

Result: SOUL.md + EXPERT.md + skills/ + PLAYBOOK.md + USER.md
        Personality unchanged. Domain capability active.
```

To unload: start a fresh thread. Role context is session-scoped.

### Sub-agent injection

When spawning a sub-agent, the full stack is prepended to the task:

```
sessions_spawn task:
  [Contents of SOUL.md]        ← sub-agent has full identity
  ---
  [Contents of EXPERT.md]      ← generic domain capability
  ---
  [Contents of PLAYBOOK.md]    ← org config if present
  ---
  [Contents of USER.md]        ← personal config if present
  ---
  [Task instructions]
```

Sub-agents behave like the same agent with specialist knowledge — not a different persona.

### Cron job injection

Cron jobs use the same pattern:

```
agentTurn message:
  [SOUL.md content]
  ---
  [EXPERT.md content]
  ---
  [PLAYBOOK.md content, if present]
  ---
  [USER.md content, if present]
  ---
  [Cron task instructions]
```

---

## Anthropic knowledge-work-plugins alignment

The `skills/` and `commands/` naming convention is adopted directly from [`anthropics/knowledge-work-plugins`](https://github.com/anthropics/knowledge-work-plugins). This means:

1. **Vendor compatibility** — expert plugins can reference Anthropic's domain plugins directly and extend them
2. **Familiar structure** — anyone who has used Anthropic's plugins will recognise the layout
3. **ClawHub publishable** — generic expert plugins can be published and shared without modification

Key differences from Anthropic's structure:
- We add `EXPERT.md` at the root (cognitive identity layer — not present in Anthropic's plugins)
- We add `USER.md` (personalisation layer — Anthropic's plugins are inherently generic)
- We add `.plugin/plugin.json` instead of `.claude-plugin/plugin.json`
- We don't use `.plugin` binary packaging or MCP server config (not relevant to our use case)

---

## Expert creation process

New expert plugins are created through a 5-phase process (see `commands/create-expert.md`):

| Phase | What happens |
|-------|-------------|
| 1. Research | Web research: what does the best-in-class version of this role look like? Role models, key frameworks, core methodology. |
| 2. Component plan | Decide which `skills/` domains and `commands/` playbooks are needed |
| 3. Design | Nail down scope, knowledge areas, SOP priorities. Identify `~~` placeholders. |
| 4. Implementation | Write `EXPERT.md` + `skills/` + `commands/` + `plugin.json`. Generic only — no personal data. |
| 5. Onboarding | Conversational walkthrough to populate `USER.md` with resolved `~~` values and user context |

Generic roles should be written as if describing the best human in that field for the first time — a job description and professional bio, not a config file.

---

## What an Expert Plugin does *not* do

| Belongs in `SOUL.md` | Belongs in `EXPERT.md` / `skills/` | Belongs in `PLAYBOOK.md` | Belongs in `USER.md` |
|---------------------|----------------------------------|--------------------------|----------------------|
| How the agent talks | Domain frameworks and methodology | Company name and tools | User's name and accounts |
| Personality traits | Expert-specific SOPs | Org approval authorities | Personal goals and history |
| Communication style | Cognitive approach for this domain | Risk tolerance and compliance | Personal accounts and credentials |
| Trust rules | Domain vocabulary | Standard org positions | Individual preferences |
| Directness, wit, brevity | Best practices, red flags | Slack channels, JIRA URLs | Timezone and working patterns |

If it changes how the agent *sounds* → `SOUL.md`.
If it changes what the agent *knows or does* in this domain → `EXPERT.md` / `skills/`.
If it's specific to *this organisation* → `PLAYBOOK.md`.
If it's specific to *this individual* → `USER.md`.

---

## Session isolation

Sub-agents and cron jobs run in isolated sessions. Expert plugin injection in those sessions doesn't affect the main session.

```
Main session              Sub-agent A                   Sub-agent B
(bare SOUL.md)            (SOUL + financial-analyst)    (SOUL + research-analyst)
       │                           │                             │
       │   Independent context     │   Independent               │
       │   windows                 │                             │
       └───────────────────────────┴─────────────────────────────┘
                       Results routed back to requester
```

---

## Comparing to soul-switching

| | Soul-switching | Expert Plugin injection (Kung Fu) |
|--|----------------|--------------------------|
| SOUL.md | Replaced | Unchanged |
| Personality in sub-agents | Lost | Preserved |
| Relationship context | Broken | Continuous |
| Multiple concurrent roles | Impossible | Possible |
| Role is shareable/publishable | No | Yes (generic EXPERT.md) |
| User context | Baked into the soul file | Separate USER.md |
| Domain knowledge reuse | Copy-paste | Composable |

---

## Full file structure

**Shared repo** (`clawd-prj/kung-fu/` → `https://github.com/ross-veitch/kung-fu`):
```
clawd-prj/kung-fu/
├── docs/                          ← documentation
│   ├── architecture.md            ← you are here
│   ├── howto/                     ← how-to guides
│   └── reference/
├── experts/                       ← expert plugin library (21 experts)
│   └── [expert-name]/
│       ├── .plugin/
│       │   └── plugin.json        ← manifest: name, version, dependencies
│       ├── EXPERT.md              ← generic, publishable — domain expertise + learning sources
│       ├── skills/                ← deep domain knowledge, auto-loaded
│       │   └── [domain]/
│       │       ├── SKILL.md       ← synthesised expertise (< 3000 words)
│       │       └── references/    ← detailed frameworks, tables, citations
│       └── commands/              ← explicit SOPs and playbooks
│           └── [command].md
├── commands/
│   └── create-expert.md           ← guided expert creation workflow
├── scripts/
│   ├── load-expert.sh             ← loads expert stack into session
│   └── spawn-with-expert.sh       ← spawns sub-agent with full stack
└── vendor/
    ├── knowledge-work-plugins/    ← Anthropic plugins (submodule)
    └── claude-plugins-official/   ← Claude Code plugins (submodule)
```

**Private config overlay** (`~/clawd/kung-fu-config/` — stays in your private repo):
```
kung-fu-config/
├── experts/
│   └── [expert-name]/
│       ├── PLAYBOOK.md            ← org-level config (Wego-specific defaults, tools, standards)
│       └── USER.md                ← personal config (generated during onboarding)
├── config/
│   └── channel-routing.json       ← Slack channel ID → expert name mappings
└── data/
    └── playbook-reviewed.json     ← tracks first-use PLAYBOOK review per expert
```

**Scripts** (installed to `~/clawd/scripts/`):
```
~/clawd/scripts/
├── load-expert.sh                 ← symlink → kung-fu/scripts/load-expert.sh; reads KUNG_FU_CONFIG_DIR for overlay
├── spawn-with-expert.sh           ← spawns sub-agents with full stack injected
└── staying-current.mjs            ← weekly learning loop runner
```

---

## Context window budget

Every expert plugin injects tokens into the session context when loaded. This is the most important practical tradeoff to understand: deeper expertise costs more context, which means less space for conversation history, tool outputs, and reasoning.

### Token costs by expert (EXPERT.md + skills, commands excluded)

Commands are loaded on-demand via the command files and don't contribute to the baseline context cost shown here.

| Expert | ~Tokens | Size |
|--------|---------|------|
| Executive Assistant | 2,200 | 🟢 S |
| Financial Analyst | 2,300 | 🟢 S |
| Research Analyst | 2,300 | 🟢 S |
| Travel Concierge | 2,500 | 🟢 S |
| Mandarin Teacher | 2,600 | 🟢 S |
| News Editor | 2,600 | 🟢 S |
| Longevity Physician | 3,100 | 🟢 S |
| Lawyer | 4,100 | 🟢 S |
| Data Analyst | 4,400 | 🟢 S |
| Executive Coach | 4,600 | 🟢 S |
| Pricing & Revenue Manager | 4,600 | 🟢 S |
| Software Engineer | 4,800 | 🟢 S |
| Travel Industry Analyst | 5,200 | 🟡 M |
| Growth Marketer | 5,500 | 🟡 M |
| MENA Market Specialist | 6,200 | 🟡 M |
| Product Manager | 6,500 | 🟡 M |
| Investment Banker | 6,800 | 🟡 M |
| People Partner | 7,400 | 🟡 M |
| Fitness & Performance Coach | 9,000 | 🟡 M |
| Management Consultant | 9,200 | 🟡 M |
| Futurist | 22,100 | 🔴 XL |

**Size tiers:**
- 🟢 **S** (< 5k): Negligible overhead — use freely in any session length
- 🟡 **M** (5k–10k): Moderate — comfortable for most sessions
- 🟠 **L** (10k–20k): Noticeable — be mindful in very long multi-turn sessions with heavy tool use
- 🔴 **XL** (> 20k): Heavy — excellent depth, but front-loads significant context

### Recommended upper limit

**10,000 tokens** is a reasonable soft limit for a single expert. Below this, the context overhead is unlikely to be the constraint in most sessions. Above it, start asking: is every skill file earning its place? Could some skills be moved to on-demand loading via `load-plugin.sh`?

The futurist (~22k) and management consultant (~13k) both exceed this. The futurist was recently reduced from ~33k through command and skill consolidation. Both are justified by the depth of their domain — but if you're running very long sessions, prefer short focused sessions over marathon multi-turn ones.

### Multi-expert loading

Loading multiple experts multiplies the cost. Two 🟡 M experts = ~15–18k tokens of expert context before the conversation starts. Three experts can easily exceed 25k. Use multi-expert loading for genuinely cross-domain tasks; for single-domain tasks, load one expert and unload (start a new session) when the topic changes.

### Practical guidance

- **Short tasks**: any expert size is fine. The session won't accumulate enough conversation to hit practical limits.
- **Long multi-turn sessions**: prefer 🟢 S or 🟡 M experts. More context headroom means the model sees more of the conversation history.
- **Cron jobs and sub-agents**: these are isolated sessions — context budget resets. Expert size doesn't compound across runs.
- **The Futurist in long sessions**: the XL cost is justified by domain depth. Run focused sessions (one scenario, one strategy question) rather than open-ended conversations. The depth pays off when you need it.

### Keeping experts lean

The authoring guide targets EXPERT.md under 2,000 words and each SKILL.md under 3,000 words. These are not arbitrary limits — they're calibrated to keep individual experts under the 10k soft limit while providing genuine domain depth. See [Authoring Experts](../howto/authoring-experts.md).
