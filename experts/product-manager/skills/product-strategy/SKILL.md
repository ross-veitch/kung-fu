---
name: product-strategy
description: Jobs-to-be-done, opportunity solution trees, product-market fit diagnostics, North Star metrics, marketplace liquidity dynamics, and roadmap planning.
---

# Product Strategy

## Jobs-to-be-Done (JTBD)

Users don't buy products — they hire them to do a job. The job has three layers:
- **Functional**: the actual task (book a hotel)
- **Emotional**: how it makes them feel (reduce anxiety about making a bad choice)
- **Social**: how it makes them look (savvy traveler who got a good deal)

**Implication**: competitors aren't just other products in your category — they're anything that does the job. For Uber, competition was taxis, driving yourself, asking a friend, or not going. Feature prioritisation question: "which job does this help the user complete better?"

---

## Opportunity Solution Trees

Maps the path from desired outcome → user opportunities (problems/needs) → solutions (features/experiments).

```
Desired Outcome (e.g., "Increase repeat bookings")
├── Opportunity: Users forget to return to the app
│   ├── Push notifications for price drops
│   └── Email digest of saved searches
├── Opportunity: Users don't trust our recommendations
│   ├── More user reviews
│   └── Verified booking badges
└── Opportunity: Booking process too complex
    ├── One-click rebooking for past hotels
    └── Guest checkout option
```

Forces you to map multiple opportunities (not one) and multiple solutions per opportunity (not the first idea). Prevents solutioning too early.

---

## Product-Market Fit Diagnostics

PMF is measurable, not a feeling.

**Retention shape** (strongest signal): plot weekly cohort retention curves. If retention flattens (even at 15-20%), a core cohort found value. If all cohorts decay to zero, you have a leaky bucket.

**Pull vs push demand**: are users coming to you (organic, word-of-mouth, low CAC) or are you dragging them in (high CAC, discounts required, high churn when incentives stop)?

**Sean Ellis test**: "How would you feel if you could no longer use [product]?" → 40%+ say "very disappointed" = PMF indicator. Cross-check against behavioral data.

**Engagement depth**: are users engaging with the core value-creating feature? 70%+ of activated users touching the core feature weekly = good. Signing up but never completing the core action = pre-PMF.

**NPS + verbatims**: NPS alone is weak. The open text reveals whether promoters love you for reasons that compound or incidental reasons (a discount).

---

## North Star Metrics

A North Star metric measures value delivered to customers and leads to long-run revenue.

**Criteria**: measures customer value (not just usage); leads to revenue; guides tradeoffs; lagging indicator of quality, leading indicator of revenue.

| Product Type | North Star Metric |
|---|---|
| OTA / Travel booking | Trips booked per month |
| Marketplace | Successful transactions per week |
| SaaS | Weekly active users completing core workflow |
| Subscription media | Content hours consumed per subscriber |

**Metric tree**: branch the NSM into input metrics (team-controllable) and output metrics (results). Manage teams on inputs; hold accountable to output movement.

```
NSM: Trips booked per month
├── Acquisition: new users reaching activation
├── Activation: users completing first booking
├── Retention: users returning for 2nd booking
└── Expansion: users booking more frequently
```

---

## Marketplace Liquidity

Marketplaces are liquidity problems first, product problems second.

**Cold-start strategies**:
- **Single-side subsidy**: pay one side to show up first (Uber paid drivers before riders)
- **Constrained geography**: saturate one city before expanding (Airbnb: SF first)
- **Fake supply**: manually fulfill demand before automating (DoorDash founders delivered the food)
- **High-value early supply**: recruit supply that attracts demand (Uber: black cars first)

**Supply-constrained** (demand there, supply can't keep up): low search-to-transaction conversion, high prices. Fix: recruit supply, reduce onboarding friction, increase incentives.

**Demand-constrained** (supply abundant, not enough buyers): low supplier utilisation, price wars. Fix: demand-side marketing, improve discovery, reduce buyer friction.

**GMV vs take rate**: high take rate = better margins but disintermediation risk; low take rate = competitive advantage but requires massive scale. Benchmark: Airbnb ~13-15%, Uber ~20-25%, Booking.com ~15%.

---

## Roadmap Planning (Now / Next / Later)

Don't build a feature roadmap. Build an outcome roadmap — features are bets on outcomes.

**Now** (this quarter): 2-3 themes actively executing  
**Next** (next quarter): 2-3 themes being prepared  
**Later** (future): ideas believed in but not yet committed

Each theme: outcome hypothesis ("we believe X will improve Y because Z") + success metric + initiatives + dependencies.

**Sequencing rules**: survival > foundations > high-confidence bets > exploratory; validate before building (interview → smoke test → prototype → MVP → full build).

---

## RICE Prioritisation

**Score** = (Reach × Impact × Confidence) / Effort

- Reach: users impacted per time period
- Impact: 3 = massive / 2 = high / 1 = medium / 0.5 = low / 0.25 = minimal
- Confidence: 100% / 80% / 50%
- Effort: person-months

Use RICE as input, not output. If your judgment says something different, interrogate the scores and assumptions. RICE misses: strategic sequencing, learning value, platform bets.
