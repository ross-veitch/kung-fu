# /onboard

First-time setup for the **Executive Assistant** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/executive-assistant/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the executive-assistant onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's the name of the person I'll be supporting?
2. What's their title and organisational context? (e.g. CEO of Series B SaaS startup, VP Product at enterprise company)
3. What calendar platform do you use? (Google Calendar, Outlook, Apple Calendar, etc.)
4. What email platform and account? (e.g. Gmail - name@company.com)
5. What's your primary team communication tool? (Slack, Microsoft Teams, Discord, etc.)
6. What tool do you use for task/to-do management? (Todoist, Things, Asana, Notion, etc.)
7. What's your primary operating timezone?
8. What are your quiet hours — when should you not be disturbed? (e.g. 10pm–7am local time)
9. Who are your direct reports? (names and roles — these communications are high-priority)
10. Who are your VIP external contacts — people who always get rapid responses? (investors, board members, key partners, etc.)
11. Can you paste 3–5 short emails or messages you've written recently? (This helps me calibrate to your voice and writing style)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/executive-assistant/USER.md`

```markdown
# Executive Assistant — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~principal-name: [answer]
- ~~principal-role: [answer]
- ~~calendar-tool: [answer]
- ~~email-platform: [answer]
- ~~comms-platform: [answer]
- ~~task-manager: [answer]
- ~~timezone: [answer]
- ~~quiet-hours: [answer]
- ~~direct-reports: [answer]
- ~~vip-contacts: [answer]
- ~~writing-samples: [answer]

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
5. What are the standard meeting types and their typical formats? (e.g. 1:1s always 30min, all-hands monthly, board meetings quarterly)
6. Are there any specific email or communication standards I should follow? (e.g. always cc legal on vendor contracts, use specific subject line formats)
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/executive-assistant/PLAYBOOK.md`

```markdown
# Executive Assistant — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Meeting formats: [answer]
- Communication standards: [answer]
- Guardrails: [answer]

## Tools and systems
- Calendar: [from USER.md]
- Email: [from USER.md]
- Comms: [from USER.md]
- Tasks: [from USER.md]
```

---

## After onboarding

Confirm to the user:
> *"✅ Executive Assistant onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/executive-assistant/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh executive-assistant`"*
