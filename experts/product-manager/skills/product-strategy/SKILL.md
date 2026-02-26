---
name: product-strategy
description: >
  Product strategy frameworks including jobs-to-be-done, opportunity solution trees, 
  product-market fit indicators, North Star metrics, and marketplace liquidity dynamics. 
  Use when designing product strategy, diagnosing PMF, defining metrics, or solving 
  marketplace cold-start problems.
---

# Product Strategy

## Jobs-to-be-Done (JTBD)

Users don't buy products — they hire them to do a job. The JTBD framework separates the functional job (the task) from the emotional and social jobs (how it makes them feel, how it makes them look).

**Example**: A traveler doesn't book a hotel room (functional job). They're hiring the booking experience to reduce anxiety about making a bad choice (emotional job) and to feel like a savvy traveler who got a good deal (social job).

**Insight**: Competitors aren't just other products in your category. Anything that can do the job is a competitor. For Uber, the competition wasn't just taxis — it was driving yourself, asking a friend for a ride, or not going at all.

**Application**: When prioritising features, ask: which job does this feature help the user complete better? If it doesn't improve job performance, it's not differentiated.

---

## Opportunity Solution Trees

An Opportunity Solution Tree maps the path from desired outcome → opportunities (user problems/needs) → solutions (features/experiments).

**Structure**:
```
Desired Outcome (e.g., "Increase repeat bookings")
├── Opportunity 1: Users forget to return to the app
│   ├── Solution A: Push notifications for price drops
│   ├── Solution B: Email digest of saved searches
│   └── Solution C: SMS reminders for upcoming trips
├── Opportunity 2: Users don't trust our recommendations
│   ├── Solution A: Show more user reviews
│   ├── Solution B: Add verified booking badges
│   └── Solution C: Personalize based on past behavior
└── Opportunity 3: Booking process is too complex
    ├── Solution A: One-click rebooking for past hotels
    ├── Solution B: Autofill from profile
    └── Solution C: Guest checkout option
```

**Why it works**: It forces you to map multiple opportunities (not just one), and multiple solutions per opportunity (not just the first idea). It prevents solutioning too early.

**Usage**: Start with the outcome you need to move. Interview users to discover opportunities (problems they experience). Brainstorm multiple solutions per opportunity. Prioritise by expected impact and effort.

---

## Product-Market Fit (PMF) Diagnostics

PMF is not a feeling. It's a measurable set of behaviors.

### Retention shape (strongest signal)

Plot weekly or monthly cohort retention curves. If retention flattens (even at 15-20%) instead of declining to zero, you have a core cohort that found value. If all cohorts decay to near-zero, you have a leaky bucket.

**Green flag**: Cohort retention curves flatten after week 4-8  
**Yellow flag**: Retention is declining but slowly  
**Red flag**: 90%+ of users churn within 30 days across all cohorts

### Pull demand vs push demand

Are users coming to you, or are you dragging them in?

**Pull signals**: Organic word-of-mouth, direct searches for your brand, unprompted referrals, low CAC for quality users  
**Push signals**: High CAC, aggressive discounting required, low repeat usage, high churn when incentives stop

### Sean Ellis test

Survey: "How would you feel if you could no longer use [product]?"  
- Very disappointed: 40%+ = PMF indicator  
- Somewhat disappointed / Not disappointed: <60% = pre-PMF

**Caveat**: Survey responses can be biased. Cross-check against behavioral data (retention, engagement, NPS).

### Engagement depth

Are users engaging with the core value-creating feature, or just the onboarding flow?

**Good**: 70%+ of activated users engage with core feature weekly  
**Bad**: Users sign up but never complete the core action (e.g., they browse listings but never book)

### NPS + qualitative verbatims

NPS alone is weak. But NPS + open-text responses reveal whether promoters love you for the right reasons (reasons that compound) or incidental reasons (e.g., they got a discount).

---

## North Star Metrics

A North Star metric measures value delivered to customers and leads to long-run revenue. It guides tradeoffs and aligns teams.

### Criteria for a good NSM

1. **Measures customer value** (not just revenue or usage)
2. **Leads to revenue** (not a vanity metric)
3. **Guides decisions** (teams can ask "does this increase the NSM?")
4. **Lagging indicator of quality, leading indicator of revenue**

### Examples by product type

| Product Type | North Star Metric |
|---|---|
| OTA/Travel booking | Nights booked / Trips booked per month |
| Marketplace | Successful transactions per week |
| SaaS | Weekly active users completing core workflow |
| Consumer social | Daily active users |
| Subscription media | Content hours consumed per subscriber |

### Metric tree structure

The NSM branches into input metrics (things teams control) and output metrics (results).

```
NSM: Trips booked per month
├── Acquisition: New users reaching activation
│   ├── Traffic (organic + paid)
│   └── Signup conversion rate
├── Activation: Users completing first booking
│   ├── Onboarding completion rate
│   └── Search-to-booking conversion
├── Retention: Users returning for 2nd booking
│   ├── D30/D60/D90 cohort retention
│   └── Repeat booking rate
└── Expansion: Users booking more frequently
    ├── Average bookings per user per year
    └── Cross-sell rate (flights + hotels)
```

**Input vs output discipline**: Output metrics are results (booking rate, revenue). Input metrics are team-actionable (search relevance score, checkout abandonment rate). Manage teams on input metrics; hold accountable to output metric movement.

---

## Marketplace Liquidity (Two-Sided Dynamics)

Marketplaces are liquidity problems first, product problems second. You need enough supply to satisfy demand, and enough demand to justify supply showing up.

### Cold-start strategies

**Single-side subsidy**: Pay one side to show up first (Uber paid drivers to be online before riders existed).

**Constrained geography**: Launch in one city and saturate it before expanding (Airbnb: SF first, then other cities one-by-one).

**Fake supply (Wizard of Oz)**: Manually fulfill demand before you have supply-side automation (DoorDash: founders delivered the food themselves at first).

**High-value early supply**: Recruit supply that creates outsized demand (Uber: recruited black car services first, which attracted high-value riders).

**Same-side network effects first**: Build value for one side even without the other side (Yelp: reviews had value for diners even before restaurants engaged).

### Supply vs demand constraints

**Supply-constrained marketplace**: Demand is there but supply can't keep up. Symptoms: Low search-to-transaction conversion, high prices, long wait times.  
**Fix**: Recruit more supply, reduce barriers to supply onboarding, increase supply incentives.

**Demand-constrained marketplace**: Supply is abundant but not enough buyers. Symptoms: Low supplier utilization, high supplier churn, price wars among suppliers.  
**Fix**: Invest in demand-side marketing, improve search/discovery, reduce buyer friction.

### GMV vs take rate tradeoffs

**GMV** (Gross Merchandise Value) = total transaction volume flowing through the platform  
**Take rate** = % of GMV the platform captures as revenue

High take rate → better margins but risk of disintermediation (users go direct)  
Low take rate → competitive advantage but need massive scale to be profitable

**Benchmark take rates**:
- Airbnb: ~13-15% (guest service fee + host fee)
- Uber: ~20-25%
- Amazon 3P: ~15% (referral fee + fulfillment)
- Booking.com: ~15% (commission from hotels)

**Strategic choice**: Early-stage marketplaces often start with low/zero take rate to build liquidity, then raise it once they're indispensable. Established marketplaces can raise take rate if they provide unique value (e.g., Stripe raised from 2.9% to 2.9% + $0.30 without churn because of ecosystem lock-in).

---

## Roadmap Planning (Now/Next/Later)

### Outcome-based themes

Don't build a feature roadmap. Build an outcome roadmap. Features are bets on outcomes.

**Now** (this quarter): 2-3 themes we're actively executing on  
**Next** (next quarter): 2-3 themes we're preparing to execute  
**Later** (future quarters): ideas we believe in but aren't ready to commit to

Each theme has:
- **Outcome hypothesis**: "We believe [doing X] will [improve metric Y] because [evidence/assumption Z]"
- **Success metric**: Specific, measurable, time-bound
- **Initiatives**: Features/experiments we might build within this theme
- **Dependencies**: What must be true before we can start

### Sequencing rules

1. **Survival first**: Anything blocking core usage or causing major churn
2. **Foundations before features**: Build the platform/API before features that depend on it
3. **High confidence, high impact before exploratory bets**
4. **Validate before building**: Run smoke tests / fake door tests before committing to full build

---

## Prioritisation Framework (RICE)

**Reach**: How many users will this impact per time period? (e.g., 5000 users/month)  
**Impact**: How much will this improve the outcome per user? (Scale: 3 = massive, 2 = high, 1 = medium, 0.5 = low, 0.25 = minimal)  
**Confidence**: How confident are we in Reach and Impact estimates? (100% = high, 80% = medium, 50% = low)  
**Effort**: How many person-months will this take? (e.g., 2 person-months)

**RICE Score** = (Reach × Impact × Confidence) / Effort

**Example**:
- Feature A: (5000 × 2 × 80%) / 3 = 2667
- Feature B: (10000 × 1 × 100%) / 1 = 10000
- Feature C: (1000 × 3 × 50%) / 0.5 = 3000

Rank: Feature B > Feature C > Feature A

**RICE limitations**:
- Doesn't account for strategic sequencing (Feature A might unlock Feature B)
- Doesn't account for learning value (small experiment with huge learning value)
- Doesn't account for platform bets (low near-term RICE, high option value)

Use RICE as input, not output. If your judgment says something different, interrogate the scores and your assumptions.

---

## Discovery Before Building

The best product managers kill more ideas than they ship. Discovery is about learning fast, not building fast.

### Validation techniques (cheapest → most expensive)

1. **Customer interviews** (free): Validate problem, not solution
2. **Smoke test / fake door test** ($0-100): Put a button for a feature that doesn't exist. See if users click.
3. **Landing page + ad spend** ($500-2000): Drive traffic to a page describing the product. Measure signups.
4. **Concierge MVP** (manual effort): Manually deliver the service before automating it
5. **Prototype** (design/eng time): Build a clickable prototype, test with users
6. **Wizard of Oz MVP** (eng + ops effort): Fake the automation behind the scenes
7. **Full build** (full eng team): Only after validating the above

**Rule**: Never skip straight to #7. Always validate assumptions with cheaper methods first.
