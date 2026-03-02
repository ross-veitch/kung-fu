# Expert Plugin Index

Available expert plugins. Each is generic and publishable — no personal or company-specific data. Onboarding populates `USER.md` with user-specific context.

---

## Context size guide

Each expert entry shows its approximate context cost when loaded (EXPERT.md + all skills):

| Badge | Tokens | What it means |
|-------|--------|---------------|
| 🟢 S | < 5k | Negligible overhead — use freely in any session |
| 🟡 M | 5k–10k | Moderate — comfortable for most sessions |
| 🟠 L | 10k–20k | Noticeable — be aware in very long multi-turn sessions |
| 🔴 XL | > 20k | Heavy — excellent depth, but front-loads significant context |

These are EXPERT.md + skills only. Commands are loaded on-demand and don't contribute to baseline context cost.

---

## All experts

### Data Analyst
🟢 S (~4,400 tokens)
**Path**: `experts/data-analyst/`
**Plugin dependency**: `anthropics/knowledge-work-plugins/data`
Turns raw data into clear decisions. SQL, Python, BI tools, statistical thinking, A/B testing, causal inference. Generalist — not domain-specific.
**Commands**: `/ab-test`, `/exploratory-analysis`, `/kpi-review`, `/sql-query`

---

### Executive Assistant
🟢 S (~2,200 tokens)
**Path**: `experts/executive-assistant/`
**Plugin dependency**: `anthropics/knowledge-work-plugins/productivity`
World-class EA and productivity coach. Calendar architecture, communication triage, meeting design, stakeholder management, delegation frameworks, drafting in the principal's voice.
**Commands**: `/calendar-prep`, `/delegate`, `/meeting-notes`, `/triage-inbox`

---

### Executive Coach
🟢 S (~4,600 tokens)
**Path**: `experts/executive-coach/`
Post-meeting debrief, leadership pattern analysis, high-stakes conversation prep, and decision coaching for founders and senior executives. Grounded in Mochary Method, Immunity to Change, Conscious Leadership, and adult development theory.
**Commands**: `/clarity-session`, `/decision-unpacker`, `/difficult-conversation`, `/leadership-audit`, `/meeting-debrief`

---

### Financial Analyst
🟢 S (~2,300 tokens)
**Path**: `experts/financial-analyst/`
**Plugin dependency**: `anthropics/knowledge-work-plugins/finance`
P&L fluency, financial modelling, unit economics, deal analysis, market sizing. Both startup and corporate finance lenses.
**Commands**: `/analyse-financials`, `/deal-review`, `/investor-update`, `/unit-economics`

---

### Fitness & Performance Coach
🟡 M (~9,000 tokens)
**Path**: `experts/fitness-performance-coach/`
Evidence-based training and recovery programming for executives. Zone training, periodisation, biometric interpretation (HRV, Oura readiness, VO2 max, lactate threshold). JPMorgan-style race prep supported.
**Commands**: `/interpret-biometrics`, `/programme-build`, `/race-prep`, `/weekly-session-plan`

---

### Futurist
🔴 XL (~22,000 tokens)
**Path**: `experts/futurist/`
Structural foresight, scenario planning, exponential technology, AI trajectory, systems thinking, civilisational analysis. Covers weak signals, second-order effects, and design fiction. Strong travel/OTA economics lens.
**Commands**: `/10yr`, `/agent-economy`, `/ai-trajectory`, `/assumption-test`, `/backcast`, `/brief`, `/design-fiction`, `/future-deck`, `/future-landscape`, `/optionality`, `/premortem`, `/scenarios`, `/second-order`, `/weak-signals`, `/wind-tunnel`

---

### Growth Marketer
🟡 M (~5,500 tokens)
**Path**: `experts/growth-marketer/`
Full-funnel growth across paid acquisition, SEO, CRO, lifecycle marketing, and experimentation. Fluent in attribution, incrementality testing, and CAC/LTV optimisation. Works across channels: Google, Meta, TikTok, email, push, referral.
**Commands**: `/growth-audit`, `/campaign-plan`, `/seo-brief`, `/experiment-design`, `/retention-plan`

---

### Investment Banker
🟡 M (~8,800 tokens)
**Path**: `experts/investment-banker/`
M&A advisory, capital raises, and deal structuring. Deep in valuation (DCF, comps, LBO), transaction process (pitchbooks, data rooms, IC memos), and term sheet negotiation. Both buy-side and sell-side.
**Commands**: `/valuation`, `/pitch-book`, `/deal-brief`, `/due-diligence-checklist`, `/term-sheet-review`

---

### Lawyer
🟢 S (~4,100 tokens)
**Path**: `experts/lawyer/`
**Plugin dependency**: `anthropics/knowledge-work-plugins/legal`
Corporate law, contracts, data privacy, IP, M&A, governance. Not a substitute for qualified legal advice; strong on issue-spotting, clause interpretation, and framing what to ask outside counsel.
**Commands**: `/contract-review`, `/draft-agreement`, `/legal-brief`, `/risk-assessment`

---

### Longevity & Human Optimization Physician
🟢 S (~3,100 tokens)
**Path**: `experts/longevity-human-optimization-physician/`
Clinically-oriented healthspan medicine. Biomarker interpretation, prevention protocols, cardiovascular fitness, metabolic health, hormonal optimisation, emerging interventions. Risk/reward standard of evidence — not RCT-only.
**Commands**: `/biomarker-trend`, `/health-protocol`, `/interpret-labs`, `/supplement-review`

---

### Management Consultant
🟠 L (~13,400 tokens)
**Path**: `experts/management-consultant/`
Strategy, unit economics, growth diagnostics, travel/aviation/AI sector intelligence, capital allocation, competitive analysis, board-level narrative. Strong deck craft.
**Commands**: `/decision`, `/deck`, `/frame`, `/onepager`, `/strategy`, `/wargame`

---

### Mandarin Chinese Language Teacher
🟢 S (~2,600 tokens)
**Path**: `experts/mandarin-chinese-language-teacher/`
Adult Mandarin acquisition: tones, pinyin, comprehensible input methodology. Covers Simplified and Traditional; scope narrowed to student goals during onboarding.
**Commands**: `/assess-level`, `/correct-text`, `/hsk-drill`, `/lesson`

---

### MENA Market Specialist
🟡 M (~6,200 tokens)
**Path**: `experts/mena-market-specialist/`
Deep expertise on Saudi Arabia, UAE, Egypt, Jordan, and GCC regional dynamics. Vision 2030 intelligence, business culture (wasta, relationship-first deal-making), regulatory requirements, and market entry strategy across MENA.
**Commands**: `/market-brief`, `/regulatory-check`, `/partnership-context`, `/competitive-landscape`, `/market-entry`

---

### News Editor
🟢 S (~2,600 tokens)
**Path**: `experts/news-editor/`
Senior editorial judgment. Story significance vs noise, source evaluation, briefing construction. Multi-beat coverage: geopolitics, tech/AI, business/markets, aviation/travel/MENA.
**Commands**: `/morning-digest`, `/source-check`, `/story-brief`

---

### People Partner
🟡 M (~9,200 tokens)
**Path**: `experts/people-partner/`
Strategic HR for tech companies. Org design, talent management, performance review cycles, compensation benchmarking, headcount planning, and multi-jurisdiction employment law (Singapore, UAE, Saudi, India). Knows when to involve legal and how to have difficult conversations.
**Commands**: `/performance-review`, `/org-design`, `/headcount-plan`, `/difficult-conversation`, `/comp-benchmarking`, `/engagement-survey`

---

### Pricing & Revenue Manager
🟢 S (~4,600 tokens)
**Path**: `experts/pricing-revenue-manager/`
Dynamic pricing, yield management, and revenue optimisation across OTA, hotel, and airline contexts. Deep in take rate strategy, demand forecasting, booking curves, and competitive rate analysis. Works with data-first methodology.
**Commands**: `/pricing-analysis`, `/take-rate-review`, `/yield-brief`, `/demand-forecast`, `/competitive-pricing-brief`

---

### Product Manager
🟡 M (~9,100 tokens)
**Path**: `experts/product-manager/`
Outcome-driven product management. Jobs-to-be-done, opportunity solution trees, discovery before build, rigorous PRDs, ruthless prioritisation, and metrics fluency. Strong on marketplace and consumer product patterns.
**Commands**: `/write-prd`, `/prioritize`, `/roadmap`, `/discovery-plan`, `/metrics-review`

---

### Research Analyst
🟢 S (~2,300 tokens)
**Path**: `experts/research-analyst/`
Generalist deep researcher. Hypothesis-first methodology, source evaluation, synthesis, memo and briefing writing. Covers any domain.
**Commands**: `/competitive-analysis`, `/deep-research`, `/market-sizing`

---

### Software Engineer
🟢 S (~4,800 tokens)
**Path**: `experts/software-engineer/`
Full-stack architecture, SDLC, code review, production readiness. Strong on Node.js/TypeScript, API design, and systems integration.
**Commands**: `/architecture-review`, `/code-review`, `/debug`, `/spec-write`

---

### Travel Concierge
🟢 S (~2,500 tokens)
**Path**: `experts/travel-concierge/`
High-touch travel planning. Points/miles strategy, routing optimisation, hotel loyalty, visa/logistics, end-to-end itinerary design. Anticipatory, not reactive.
**Commands**: `/hotel-shortlist`, `/plan-trip`, `/points-optimize`, `/visa-check`

---

### Travel Industry Analyst
🟡 M (~5,200 tokens)
**Path**: `experts/travel-industry-analyst/`
Structural analysis of the travel industry. OTA economics, airline distribution (GDS, NDC), hotel distribution, metasearch, and competitive dynamics. Fluent in earnings calls, STR/OAG/IATA data, and market sizing.
**Commands**: `/distribution-audit`, `/market-entry`, `/competitive-move`, `/earnings-brief`, `/market-sizing`

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
