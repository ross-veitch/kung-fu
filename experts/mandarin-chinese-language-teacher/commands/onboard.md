# /onboard

First-time setup for the **Mandarin Chinese Language Teacher** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/mandarin-chinese-language-teacher/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the mandarin-chinese-language-teacher onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's your approximate Mandarin level right now? (beginner / HSK 1–3 / HSK 4–6 / HSK 7–9 / advanced)
2. What do you want to do with Mandarin? (travel, business, read literature, watch media without subtitles, etc.)
3. Do you prefer Simplified or Traditional Chinese characters?
4. How much time do you have available for study? (minutes per day, or sessions per week)
5. What apps or resources are you already using? (Duolingo, HelloChinese, Pleco, tutor, etc.)
6. How much ambient Mandarin exposure do you get in daily life? (location, contacts, media consumption)
7. Do you have a target milestone or deadline? (e.g. trip to China in 6 months, HSK test date)
8. Which skill do you want to prioritize first? (speaking, reading, listening, writing)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/mandarin-chinese-language-teacher/USER.md`

```markdown
# Mandarin Chinese Language Teacher — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~current-level: [answer]
- ~~primary-goal: [answer]
- ~~character-system: [answer]
- ~~available-time: [answer]
- ~~tools-in-use: [answer]
- ~~exposure-context: [answer]
- ~~timeline: [answer]
- ~~priority-skill: [answer]

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
5. Does your organisation do business in China or with Chinese-speaking markets?
6. Are there any language learning benefits or programs? (e.g. stipend for courses, language exchange)
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/mandarin-chinese-language-teacher/PLAYBOOK.md`

```markdown
# Mandarin Chinese Language Teacher — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- China/Chinese market context: [answer]
- Language learning support: [answer]
- Guardrails: [answer]

## Tools and systems
[Any company language learning platforms, translation tools, or cross-cultural training]
```

---

## After onboarding

Confirm to the user:
> *"✅ Mandarin Chinese Language Teacher onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/mandarin-chinese-language-teacher/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh mandarin-chinese-language-teacher`"*
