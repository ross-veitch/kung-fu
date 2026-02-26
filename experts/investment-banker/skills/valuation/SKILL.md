---
name: valuation
description: >
  Valuation methodologies including DCF (WACC, terminal value, sensitivity), 
  trading comps, transaction comps, LBO analysis, and sector-specific multiples 
  (SaaS, marketplace, OTA/travel). Use when valuing companies or assets for 
  M&A, fundraising, or strategic decisions.
---

# Valuation

## Discounted Cash Flow (DCF)

DCF values a company based on the present value of its future cash flows. It's the most theoretically sound method but also the most assumption-sensitive.

### DCF formula

**Enterprise Value (EV)** = PV(Free Cash Flows) + PV(Terminal Value)

**Free Cash Flow (FCF)** = EBIT × (1 - Tax Rate) + Depreciation & Amortization - CapEx - Change in Net Working Capital

**Terminal Value** (year N) = FCF_N × (1 + g) / (WACC - g)  
where g = perpetual growth rate (typically 2-3%, roughly GDP growth)

**Discount rate (WACC)** = (E / (E+D)) × Cost of Equity + (D / (E+D)) × Cost of Debt × (1 - Tax Rate)

---

### WACC calculation

**Cost of Equity** = Risk-Free Rate + Beta × Equity Risk Premium  
- Risk-free rate: 10-year government bond yield (e.g., 4% for US Treasuries)  
- Beta: Company's volatility relative to market (public comps or industry average)  
- Equity risk premium: 5-7% (historical average)

**Cost of Debt** = Interest rate on debt (or market rate for comparable credit rating)

**Example WACC calc** (SaaS company, 70% equity / 30% debt):
- Cost of Equity: 4% + 1.2 × 6% = 11.2%
- Cost of Debt: 6% (pre-tax), 4.2% (after-tax at 30% tax rate)
- WACC: 0.7 × 11.2% + 0.3 × 4.2% = 9.1%

---

### DCF best practices

**Forecast period**: Typically 5-10 years (until company reaches steady state)

**Revenue growth assumptions**: Base on historical growth, market size, competitive position. Don't extrapolate 50% growth for 10 years — growth rates compress over time.

**Margin assumptions**: Use comps to check if your EBITDA margin assumptions are realistic for the sector.

**Sensitivity analysis**: Vary WACC (±1-2%) and terminal growth rate (±0.5-1%) to show valuation range.

**Sanity check**: Compare DCF output to comps. If DCF says 20× revenue and comps trade at 5×, your assumptions are aggressive.

---

## Trading Comps (Public Company Multiples)

Valuation based on how similar public companies are valued by the market.

### Common multiples

| Multiple | Formula | When to Use |
|---|---|---|
| EV / Revenue | Enterprise Value / Revenue | Early-stage, high-growth (SaaS, marketplaces) |
| EV / EBITDA | Enterprise Value / EBITDA | Profitable companies (mature SaaS, industrials) |
| EV / Gross Profit | Enterprise Value / Gross Profit | Marketplaces, aggregators |
| P / E (Price/Earnings) | Market Cap / Net Income | Mature, profitable companies |
| PEG Ratio | (P/E) / Growth Rate | High-growth companies |

**EV = Market Cap + Debt - Cash**

---

### Sector-specific multiples

**SaaS**:
- Median: 5-8× ARR (Annual Recurring Revenue)
- High-growth (>40% YoY): 10-15× ARR
- Rule of 40: Growth Rate % + FCF Margin % should be >40

**Marketplaces**:
- Median: 2-4× GMV (Gross Merchandise Value)
- High-take-rate (>15%): 1-2× Revenue
- Focus on: GMV growth, take rate, repeat rate

**OTA / Travel**:
- Median: 1-3× Revenue
- Focus on: GTV (Gross Transaction Value), margin, repeat booking rate
- Booking Holdings: ~5× Revenue (premium for scale + profitability)
- Expedia: ~2× Revenue

**Consumer / E-commerce**:
- Median: 0.5-2× Revenue
- High-margin (>40% gross margin): 2-5× Revenue
- Focus on: LTV:CAC, repeat purchase rate, unit economics

---

### Comps methodology

1. **Select comparable companies**: Same industry, similar size, similar growth profile
2. **Calculate multiples**: Use latest fiscal year or TTM (trailing twelve months)
3. **Apply median/mean multiple** to target company's metrics
4. **Adjust for differences**: If target is faster-growing, apply premium; if smaller scale, apply discount

**Example**:
- Target: SaaS company, $50M ARR, 35% growth
- Comps: 5 public SaaS companies trading at 6-10× ARR (median 8×)
- Valuation: $50M × 8 = $400M

---

## Transaction Comps (Precedent Transactions)

Valuation based on what buyers have paid for similar companies in M&A deals.

**Why use transaction comps**: Reflects what strategic buyers are willing to pay (often includes control premium + synergies).

**Premium over trading comps**: Transaction multiples are typically 20-40% higher than trading multiples (control premium).

**Example**:
- Public SaaS companies trade at 8× ARR
- Recent M&A deals in SaaS: 10-12× ARR (25-50% premium)

**Data sources**: CapIQ, PitchBook, Crunchbase, press releases

---

## LBO Analysis (Leveraged Buyout)

What would a private equity firm pay for this company, assuming they lever it up and target a 20-25% IRR?

### LBO formula (simplified)

**Entry EV** = EBITDA × Entry Multiple  
**Exit EV** (5 years later) = EBITDA_Year5 × Exit Multiple  
**Equity Value at Exit** = Exit EV - Debt Remaining  
**IRR** = (Equity Value at Exit / Equity Invested) ^ (1/5) - 1

**Rule**: PE firms typically target 3× money-on-money (MoM) in 5 years = 25% IRR.

**Example**:
- Company EBITDA: $20M
- Entry: 10× EBITDA = $200M EV
- Debt: $120M (60% leverage), Equity: $80M
- Year 5 EBITDA: $35M (assume 15% CAGR)
- Exit: 10× $35M = $350M EV
- Debt paid down: $100M remaining
- Equity value: $350M - $100M = $250M
- MoM: $250M / $80M = 3.1×
- IRR: 25.6%

**LBO as floor valuation**: If an LBO model shows PE can pay $200M at 25% IRR, that's the floor — strategic buyers (who don't need leverage and can realize synergies) should pay more.

---

## Sum-of-Parts Valuation

For conglomerates or companies with distinct business units, value each segment separately.

**Example** (travel company with OTA + hotel management + B2B platform):
- OTA business: $100M revenue × 2× = $200M
- Hotel management: $30M EBITDA × 8× = $240M
- B2B platform: $50M ARR × 6× = $300M
- **Total**: $740M

**Conglomerate discount**: Public markets often value diversified companies at 10-20% discount to sum-of-parts (complexity, lack of focus). M&A can unlock this value by splitting.

---

## Valuation Triangulation (Best Practice)

Never rely on one method. Triangulate across 3-4 methods and present a range.

**Example valuation summary**:

| Method | Low | Mid | High |
|---|---|---|---|
| DCF | $350M | $420M | $500M |
| Trading Comps | $380M | $450M | $520M |
| Transaction Comps | $450M | $550M | $650M |
| LBO Floor | $400M | — | — |
| **Implied Range** | **$400M** | **$475M** | **$550M** |

**Narrative**: "Based on triangulation across DCF, comps, and transaction precedents, we estimate valuation in the range of $400-550M, with a mid-point of $475M."

---

## Sector-Specific Valuation Nuances

### SaaS

**Key metrics**:
- ARR (Annual Recurring Revenue)
- Net Revenue Retention (NRR): >100% is strong (existing customers expand)
- CAC Payback: <12 months is excellent
- Rule of 40: Growth % + FCF Margin % should exceed 40

**Multiple drivers**: Growth rate, NRR, gross margin, CAC efficiency

**Valuation range**: 3-15× ARR (depending on growth + profitability)

---

### Marketplaces

**Key metrics**:
- GMV (Gross Merchandise Value)
- Take rate (% of GMV retained as revenue)
- Repeat rate (% of users who transact >1× per year)
- LTV:CAC

**Multiple drivers**: Liquidity (supply-demand balance), take rate, network effects

**Valuation range**: 1-3× GMV or 5-15× Revenue (depending on take rate + growth)

---

### OTA / Travel

**Key metrics**:
- GTV (Gross Transaction Value)
- Revenue (net of cost of goods sold)
- Booking frequency (trips per user per year)
- Margin (net margin %, operating leverage)

**Multiple drivers**: Scale (larger = higher margin), brand (Booking.com premium), repeat rate

**Valuation range**: 1-5× Revenue (Booking: 5×, smaller players: 1-2×)

**Travel-specific consideration**: Seasonality (Q2/Q3 peak), pandemic recovery trajectory, airline vs hotel mix

---

## Common Valuation Mistakes

**1. Anchoring on one method** → Use triangulation
**2. Overly aggressive growth assumptions** → Reality-check against comps
**3. Ignoring cash/debt** → Always adjust for net debt in EV calculations
**4. Using P/E for unprofitable companies** → Use revenue multiples instead
**5. Not adjusting for dilution** → Account for option pool, convertible debt
**6. Ignoring control premium** → M&A valuations are 20-40% above trading comps
**7. Forgetting to sensitivity-test** → Show range, not point estimate
