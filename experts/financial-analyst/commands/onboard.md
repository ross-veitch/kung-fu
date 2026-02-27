# /onboard

First-time setup for the **Financial Analyst** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/financial-analyst/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the financial-analyst onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's the name of the primary company you'll be analysing?
2. What's the revenue model and key economic drivers? (e.g. SaaS subscription, marketplace take rate, transactional)
3. What currency should I use for financial analysis? (USD, EUR, etc.)
4. What are the 5–7 key metrics that define business health?
5. What public or private companies do you use for benchmarking or comparables?
6. When does your fiscal year end? (e.g. December 31, June 30)
7. What spreadsheet or modelling tool do you primarily use? (Excel, Google Sheets, Python, etc.)
8. Where does financial data live? (ERP system, finance platform, manual exports, etc.)
9. Who is the ultimate audience for this analysis? (board, investors, management team, etc.)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/financial-analyst/USER.md`

```markdown
# Financial Analyst — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~company-name: [answer]
- ~~business-model: [answer]
- ~~reporting-currency: [answer]
- ~~key-metrics: [answer]
- ~~comparables: [answer]
- ~~fiscal-year: [answer]
- ~~financial-tool: [answer]
- ~~data-sources: [answer]
- ~~investor-context: [answer]

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
5. What's your standard reporting cadence? (monthly board decks, quarterly investor updates, annual planning cycles)
6. What financial reporting standards do you follow? (GAAP, IFRS, management reporting)
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/financial-analyst/PLAYBOOK.md`

```markdown
# Financial Analyst — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Reporting cadence: [answer]
- Reporting standards: [answer]
- Guardrails: [answer]

## Tools and systems
- Financial tool: [from USER.md]
- Data sources: [from USER.md]
- Currency: [from USER.md]
```

---

## After onboarding

Confirm to the user:
> *"✅ Financial Analyst onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/financial-analyst/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh financial-analyst`"*
