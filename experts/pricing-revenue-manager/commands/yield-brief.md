---
name: yield-brief
description: Brief on yield optimization for a route, market, or product with demand segmentation and recommended price ladder
argument-hint: "[route/market/product] [demand data] [current yield]"
---

# /yield-brief

Brief on yield optimization for a route, market, or product. Output: demand segmentation, recommended price ladder, timing recommendations, expected yield improvement.

---

## Step 1: Segment demand

**Business travelers**: Inelastic, book late, high willingness-to-pay  
**Leisure travelers**: Elastic, book early, price-sensitive  
**Groups**: High volume, low margin

---

## Step 2: Build price ladder

| Segment | Price | Volume | Revenue | % of Total |
|---|---|---|---|---|
| Business (last-min) | $300 | 100 | $30K | 30% |
| Leisure (advance) | $150 | 400 | $60K | 60% |
| Groups | $100 | 100 | $10K | 10% |
| **Total** | — | 600 | **$100K** | 100% |

---

## Step 3: Optimize

**Current yield**: $100K / 600 bookings = $167 avg  
**Optimized**: Raise business price to $350 (+$5K), lower leisure to $140 (+volume) → **$105K revenue, $175 avg yield**

---

## Output Example

```markdown
# Yield Brief: [Route/Product]

**Current**: 600 bookings, $100K revenue, $167 avg yield

## Recommended Price Ladder

- **Business**: $300 → $350 (+17%)
- **Leisure**: $150 → $140 (-7%)
- **Groups**: $100 (hold)

**Projected**: $105K revenue (+5%), $175 avg yield (+5%)

**Timing**: Implement 30 days before peak season for maximum impact.
```
