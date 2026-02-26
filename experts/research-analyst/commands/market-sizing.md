---
name: market-sizing
description: Size a market using bottom-up and top-down methods, triangulate, and identify the assumptions driving the range.
argument-hint: "[market to size] [optional: any existing data points, geographic scope, time horizon]"
---

# /market-sizing

Two methods, triangulated. The output is a range with explicit assumptions — not a single number with false precision.

---

## Step 1: Define the market precisely

Before calculating anything:
- **Who is the customer?** (Not "businesses" — which businesses, at what stage, with what characteristics)
- **What is the unit?** (One transaction? One subscription? One user? One year of spend?)
- **What is in scope?** (Geography, product category, time horizon)

Vague market definitions produce garbage TAM numbers. "The global travel market is $10 trillion" is useless. "The addressable market for online hotel bookings by leisure travellers in the GCC" is a real number worth calculating.

---

## Step 2: Bottom-up sizing

Build from unit economics up.

**Bottom-up formula:**
`TAM = (Number of potential customers) × (Average annual spend per customer) × (Addressable %)`

For each variable:
- Source the number from a reliable data point (census data, industry report, company filings, first-principles estimate)
- State the confidence level
- Test extreme scenarios: if this number is 50% lower, what happens to the TAM?

**Cross-check:** Does the bottom-up estimate match what you'd expect from any known reference points (a competitor's disclosed revenue, an industry report figure)?

---

## Step 3: Top-down sizing

Start from a macro number and apply shares/filters down.

**Top-down formula:**
`TAM = (Total market size) × (Addressable segment %) × (Realistic share %)`

Sources for macro numbers: industry research firms (Phocuswright, IATA, STR for travel; IDC, Gartner for tech), government statistics agencies, central bank data, public company disclosures.

**Watch for:** Top-down figures from consultancies often embed optimistic addressability assumptions. Apply a haircut.

---

## Step 4: Triangulate and state the range

If bottom-up and top-down agree within 2×: you have a defensible range.
If they diverge by >5×: identify which assumption is driving the gap. That assumption is the key uncertainty in your sizing.

---

## Output

```
## Market Sizing: [Market definition]
**Geography**: [Scope] | **Time horizon**: [Year(s)] | **Date**: [Date]

---

### Market definition (precise)
Customer: [Specific description]
Unit: [What you're counting / what they buy]
In scope: [Clear boundaries]
Out of scope: [What's excluded and why]

---

### Bottom-up estimate

| Variable | Estimate | Source | Confidence |
|---|---|---|---|
| Potential customers | [N] | [Source] | HIGH/MED/LOW |
| Avg annual spend/customer | $[X] | [Source] | HIGH/MED/LOW |
| Addressable % | [X%] | [Rationale] | HIGH/MED/LOW |
| **Bottom-up TAM** | **$[X]** | | |

---

### Top-down estimate

| Variable | Estimate | Source | Confidence |
|---|---|---|---|
| Total market | $[X] | [Source] | HIGH/MED/LOW |
| Addressable segment | [X%] | [Rationale] | HIGH/MED/LOW |
| **Top-down TAM** | **$[X]** | | |

---

### Triangulation

Bottom-up: $[X] | Top-down: $[Y] | Divergence: [X×]

**Range**: $[Low] – $[High] (reasonable estimate: $[Mid])

**Key assumption driving the range**: [The single assumption that if changed by 2× would most affect the output]

---

### SAM and SOM (if relevant)

**SAM** (Serviceable Addressable Market — what you can realistically reach): $[X]
**SOM** (Serviceable Obtainable Market — what you can capture in [timeframe]): $[X]

---

### Confidence assessment
**Overall confidence**: HIGH / MEDIUM / LOW
**Why**: [What makes this sizing more or less reliable]
**What would make this more precise**: [Missing data that would sharpen the estimate]
```

---

## Edge cases

**No reliable data exists:** State it. Build from first principles and flag every assumption. A transparently uncertain number is more useful than a false precise one.

**Market is nascent:** Don't size the total market — size the beachhead (the early adopter segment you can actually reach). Then project from there with explicit growth assumptions.
