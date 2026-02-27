# /onboard

First-time setup for the **Travel Industry Analyst** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/travel-industry-analyst/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the travel-industry-analyst onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's your company name?
2. What's your primary focus area within travel? (airline, hotel, OTA, metasearch, corporate travel, cruise, etc.)
3. What geographic markets are you primarily interested in? (global, US, Europe, Asia-Pacific, MENA, etc.)
4. Who are the named competitors you track most closely?
5. What data subscriptions or market data do you have access to? (Skift, PhocusWire, STR, OAG, CAPA, etc.)
6. What's your primary analytical tool? (Excel, Python, SQL, Tableau, Power BI, etc.)
7. What type of organization are you? (OTA, airline, hotel group, VC/investor, consulting, analyst firm)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/travel-industry-analyst/USER.md`

```markdown
# Travel Industry Analyst — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~company-name: [answer]
- ~~focus-area: [answer]
- ~~primary-markets: [answer]
- ~~competitor-set: [answer]
- ~~data-access: [answer]
- ~~analytical-tool: [answer]
- ~~company-type: [answer]

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
5. What's the typical use case for industry analysis? (competitive intelligence, strategic planning, investor updates, product decisions)
6. What's your reporting cadence and format? (weekly briefs, quarterly deep dives, ad-hoc requests)
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/travel-industry-analyst/PLAYBOOK.md`

```markdown
# Travel Industry Analyst — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Analysis use case: [answer]
- Reporting cadence: [answer]
- Guardrails: [answer]

## Tools and systems
- Data subscriptions: [from USER.md]
- Analytical tool: [from USER.md]
```

---

## After onboarding

Confirm to the user:
> *"✅ Travel Industry Analyst onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/travel-industry-analyst/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh travel-industry-analyst`"*
