# /onboard

First-time setup for the **MENA Market Specialist** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/mena-market-specialist/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the mena-market-specialist onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's your company name?
2. Which MENA market(s) are you most interested in? (UAE, Saudi Arabia, Egypt, Jordan, etc.)
3. What type of business are you in? (tech platform, marketplace, SaaS, professional services, etc.)
4. What's your current MENA presence? (office, remote team, no presence yet, etc.)
5. Do you have any existing local partners or contacts in the region?
6. What Arabic language capability exists in-house? (native speakers, business-level, none)
7. What's the order of magnitude for deals or contracts you're considering? ($10K, $100K, $1M+)
8. Do you have any existing regulatory approvals, licenses, or entities in MENA?
9. What's your desired timeline for market entry or expansion milestones?

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/mena-market-specialist/USER.md`

```markdown
# MENA Market Specialist — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~company-name: [answer]
- ~~primary-market: [answer]
- ~~business-type: [answer]
- ~~current-presence: [answer]
- ~~local-partners: [answer]
- ~~arabic-capability: [answer]
- ~~deal-size: [answer]
- ~~regulatory-status: [answer]
- ~~timeline: [answer]

## Personal context
[Any additional context or nuance from the conversation worth capturing]
```

---

## Part 2 — Organisation configuration (PLAYBOOK.md)

Ask these questions **one at a time**. Wait for the answer before proceeding.

1. What is your company/organisation name?
2. What is the company's primary business model and sector?
3. What stage is the company at? (startup / scale-up / growth / enterprise)
4. What geography do you primarily operate in currently?
5. What's your MENA strategy? (direct entry, partnership, acquisition, pilot-then-scale)
6. Are there any cultural, regulatory, or operational considerations specific to your business in MENA?
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/mena-market-specialist/PLAYBOOK.md`

```markdown
# MENA Market Specialist — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- MENA strategy: [answer]
- Regional considerations: [answer]
- Guardrails: [answer]

## Tools and systems
[Any MENA-specific tools, networks, or resources in use]
```

---

## After onboarding

Confirm to the user:
> *"✅ MENA Market Specialist onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/mena-market-specialist/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh mena-market-specialist`"*
