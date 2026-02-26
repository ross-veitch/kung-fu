---
name: pricing-analysis
description: Analyse pricing for a product/route/segment with elasticity hypothesis, competitor benchmarks, and recommended price points
argument-hint: "[product/route/segment] [current pricing data]"
---

# /pricing-analysis

Analyse pricing for a product, route, or segment. Output: price positioning assessment, elasticity hypothesis, recommended price points with expected volume/revenue tradeoff.

---

## Step 1: Gather data

- **Current price**: $[X]
- **Current volume**: [Y] units/month
- **Current revenue**: $[Z]
- **Competitor pricing**: [Range]

---

## Step 2: Model elasticity

**Hypothesis**: If price changes by X%, demand changes by Y%.

**Example**:
- Current: $100 price, 1000 bookings/month, $100K revenue
- Scenario A: $110 price (+10%), 900 bookings (-10% demand), **$99K revenue** ❌
- Scenario B: $90 price (-10%), 1150 bookings (+15% demand), **$103.5K revenue** ✅

**Recommendation**: Lower price to $90 (elastic demand).

---

## Step 3: Competitive positioning

**Comp 1**: $95  
**Comp 2**: $105  
**Comp 3**: $100  
**Median**: $100

**Your price**: $100 → **At market**

**Recommendation**: If product is differentiated, test $110. If commodity, test $90.

---

## Output Example

```markdown
# Pricing Analysis: [Product/Route]

**Current**: $100, 1000 units/month, $100K revenue  
**Elasticity**: Estimated -1.5 (elastic)

## Recommended Price Points

| Price | Volume | Revenue | vs Current |
|---|---|---|---|
| $90 | 1150 | $103.5K | +3.5% |
| $100 | 1000 | $100K | baseline |
| $110 | 900 | $99K | -1% |

**Recommendation**: Test $90 price point. Elastic demand suggests lower price drives more revenue.
```
