# /onboard

First-time setup for the **Executive Coach** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/executive-coach/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the executive-coach onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's the name of the leader I'll be coaching?
2. What's their title and organisational context? (e.g. CEO of 80-person company, VP Engineering at public company)
3. What stage is the company at? (seed / Series A / Series B-C / growth stage / public / turnaround)
4. What are the primary coaching themes or focus areas? (leadership identity / team dynamics / decision-making / communication / energy management / other)
5. Who are their key direct reports? (names and roles)
6. What's the board composition and any current tensions or dynamics I should be aware of?
7. What are the known patterns or challenges they want to work on? (growth edges, blind spots, recurring situations)
8. What's your operating timezone?

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/executive-coach/USER.md`

```markdown
# Executive Coach — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~leader-name: [answer]
- ~~leader-role: [answer]
- ~~company-stage: [answer]
- ~~coaching-focus: [answer]
- ~~direct-reports: [answer]
- ~~board-context: [answer]
- ~~growth-edges: [answer]
- ~~timezone: [answer]

## Personal context
[Any additional context or nuance from the conversation worth capturing]
```

---

## Part 2 — Organisation configuration (PLAYBOOK.md)

Ask these questions **one at a time**. Wait for the answer before proceeding.

1. What is your company/organisation name?
2. What is the company's primary business model and sector?
3. What stage is the company at? (startup / scale-up / growth / enterprise)
4. What geography do you primarily operate in?
5. What's the organisational culture like? (e.g. move fast & break things, consensus-driven, data-driven, founder-led)
6. Are there any sensitive topics or dynamics I should handle with extra care?
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/executive-coach/PLAYBOOK.md`

```markdown
# Executive Coach — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Culture: [answer]
- Sensitive topics: [answer]
- Guardrails: [answer]

## Tools and systems
[Any relevant leadership development tools, feedback systems, or assessment frameworks in use]
```

---

## After onboarding

Confirm to the user:
> *"✅ Executive Coach onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/executive-coach/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh executive-coach`"*
