---
name: unit-economics
description: Calculate and interpret unit economics with benchmark comparison
argument-hint: "[business/product data] [optional: benchmarks or comparables]"
---

# /unit-economics

Calculate and interpret unit economics. Core metrics: CAC, LTV, LTV:CAC, payback period, gross margin, NRR/GRR.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Business model (subscription, transactional, marketplace, SaaS)
- Revenue data: ARPU or ARPA (per user or per account, per month)
- Cost data: total marketing/sales spend, customer count acquired
- Retention data: churn rate or retention rate (monthly or annual)

**Optional but improves output**:
- Gross margin percentage
- Expansion revenue (upsells, cross-sells) for NRR calculation
- Cohort data (retention curves by acquisition month)
- Benchmark comparables (industry, stage, geography)
- Customer segmentation (enterprise vs SMB, by market)

**From PLAYBOOK.md** (load automatically if present):
- Standard definitions (how org calculates CAC, what counts as "customer")
- Current targets and benchmarks
- Cost allocation methodology (fully loaded CAC vs marketing only)

**If retention data unavailable**: Use industry benchmarks as proxy, flag assumption prominently.

---

## Step 2: Calculate core metrics

### Customer Acquisition Cost (CAC)
```
CAC = Total Sales & Marketing Spend / New Customers Acquired
```
- **Fully loaded**: Include salaries, tools, content, ads, events
- **Marketing only**: Just ad spend + attribution (useful for channel comparison)
- State which version you're using.

### Lifetime Value (LTV)
```
LTV = ARPU × Gross Margin % × (1 / Monthly Churn Rate)
```
Or with annual data:
```
LTV = ARPA × Gross Margin % × (1 / Annual Churn Rate)
```
- **With expansion**: LTV = ARPU × Gross Margin % × (1 / (Churn Rate - Expansion Rate))
- Cap LTV at reasonable lifespan (5-7 years max) to avoid infinity with low churn.

### LTV:CAC Ratio
```
LTV:CAC = LTV / CAC
```

### CAC Payback Period
```
Payback = CAC / (ARPU × Gross Margin %)
```
Result in months.

### Net Revenue Retention (NRR)
```
NRR = (Starting MRR + Expansion - Contraction - Churn) / Starting MRR × 100%
```

### Gross Revenue Retention (GRR)
```
GRR = (Starting MRR - Contraction - Churn) / Starting MRR × 100%
```

---

## Step 3: Classify health vs benchmarks

| Metric | Value | Benchmark (B2B SaaS) | Benchmark (Marketplace) | Status |
|--------|-------|----------------------|------------------------|--------|
| **CAC** | $[X] | Varies by ACV | Varies by AOV | Context-dependent |
| **LTV** | $[X] | >3× CAC | >3× CAC | 🟢/🟡/🔴 |
| **LTV:CAC** | [X]:1 | >3:1 healthy, >5:1 maybe underinvesting | >3:1 | 🟢/🟡/🔴 |
| **Payback** | [X] months | <12 mo (good), <18 mo (ok) | <6 mo (good) | 🟢/🟡/🔴 |
| **Gross Margin** | [X]% | >70% (SaaS), >50% (marketplace) | >40% | 🟢/🟡/🔴 |
| **NRR** | [X]% | >110% (good), >120% (great) | >100% | 🟢/🟡/🔴 |
| **GRR** | [X]% | >85% (good), >90% (great) | >80% | 🟢/🟡/🔴 |

**Health thresholds**:
- 🟢 **GREEN**: At or above benchmark — healthy economics
- 🟡 **YELLOW**: Below benchmark but viable — needs improvement
- 🔴 **RED**: Significantly below benchmark — business model issue, not just execution

**Special cases**:
- **LTV:CAC > 5:1**: Potentially underinvesting in growth (could spend more and still be profitable)
- **LTV:CAC < 1:1**: Losing money on every customer — existential problem
- **Payback > 24 months**: Cash flow stress — need to fund long payback with working capital

---

## Step 4: Sensitivity analysis

**What assumptions drive the range?**

Identify the 3 assumptions that most affect LTV:CAC:
1. **Churn rate**: LTV is inversely proportional — small churn changes swing LTV dramatically
2. **ARPU**: Revenue per customer — affected by pricing, upsell, mix
3. **CAC**: Driven by channel efficiency — can change with competition, saturation

**Show sensitivity**:
| Churn Rate | LTV | LTV:CAC |
|------------|-----|---------|
| [Base -2pp] | $[X] | [X]:1 |
| [Base] | $[X] | [X]:1 |
| [Base +2pp] | $[X] | [X]:1 |

---

## Output

```markdown
# Unit Economics: [Business/Product Name]

## Summary

**Business model**: [Subscription / Transactional / Marketplace]

**Period**: [Time period analyzed]

**Verdict**: [One sentence — are unit economics healthy?]

---

## Core Metrics

| Metric | Value | Benchmark | Status | Note |
|--------|-------|-----------|--------|------|
| CAC | $[X] | $[benchmark] | 🟢/🟡/🔴 | [Fully loaded / marketing only] |
| ARPU (monthly) | $[X] | $[benchmark] | 🟢/🟡/🔴 | |
| LTV | $[X] | >3× CAC = $[X] | 🟢/🟡/🔴 | [Capped at X years] |
| LTV:CAC | [X]:1 | >3:1 | 🟢/🟡/🔴 | |
| Payback period | [X] months | <[Y] months | 🟢/🟡/🔴 | |
| Gross margin | [X]% | >[Y]% | 🟢/🟡/🔴 | |
| NRR | [X]% | >[Y]% | 🟢/🟡/🔴 | |
| GRR | [X]% | >[Y]% | 🟢/🟡/🔴 | |

---

## Key Findings

1. **[Finding]**: [What the numbers say and what to do about it]
2. **[Finding]**: [Specific concern or strength]
3. **[Finding]**: [Actionable insight]

---

## Sensitivity

| Scenario | Churn | LTV | LTV:CAC | Payback |
|----------|-------|-----|---------|---------|
| Optimistic | [X]% | $[X] | [X]:1 | [X] mo |
| Base case | [X]% | $[X] | [X]:1 | [X] mo |
| Pessimistic | [X]% | $[X] | [X]:1 | [X] mo |

**Key driver**: [Which assumption matters most]

---

## Recommendations

**Improve LTV** (if low):
- [Specific lever: reduce churn by X through Y]
- [Specific lever: increase ARPU through Z]

**Reduce CAC** (if high):
- [Specific lever: shift channel mix]
- [Specific lever: improve conversion funnel]

**Improve margins** (if thin):
- [Specific lever: reduce COGS through X]

---

## Assumptions & Caveats

- [CAC calculation method: fully loaded vs marketing only]
- [Churn definition: logo churn vs revenue churn]
- [LTV cap: capped at X years]
- [Data period: based on X months of data]
```

---

## Escalation / Edge cases

**RED flag immediately if**:
- **LTV:CAC < 1:1**: Losing money on every customer — stop acquiring until economics improve
- **Payback > 24 months** with limited cash: Can't fund the growth — cash crisis risk
- **GRR < 70%**: Leaky bucket — acquiring customers but they leave too fast
- **Negative gross margin**: Revenue doesn't cover direct costs — pricing or cost structure is broken

**Caution with**:
- **Blended CAC hiding channel differences**: One channel is $10 CAC, another is $200 — blended average is misleading
- **LTV based on early data**: If company is <2 years old, LTV is largely assumed — flag uncertainty
- **Cohort decay**: Early cohorts may behave differently from recent ones (product changes, market saturation)
- **Marketplace two-sided CAC**: May need to calculate supply-side and demand-side CAC separately

**Ross/Wego context**:
- **Model**: Meta-search (CPC/CPA) + direct booking — different economics per channel
- **Key metrics**: GMV, take rate (revenue/GMV), CPA (cost per acquisition), conversion rate
- **Marketplace nuance**: Wego acquires demand (users) and supply (airlines/hotels/OTAs) — unit economics differ by side
- **Market variation**: UAE/Saudi customer economics differ significantly (AOV, frequency, retention)
- **Seasonality**: CAC spikes during high-demand periods (Eid, summer) — analyze cohorts not just averages
