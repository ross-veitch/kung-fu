# /onboard

First-time setup for the **Fitness & Performance Coach** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/fitness-performance-coach/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the fitness-performance-coach onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's your primary training goal? (e.g. improve VO2 max, build strength, body composition, prepare for specific event, longevity/healthspan)
2. What's your current fitness baseline? (VO2 max estimate if known, recent lifting maxes, training history)
3. How many days per week are you available for training?
4. What's your typical available session length? (e.g. 45min, 60min, 90min)
5. What equipment do you have access to? (full gym, home setup, pool, outdoor track, etc.)
6. What wearables or tracking devices do you use? (specific Garmin model, Oura, WHOOP, Apple Watch, etc.)
7. Do you have any upcoming races, physical challenges, or performance targets? (with dates if known)
8. Any current or chronic injuries, or movement restrictions I should know about?
9. What's your current eating pattern or any dietary constraints? (e.g. intermittent fasting, vegetarian, no restrictions)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/fitness-performance-coach/USER.md`

```markdown
# Fitness & Performance Coach — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~training-goal: [answer]
- ~~current-fitness: [answer]
- ~~available-days: [answer]
- ~~session-duration: [answer]
- ~~equipment: [answer]
- ~~wearables: [answer]
- ~~upcoming-events: [answer]
- ~~injuries-constraints: [answer]
- ~~nutrition-approach: [answer]

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
5. Is fitness/wellness part of company culture or benefits? (e.g. gym stipend, team training sessions, wellness days)
6. Are there any specific health & safety protocols or considerations?
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/fitness-performance-coach/PLAYBOOK.md`

```markdown
# Fitness & Performance Coach — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Wellness culture: [answer]
- Health & safety: [answer]
- Guardrails: [answer]

## Tools and systems
[Any company wellness platforms, fitness tracking tools, or health benefits]
```

---

## After onboarding

Confirm to the user:
> *"✅ Fitness & Performance Coach onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/fitness-performance-coach/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh fitness-performance-coach`"*
