---
name: product-strategy
description: >
  Product-market fit diagnostics, roadmap design, platform strategy, mobile economics,
  and product metrics. Use when: assessing PMF, designing a product strategy brief,
  building or reviewing a product roadmap, evaluating feature build/delay/kill decisions,
  platform vs app vs API decisions, north star metric design, tech debt tradeoffs.
---

# Product Strategy

## Product-market fit (PMF)

### Diagnostic signals — what PMF actually looks like

PMF is not a feeling. It's a set of observable behaviors:

**Retention shape**: the strongest signal. Plot weekly or monthly cohort retention curves. If retention flattens and stabilises (even at 15–20%) rather than declining to zero, you have a core cohort that has found value. If all cohorts keep churning, you don't have PMF — you have a leaky bucket.

**Pull demand**: are customers coming to you, or are you dragging them in? Unsolicited referrals, word-of-mouth, direct search are pull signals. High CAC, low repeat purchase, high churn on non-incentivized cohorts are push signals.

**Sean Ellis test**: "How would you feel if you could no longer use [product]?" > 40% "very disappointed" = PMF indicator. Caveat: survey bias; validate against behavioral data.

**Engagement depth**: are customers using the core value-creating feature, or just the front door? If 80% of users never activate the core feature, you have a discoverability problem (solvable) or a value problem (structural).

**NPS + why**: NPS alone is weak. NPS + open-text verbatims at scale reveal whether the people who love it love it for the right reasons (the reasons you expect to compound) or for incidental reasons that won't persist.

### PMF by stage

**Pre-PMF**: keep the team small; don't scale marketing; the job is learning, not growing. Each dollar spent on growth before PMF is a dollar teaching the wrong audience.

**Emerging PMF** (retention flattening, pull signals appearing): start understanding which customer segment is the "true believers" — optimize for that segment, not the whole market. This is usually the moment to narrow ICP, not broaden it.

**Post-PMF**: systematise the customer journey that's driving retention. Write it down. Build tooling around it. Start scaling acquisition for the segment with proven retention.

---

## Product metrics

### North Star metric design

A good North Star metric:
- Measures value delivered to customers (not just revenue or usage)
- Leads to long-run revenue (not a vanity metric)
- Guides tradeoffs (the team can ask "does this increase the NSM?")
- Is a lagging indicator of quality, leading indicator of revenue

**NSM examples by product type**:
- OTA: nights booked / trips booked (Booking.com)
- Marketplace: successful transactions per week
- SaaS: weekly active users completing core workflow
- Consumer social: daily active users
- Travel app: repeat booking rate in 90 days

### Metric tree

NSM branches into input metrics (things teams control) and output metrics (results). Build the tree top-down:

```
NSM
├── Acquisition (new users reaching activation)
│   ├── Traffic (organic + paid)
│   └── Signup conversion
├── Activation (users completing first core action)
│   ├── Onboarding completion rate
│   └── Time to first value
├── Retention (users returning)
│   ├── D1/D7/D30 cohort retention
│   └── Feature adoption depth
└── Expansion
    ├── Repeat purchase rate
    └── Upsell conversion
```

**Input vs output discipline**: output metrics are results (booking rate, NPS). Input metrics are team-actionable (search-to-listing-view conversion, onboarding step completion). Manage teams on input metrics; hold them accountable to output metric improvement.

---

## Roadmap design

### Outcome-based planning

Don't build a feature roadmap. Build an outcome roadmap. Features are bets on outcomes; outcomes are what actually matter.

**Themes**: 3-month bets on what capabilities will improve which outcomes. Broad enough to allow solution-space exploration; specific enough to exclude irrelevant work.

**Initiatives**: specific product bets within a theme. Each initiative should have:
- Hypothesis: "we believe [doing X] will [cause Y] because [evidence Z]"
- Success metric: specific, measurable, time-bound
- Effort estimate: T-shirt size (S/M/L/XL)
- Dependencies: what must exist before this can start or ship

**Sequencing rules**:
1. Survival initiatives first (anything blocking core usage or causing significant churn)
2. Foundation initiatives before dependent features (build the API before building features that use it)
3. High-confidence, high-impact before low-confidence
4. Validate before building (minimum viable tests before full-spec builds)

### Tech debt tradeoffs

Tech debt is a financial instrument, not a moral failing. The question is: what does the debt cost, and what would repayment yield?

**Debt cost**: estimate in velocity terms. "This debt slows feature delivery by ~20% and causes ~2 incidents/quarter." Translate to team-hours per quarter.

**Repayment yield**: "Refactoring this module would free up ~2 engineer-months/quarter and eliminate the incident category."

**Refactor decision**: ROI = annual velocity gain / refactor cost. If ROI > 2× in 12 months, prioritise. If < 1× in 12 months, schedule for later (tech debt has low interest rates when the codebase is young; interest rate rises with scale).

**Rule**: never refactor without a feature that requires the refactored system. Otherwise the refactor has no forcing function and will be scoped incorrectly.

---

## Platform strategy

### When to go platform/API-first

Build a platform when:
- Third parties can create value you can't predict or build yourself
- Developer distribution expands your reach more cheaply than direct sales
- Data network effects from third-party usage improve your core product
- Regulatory/competitive dynamics make owning the full stack risky

Don't go platform when:
- Your core product isn't proven (platform is a distraction before PMF)
- You need to control quality end-to-end (marketplace trust, safety)
- Developer ecosystem requires 2–3 years and you need 6-month results

### API-first design principles

1. **Treat your own apps as first-party API consumers**: if your own team won't use the API, third parties won't either
2. **Versioning from day one**: breaking changes without versioning destroy third-party trust permanently
3. **Docs as product**: API adoption is gated by documentation quality; treat it as a product surface
4. **Rate limiting and pricing designed together**: free tier for adoption, paid tiers for scale — price by value created, not by API call cost

### Ecosystem leverage vs control

The more you open the platform, the more ecosystem leverage you gain — and the less quality control you have. Design the constraint boundary carefully:
- Core experience: keep control (identity, trust, payments, reviews)
- Extension points: open to ecosystem (integrations, content, recommendations, analytics)
- Data: be explicit about what third parties can access; data terms drive developer adoption and retention

---

## Mobile product strategy

### App vs web economics

**Web**: lower acquisition friction (no install step); better for SEO-driven discovery; lower retention (no home screen presence, no push); easier to update.

**App**: higher acquisition friction but higher engagement/retention once installed; push notification as retention lever; home screen presence → habitual return; harder to update (review delays); higher D1/D7/D30 retention than equivalent web experience.

**For travel products**: app-first strategy makes sense when repeat-purchase rate is target behavior. Single booking products (visa, insurance) can be web-only. Multi-trip products (loyalty, frequent traveler) need an app.

### Retention loops for mobile

1. **Push notification strategy**: high value, low volume. One push/day maximum for most users; each push should be action-triggering (price drop, booking reminder, trip start). Every push that fails to drive action degrades future push open rates.
2. **App home screen design**: return users should see their active state (upcoming trip, saved searches, loyalty balance) — not a generic landing page
3. **Gamification / streaks**: use only if the behavior you're streaking is the behavior you want. Streaks drive engagement; they also drive synthetic engagement that masks churn.
4. **Install economics**: CPI (cost per install) benchmark $2–8 consumer apps (higher in travel/finance). Track D7 ROAS, not just install volume. CPI without D30 retention is a vanity metric.
