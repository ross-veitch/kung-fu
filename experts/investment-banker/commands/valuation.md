---
name: valuation
description: Value a company or asset using multiple methods (DCF, comps, transaction precedents) with key assumptions, sensitivity analysis, and triangulated range
argument-hint: "[company/asset name] [financial data or context]"
---

# /valuation

Value a company or asset using multiple valuation methodologies. Output includes a triangulated valuation range, key assumptions, sensitivity analysis, and a view on which method is most appropriate and why.

---

## Step 1: Gather inputs

**Required:**
- **Company/asset name and description**
- **Financials**: Revenue, EBITDA, FCF (historical + projected, if available)
- **Industry/sector**: SaaS, marketplace, OTA, e-commerce, etc.

**Optional but improves output:**
- **Growth rates**: Historical and projected revenue/EBITDA growth
- **Margins**: Gross margin, EBITDA margin, FCF margin
- **Cap table**: Debt, cash, equity value (to calculate EV)
- **Comparable companies**: Public comps or recent transactions
- **Strategic context**: Is this for M&A, fundraising, internal decision?

**From PLAYBOOK.md / USER.md:**
- ~~company-industry (to apply sector-specific multiples)
- ~~comparable-companies (if pre-identified)
- ~~cost-of-capital assumptions (WACC components, if standardized)

---

## Step 2: Select valuation methods

Choose 2-4 methods based on company stage and data availability.

| Method | When to Use |
|---|---|
| **DCF** | Mature company with predictable cash flows |
| **Trading Comps** | Public comparables exist |
| **Transaction Comps** | Recent M&A deals in sector |
| **LBO Analysis** | Assessing floor valuation (what PE would pay) |
| **Revenue Multiples** | Early-stage, unprofitable (SaaS, marketplaces) |

**Rule**: Always use at least 2 methods. Triangulate to a range.

---

## Step 3: Run DCF (if applicable)

### Inputs needed:
- **Forecast period**: 5-10 years
- **Revenue growth**: Year-by-year projections
- **EBITDA margin**: Target steady-state margin
- **CapEx & Working Capital**: As % of revenue
- **Tax rate**: 25-30% (depends on jurisdiction)
- **Terminal growth rate**: 2-3% (perpetuity)
- **WACC**: 8-12% (depends on risk profile)

### DCF calculation steps:

1. **Project Free Cash Flows (FCF)**:
   - FCF = EBIT × (1 - Tax Rate) + D&A - CapEx - ΔWorking Capital

2. **Calculate Terminal Value**:
   - TV = FCF_Final × (1 + g) / (WACC - g)

3. **Discount to Present Value**:
   - PV(FCF) = Σ FCF_t / (1 + WACC)^t
   - PV(TV) = TV / (1 + WACC)^N

4. **Enterprise Value**:
   - EV = PV(FCF) + PV(TV)

5. **Equity Value**:
   - Equity Value = EV + Cash - Debt

### Sensitivity analysis:

| WACC ↓ / Terminal Growth → | 2.0% | 2.5% | 3.0% |
|---|---|---|---|
| 8% | $520M | $550M | $590M |
| 10% | $420M | $450M | $480M |
| 12% | $350M | $375M | $400M |

**DCF output**: EV range of $350-590M, mid-point $450M (at 10% WACC, 2.5% terminal growth)

---

## Step 4: Run Trading Comps

### Steps:

1. **Select comps**: 4-8 public companies in same industry, similar size/growth
2. **Calculate multiples**: EV/Revenue, EV/EBITDA, P/E (use TTM or latest fiscal year)
3. **Apply median to target**: Target Revenue × Median EV/Revenue Multiple

### Example (SaaS company):

**Target**: $50M ARR, 35% growth, -10% EBITDA margin (unprofitable)

**Comps**:

| Company | EV/Revenue | Growth | EBITDA Margin |
|---|---|---|---|
| Comp A | 12× | 45% | 5% |
| Comp B | 8× | 30% | 10% |
| Comp C | 6× | 25% | 15% |
| Comp D | 10× | 35% | 0% |
| **Median** | **9×** | **32.5%** | **7.5%** |

**Valuation**: $50M × 9× = $450M EV

**Adjustment**: Target is growing faster than median (35% vs 32.5%) but unprofitable. Apply slight premium for growth, slight discount for negative margins → **Adjusted multiple: 8-10×** → **$400-500M EV**

---

## Step 5: Run Transaction Comps (if applicable)

### Steps:

1. **Identify recent M&A deals** (last 2-3 years, same sector)
2. **Extract multiples**: EV/Revenue, EV/EBITDA from press releases or CapIQ
3. **Apply premium**: Transaction multiples are typically 20-40% higher than trading multiples (control premium + synergies)

### Example (OTA / Travel):

**Recent deals**:
- Deal A: 3.5× Revenue
- Deal B: 4.2× Revenue
- Deal C: 2.8× Revenue
- **Median**: 3.5× Revenue

**Target**: $100M revenue → **Valuation**: $100M × 3.5× = $350M EV

**Note**: Transaction comps reflect what strategic buyers paid (includes synergies). Use this as an upper bound.

---

## Step 6: Run LBO Analysis (floor valuation)

### Goal: What would a PE firm pay, assuming 60% leverage and targeting 25% IRR?

### Steps:

1. **Entry EBITDA**: Current or Year 1 EBITDA
2. **Entry Multiple**: 8-12× (depends on sector)
3. **Exit Multiple**: Same as entry (conservative)
4. **Leverage**: 60% debt, 40% equity (typical PE structure)
5. **IRR Target**: 20-25%

### Example:

- **EBITDA**: $20M
- **Entry**: 10× EBITDA = $200M EV
- **Debt**: $120M (60%), **Equity**: $80M
- **Year 5 EBITDA**: $35M (assume 15% CAGR)
- **Exit**: 10× $35M = $350M EV
- **Debt paid down**: $100M remaining
- **Equity value at exit**: $350M - $100M = $250M
- **MoM**: $250M / $80M = 3.1×
- **IRR**: 25.5%

**LBO floor**: PE can pay up to **$200M** at 25% IRR → Strategic buyers (who don't need leverage) should pay more.

---

## Step 7: Triangulate valuation range

### Valuation Summary:

| Method | Low | Mid | High | Notes |
|---|---|---|---|---|
| DCF | $350M | $450M | $590M | Sensitive to WACC + terminal growth |
| Trading Comps | $400M | $450M | $500M | Adjusted for growth premium |
| Transaction Comps | $350M | $400M | $450M | Reflects recent M&A activity |
| LBO Floor | $200M | — | — | PE baseline (strategic should pay more) |
| **Implied Range** | **$350M** | **$425M** | **$500M** | — |

**Narrative**:  
> "Based on triangulation across DCF, trading comps, and transaction precedents, we estimate enterprise value in the range of **$350-500M, with a mid-point of $425M**. The DCF supports the upper end of the range if growth assumptions hold. Trading comps suggest **$400-500M**. LBO analysis indicates a floor of **$200M**, implying significant upside for strategic buyers who can realize synergies."

---

## Step 8: Select most appropriate method

**Which method should drive valuation?**

| Company Type | Primary Method | Why |
|---|---|---|
| Mature, profitable | DCF | Predictable cash flows |
| High-growth, unprofitable | Trading Comps (Revenue multiple) | No earnings yet |
| Strategic M&A | Transaction Comps | Reflects control premium |
| PE buyout | LBO | Floor valuation |

**Recommendation**: Weight methods based on context. For M&A, weight transaction comps + DCF higher. For fundraising, weight trading comps higher.

---

## Output: Valuation Brief

```markdown
# Valuation: [Company Name]

**Date**: [YYYY-MM-DD]  
**Prepared by**: [Your name]

---

## Company Overview

- **Industry**: [SaaS / Marketplace / OTA / etc.]
- **Revenue**: $[X]M (TTM)
- **EBITDA**: $[Y]M (TTM)
- **Growth**: [Z]% YoY

---

## Valuation Summary

**Enterprise Value Range**: $[Low]-[High]M  
**Mid-Point**: $[Mid]M

---

## Methodology

### 1. DCF Analysis

**Assumptions**:
- Revenue CAGR: [X]% (Years 1-5)
- Terminal growth: [2.5]%
- WACC: [10]%
- EBITDA margin: [Y]% (steady state)

**Output**: EV of $[Low]-[High]M (mid: $[Mid]M)

**Sensitivity**:
[Insert sensitivity table]

---

### 2. Trading Comps

**Comparables**: [List 4-6 public companies]

**Median Multiple**: [X]× Revenue (or [Y]× EBITDA)

**Valuation**: $[Revenue] × [Multiple] = $[Result]M EV

**Adjustment**: [Explain any premium/discount for growth, profitability, scale]

---

### 3. Transaction Comps

**Recent Deals**:
- [Deal A]: [Multiple]× Revenue
- [Deal B]: [Multiple]× Revenue
- Median: [X]× Revenue

**Valuation**: $[Revenue] × [Multiple] = $[Result]M EV

---

### 4. LBO Analysis (Floor)

**Entry EBITDA**: $[X]M  
**Entry Multiple**: [Y]×  
**IRR Target**: 25%

**LBO Floor**: $[Z]M EV

**Implication**: Strategic buyers should pay significantly above PE floor.

---

## Triangulated Valuation

| Method | Low | Mid | High |
|---|---|---|---|
| DCF | $[X]M | $[Y]M | $[Z]M |
| Trading Comps | $[X]M | $[Y]M | $[Z]M |
| Transaction Comps | $[X]M | $[Y]M | $[Z]M |
| **Implied Range** | **$[X]M** | **$[Y]M** | **$[Z]M** |

---

## Recommendation

We estimate enterprise value of **$[Mid]M** ([Low]-[High]M range).

**Rationale**:
- [Which method is most appropriate and why]
- [Key drivers of valuation]
- [Key risks to valuation]

**Next Steps**:
- [For M&A]: Engage buyers at $[X]M ask
- [For fundraising]: Target $[Y]M pre-money valuation
```

---

## Escalation / Edge cases

**If no comps exist**:  
- Use DCF as primary method
- Look for adjacent industry comps (e.g., no direct SaaS comps → use software/tech comps)

**If unprofitable with no clear path to profitability**:  
- Use revenue multiples (not EBITDA)
- Discount valuation for burn rate / cash runway risk

**If highly seasonal or cyclical**:  
- Use TTM or normalize for seasonality
- Show valuation range across peak vs trough EBITDA

**If synergies are material**:  
- Value on standalone basis first
- Add synergy value separately (with explicit assumptions)

**If target is a conglomerate (multiple business units)**:  
- Use sum-of-parts valuation (value each segment separately)
