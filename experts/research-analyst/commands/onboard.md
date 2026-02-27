# /onboard

First-time setup for the **Research Analyst** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/research-analyst/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the research-analyst onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What subject areas do you most frequently research? (industries, topics, domains)
2. What's your preferred memo format, length, and citation style? (e.g. 2-page executive summary, detailed with footnotes, APA citations)
3. What research tools do you have access to? (Perplexity, Google Scholar, Bloomberg, academic databases, etc.)
4. What's your default depth preference: quick scan or thorough deep dive?
5. Who reads your research output, and what decisions do they make with it? (helps calibrate tone and depth)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/research-analyst/USER.md`

```markdown
# Research Analyst — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~research-domains: [answer]
- ~~output-format: [answer]
- ~~search-tools: [answer]
- ~~depth-default: [answer]
- ~~decision-context: [answer]

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
5. What's the typical cadence and use case for research requests? (ad-hoc deep dives, weekly competitive intel, quarterly market reports)
6. Are there any sensitive topics or competitive intelligence considerations?
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/research-analyst/PLAYBOOK.md`

```markdown
# Research Analyst — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Research cadence: [answer]
- Sensitive topics: [answer]
- Guardrails: [answer]

## Tools and systems
- Search tools: [from USER.md]
- Output format: [from USER.md]
```

---

## After onboarding

Confirm to the user:
> *"✅ Research Analyst onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/research-analyst/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh research-analyst`"*
