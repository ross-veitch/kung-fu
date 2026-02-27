# /onboard

First-time setup for the **Management Consultant** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/management-consultant/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the management-consultant onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's the name of the company being advised?
2. What's the specific sector focus? (OTA, SaaS, marketplace, fintech, etc.)
3. How quickly does this decision need to be made? (days, weeks, months)
4. What's the capital context? (stage: seed/growth/mature/distressed; current burn rate; runway)
5. Who are the named competitors and what moves are they currently making?
6. What growth stage is the company at? (early / scaling / mature / distressed)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/management-consultant/USER.md`

```markdown
# Management Consultant — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~company-name: [answer]
- ~~industry-context: [answer]
- ~~decision-horizon: [answer]
- ~~capital-context: [answer]
- ~~competitive-context: [answer]
- ~~growth-stage: [answer]

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
5. What's your decision-making culture? (founder-led, consensus-driven, data-driven, board-driven)
6. What frameworks or methodologies do you typically use for strategic decisions? (e.g. OKRs, BCG matrix, Jobs-to-be-Done)
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/management-consultant/PLAYBOOK.md`

```markdown
# Management Consultant — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Decision-making culture: [answer]
- Frameworks: [answer]
- Guardrails: [answer]

## Tools and systems
[Any strategic planning tools, frameworks, or consulting resources in use]
```

---

## After onboarding

Confirm to the user:
> *"✅ Management Consultant onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/management-consultant/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh management-consultant`"*
