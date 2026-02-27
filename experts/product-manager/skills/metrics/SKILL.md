# Product Metrics

How to measure product health — activation, retention, engagement, and the metric trees that connect product work to business outcomes.

---

## North Star metric

The single metric that best captures the value your product delivers to users. It aligns the entire team and resolves prioritisation disputes.

**Good North Star metrics**:
- Spotify: Time spent listening
- Airbnb: Nights booked
- Slack: Messages sent in teams
- An OTA: Completed bookings (or search-to-book conversion)

**Properties of a good North Star**: Measurable, reflects actual value delivery (not vanity), teams can influence it, correlates with long-term revenue.

---

## Metric trees

A metric tree decomposes the North Star into a hierarchy of input metrics that teams can directly influence.

```
Revenue (North Star)
├── Bookings × Average Booking Value
│   ├── Visitors × Conversion Rate
│   │   ├── Organic visitors
│   │   ├── Paid visitors
│   │   └── Search → Detail → Book funnel conversion
│   └── Average Booking Value
│       ├── Average nights
│       ├── ADR
│       └── Ancillary attach rate
└── Retention
    ├── Repeat booking rate (90-day)
    └── Loyalty tier progression
```

**Why metric trees matter**: They create line-of-sight from individual team work to business outcomes. A team working on search can see exactly how their conversion improvement flows up to revenue.

---

## Activation

The moment a new user first experiences core product value. The single most important metric for growth — activated users retain dramatically better than non-activated users.

**Defining activation**: Identify the action that correlates most strongly with long-term retention. For Slack: sending first message. For an OTA: completing first booking (or maybe first search that returns results they engage with).

**Measuring activation**: Track % of new users who reach activation milestone within a time window (e.g., 7 days). Benchmark: varies wildly by product type, but improving activation by even a few percentage points has outsized impact on all downstream metrics.

**Aha moment**: The specific in-product experience that creates the "I get it" reaction. Facebook's was "7 friends in 10 days." Find yours through correlation analysis: which early actions best predict retention?

---

## Retention

The most important metric for product health. Revenue is a function of retention.

### Retention curves

Plot % of users still active at D1, D7, D14, D30, D60, D90, D180, D365 after first use.

**Healthy curve**: Flattens (asymptotes) — a stable base of retained users. The higher and flatter the curve, the healthier the product.
**Unhealthy curve**: Trends toward zero — every cohort eventually churns completely.

**Benchmarks** (D30 retention):
- Social apps: 20–30% is good
- E-commerce / marketplaces: 10–20% is good (lower frequency is expected)
- SaaS B2B: 90–95% monthly retention is expected (much higher bar)

### Cohort analysis

Don't look at aggregate retention — it masks cohort effects. Plot retention by signup cohort (week or month). Are newer cohorts retaining better? That's product improvement. Are they retaining worse? That's a quality problem or channel problem (worse traffic sources).

### DAU/MAU ratio (stickiness)

Daily Active Users / Monthly Active Users. Indicates how frequently users engage.
- 0.5+ = exceptional (social media, messaging)
- 0.2–0.4 = good (productivity tools, content)
- 0.05–0.15 = normal for transactional products (OTA, e-commerce)

---

## Engagement depth

Beyond frequency, measure *how deeply* users engage:

- **Session length**: How long per visit?
- **Actions per session**: How many meaningful actions?
- **Feature adoption**: What % of users use key features?
- **Search depth**: For OTAs — how many searches, how many detail pages viewed, search refinements

**Power user curve** (L28): Plot # of days active in last 28 days. A healthy product shows a "smile" — lots of users at 1–2 days (casual) AND lots at 20+ days (power users). An unhealthy product has everyone clustered at 1–3 days.

---

## Funnel metrics

For transactional products, the conversion funnel is the most actionable metric framework:

```
Visit → Search → View Details → Start Checkout → Complete Booking
100%  → 60%    → 25%         → 8%             → 4%
```

**Where to focus**: The biggest absolute drop-off is the highest-leverage optimisation point. Improving search → detail view from 25% to 30% on 1M visitors = 50K additional detail views = more bookings downstream.

**Micro-conversions**: Break each step into sub-steps. "Start checkout" might include: select room → enter details → payment method → confirm. Each sub-step can be measured and optimised independently.

---

## Instrumentation best practices

- **Track events, not page views**: Product analytics should be event-based (Mixpanel, Amplitude). "User searched" with properties {destination, dates, guests} is infinitely more useful than "user visited /search."
- **Naming conventions**: Establish a tracking plan with consistent event naming (snake_case, verb_noun: `search_completed`, `booking_started`). Inconsistent naming creates analytics debt that's expensive to fix.
- **Segment everything**: Always include user properties (platform, country, user tier, signup cohort) with events. You can't retroactively add segmentation.
