# /market-sizing

Size a travel market or segment with top-down and bottom-up estimates.

---

## When to use

Before entering a new market, when building an investor presentation, when evaluating a product investment, or when leadership asks "how big is this opportunity?"

---

## Steps

### 1. Define the market clearly

The most common market sizing mistake is not defining the market precisely. Be explicit about:
- **Geography**: Which countries or cities?
- **Segment**: Which customer type? (Leisure, business, MICE, VFR?)
- **Product**: What specifically? (Hotel bookings, international flights, domestic rail, OTA GMV?)
- **TAM vs SAM vs SOM**:
  - **TAM** (Total Addressable Market): The total market if you had 100% share
  - **SAM** (Serviceable Addressable Market): The portion you can realistically serve with your current product and distribution
  - **SOM** (Serviceable Obtainable Market): What you can realistically capture in 3–5 years

### 2. Top-down approach

Start from macro data and narrow down to your target market.

**Travel-specific data sources**:
- IATA World Air Transport Statistics — global airline RPK and revenue data
- UNWTO (World Tourism Organization) — international tourist arrivals by region
- STR — hotel supply and demand by market
- Euromonitor — travel market reports by country and segment (subscription required)
- Mordor Intelligence / Statista — market sizing estimates (use directionally, cross-check)
- WTTC (World Travel & Tourism Council) — GDP contribution of travel by country

**Process**:
1. Find the total market (e.g., total hotel bookings in Saudi Arabia — use STR or WTTC)
2. Identify your segment (e.g., OTA-booked leisure hotels)
3. Apply penetration rate (what % of total is online?)
4. Apply your accessible market (what % of online could you reach?)

**Example (simplified)**:
- Total hotel market in Saudi Arabia: $8B revenue (STR/WTTC)
- % booked online: ~40% = $3.2B online bookings
- OTA share of online: ~60% = $1.9B OTA GMV
- Your target segment (leisure): ~55% = $1.05B SAM

### 3. Bottom-up approach

Build from unit economics upward to validate the top-down estimate.

**Process**:
1. Identify the number of potential customers (travellers, hotels, airline passengers)
2. Estimate purchase frequency (how many times per year?)
3. Estimate average transaction value (what's the average booking value?)
4. Calculate GMV = Customers × Frequency × ATV

**Example (simplified)**:
- Saudi outbound travellers: ~25M trips/year
- OTA-booked: ~40% = 10M bookings
- Average air ticket value: ~$450
- Airline OTA market = 10M × $450 = $4.5B GMV
- Take rate at 4%: $180M revenue opportunity

### 4. Triangulate and sanity check

If top-down and bottom-up are within 30–40% of each other, you have a reasonable estimate. If they diverge significantly, find the assumption driving the gap.

**Sanity checks**:
- Compare to public company disclosures (Booking Holdings MENA bookings, etc.)
- Compare to analyst reports
- Check implied market share figures (if your TAM implies a 3% share for a $10M revenue company, does that seem right?)

### 5. Present with ranges

Never present a single number. Present a range:
- **Bear case**: Conservative assumptions at each step
- **Base case**: Most likely assumptions
- **Bull case**: Optimistic but defensible assumptions

---

## Output format

```
## Market Sizing: [Market Definition]

**Market**: [Precise definition — geography, segment, product]
**As of**: [Year]

### Top-down estimate
[Walkthrough from macro data to your specific market, showing each assumption]
**TAM**: $[X]B | **SAM**: $[X]B | **SOM (3yr)**: $[X]M

### Bottom-up estimate
[Walkthrough from units × frequency × ATV]
**Bottom-up SAM**: $[X]B

### Comparison
Top-down: $[X]B | Bottom-up: $[X]B | Gap: [X%] — [Explanation]

### Market sizing summary
| Scenario | SAM | SOM (Year 3) | Key assumption |
|---------|-----|--------------|---------------|
| Bear | $[X]B | $[X]M | [Most conservative assumption] |
| Base | $[X]B | $[X]M | [Most likely] |
| Bull | $[X]B | $[X]M | [Most optimistic assumption] |

### Key uncertainties
1. [Assumption that could most move the estimate]
2. [Second biggest uncertainty]

### Data sources
- [Source 1]: [What it provided]
- [Source 2]: [What it provided]
```
