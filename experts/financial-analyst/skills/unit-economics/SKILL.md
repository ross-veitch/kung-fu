---
name: unit-economics
description: >
  Unit economics frameworks for business analysis and investment decisions.
  Use when: calculating CAC, LTV, payback period, analysing cohorts, evaluating business health,
  what are the unit economics, is this business model working, SaaS metrics.
---

# Unit Economics

## Why unit economics matter

Unit economics answer the most fundamental question about a business: *does it make money at the individual customer level, before scale effects and fixed costs?* A business with good unit economics can become profitable by growing. A business with bad unit economics becomes more unprofitable by growing.

## The core metrics

### Customer Acquisition Cost (CAC)

**Formula**: Total sales & marketing spend ÷ Number of new customers acquired (same period)

**Fully-loaded CAC** includes: all S&M headcount, tools, agency fees, events, PR, brand — not just paid media.

**Blended vs paid CAC**: Blended uses all channels. Paid isolates just paid marketing. A healthy blended CAC may hide an unsustainable paid CAC if organic is masking the real cost of acquisition.

**Payback period**: Months to recover CAC from gross margin contribution = CAC ÷ (Monthly gross margin per customer). Under 12 months: excellent. 12–24 months: acceptable with strong retention. Over 24 months: risky, requires patient capital.

### Lifetime Value (LTV)

**Simple LTV**: Average revenue per customer × Gross margin % ÷ Monthly churn rate

**More rigorous**: Discount future cash flows at cost of capital. In practice, simple LTV is used for operational decisions; DCF-based LTV for investment analysis.

**What LTV is not**: LTV is not the revenue a customer will ever generate. It is the *discounted gross margin contribution* over the expected life of the relationship. Using revenue inflates LTV by ~gross margin %.

### LTV:CAC Ratio

**Formula**: LTV ÷ CAC

| Ratio | Interpretation |
|-------|---------------|
| < 1:1 | Destroying value with every customer acquired |
| 1:1 – 2:1 | Marginal; not enough headroom |
| 3:1 | Healthy benchmark — commonly cited target |
| > 5:1 | Strong; may indicate under-investment in growth |
| > 10:1 | Either exceptional business or too conservative on S&M |

LTV:CAC is a ratio, not a goal. A 3:1 ratio with a 24-month payback is worse than a 2.5:1 ratio with an 8-month payback.

## Cohort analysis

Unit economics should be measured by cohort (customers acquired in a given period), not blended averages. Blended averages hide:
- Improving or deteriorating acquisition costs over time
- Changes in customer quality (newer cohorts may behave differently)
- The effect of product changes on retention

**What to look for in cohort charts**:
- **Revenue retention by cohort**: are cohorts flat, declining, or expanding over time? Expanding = net revenue retention (NRR) > 100%, which is exceptional.
- **Churn by cohort**: early churn (months 1–3) vs late churn (months 6–12+) have different causes and different fixes.

## SaaS-specific metrics

| Metric | Formula | Healthy benchmark |
|--------|---------|------------------|
| ARR | MRR × 12 | — |
| MRR growth | (MRR this month - MRR last month) / MRR last month | > 10% MoM early stage |
| Net Revenue Retention (NRR) | (Starting ARR + expansion - contraction - churn) / Starting ARR | > 100% is excellent |
| Gross Revenue Retention (GRR) | (Starting ARR - contraction - churn) / Starting ARR | > 85% healthy, > 90% excellent |
| CAC Ratio | Net new ARR / S&M spend | > 0.5 healthy; > 1.0 excellent |
| Rule of 40 | Revenue growth % + EBITDA margin % | > 40 considered healthy at scale |

## Marketplace / metasearch adjustments

For two-sided marketplaces and metasearch businesses (hotel and flight booking platforms):
- **GTV** (Gross Transaction Value): total booking value flowing through platform
- **Revenue** = GTV × take rate (typically 1–5% for metasearch, 10–20% for OTAs)
- **CAC** is often measured per transaction, not per customer, since repeat rates vary
- **Contribution margin** per booking = revenue - variable cost (tech infra, payment processing, customer support)

Key benchmarks vary significantly by category. Always compare to vertical-specific comps, not generic SaaS benchmarks.

See `references/` for: full metric calculation templates, cohort analysis methodology, SaaS benchmarks by stage, marketplace-specific adjustments.
