# /onboard

First-time setup for the **Longevity & Human Optimization Physician** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/longevity-human-optimization-physician/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the longevity-human-optimization-physician onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's your current age?
2. What's your biological sex?
3. When did you last have comprehensive bloodwork done, and what were the notable findings? (or "no recent labs")
4. What prescriptions, supplements, or protocols are you currently using?
5. What are your top longevity or optimization priorities? (e.g. cardiovascular health, cognitive function, metabolic health, sleep, body composition)
6. Any relevant medical history or family health history I should know about?
7. What health monitoring devices or wearables do you use? (Oura, WHOOP, CGM, Apple Watch, etc.)
8. What's your appetite for emerging or off-label interventions? (conservative / evidence-based only / willing to experiment)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/longevity-human-optimization-physician/USER.md`

```markdown
# Longevity & Human Optimization Physician — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~age: [answer]
- ~~sex: [answer]
- ~~baseline-labs: [answer]
- ~~current-medications: [answer]
- ~~primary-health-goals: [answer]
- ~~health-history: [answer]
- ~~wearables: [answer]
- ~~willingness-to-experiment: [answer]

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
5. Does your organisation have any health & wellness programs, benefits, or culture? (gym stipend, health screenings, wellness days)
6. Are there any privacy or compliance considerations around health data?
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/longevity-human-optimization-physician/PLAYBOOK.md`

```markdown
# Longevity & Human Optimization Physician — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Wellness programs: [answer]
- Privacy considerations: [answer]
- Guardrails: [answer]

## Tools and systems
[Any company wellness platforms, health benefits, or screening programs]
```

---

## After onboarding

Confirm to the user:
> *"✅ Longevity & Human Optimization Physician onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/longevity-human-optimization-physician/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh longevity-human-optimization-physician`"*
