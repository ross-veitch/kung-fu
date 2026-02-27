# /onboard

First-time setup for the **Pricing & Revenue Manager** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/pricing-revenue-manager/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the pricing-revenue-manager onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's your company name?
2. What type of business are you in? (hotel, airline, OTA, marketplace, SaaS)
3. What's your primary geographic market and customer segment?
4. What pricing or revenue management system do you use? (if any)
5. What's your current take rate range? (for OTAs/marketplaces; or "N/A" for other business types)
6. What currency should I use for reporting?
7. What are your primary revenue metrics? (RevPAR, yield, GMV, ARR, etc.)
8. Who are your named competitors for rate benchmarking?
9. What rate shopping or market data tool do you use? (OTA Insight, STR, internal tool, etc.)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/pricing-revenue-manager/USER.md`

```markdown
# Pricing & Revenue Manager — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~company-name: [answer]
- ~~company-type: [answer]
- ~~primary-market: [answer]
- ~~pricing-system: [answer]
- ~~take-rate: [answer]
- ~~reporting-currency: [answer]
- ~~key-metrics: [answer]
- ~~competitor-set: [answer]
- ~~data-source: [answer]

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
5. What's your pricing strategy? (dynamic, competitive parity, premium positioning, cost-plus)
6. How frequently do you review and adjust pricing? (real-time, daily, weekly, monthly)
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/pricing-revenue-manager/PLAYBOOK.md`

```markdown
# Pricing & Revenue Manager — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Pricing strategy: [answer]
- Review cadence: [answer]
- Guardrails: [answer]

## Tools and systems
- Pricing system: [from USER.md]
- Data source: [from USER.md]
- Currency: [from USER.md]
```

---

## After onboarding

Confirm to the user:
> *"✅ Pricing & Revenue Manager onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/pricing-revenue-manager/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh pricing-revenue-manager`"*
