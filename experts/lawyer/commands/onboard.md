# /onboard

First-time setup for the **Lawyer** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/lawyer/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the lawyer onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's the primary jurisdiction for your contracts and dispute resolution? (e.g. Delaware, England & Wales, Singapore)
2. Where is your company incorporated?
3. In which countries does your business operate?
4. What are your standard contract positions on key terms? (e.g. indemnity caps, warranty periods, IP ownership)
5. What's your organisation's risk appetite? (conservative / commercial / aggressive)
6. What's your default preference for contract term length?
7. What's your standard liability cap position? (e.g. 12 months fees, contract value, uncapped for certain categories)
8. What categories of personal data does your business process? (e.g. customer PII, employee data, payment data)
9. Who are your preferred outside counsel? (law firms by jurisdiction and practice area)
10. Who's on the in-house legal team, and what's the escalation path? (if applicable)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/lawyer/USER.md`

```markdown
# Lawyer — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~governing-law: [answer]
- ~~company-jurisdiction: [answer]
- ~~operating-jurisdictions: [answer]
- ~~contract-playbook: [answer]
- ~~risk-tolerance: [answer]
- ~~standard-term: [answer]
- ~~liability-cap: [answer]
- ~~data-categories: [answer]
- ~~outside-counsel: [answer]
- ~~legal-team: [answer]

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
5. What's your contract approval process? (e.g. legal review all contracts >$X, CEO approval for liability, board for M&A)
6. Are there any specific regulatory or compliance frameworks you must adhere to? (GDPR, CCPA, industry-specific)
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/lawyer/PLAYBOOK.md`

```markdown
# Lawyer — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Approval process: [answer]
- Compliance frameworks: [answer]
- Guardrails: [answer]

## Tools and systems
- Governing law: [from USER.md]
- Liability cap: [from USER.md]
- Outside counsel: [from USER.md]
```

---

## After onboarding

Confirm to the user:
> *"✅ Lawyer onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/lawyer/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh lawyer`"*
