# /onboard

First-time setup for the **Data Analyst** expert. Creates two files in your private config overlay:
- **USER.md** — your personal configuration (resolves all `~~placeholders` in the expert)
- **PLAYBOOK.md** — your organisation's configuration (company/team defaults)

Both are stored at `~/clawd/kung-fu-config/experts/data-analyst/` and never committed to the shared repo.

Estimated time: 5–10 minutes. Run once; re-run any time your context changes significantly.

---

## How to run

Ask your agent:
> *"Run the data-analyst onboarding"*

The agent will ask one question at a time, wait for your answer, then proceed to the next. At the end it writes both files automatically.

---

## Part 1 — Personal configuration (USER.md)

Ask these questions **one at a time**. Wait for the answer before proceeding to the next.

1. What's your primary data warehouse or data store? (e.g. BigQuery, Snowflake, Redshift, Databricks)
2. What business intelligence or dashboarding tool do you use? (e.g. Tableau, Looker, Power BI, Metabase)
3. What's your preferred language for analysis? (SQL, Python, R, or other)
4. What are the 5–7 key metrics that define business health for your company?
5. How often is analysis expected, and in what format? (e.g. daily dashboards, weekly reports, ad-hoc requests)
6. Who should you escalate data quality or access issues to? (name or role)
7. What A/B testing tool or experimentation platform do you use? (e.g. Optimizely, VWO, internal framework, or none)

After collecting all answers, write the file immediately — do not wait for further prompting.

### USER.md output template

Write to: `~/clawd/kung-fu-config/experts/data-analyst/USER.md`

```markdown
# Data Analyst — Personal Configuration
Generated: [date]

## Resolved placeholders
- ~~data-warehouse: [answer]
- ~~bi-tool: [answer]
- ~~primary-language: [answer]
- ~~key-metrics: [answer]
- ~~reporting-cadence: [answer]
- ~~data-team-contact: [answer]
- ~~experiment-platform: [answer]

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
5. What's your typical analysis workflow? (e.g. request comes via Slack → SQL in BigQuery → Looker dashboard)
6. Are there any sensitive data categories or compliance requirements analysts need to be aware of? (e.g. PII, healthcare data, geographic restrictions)
7. Are there topics, approaches, or outputs this expert should avoid or approach carefully in your org context?

After collecting all answers, write the file.

### PLAYBOOK.md output template

Write to: `~/clawd/kung-fu-config/experts/data-analyst/PLAYBOOK.md`

```markdown
# Data Analyst — Organisation Playbook
Generated: [date]

## Organisation context
- Company name: [answer]
- Business model: [answer]
- Stage: [answer]
- Geography: [answer]

## Standards and defaults
- Analysis workflow: [answer]
- Compliance requirements: [answer]
- Guardrails: [answer]

## Tools and systems
- Data warehouse: [from USER.md]
- BI tool: [from USER.md]
- Experiment platform: [from USER.md]
```

---

## After onboarding

Confirm to the user:
> *"✅ Data Analyst onboarding complete. USER.md and PLAYBOOK.md written to `~/clawd/kung-fu-config/experts/data-analyst/`. Load the expert again to pick up your personalised context: `bash ~/clawd/scripts/load-expert.sh data-analyst`"*
