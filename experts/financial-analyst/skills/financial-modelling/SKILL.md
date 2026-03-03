---
name: financial-modelling
description: Building three-statement financial models with integrated P&L, balance sheet, and cash flow
---

# Financial Modelling

A financial model is a quantitative representation of how a business operates. It translates strategy into numbers: if we execute the plan, what will revenue, costs, cash flow, and valuation look like over time? The model is both a forecasting tool and a decision-making framework.

World-class financial modelling is not about spreadsheet complexity — it is about clarity, auditability, and the ability to stress-test assumptions. A model with 50 tabs that nobody can follow is worse than a simple three-statement model that transparently shows the logic.

## The three-statement model architecture

Every comprehensive financial model integrates three statements:

**1. Income Statement (P&L)**
- Revenue (by line of business, product, or customer segment)
- Cost of goods sold (COGS)
- Gross profit
- Operating expenses (OpEx): R&D, sales & marketing, G&A
- EBITDA (earnings before interest, taxes, depreciation, amortization)
- Depreciation & amortization
- EBIT (operating profit)
- Interest expense/income
- Pre-tax income
- Taxes
- Net income

**2. Balance Sheet**
- **Assets**: cash, accounts receivable, inventory, PP&E (property, plant, equipment), intangible assets
- **Liabilities**: accounts payable, accrued expenses, debt
- **Equity**: share capital, retained earnings

The balance sheet must always balance: `Assets = Liabilities + Equity`

**3. Cash Flow Statement**
- **Operating cash flow**: net income adjusted for non-cash items (D&A) and working capital changes
- **Investing cash flow**: capex, acquisitions, asset sales
- **Financing cash flow**: debt issuance/repayment, equity raises, dividends
- **Net change in cash**: feeds back into the balance sheet cash line

### Integration logic (the circular references that make it work)

- Net income from P&L → flows into retained earnings on balance sheet
- Depreciation (non-cash) → reduces net income but is added back in cash flow statement
- Interest expense → depends on debt balance (balance sheet), affects net income (P&L)
- Capex (cash flow statement) → increases PP&E (balance sheet) → drives future depreciation (P&L)
- Working capital changes (balance sheet) → affect operating cash flow
- Cash from financing activities → increases cash (balance sheet)

The model is fully integrated when a change in one assumption (e.g., revenue growth) automatically propagates through all three statements.

## Building blocks: Revenue model

Revenue is where every model starts. The structure depends on the business model:

**SaaS / subscription:**
- Beginning customers + new customers - churned customers = ending customers
- Customers × ARPU (average revenue per user) = recurring revenue
- One-time setup fees, professional services (non-recurring)

**E-commerce / marketplace:**
- Transactions × GMV per transaction = gross merchandise value
- GMV × take rate = revenue

**Usage-based:**
- Active users × usage per user × price per unit = revenue

**Enterprise B2B:**
- Sales pipeline → conversion rate → closed deals
- Deals × ASP (average selling price) = bookings → recognized over contract term

Whatever the model, revenue must be **driver-based**: built from unit economics (customers, transactions, usage) not top-down percentages ("revenue grows 20% per year" is lazy — what drives the 20%?).

## Building blocks: Cost structure

Costs are either **variable** (scale with revenue) or **fixed** (do not scale).

**Variable costs:**
- COGS (cost of goods sold): materials, manufacturing, payment processing fees, hosting costs (for SaaS)
- Sales commissions (typically % of revenue)

**Fixed costs:**
- Salaries (mostly fixed, step-function as headcount grows)
- Rent, software subscriptions, insurance

**Semi-variable:**
- Customer support (scales with customers, but not linearly)
- Marketing (discretionary, but often modeled as % of revenue)

Model costs at the appropriate level of detail. For a five-person startup, headcount-by-role is fine. For a 500-person company, model by department.

## Working capital dynamics

Working capital = current assets - current liabilities. Changes in working capital affect cash flow.

**Days sales outstanding (DSO)**: how long it takes to collect receivables
- Formula: `(Accounts Receivable / Revenue) × 365`
- SaaS with annual pre-payment: DSO ~ 0 (cash upfront)
- Enterprise B2B with Net-60 terms: DSO ~ 60

**Days inventory outstanding (DIO)**: how long inventory sits before being sold
- Formula: `(Inventory / COGS) × 365`
- Irrelevant for software; critical for manufacturing/retail

**Days payable outstanding (DPO)**: how long before paying suppliers
- Formula: `(Accounts Payable / COGS) × 365`

**Cash conversion cycle** = DSO + DIO - DPO
- Negative is ideal (you collect before you pay)
- Amazon's CCC is famously negative — suppliers extend credit while customers pay immediately

## Depreciation & amortization (D&A)

Capex (capital expenditure) is cash out the door. But it is not expensed immediately — it is capitalized on the balance sheet and depreciated over its useful life.

**Straight-line depreciation**: most common
- Capex / useful life = annual depreciation expense
- Example: $1M server purchase, 5-year life → $200K/year depreciation

**Amortization**: same concept, but for intangible assets (software development costs, acquired IP, goodwill from M&A)

D&A is a **non-cash expense** — it reduces net income (P&L) but does not reduce cash (cash flow statement adds it back).

## Debt & interest

Debt appears in three places:

**Balance sheet**: debt balance (current + long-term)
**P&L**: interest expense = debt balance × interest rate
**Cash flow statement**: debt issuance (cash in), debt repayment (cash out)

### Debt schedule (amortization table)
Track principal and interest separately:

| Year | Beginning balance | Interest (5%) | Principal repayment | Ending balance |
|------|-------------------|---------------|---------------------|----------------|
| 1 | $1,000 | $50 | $200 | $800 |
| 2 | $800 | $40 | $200 | $600 |
| ...  | ... | ... | ... | ... |

Interest expense on P&L comes from this schedule. Principal repayment is a financing cash outflow (not an expense).

## Scenario analysis and sensitivity

A model with one scenario is a guess. A good model shows a range of outcomes.

**Base case**: most likely scenario (your honest forecast)
**Upside case**: optimistic but plausible (higher growth, better margins)
**Downside case**: conservative (slower growth, cost overruns, competitive pressure)

**Key assumptions to sensitize:**
- Revenue growth rate
- Gross margin
- Customer acquisition cost (CAC)
- Churn rate
- Time to close deals (sales cycle length)

Build a **sensitivity table**: show how valuation or cash runway changes as two key variables move. Example: revenue growth (rows) × gross margin (columns) → resulting valuation.

## Model hygiene and auditability

**Separate inputs, calculations, and outputs:**
- **Inputs** (assumptions tab): all assumptions in one place, clearly labeled, color-coded (e.g., blue font)
- **Calculations** (model tabs): formulas reference the inputs tab
- **Outputs** (summary tab): financial statements, KPIs, charts

**Use named ranges or cell references, not hard-coded numbers:**
- Bad: `=1000000 * 1.2` (what is 1.2?)
- Good: `=Revenue_2024 * Revenue_Growth_Rate` (auditable, self-documenting)

**One formula per row, copy across time periods:**
- Write the formula once in Year 1, drag right for Year 2, 3, 4, 5
- This ensures consistency and makes errors visible (if Year 3 is different, you will see it)

**Error checks:**
- Balance sheet balances: `IF(Assets ≠ Liabilities + Equity, "ERROR", "OK")`
- Cash flow ties out: `Ending cash (CF statement) = Beginning cash + Net change`

**Version control:**
- Save incremental versions (`Model_v1.xlsx`, `Model_v2.xlsx`, `Model_v3_final.xlsx`, `Model_v4_final_final.xlsx`...)
- Or use Excel's "Track Changes" or Google Sheets version history

## Common failure modes

**Over-complexity**: 37 tabs, circular references you do not understand, macros written by someone who left the company → nobody trusts it. Simplify ruthlessly.

**Hockey-stick syndrome**: revenue grows 300% next year because "that is when things really take off." Justify every assumption. If you cannot defend it, do not model it.

**Ignoring working capital**: modeling P&L perfectly but forgetting that revenue ≠ cash. A profitable company can still run out of cash if receivables are not collected.

**Not stress-testing**: showing only the base case, which implicitly assumes everything goes to plan. It never does. Show downside. Understand where the model breaks.

**Static assumptions**: growth rate is 20% forever. No. Model maturation — high growth early, slowing over time as the business scales.

A financial model is only as good as its assumptions. Garbage in, garbage out. The modelling mechanics are the easy part. The hard part is thinking clearly about what drives the business — and being honest about what you do not know.
