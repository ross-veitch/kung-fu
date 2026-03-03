# /build-model — Build a financial model for a specific business

**Purpose**: Construct a three-statement financial model from scratch, integrating income statement, balance sheet, and cash flow with driver-based assumptions.

**When to use**: When a business needs a forecasting model for fundraising, board reporting, budgeting, scenario planning, or strategic decision-making.

---

## Phase 1: Scope the model

Before building anything, define what the model needs to answer:

1. **What decision does this model inform?** (e.g., "Should we raise at this valuation?", "Can we afford to hire 20 people next quarter?", "What happens if growth slows to 10%?")
2. **Time horizon**: Typically 3–5 years for growth companies, 5–10 years for mature businesses
3. **Granularity**: Monthly (early-stage, cash-critical), quarterly (growth-stage), annual (mature)
4. **Audience**: Internal management, board, investors, acquirers — each requires different emphasis

Collect inputs:
- Historical financials (2–3 years of actuals minimum)
- Current run-rate metrics (MRR, customers, ARPU, churn, headcount)
- Business plan or strategic priorities
- Comparable company benchmarks (for sanity-checking assumptions)

---

## Phase 2: Build the revenue model

Revenue is the foundation. Build it bottom-up from unit economics:

**For subscription/SaaS:**
```
Beginning customers
+ New customers (from sales pipeline or growth rate)
- Churned customers (churn rate × beginning customers)
= Ending customers
× ARPU
= Monthly recurring revenue
× 12 + one-time revenue
= Annual revenue
```

**For marketplace/e-commerce:**
```
Sessions × conversion rate = transactions
Transactions × AOV = GMV
GMV × take rate = revenue
```

**For enterprise B2B:**
```
Sales reps × quota attainment × ASP = new bookings
+ Renewal bookings (existing ARR × retention rate)
= Total bookings → recognized per revenue recognition policy
```

Key: every revenue line must trace back to a driver. No "grows 25% because we said so."

---

## Phase 3: Build the cost model

**COGS (variable costs):**
- Model as % of revenue or per-unit cost
- Hosting/infrastructure, payment processing, content costs, support

**Operating expenses (largely fixed, step-function):**
- **Headcount plan**: role × salary × benefits multiplier (1.2–1.4×)
- **R&D**: engineering + product headcount costs
- **Sales & Marketing**: sales team + marketing spend (CAC × new customers)
- **G&A**: finance, legal, HR, office, insurance

**Headcount is usually the largest cost.** Build a simple headcount table:

| Department | Current | +Q1 | +Q2 | +Q3 | +Q4 | Year-end | Avg salary |
|-----------|---------|-----|-----|-----|-----|----------|-----------|
| Engineering | 12 | 3 | 2 | 2 | 1 | 20 | $150K |
| Sales | 5 | 2 | 2 | 1 | 1 | 11 | $120K |

---

## Phase 4: Build the three statements

### Income statement
```
Revenue
- COGS
= Gross Profit (check: gross margin %)
- R&D
- Sales & Marketing
- G&A
= EBITDA
- D&A
= EBIT
- Interest
- Tax
= Net Income
```

### Balance sheet
- **Assets**: Cash (from CF), AR (DSO × revenue/365), PP&E (capex - accumulated depreciation)
- **Liabilities**: AP (DPO × COGS/365), debt (from debt schedule), deferred revenue
- **Equity**: Share capital + retained earnings (cumulative net income)
- **Check**: Assets = Liabilities + Equity (build an error flag)

### Cash flow statement
- Start with net income
- Add back D&A (non-cash)
- Adjust for working capital changes (ΔAR, ΔAP, Δinventory)
- Subtract capex
- Add/subtract financing (debt, equity raises)
- = Net change in cash → feeds back to balance sheet

---

## Phase 5: Scenarios and sensitivity

Build three scenarios by varying 2–3 key assumptions:

| Assumption | Downside | Base | Upside |
|-----------|----------|------|--------|
| Revenue growth | 10% | 25% | 40% |
| Gross margin | 55% | 65% | 70% |
| Churn rate | 8% | 5% | 3% |

Create a sensitivity table showing how the key output (valuation, runway, EBITDA) changes across scenarios.

Identify the **break-even assumption**: at what growth rate does the company run out of cash? At what churn rate does unit economics turn negative?

---

## Phase 6: Validate and stress-test

Before presenting, run sanity checks:

1. **Benchmark against comps**: Is your gross margin realistic for the industry? Is revenue per employee in range?
2. **Check implied metrics**: What CAC payback period does the model imply? What LTV:CAC ratio?
3. **Cash reality check**: Does the ending cash balance make sense? Can the company actually collect receivables at the modeled DSO?
4. **Growth deceleration**: Does growth slow naturally as the base gets larger, or does it stay flat (unrealistic)?
5. **Balance sheet balances**: If it doesn't, there's a formula error. Fix before presenting.

---

## Output format

Deliver:

1. **Model file** (Excel or Google Sheets):
   - Assumptions tab (all inputs, color-coded blue)
   - Income statement
   - Balance sheet
   - Cash flow statement
   - Scenario toggle (dropdown: base/upside/downside)
   - Sensitivity table
   - Charts: revenue trajectory, margin evolution, cash runway

2. **Executive summary** (1 page):
   - Key assumptions (5 bullet points)
   - Base case outcome: revenue, EBITDA, cash position at end of forecast
   - Upside/downside range
   - Key risks: what breaks the model
   - Recommendation tied to the original decision question

3. **Assumption documentation**:
   - Source and rationale for each key assumption
   - Confidence level (high/medium/low)
   - What would change the assumption
