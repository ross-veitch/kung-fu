# Expert Plugin Index

Available expert plugins. Each is generic and publishable — no personal or company-specific data. Onboarding populates `USER.md` with user-specific context.

---

## All experts

### Data Analyst
**Path**: `experts/data-analyst/`
**Plugin dependency**: `anthropics/knowledge-work-plugins/data`
Turns raw data into clear decisions. SQL, Python, BI tools, statistical thinking, A/B testing, causal inference. Generalist — not domain-specific.
**Commands**: `/ab-test`, `/exploratory-analysis`, `/kpi-review`, `/sql-query`

---

### Executive Assistant
**Path**: `experts/executive-assistant/`
**Plugin dependency**: `anthropics/knowledge-work-plugins/productivity`
World-class EA and productivity coach. Calendar architecture, communication triage, meeting design, stakeholder management, delegation frameworks, drafting in the principal's voice.
**Commands**: `/calendar-prep`, `/delegate`, `/meeting-notes`, `/triage-inbox`

---

### Executive Coach
**Path**: `experts/executive-coach/`
Post-meeting debrief, leadership pattern analysis, high-stakes conversation prep, and decision coaching for founders and senior executives. Grounded in Mochary Method, Immunity to Change, Conscious Leadership, and adult development theory.
**Commands**: `/clarity-session`, `/decision-unpacker`, `/difficult-conversation`, `/leadership-audit`, `/meeting-debrief`

---

### Financial Analyst
**Path**: `experts/financial-analyst/`
**Plugin dependency**: `anthropics/knowledge-work-plugins/finance`
P&L fluency, financial modelling, unit economics, deal analysis, market sizing. Both startup and corporate finance lenses.
**Commands**: `/analyse-financials`, `/deal-review`, `/investor-update`, `/unit-economics`

---

### Fitness & Performance Coach
**Path**: `experts/fitness-performance-coach/`
Evidence-based training and recovery programming for executives. Zone training, periodisation, biometric interpretation (HRV, Oura readiness, VO2 max, lactate threshold). JPMorgan-style race prep supported.
**Commands**: `/interpret-biometrics`, `/programme-build`, `/race-prep`, `/weekly-session-plan`

---

### Futurist
**Path**: `experts/futurist/`
Structural foresight, scenario planning, exponential technology, AI trajectory, systems thinking, civilisational analysis. Covers weak signals, second-order effects, and design fiction. Strong travel/OTA economics lens.
**Commands**: `/10yr`, `/agent-economy`, `/ai-trajectory`, `/assumption-test`, `/backcast`, `/brief`, `/design-fiction`, `/future-deck`, `/future-landscape`, `/future-proof`, `/futures`, `/optionality`, `/premortem`, `/provocation`, `/scenarios`, `/second-order`, `/signal-log`, `/weak-signals`, `/wind-tunnel`

---

### Lawyer
**Path**: `experts/lawyer/`
**Plugin dependency**: `anthropics/knowledge-work-plugins/legal`
Corporate law, contracts, data privacy, IP, M&A, governance. Not a substitute for qualified legal advice; strong on issue-spotting, clause interpretation, and framing what to ask outside counsel.
**Commands**: `/contract-review`, `/draft-agreement`, `/legal-brief`, `/risk-assessment`

---

### Longevity & Human Optimization Physician
**Path**: `experts/longevity-human-optimization-physician/`
Clinically-oriented healthspan medicine. Biomarker interpretation, prevention protocols, cardiovascular fitness, metabolic health, hormonal optimisation, emerging interventions. Risk/reward standard of evidence — not RCT-only.
**Commands**: `/biomarker-trend`, `/health-protocol`, `/interpret-labs`, `/supplement-review`

---

### Management Consultant
**Path**: `experts/management-consultant/`
Strategy, unit economics, growth diagnostics, travel/aviation/AI sector intelligence, capital allocation, competitive analysis, board-level narrative. Strong deck craft.
**Commands**: `/decision`, `/deck`, `/frame`, `/onepager`, `/strategy`, `/wargame`

---

### Mandarin Chinese Language Teacher
**Path**: `experts/mandarin-chinese-language-teacher/`
Adult Mandarin acquisition: tones, pinyin, comprehensible input methodology. Covers Simplified and Traditional; scope narrowed to student goals during onboarding.
**Commands**: `/assess-level`, `/correct-text`, `/hsk-drill`, `/lesson`

---

### News Editor
**Path**: `experts/news-editor/`
Senior editorial judgment. Story significance vs noise, source evaluation, briefing construction. Multi-beat coverage: geopolitics, tech/AI, business/markets, aviation/travel/MENA.
**Commands**: `/morning-digest`, `/source-check`, `/story-brief`

---

### Research Analyst
**Path**: `experts/research-analyst/`
Generalist deep researcher. Hypothesis-first methodology, source evaluation, synthesis, memo and briefing writing. Covers any domain.
**Commands**: `/competitive-analysis`, `/deep-research`, `/market-sizing`

---

### Software Engineer
**Path**: `experts/software-engineer/`
Full-stack architecture, health data platforms, SDLC, code review, production readiness. Strong on Node.js/TypeScript, API design, and systems integration. Wego/travel tech context baked in.
**Commands**: `/architecture-review`, `/code-review`, `/debug`, `/spec-write`

---

### Travel Concierge
**Path**: `experts/travel-concierge/`
High-touch travel planning. Points/miles strategy, routing optimisation, hotel loyalty, visa/logistics, end-to-end itinerary design. Anticipatory, not reactive. Strong SIN↔DXB corridor knowledge.
**Commands**: `/hotel-shortlist`, `/plan-trip`, `/points-optimize`, `/visa-check`

---

## Creating new experts

Run `/create-expert` — see `commands/create-expert.md` for the full 5-phase process (research → component plan → design → implementation → onboarding).

---

## Removed / renamed experts

| Former name | Status | Reason |
|-------------|--------|--------|
| `creative-writer` | Removed | Scope too broad; not a professional role definition |
| `data-engineer` | Renamed → `data-analyst` | Wrong scope (infrastructure vs analysis) |
| `finance-analyst` | Renamed → `financial-analyst` | Corrected to standard professional title |
| `health-coach` | Renamed → `fitness-performance-coach` | More precise scope; distinguishes from longevity physician |
| `travel-planner` | Renamed → `travel-concierge` | Concierge better reflects the level of service and anticipation |
