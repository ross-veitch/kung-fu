# Architecture

How role injection works alongside your `SOUL.md`.

---

## The invariant: SOUL.md never changes

`SOUL.md` is never touched during role loading. This is non-negotiable.

```
~/clawd/SOUL.md    ← identity, personality, tone, relationship. permanent.
```

When OpenClaw starts a session, it reads `SOUL.md` as part of startup (via `AGENTS.md`). That defines *who the agent is*. Kung Fu doesn't modify this — it adds domain capability on top of it.

> *"I know kung fu." Neo is still Neo. He just downloaded the skill.*

---

## What role injection looks like

When a role is active, the expert plugin is injected into the session context *in addition to* `SOUL.md`:

```
Session context:
  [SOUL.md — identity, personality, trust]       ← always present, never replaced
  +
  [EXPERT.md — domain expertise, cognitive bias]   ← generic; injected when role active
  +
  [USER.md — personalised context for this user] ← injected if present (post-onboarding)
```

Same personality. New domain capability. Role is additive, never substitutive.

---

## Role pack file structure

Role packs follow the `anthropics/knowledge-work-plugins` convention, extended with our additions.

```
experts/[role-name]/
├── .plugin/
│   └── plugin.json        ← manifest: name, version, description, plugin dependencies
├── EXPERT.md              ← generic: cognitive bias + role identity. NO personal/user data.
│                           Uses ~~ placeholders for anything user-specific.
│                           Publishable to ClawHub as-is.
├── skills/              ← (Anthropic convention) domain knowledge files, auto-loaded
│   └── [domain]/
│       ├── SKILL.md     ← lean (< 3000 words), synthesised expertise
│       └── references/  ← detailed content, frameworks, reference tables
├── commands/            ← (Anthropic convention) explicit SOPs and playbooks
│   └── [command].md     ← step-by-step procedures triggered by user request
└── USER.md              ← user-specific: resolves ~~ placeholders, personal context.
                            Created during onboarding. NOT generic. NOT publishable.
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
- ~~calendar-tool: Google Calendar (ross@wego.com)
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

## How loading works

### Main session loading

`load-expert.sh` reads `EXPERT.md` (and `USER.md` if present) and injects into the current session:

```
User: "Load financial analyst role"
  └── Agent runs load-expert.sh financial-analyst
        ├── Reads experts/financial-analyst/EXPERT.md
        ├── Reads experts/financial-analyst/USER.md (if exists)
        └── Injects both as system event

Result: SOUL.md (always present) + EXPERT.md + USER.md
        Personality unchanged. Domain capability active.
```

To unload: start a fresh session, or signal the role context should be dropped.

### Sub-agent role injection

When spawning a sub-agent, SOUL.md + expert plugin are both prepended to the task:

```
sessions_spawn task:
  [Contents of SOUL.md]            ← sub-agent has full identity
  ---
  [Contents of EXPERT.md]            ← generic domain capability
  ---
  [Contents of USER.md]            ← user context if available
  ---
  [Task instructions]
```

Sub-agents behave like the same agent with specialist knowledge — not a different persona with no history.

### Cron job injection

Cron jobs use the same triple-injection pattern:

```
agentTurn message:
  [SOUL.md content]
  ---
  [EXPERT.md content]
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

## Role creation process

New roles are created through a 5-phase process (see `commands/create-role.md`):

| Phase | What happens |
|-------|-------------|
| 1. Research | Web research: what does the best-in-class version of this role look like? Role models, key frameworks, core methodology. |
| 2. Component plan | Decide which `skills/` domains and `commands/` playbooks are needed |
| 3. Design | Nail down scope, knowledge areas, SOP priorities. Identify `~~` placeholders. |
| 4. Implementation | Write `EXPERT.md` + `skills/` + `commands/` + `plugin.json`. Generic only — no personal data. |
| 5. Onboarding | Conversational walkthrough to populate `USER.md` with resolved `~~` values and user context |

Generic roles should be written as if describing the best human in that field for the first time — a job description and professional bio, not a config file.

---

## What a role does *not* do

| Belongs in `SOUL.md` | Belongs in `EXPERT.md` / `skills/` | Belongs in `USER.md` |
|---------------------|----------------------------------|----------------------|
| How the agent talks | Domain frameworks and methodology | User's name and accounts |
| Personality traits | Role-specific SOPs | Company-specific context |
| Communication style | Cognitive approach for this domain | Tools and credentials |
| Trust rules | Domain vocabulary | Personal goals and history |
| Directness, wit, brevity | Best practices, red flags | Specific data sources |

If it changes how the agent *sounds* → `SOUL.md`.
If it changes what the agent *knows or does* in this domain → expert plugin.
If it's specific to *this user's* setup → `USER.md`.

---

## Session isolation

Sub-agents and cron jobs run in isolated sessions. Role injection in those sessions doesn't affect the main session.

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

| | Soul-switching | Role injection (Kung Fu) |
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

```
clawd-prj/kung-fu/
├── docs/                        ← this documentation
│   ├── architecture.md          ← you are here
│   ├── howto/
│   └── reference/
├── experts/                       ← expert plugin library
│   └── [role-name]/
│       ├── .plugin/
│       │   └── plugin.json        ← manifest
│       ├── EXPERT.md              ← generic, publishable
│       ├── skills/              ← domain knowledge
│       │   └── [domain]/
│       │       ├── SKILL.md
│       │       └── references/
│       ├── commands/            ← explicit SOPs
│       │   └── [command].md
│       └── USER.md              ← user-specific (post-onboarding, not committed)
├── commands/
│   └── create-role.md           ← guided role creation workflow
└── scripts/
    ├── load-expert.sh
    └── spawn-with-expert.sh
```
