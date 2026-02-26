---
name: dynamic-pricing
description: >
  Yield management, price elasticity, demand forecasting, and pricing strategies 
  for OTA/hotel/airline contexts. Use when setting prices, optimizing revenue, 
  or modeling demand.
---

# Dynamic Pricing

## Core Concepts

**RevPAR** (Revenue per Available Room) = ADR × Occupancy Rate  
**ADR** (Average Daily Rate) = Total Room Revenue / Rooms Sold  
**Occupancy** = Rooms Sold / Total Available Rooms

**Goal**: Maximize RevPAR, not occupancy or ADR in isolation.

**Example**:
- Hotel A: $200 ADR × 60% occupancy = $120 RevPAR
- Hotel B: $150 ADR × 85% occupancy = $127.50 RevPAR
- **Hotel B wins** (higher RevPAR despite lower ADR)

---

## Price Elasticity

**Price Elasticity** = % Change in Demand / % Change in Price

**Elastic** (elasticity >1): Demand is sensitive to price. Lower price → big increase in demand.  
**Inelastic** (elasticity <1): Demand is insensitive. Price changes don't move demand much.

**Example**:
- Leisure travelers: Elastic (price-sensitive)
- Business travelers: Inelastic (expense it, don't care about price)

**Strategy**: Charge higher prices to inelastic segments, discount for elastic segments.

---

## Demand Forecasting

Use historical data + forward-looking signals:
- **Historical patterns**: Same dates last year, seasonality
- **Booking curves**: How far in advance do people book?
- **Events**: Conferences, holidays, sports events
- **Competitor pricing**: Are they raising/lowering rates?

**Forecast horizon**:
- Hotels: 90-day rolling forecast
- Airlines: 365-day advance booking curve

---

## OTA Take Rate Models

**Commission model**: Hotel sets rate, OTA takes 15-20% commission. Simple, transparent.

**Net rate model**: Hotel sets net rate (what they want to receive), OTA marks up. OTA keeps the markup as take rate.

**Merchant model**: OTA buys rooms wholesale, sets retail price. Higher risk (OTA owns inventory) but higher margin potential.

**Benchmark take rates**:
- Booking.com: ~15%
- Expedia: ~15-18%
- Airbnb: ~13-15% (guest service fee + host fee)

---

## Dynamic Pricing Strategies

**Time-based**: Price increases as availability decreases (last-minute premium).

**Demand-based**: Price adjusts based on real-time demand (high demand = higher price).

**Competitor-based**: Match or undercut competitors.

**Segment-based**: Business vs leisure, domestic vs international, advance vs last-minute.

**Rule**: Combine multiple strategies (not just one).
