---
name: performance-marketing
description: >
  Paid acquisition fundamentals including CAC/LTV/payback, bidding strategies, 
  creative testing, channel-specific tactics (Google/Meta/TikTok), and OTA-specific 
  considerations. Use when planning paid campaigns or optimizing acquisition.
---

# Performance Marketing

## CAC, LTV, and Unit Economics

**CAC** (Customer Acquisition Cost) = Total marketing spend / New customers acquired

**LTV** (Lifetime Value) = Average revenue per customer × Average customer lifespan × Gross margin

**LTV:CAC Ratio Benchmarks**:
- **<1:1** = Unsustainable (losing money on every customer)
- **1:1 to 3:1** = Okay but not great
- **3:1 to 5:1** = Healthy (target for most businesses)
- **>5:1** = Very strong (or underinvesting in growth)

**Payback Period** = CAC / (Monthly revenue per customer × Gross margin)
- **<6 months**: Excellent
- **6-12 months**: Good
- **12-18 months**: Acceptable (if LTV is strong)
- **>18 months**: Risky (long time to recover investment)

**Blended vs Channel CAC**: Always segment CAC by channel. Blended CAC hides which channels are efficient.

---

## Channel-Specific Tactics

### Google Ads

**Search Campaigns**: Intent-based (users actively searching)
- **High-intent keywords**: "book hotel bangkok tonight" (expensive but converts)
- **Broad keywords**: "hotels bangkok" (cheaper, lower conversion)
- **Bidding**: Start with tCPA (target CPA), switch to tROAS (target ROAS) when you have conversion data

**Shopping Campaigns**: Product-based (e-commerce, travel products)
- Use product feed optimization (titles, descriptions, images)
- Segment by product margin (bid higher on high-margin products)

**Performance Max**: Google's AI-driven all-in-one campaign
- Pros: Simple, scales well
- Cons: Less control over where ads show

**YouTube Ads**: Video-based awareness + consideration
- Use for top-of-funnel (cheap views, brand awareness)
- Retarget YouTube viewers with Search ads (lower CAC)

---

### Meta Ads (Facebook + Instagram)

**Campaign Objectives**: Awareness → Traffic → Engagement → Conversions

**Audience Targeting**:
- **Broad**: Let Meta's algo find your audience (works best post-iOS 14)
- **Lookalike**: Upload customer list → Meta finds similar users (1-3% LAL most effective)
- **Interest-based**: Target users interested in [travel, hotels, specific destinations]
- **Retargeting**: Show ads to website visitors, app users (highest ROI)

**Creative Best Practices**:
- Test 10+ variants per campaign (UGC vs brand, video vs static, social proof vs urgency)
- Retire losers after 48 hours, scale winners
- Refresh creative every 2-4 weeks (ad fatigue)

**Bidding**: Start with Lowest Cost, graduate to Cost Cap or Bid Cap when stable

---

### TikTok Ads

**Best for**: Gen Z, viral content, app installs
**Creative**: Native, lo-fi, UGC-style performs best (not polished brand ads)
**Bidding**: Cost per click (CPC) or cost per 1000 impressions (CPM)

---

## Creative Testing Framework

**Hypothesis**: Test one variable at a time (headline vs image vs CTA)

**Testing matrix example**:
- **Headlines**: 3 variants (social proof, urgency, value prop)
- **Images**: 3 variants (UGC, lifestyle, product shot)
- **CTAs**: 2 variants ("Book Now" vs "Find Your Stay")
- **Total combinations**: 3 × 3 × 2 = 18 ads

**Winner identification**: After 1000 impressions per ad, cut bottom 50%. Double spend on top 25%.

---

## Attribution & Incrementality

**Last-click attribution**: Gives 100% credit to final touchpoint (broken — ignores upper-funnel)

**Data-driven attribution** (Google Analytics 4, Meta): ML model distributes credit across touchpoints

**Marketing Mix Modeling (MMM)**: Statistical model measuring true incrementality (requires 2+ years data)

**Geo Holdout Test**: Run ads in 80% of geos, hold out 20% → measure lift in treated geos

**Rule**: Don't trust platform-reported conversions (Meta says they drove 1000 conversions — but how many would have happened anyway?). Always validate with incrementality tests.

---

## OTA / Travel-Specific Considerations

**Cost-per-booking vs cost-per-install**: OTA apps → optimize for bookings, not just app installs

**Seasonality**: Q2/Q3 (summer travel) = peak season → higher CPMs but also higher intent

**Booking window**: Flights booked 2-4 weeks out, hotels 1-2 weeks → optimize campaigns for booking window

**Intent-based search**: "flights to dubai" = high intent (bid aggressively). "dubai travel guide" = low intent (nurture with content).

---

## Budget Allocation

Start with 60-70% of budget on proven channels (Google Search, Meta retargeting), 30-40% on experimental channels (TikTok, Snap, influencer).

Reallocate monthly based on CAC performance. If Meta CAC is $50 and Google is $80, shift budget to Meta.

**Rule**: Never allocate >40% of budget to one channel (concentration risk — if algorithm changes, you're screwed).
