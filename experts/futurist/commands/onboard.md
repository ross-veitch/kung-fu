# /onboard

First-time setup for the **Futurist** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/futurist/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the futurist onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's your company, industry, and current strategic position? (brief context)
2. What's your target time horizon for strategic foresight? (e.g. 5 years, 10 years, 15 years)
3. What's the specific strategic question or uncertainty you want foresight to inform?
4. What decision will be made based on this foresight work? (helps calibrate the scope and depth)
5. What's your primary sector lens? (travel, AI, platforms, biotech, fintech, etc.)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/futurist/USER.md`

```markdown
# Futurist — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~company-context: [answer]
- ~~horizon: [answer]
- ~~strategic-question: [answer]
- ~~decision-stake: [answer]
- ~~sector-focus: [answer]

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
5. How does your organisation typically make strategic decisions? (founder-led, board-driven, data-driven, consensus-based)
6. Are there any sacred cows or assumptions I should challenge vs. hold constant in foresight work?
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/futurist/PLAYBOOK.md`

```markdown
# Futurist — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Decision-making style: [answer]
- Challenge vs. hold constant: [answer]
- Guardrails: [answer]

## Tools and systems
[Any scenario planning frameworks, strategic planning tools, or foresight methodologies in use]
```

---

## After onboarding

Confirm to the user:
> *"✅ Futurist onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/futurist/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh futurist`"*
