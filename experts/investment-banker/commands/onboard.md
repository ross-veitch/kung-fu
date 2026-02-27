# /onboard

First-time setup for the **Investment Banker** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/investment-banker/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the investment-banker onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's the name of the company you're advising or analysing?
2. What type of deal is this? (sell-side M&A, buy-side M&A, equity raise, debt raise, strategic review)
3. What sector is this company in? (SaaS, marketplace, OTA, fintech, consumer, industrial, etc.)
4. What currency should I use for financial analysis?
5. What's the expected or target valuation range? (if known, or "TBD")
6. What's the expected timeline for this transaction or engagement?
7. What modelling tool do you use? (Excel, Google Sheets, Python)
8. What market data sources do you have access to? (Bloomberg, FactSet, PitchBook, Koyfin, none)
9. What comparable companies or precedent transactions should I reference?
10. Who is being advised? (founder/CEO, board, buyer, LP/investor)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/investment-banker/USER.md`

```markdown
# Investment Banker — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~company-name: [answer]
- ~~deal-type: [answer]
- ~~sector: [answer]
- ~~reporting-currency: [answer]
- ~~target-valuation: [answer]
- ~~timeline: [answer]
- ~~financial-tool: [answer]
- ~~market-data-source: [answer]
- ~~comparables: [answer]
- ~~advisor-context: [answer]

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
5. What's your standard valuation methodology? (DCF-based, comps-driven, blend)
6. What's your typical deliverable format? (pitch deck, CIM, management presentation, detailed model)
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/investment-banker/PLAYBOOK.md`

```markdown
# Investment Banker — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Valuation methodology: [answer]
- Deliverable format: [answer]
- Guardrails: [answer]

## Tools and systems
- Modelling tool: [from USER.md]
- Market data: [from USER.md]
- Currency: [from USER.md]
```

---

## After onboarding

Confirm to the user:
> *"✅ Investment Banker onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/investment-banker/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh investment-banker`"*
