---
name: revenue-analytics
description: >
  Revenue metrics (RevPAR, ADR, GMV, take rate), cohort-based revenue analysis, 
  and LTV by channel. Use when analyzing revenue performance or diagnosing 
  revenue problems.
---

# Revenue Analytics

## Key Metrics

**Hotels**:
- RevPAR = ADR × Occupancy
- ADR = Revenue / Rooms Sold
- Occupancy = Rooms Sold / Available Rooms

**Airlines**:
- RASM (Revenue per Available Seat Mile) = Revenue / ASM
- Yield = Revenue / RPM (Revenue Passenger Miles)
- Load Factor = RPM / ASM (% of seats filled)

**OTAs**:
- GMV (Gross Merchandise Value) = Total transaction volume
- Take Rate = Revenue / GMV
- Net Revenue = GMV × Take Rate

---

## Cohort Revenue Analysis

Track revenue by acquisition cohort (month/channel).

**Example**:

| Cohort | M0 Rev | M1 Rev | M2 Rev | LTV (M2) |
|---|---|---|---|---|
| Jan 2024 | $50 | $20 | $15 | $85 |
| Feb 2024 | $60 | $25 | $20 | $105 |

**Insight**: Feb cohort has higher LTV → investigate what changed (better onboarding? different channel?).

---

## Revenue Segmentation

**By channel**: Google, Meta, SEO, Direct  
**By segment**: Business vs Leisure, Domestic vs International  
**By booking window**: Advance (>30 days) vs Last-minute (<7 days)

**Use case**: Optimize pricing by segment (charge higher prices to less price-sensitive segments).
