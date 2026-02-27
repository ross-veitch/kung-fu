# /onboard

First-time setup for the **Travel Concierge** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/travel-concierge/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the travel-concierge onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What are your primary departure airports? (home base airports you typically fly from)
2. What frequent flyer programs are you a member of, and what status levels? (e.g. Emirates Skywards Gold, SQ KrisFlyer Elite Gold)
3. What hotel loyalty programs and status levels? (e.g. Marriott Bonvoy Titanium, Hilton Diamond)
4. What's your default cabin preference? (economy, premium economy, business, first)
5. What's your seat preference? (window, aisle, forward cabin, exit row, etc.)
6. Any meal preferences or dietary requirements?
7. What's your passport nationality, and do you have any long-term visas? (e.g. UAE Golden Visa, US B1/B2)
8. What matters most when booking travel? (comfort, speed, cost optimization, points accumulation, etc.)
9. Are there any mandatory corporate booking tools or constraints?
10. Do you frequently travel with companions? (names and their loyalty program details, if relevant)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/travel-concierge/USER.md`

```markdown
# Travel Concierge — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~home-airports: [answer]
- ~~frequent-flyer-programs: [answer]
- ~~hotel-programs: [answer]
- ~~preferred-cabin: [answer]
- ~~seat-preference: [answer]
- ~~meal-preference: [answer]
- ~~visa-passport: [answer]
- ~~priority-values: [answer]
- ~~corporate-booking-tool: [answer]
- ~~travel-companions: [answer]

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
5. What's the company travel policy? (cabin class limits, booking lead time, approval process)
6. Are there preferred airlines, hotel chains, or corporate rates?
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/travel-concierge/PLAYBOOK.md`

```markdown
# Travel Concierge — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Travel policy: [answer]
- Preferred suppliers: [answer]
- Guardrails: [answer]

## Tools and systems
- Corporate booking: [from USER.md]
```

---

## After onboarding

Confirm to the user:
> *"✅ Travel Concierge onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/travel-concierge/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh travel-concierge`"*
