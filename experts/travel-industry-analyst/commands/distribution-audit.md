---
name: distribution-audit
description: Audit distribution strategy for an airline, hotel, or OTA with channel economics and investment recommendations
argument-hint: "[airline/hotel/OTA name] [current channel mix]"
---

# /distribution-audit

Audit the distribution strategy for an airline, hotel, or OTA. Output: channel health assessment, cost-per-booking by channel, and recommendations on where to invest/reduce.

---

## Step 1: Map current channel mix

| Channel | Bookings/Month | % of Total | Cost per Booking |
|---|---|---|---|
| Direct (website/app) | 5,000 | 50% | $5 |
| GDS | 2,000 | 20% | $12 |
| OTA (Booking/Expedia) | 2,500 | 25% | $20 (15% commission on $133 AOV) |
| Metasearch | 500 | 5% | $8 (CPC) |
| **Total** | **10,000** | **100%** | **$10 avg** |

---

## Step 2: Assess channel health

🟢 **Direct**: Lowest cost, highest margin. Scale this.  
🟡 **GDS**: Expensive but necessary for corporate/TMC. Explore NDC to reduce cost.  
🔴 **OTA**: Highest cost. Negotiate better rates or reduce dependency.  
🟢 **Metasearch**: Cost-effective for incremental traffic.

---

## Step 3: Recommend actions

**Priority 1**: Invest in direct (SEO, brand marketing, loyalty) → shift 10% from OTA to direct saves $15K/month  
**Priority 2**: Implement NDC to replace GDS for OTA bookings → save $10/booking × 2K = $20K/month  
**Priority 3**: Test metasearch incrementality → if incremental, scale; if cannibalistic, reduce

---

## Output Example

```markdown
# Distribution Audit: [Company]

**Current**: 10,000 bookings/month, $10 avg cost per booking

## Channel Health

- 🟢 Direct: Scale (lowest cost)
- 🟡 GDS: Maintain but migrate to NDC
- 🔴 OTA: Reduce dependency (too expensive)
- 🟢 Metasearch: Scale (good ROI)

## Recommendations

1. **Shift 10% from OTA → Direct** → Save $15K/month
2. **Implement NDC** → Save $20K/month
3. **Test metasearch incrementality** → Scale if validated
```
