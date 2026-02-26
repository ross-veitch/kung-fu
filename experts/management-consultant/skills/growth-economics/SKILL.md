---
name: growth-economics
description: >
  Unit economics, funnel diagnostics, pricing strategy, and growth decomposition.
  Use when: CAC/LTV analysis, cohort analysis, payback periods, funnel leakage,
  pricing decisions, channel mix evaluation, growth rate decomposition, contribution 
  margin analysis, take-rate design, sensitivity analysis.
---

# Growth & Economics

## Unit economics

### Core metrics

**CAC (Customer Acquisition Cost)**: Total sales + marketing spend / new customers acquired in period.

Critical distinctions:
- **Blended CAC**: includes all customers (new + reactivated); masks channel efficiency
- **Marginal CAC**: cost of the next customer at current scale; rises as you exhaust efficient channels
- **Channel CAC**: by paid search, organic, referral, direct — blending hides what's actually working
- **Payback period** = CAC / gross margin per customer per month. Target: < 12 months consumer; < 18 months SMB; < 24 months enterprise.

**LTV (Lifetime Value)**: Average revenue per customer × gross margin × average customer lifetime.
- **Revenue LTV** (common but wrong): doesn't account for margin by cohort
- **Gross margin LTV**: CAC/LTV ratio should use GM LTV, not revenue LTV
- **Cohort-adjusted LTV**: LTV improves with customer vintage (older cohorts have more data → better retention curves)

**LTV:CAC ratio benchmarks**:
- < 1× : destroying value; needs fundamental rethink
- 1–3× : survival territory; acquisition is costly relative to value
- 3–5× : healthy; sufficient margin to invest in growth
- > 5× : efficient; potentially underinvesting in acquisition

**Contribution margin**: Revenue - variable costs (COGS + variable S&M + variable support). What each incremental unit of revenue actually contributes to fixed cost coverage and profit. Fixed costs come after contribution margin, not before.

### Common unit economics traps

1. **Survivorship bias in cohort analysis**: retention curves look better than reality because poor-fit customers churn early; the "loyal" tail of a cohort isn't representative of new customers
2. **Gross vs net retention conflation**: net revenue retention (NRR) > 100% masks churn with expansion; gross retention shows actual customer loss rate
3. **Attribution gaming**: last-touch attribution over-credits paid; first-touch over-credits brand; multi-touch models require calibration
4. **CAC excluding onboarding cost**: new-customer support and onboarding cost belongs in CAC economics, not G&A
5. **LTV projections based on <12 months data**: LTV model extrapolation error is enormous on short cohort observation windows

---

## Growth diagnostics

### AARRR funnel decomposition

**Acquisition** → **Activation** → **Retention** → **Revenue** → **Referral**

For each stage, identify:
- Current conversion rate
- Benchmark (internal trend, industry reference)
- Hypothesis for gap
- Minimum viable experiment to test hypothesis

Decompose by: channel, cohort, geography, product line, customer segment. Problems hidden in aggregates are visible in segments.

### Retention as the growth foundation

**Retention shape matters more than average retention**:
- **Flattening curve**: retention stabilises at 20–40%+ after 3–6 months → genuine retention; growth is additive
- **Declining curve that never flattens**: churn continues indefinitely → product-market fit issue; growth is a leaky bucket
- **J-curve**: early churn masks long-term loyal cohort → segment analysis needed

**D1/D7/D30 benchmarks** (mobile app, consumer):
- D1 retention: top decile > 40%; median 20–25%
- D7 retention: top decile > 20%; median 10–15%
- D30 retention: top decile > 10%; median 5–8%

**NRR (Net Revenue Retention)**: measures revenue expansion in existing customer base.
- < 80%: significant contraction; existing base shrinking
- 80–100%: stable
- 100–110%: expansion offsetting churn; healthy
- > 120%: top decile SaaS; expansion dominates; new logo acquisition becomes highly leveraged

### Marketplace liquidity diagnostics

**Supply-side health signals**: supplier fill rate, supplier satisfaction, supply repeat rate, time-to-first-booking for new supply
**Demand-side health signals**: search-to-booking conversion, repeat purchase rate, NPS by segment
**Match quality signals**: cancel rate, dispute rate, review score distribution
**Liquidity warning signs**: geographic concentration > 30% in top market (concentration risk), category concentration > 40% in one type

---

## Pricing strategy

### Price elasticity

Price elasticity of demand = % change in quantity / % change in price.

Practical estimation methods:
1. **A/B price testing**: cleanest signal; requires sufficient volume
2. **Cohort comparison**: compare conversion at different historical price points (caveat: confounds with other variables)
3. **Conjoint analysis**: survey-based; measures stated preference (adjust for reality gap)
4. **Reference price anchoring**: price relative to a visible alternative drives elasticity more than absolute price

**Travel elasticity rules of thumb**:
- Leisure flight: highly elastic (< -1.5 typically); LCCs built on this
- Business flight: inelastic (-0.2 to -0.5); price is not the primary driver
- Budget hotel: elastic (-0.8 to -1.2)
- Luxury hotel: relatively inelastic (-0.3 to -0.6); brand and experience dominate

### Bundling

**Pure bundling** (must buy together): maximises capture when components have different elasticities across segments; risky if segments want individual components
**Mixed bundling** (individual + bundle price): optimal for most cases; bundle price sets consumer surplus expectation
**Ancillary design**: price the core as low as possible to maximise volume; capture margin on high-willingness-to-pay ancillaries (bags, seats, upgrades, insurance, flexibility)

### Take-rate design (marketplaces)

- Start lower than optimal to drive supply adoption
- Raise take rate after establishing liquidity (switching cost + search cost lock-in)
- Tier by value-add: charge more for premium placement, guaranteed inventory, data services
- Cap total supplier cost: if total cost (take rate + marketing + tools) exceeds supplier's direct channel cost, disintermediation is rational

---

## Initiative prioritisation

### RICE framework

**R**each × **I**mpact × **C**onfidence / **E**ffort

- **Reach**: users affected per quarter (based on data, not estimate)
- **Impact**: 3 (massive) / 2 (high) / 1 (medium) / 0.5 (low) / 0.25 (minimal)
- **Confidence**: 100% (high evidence) / 80% (medium) / 50% (low)
- **Effort**: person-months

Rank by score. Flag items where Confidence is low — they may need a validation step before full build.

### Sequencing considerations RICE ignores

- **Dependencies**: initiative A must complete before B is possible
- **Optionality**: some initiatives unlock a category of future work (higher value than RICE alone captures)
- **Capacity constraints**: no point ranking 5 high-RICE initiatives if team can only do 2
- **Strategic alignment**: RICE doesn't weight for whether an initiative builds toward the product strategy or is a detour
