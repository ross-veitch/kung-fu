# /onboard

First-time setup for the **People Partner** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/people-partner/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the people-partner onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's your company name?
2. What's the approximate headcount or headcount range?
3. In which countries are employees based?
4. What HRIS platform do you use? (BambooHR, Workday, Rippling, etc.)
5. What applicant tracking system (ATS) do you use? (Greenhouse, Lever, Ashby, etc.)
6. What compensation benchmarking source do you use? (Radford, Pave, OptionImpact, Levels.fyi, etc.)
7. How often do performance reviews happen? (annual, bi-annual, continuous feedback)
8. What's your compensation philosophy? (50th percentile / 75th percentile / top-of-market)
9. What's your current open headcount or hiring velocity? (approximate)
10. What equity structure do you use? (stock options, RSUs, none)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/people-partner/USER.md`

```markdown
# People Partner — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~company-name: [answer]
- ~~company-size: [answer]
- ~~jurisdictions: [answer]
- ~~hris: [answer]
- ~~ats: [answer]
- ~~comp-benchmark-source: [answer]
- ~~performance-review-cycle: [answer]
- ~~comp-philosophy: [answer]
- ~~open-headcount: [answer]
- ~~equity-plan: [answer]

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
5. What's your company culture or values? (brief description)
6. What's your typical hiring process? (number of stages, who's involved)
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/people-partner/PLAYBOOK.md`

```markdown
# People Partner — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Culture/values: [answer]
- Hiring process: [answer]
- Guardrails: [answer]

## Tools and systems
- HRIS: [from USER.md]
- ATS: [from USER.md]
- Comp philosophy: [from USER.md]
- Performance cycle: [from USER.md]
```

---

## After onboarding

Confirm to the user:
> *"✅ People Partner onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/people-partner/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh people-partner`"*
