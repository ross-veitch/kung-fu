# /competitive-pricing-brief

Analyse competitor pricing strategy and positioning with actionable implications.

---

## When to use

When setting or reviewing pricing strategy, before a major commercial decision, when a competitor has changed their pricing, or in response to a rate war or promotional escalation.

---

## Steps

### 1. Define the competitive set
- **Direct competitors**: Same product, same market, same customer segment
- **Indirect competitors**: Adjacent products that could satisfy the same need
- **Rate shopping sources**: OTA Insight, Rate Tiger, ATPCO (airlines), public OTA listings, competitor websites

### 2. Data collection

**Hotels**: Use OTA Insight or Rate Tiger to pull competitor rates for target dates (typically 30-day, 60-day, and 90-day forward window). Capture BAR (Best Available Rate) and promotional rates.

**Airlines**: Pull ATPCO data for fare class availability by carrier on the route. Note lowest available fare by class (Y, B, H, K, etc.) and restrictions (advance purchase, min stay, non-refundable).

**OTAs**: Manually or programmatically sample competitor search results — what price do they show for equivalent searches? What meta-data do they display (reviews, photos, badging)?

### 3. Competitive positioning analysis

For each competitor, assess:
- **Price positioning**: Premium, at-market, value/discount?
- **Rate pattern**: Fixed rate strategy vs. dynamic pricing? How much do their prices vary by demand period?
- **Promotional behaviour**: Do they discount heavily in low periods? Do they maintain rates in peak?
- **Ancillary strategy**: How do they price extras (breakfast, flexible cancellation, airport transfer)?
- **Channel differences**: Do they offer better rates on their direct channel vs OTAs?

### 4. Identify pricing gaps and opportunities

- **Premium gap**: If you're priced above competitors, is the premium justified by your product differentiation? Are you winning at this premium (check occupancy/conversion)?
- **Discount gap**: If you're priced below, are you driving incremental demand or just buying market share expensively?
- **Segment gap**: Any customer segments where competitors are not competing effectively?
- **Timing gap**: Periods where competitors are not reacting to demand signals (slow to adjust)?

### 5. Strategic recommendations

- **If in a price war**: Is the war being won? Calculate the cost (revenue per unit lost × volume). Often better to hold rates and accept lower occupancy than enter a race to the bottom.
- **If underpricing**: Calculate the revenue gain from closing the gap. Test small price increases to assess elasticity.
- **If overpricing**: Is conversion suffering? What would a 5% price reduction do to volume? Model the revenue impact.

---

## Output format

```
## Competitive Pricing Brief: [Market/Route/Product]
**Date**: [Date]
**Period analysed**: [Dates]

### Competitive set
| Competitor | Current price | vs. My rate | Positioning | Notes |
|-----------|--------------|-------------|-------------|-------|
| [Name] | [Price] | [+/-X%] | [Premium/Parity/Discount] | [Observation] |

### Key findings
1. [Finding with supporting data]
2. [Finding]
3. [Finding]

### Competitive dynamics
[Paragraph analysis of how competitors are behaving — are they disciplined or discounting aggressively? Any notable strategy changes?]

### Implications for our pricing
[Specific recommendations with rationale]

### Monitoring cadence
[How often to refresh this analysis and what to watch for]
```
