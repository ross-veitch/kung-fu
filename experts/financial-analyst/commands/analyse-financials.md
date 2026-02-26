---
name: analyse-financials
description: Structured P&L, balance sheet, or metric walkthrough with health classification
argument-hint: "[financial data or report] [optional: period, comparison basis]"
---

# /analyse-financials

Walk through financial figures and produce a structured interpretation with health signals.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Financial data (P&L, balance sheet, dashboard, or raw figures)
- Time period (Q1 2026, YTD, etc.)
- Currency

**Optional but improves output**:
- Comparison basis (budget, prior period, prior year)
- Business context (what happened this period? launches, market changes, restructuring?)
- Industry benchmarks
- Prior analysis to update

**From PLAYBOOK.md** (load automatically if present):
- Standard metric definitions (how org calculates GMV, take rate, EBITDA)
- Budget/forecast figures for comparison
- Key cost categories and drivers

**If comparison basis unavailable**: Analyze trends using available periods. Flag that variance analysis is limited without budget.

---

## Step 2: Confirm data quality

Before analyzing:
- **Reported vs estimated**: Are these audited, management accounts, or rough estimates?
- **Completeness**: Full period or partial? Any known gaps?
- **Currency**: Single currency or needs FX adjustment?
- **Accounting basis**: Cash or accrual? IFRS or GAAP?

Flag any data quality issues before proceeding.

---

## Step 3: Analyze key metrics by bucket

### Revenue & Growth

| Metric | Current | Prior | Change | YoY | Status |
|--------|---------|-------|--------|-----|--------|
| Revenue | $[X]M | $[X]M | [+/-X%] | [+/-X%] | 🟢/🟡/🔴 |
| GMV | $[X]M | $[X]M | [+/-X%] | [+/-X%] | 🟢/🟡/🔴 |
| Take rate | [X]% | [X]% | [+/-X bps] | | 🟢/🟡/🔴 |

### Profitability

| Metric | Current | Prior | Change | Status |
|--------|---------|-------|--------|--------|
| Gross margin | [X]% | [X]% | [+/-X pp] | 🟢/🟡/🔴 |
| EBITDA | $[X]M | $[X]M | [+/-X%] | 🟢/🟡/🔴 |
| EBITDA margin | [X]% | [X]% | [+/-X pp] | 🟢/🟡/🔴 |
| Net income | $[X]M | $[X]M | [+/-X%] | 🟢/🟡/🔴 |

### Cash & Runway

| Metric | Current | Prior | Change | Status |
|--------|---------|-------|--------|--------|
| Cash balance | $[X]M | $[X]M | [+/-$X]M | 🟢/🟡/🔴 |
| Operating cash flow | $[X]M | $[X]M | [+/-X%] | 🟢/🟡/🔴 |
| Burn rate (if negative) | $[X]M/mo | | | 🟢/🟡/🔴 |
| Runway | [X] months | | | 🟢/🟡/🔴 |

**Health classification**:
- 🟢 **GREEN**: On or above plan, healthy trend, no concerns
- 🟡 **YELLOW**: Below plan or trend softening — warrants monitoring, not yet alarming
- 🔴 **RED**: Significantly off plan, deteriorating trend, or structural issue — requires action

---

## Step 4: Surface material variances

**Material variance threshold**: >10% deviation on lines representing >5% of revenue.

For each material variance:

| Line Item | Actual | Budget/Prior | Variance | Variance % | Classification |
|-----------|--------|-------------|----------|------------|----------------|
| [Item] | $[X] | $[X] | $[X] | [X]% | Structural / Timing / Execution |

**Variance classification**:
- **Structural**: Business model or market change (e.g., new product line, pricing change, competitor entry)
- **Timing**: Pulled forward or deferred (e.g., deal slipped to next quarter, prepaid marketing)
- **Execution**: Beat or miss on something within control (e.g., higher conversion, missed sales target)

---

## Step 5: Rate of change analysis

Not just "are we growing?" but "is growth accelerating or decelerating?"

| Metric | Q-2 → Q-1 | Q-1 → Q0 | Acceleration |
|--------|-----------|----------|--------------|
| Revenue growth | [X]% | [X]% | ⬆️ Accelerating / ➡️ Stable / ⬇️ Decelerating |
| Margin expansion | [X pp] | [X pp] | ⬆️ / ➡️ / ⬇️ |

**Why this matters**: A business growing at 30% but decelerating tells a different story than one growing at 20% but accelerating.

---

## Output

```markdown
# Financial Analysis: [Period]

## Bottom Line
[One sentence: what the numbers say about the health of the business.]

---

## Health Dashboard

| Bucket | Status | Key Metric | Trend |
|--------|--------|------------|-------|
| Revenue & Growth | 🟢/🟡/🔴 | [Key metric + value] | [Accelerating/Stable/Decelerating] |
| Profitability | 🟢/🟡/🔴 | [Key metric + value] | [Improving/Stable/Declining] |
| Cash & Runway | 🟢/🟡/🔴 | [Key metric + value] | [Strengthening/Stable/Weakening] |

---

## Top Findings

1. **[Finding]**: [Specific numbers, comparison, and what it means]
2. **[Finding]**: [Specific numbers, comparison, and what it means]
3. **[Finding]**: [Specific numbers, comparison, and what it means]

---

## Material Variances

| Line Item | Actual | Plan | Variance | Type | Impact |
|-----------|--------|------|----------|------|--------|
| [Item] | $[X] | $[X] | [+/-X%] | [Structural/Timing/Execution] | [What it means] |

---

## Watch List

**Monitor closely**:
- [Metric]: [Why it warrants attention]
- [Metric]: [Trend that could become a problem]

---

## Assumptions & Caveats

- [Any estimates or adjustments made]
- [Data quality issues noted]
- [FX assumptions if multi-currency]
```

---

## Escalation / Edge cases

**RED flag immediately if**:
- **Runway <6 months**: Cash crisis territory — needs immediate board/leadership attention
- **Revenue declining YoY**: Not just missing growth targets — actually shrinking
- **Gross margin below breakeven**: Revenue doesn't cover direct costs — structural problem
- **Material unexplained variance**: Large deviation with no clear cause — possible accounting error or fraud

**Request more data when**:
- Variance is material but classification is ambiguous (structural vs timing)
- Cash flow doesn't reconcile with P&L changes (accrual timing issue?)
- Revenue growth but declining cash (collection problems? channel mix shift?)

**Common mistakes to flag**:
- **EBITDA adjustments**: Over-adjusted EBITDA can hide real costs (stock comp, one-time items that recur)
- **Revenue recognition**: Watch for timing games (pulling revenue forward, channel stuffing)
- **Gross margin inconsistency**: Different products/services have different margins — aggregate can mislead

**Ross/Wego context**:
- **Wego metrics**: GMV (gross booking value), take rate (revenue/GMV), CPA (cost per acquisition)
- **Revenue model**: Meta-search (CPC/CPA from airlines/hotels/OTAs) + direct booking (WegoBeds, WegoPro)
- **Seasonality**: Ramadan (low), Eid (spike), summer (Saudi family travel), year-end (planning)
- **Currency**: Report in USD but significant AED/SAR exposure
- **Investor focus**: GMV trajectory, take rate stability, path to EBITDA profitability
- **Key cost lines**: Marketing (CPA), headcount, infrastructure
