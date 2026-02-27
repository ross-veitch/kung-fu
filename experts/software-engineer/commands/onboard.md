# /onboard

First-time setup for the **Software Engineer** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/software-engineer/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the software-engineer onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What are your primary languages and frameworks? (e.g. TypeScript/React, Python/Django, Go/gRPC)
2. What cloud provider do you primarily use? (AWS, GCP, Azure, other)
3. What's your engineering team size? (approximate headcount)
4. Are there any compliance or security requirements I should know about? (SOC2, HIPAA, PCI-DSS, etc.)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/software-engineer/USER.md`

```markdown
# Software Engineer — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~primary-stack: [answer]
- ~~primary-cloud: [answer]
- ~~team-size: [answer]
- ~~compliance-requirements: [answer]

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
5. What's your code review and deployment process? (PR-based, trunk-based, CI/CD pipelines)
6. What architectural patterns or standards do you follow? (microservices, monolith, event-driven, REST/GraphQL)
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/software-engineer/PLAYBOOK.md`

```markdown
# Software Engineer — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Review/deployment: [answer]
- Architecture: [answer]
- Guardrails: [answer]

## Tools and systems
- Stack: [from USER.md]
- Cloud: [from USER.md]
- Compliance: [from USER.md]
```

---

## After onboarding

Confirm to the user:
> *"✅ Software Engineer onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/software-engineer/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh software-engineer`"*
