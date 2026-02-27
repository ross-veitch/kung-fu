# /onboard

First-time setup for the **News Editor** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/news-editor/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the news-editor onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What news categories or beats should I cover? (tech, finance, travel, MENA, health, AI, etc.)
2. What geographic regions are you most interested in? (global, US, Europe, Asia, MENA, etc.)
3. What format do you prefer for the digest? (bullet points, headlines only, summaries, sections)
4. Where should the digest be delivered? (specific Slack channel, email, etc.)
5. What are your preferred and trusted news sources? (publications, RSS feeds, newsletters)
6. Are there any sources I should avoid or flag as low-reliability?
7. What warrants a real-time alert vs waiting for the daily digest? (breaking news criteria)
8. How often should the digest be delivered, and at what time? (daily at 8am, twice-daily, weekly)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/news-editor/USER.md`

```markdown
# News Editor — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~primary-beats: [answer]
- ~~geography-focus: [answer]
- ~~output-format: [answer]
- ~~delivery-channel: [answer]
- ~~source-list: [answer]
- ~~excluded-sources: [answer]
- ~~urgency-criteria: [answer]
- ~~digest-cadence: [answer]

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
5. What news topics are most relevant to company strategy or operations?
6. Who in the organisation should see urgent news alerts? (leadership team, specific roles)
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/news-editor/PLAYBOOK.md`

```markdown
# News Editor — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Company-relevant topics: [answer]
- Alert recipients: [answer]
- Guardrails: [answer]

## Tools and systems
- Delivery channel: [from USER.md]
- Source list: [from USER.md]
- Cadence: [from USER.md]
```

---

## After onboarding

Confirm to the user:
> *"✅ News Editor onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/news-editor/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh news-editor`"*
