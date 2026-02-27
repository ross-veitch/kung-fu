# /demand-forecast

Build a demand forecast for a route, market, or season with booking curve analysis.

---

## When to use

Before a pricing decision, when planning capacity or inventory strategy, or when evaluating the impact of an upcoming event or season on demand.

---

## Steps

### 1. Define the forecast scope
- **What**: Route, property, product, or market segment
- **Horizon**: How far out? (30 days / 90 days / full season / full year)
- **Granularity**: Daily, weekly, or monthly output required?
- **Purpose**: Pricing decision / capacity planning / budget / event impact assessment

### 2. Pull historical baseline
- Minimum 2 years of historical data (captures seasonality)
- 3 years preferred (captures volatility and outliers)
- Separate by segment where possible (leisure vs business, domestic vs international)
- Note any anomalies to exclude: COVID period, natural disasters, one-off events that shouldn't be trended

### 3. Decompose the demand

Break historical demand into components:
```
Observed demand = Baseline trend × Seasonal index × Event multiplier × Residual
```

**Trend**: Is underlying demand growing, flat, or declining? (Calculate year-over-year growth rate, stripping seasonality)

**Seasonal index**: Calculate the seasonal multiplier for each period. Method: for each week/month, take average demand as a ratio of the annual average.
```
Seasonal index for week 15 = Average demand in week 15 / Average weekly demand overall
```

**Events**: List any known events in the forecast period (public holidays, Ramadan, Eid, F1 race, major conference) and apply multipliers from comparable historical events.

### 4. Build the forward forecast

**Structural approach**:
```
Forecast demand = Trend × Seasonal index × Event multiplier
```

**Booking curve overlay**: Plot current booking pace against historical booking curves for the same departure/check-in dates. Are you tracking ahead, behind, or in line with last year?

**Pick-up model**: How many additional bookings are expected to come in before the date, based on historical booking patterns?
```
Expected final demand = Current bookings + Expected pick-up (from booking curve)
```

### 5. Scenario planning

Build three scenarios:
- **Base case**: Trend + seasonality, no major surprises
- **Upside**: Demand outperforms (strong event, FX tailwind, competitor capacity reduction)
- **Downside**: Demand underperforms (economic shock, negative event, new competitor entry)

For each scenario: what's the probability? What pricing action does each scenario require?

### 6. Translate to pricing implications

| Forecast signal | Pricing action |
|----------------|---------------|
| Ahead of curve by >15% | Increase price, restrict lower fare classes |
| In line with curve | Maintain current pricing strategy |
| Behind curve by 10–15% | Promotional rate or targeted offer to specific segment |
| Behind curve by >15% | Broad price reduction or aggressive promotion |

---

## Output format

```
## Demand Forecast: [Route/Property/Market]
**Period**: [Date range]
**Forecast horizon**: [Days from today]

### Baseline summary
- YoY trend: [+X%/-X%]
- Seasonal index for this period: [X.XX] (above/below annual average)
- Events: [List any events and estimated multiplier]

### Forecast
| Date | Base case | Upside | Downside | Current bookings | Pick-up expected |
|------|-----------|--------|----------|-----------------|-----------------|
| [Date] | [N] | [N] | [N] | [N] | [N] |

### Booking curve position
Current pace vs. last year: [X% ahead/behind]
Interpretation: [What this means]

### Pricing recommendation
[Specific recommendation based on forecast, with rationale]
```
