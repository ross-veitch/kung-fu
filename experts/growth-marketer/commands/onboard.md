# /onboard

First-time setup for the **Growth Marketer** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/growth-marketer/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the growth-marketer onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's your company name?
2. What stage is the company at? (pre-product-market fit / scaling / growth stage / mature)
3. What's your current primary growth channel? (paid social, SEO, partnerships, etc.)
4. What's your North Star growth metric? (app installs, bookings, ARR, GMV, active users, etc.)
5. What's your target customer acquisition cost (CAC) or blended LTV:CAC ratio?
6. What analytics tools are you using? (Google Analytics, Mixpanel, Amplitude, etc.)
7. What attribution platform do you use? (if any)
8. What's your monthly paid acquisition budget? (order of magnitude is fine)
9. What experimentation or A/B testing platform do you use?
10. What CRM and lifecycle marketing platform do you use? (Braze, Iterable, Customer.io, etc.)
11. What's your primary market? (geography and user segment)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/growth-marketer/USER.md`

```markdown
# Growth Marketer — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~company-name: [answer]
- ~~company-stage: [answer]
- ~~primary-channel: [answer]
- ~~growth-metric: [answer]
- ~~cac-target: [answer]
- ~~analytics-stack: [answer]
- ~~attribution-tool: [answer]
- ~~paid-budget: [answer]
- ~~ab-testing-tool: [answer]
- ~~crm-tool: [answer]
- ~~primary-market: [answer]

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
5. What's your growth team structure? (centralized growth team, embedded in product, marketing-led)
6. What's your experiment velocity and approval process? (ship fast & iterate, formal review, data committee)
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/growth-marketer/PLAYBOOK.md`

```markdown
# Growth Marketer — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Team structure: [answer]
- Experiment culture: [answer]
- Guardrails: [answer]

## Tools and systems
- Analytics: [from USER.md]
- Attribution: [from USER.md]
- A/B testing: [from USER.md]
- CRM: [from USER.md]
```

---

## After onboarding

Confirm to the user:
> *"✅ Growth Marketer onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/growth-marketer/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh growth-marketer`"*
