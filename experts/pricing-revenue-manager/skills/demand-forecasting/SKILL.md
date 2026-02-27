# Demand Forecasting

Predicting future demand for pricing and inventory decisions — booking curves, seasonality, event impact, and forward-looking signals.

---

## Booking curves

The most important tool in travel revenue management. A booking curve plots cumulative bookings over time before the travel/stay date.

**How to read a booking curve**:
- X-axis: Days Before Departure/Check-in (DBA) — typically 365 to 0
- Y-axis: Cumulative bookings (% of final total or absolute count)
- Compare current booking pace against historical curves (same day of week, same season, same route/property)

**Signals**:
- Booking ahead of curve → demand is strong → consider price increases
- Booking behind curve → demand is weak → consider promotions, lower fares, or redistribution
- Shape changes → the booking window is shifting (e.g., post-COVID, booking windows shortened dramatically before recovering)

**Segmentation**: Different segments book at different times. Business travelers book 0–14 days out. Leisure books 30–90 days out. Group/wholesale books 60–180 days out. Separate your curves by segment.

---

## Seasonality

Travel demand has predictable seasonal patterns — but the pattern varies by market, route, and segment.

**Key seasonal factors**:
- **MENA**: Ramadan (reduced travel, shorter business hours), Eid al-Fitr and Eid al-Adha (peak VFR travel), summer (outbound from Gulf to Europe), Hajj season, winter (inbound European tourists)
- **APAC**: Chinese New Year (massive peak), Golden Week (Japan), school holidays (variable by country), monsoon seasons (suppresses travel in affected regions)
- **Global**: Christmas/New Year, summer holidays (Northern Hemisphere), spring break, conference seasons

**Decomposition**: Strip seasonal pattern from historical data to identify true trend. Use multiplicative decomposition: Actual = Trend × Seasonal × Residual. The seasonal index tells you the expected demand multiplier for each period.

---

## Event impact

Events create demand spikes that overlay seasonal patterns. Must be modeled separately.

**Event categories**:
- **Mega-events**: FIFA World Cup, Olympics, F1 races, Expo — massive demand spike, months of advance booking, pricing power 3–10x normal
- **Recurring events**: Annual conferences, music festivals, trade shows — predictable, can be pre-loaded into forecasting models
- **One-off events**: Concert announcements, political summits, natural disasters — unpredictable, require reactive pricing adjustment
- **Negative events**: Political instability, pandemic, visa policy changes — demand suppression that needs rapid forecast adjustment

**Modeling approach**: Create event flags in your demand model. For recurring events, use historical data. For new events, use comparable event data from other markets. Always model the shoulder period (demand spill before/after the event).

---

## Forecasting methods

### Time series models

**Simple**: Moving averages, exponential smoothing (good for stable demand, easy to implement).

**Intermediate**: SARIMA (Seasonal ARIMA) — captures trend, seasonality, and autocorrelation. The standard statistical method for travel demand forecasting.

**Advanced**: Facebook Prophet — additive model that handles multiple seasonalities, holidays, and changepoints. Good for travel because it explicitly models weekly, yearly, and custom seasonality. Easy to implement in Python.

### Machine learning approaches

**XGBoost / LightGBM**: Gradient-boosted trees for demand prediction. Strong when you have many features (price, competitor price, events, weather, economic indicators). Often outperforms time series for complex, multi-variate demand.

**Neural networks**: LSTM, Transformer-based models for sequence prediction. Highest complexity and data requirements. Mostly used by large OTAs and airlines with massive datasets.

### Demand decomposition

```
Total demand = Base demand × Seasonal index × Event multiplier × Price effect × Trend
```

This multiplicative decomposition is the mental model that revenue managers use daily. Each component can be estimated separately and combined.

---

## Forward-looking signals

Beyond historical data, several leading indicators predict demand shifts:

- **Search data**: Google Trends, internal site search volume, Google Flights/Hotels interest — search precedes booking by days to weeks
- **ForwardKeys / GDS data**: Advance booking data from GDS systems — actual ticket sales, not just intent. The gold standard for airline demand intelligence.
- **Flight capacity**: OAG schedule data shows planned capacity. Capacity increases = airline confidence in route demand. Cuts = demand concerns.
- **Economic indicators**: Oil prices (GCC travel correlates with oil), consumer confidence, employment data, exchange rates (strong USD suppresses outbound US travel)
- **Visa and policy signals**: Visa liberalization announcements create demand surges (Saudi e-Visa → immediate tourism spike). Travel bans or advisories suppress demand immediately.

---

## Forecast accuracy measurement

**MAPE** (Mean Absolute Percentage Error): The standard metric. |(Actual - Forecast) / Actual| averaged over periods. Good travel demand forecasting achieves 5–15% MAPE for 30-day horizon, 15–25% MAPE for 90-day horizon.

**Bias**: Is the forecast systematically over- or under-predicting? Signed error average reveals directional bias. A biased forecast is more dangerous than an inaccurate one because it leads to consistent over-pricing or under-pricing.
