# /onboard

First-time setup for the **Product Manager** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/product-manager/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the product-manager onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's your company name?
2. What type of product is this? (consumer app, B2B SaaS, marketplace, platform, API, other)
3. What's your North Star metric — the primary product success metric?
4. What roadmap or project management tool do you use? (Linear, Jira, Notion, Productboard, etc.)
5. What analytics platform(s) do you use? (Mixpanel, Amplitude, Google Analytics, etc.)
6. What design tool does your team use? (Figma, Sketch, Adobe XD, etc.)
7. What's your engineering team size? (approximate)
8. What's your sprint or planning cadence? (2-week sprints, monthly planning, continuous)
9. What stage is the product/company at? (discovery / PMF / growth / scale / mature)
10. What's your primary user segment or geographic market?

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/product-manager/USER.md`

```markdown
# Product Manager — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~company-name: [answer]
- ~~product-type: [answer]
- ~~north-star-metric: [answer]
- ~~pm-tool: [answer]
- ~~analytics-platform: [answer]
- ~~design-tool: [answer]
- ~~eng-team-size: [answer]
- ~~sprint-cadence: [answer]
- ~~stage: [answer]
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
5. What's your product development philosophy? (continuous delivery, waterfall, shaped bets, etc.)
6. How do product decisions get made? (PM-led, data-driven, founder-driven, customer-driven)
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/product-manager/PLAYBOOK.md`

```markdown
# Product Manager — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Development philosophy: [answer]
- Decision-making: [answer]
- Guardrails: [answer]

## Tools and systems
- PM tool: [from USER.md]
- Analytics: [from USER.md]
- Design: [from USER.md]
- Sprint cadence: [from USER.md]
```

---

## After onboarding

Confirm to the user:
> *"✅ Product Manager onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/product-manager/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh product-manager`"*
