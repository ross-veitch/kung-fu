---
name: deal-brief
description: Brief on a proposed transaction or capital raise with deal structure, economics, strategic rationale, key risks, and comparable transactions
argument-hint: "[deal type: acquisition / sale / equity raise] [target/company name] [deal size or valuation]"
---

# /deal-brief

Brief on a proposed M&A transaction or capital raise. Output includes deal structure summary, economics (valuation/dilution/consideration), strategic rationale, key risks, comparable transactions, and likely buyer/investor universe.

---

## Step 1: Identify deal type

| Deal Type | What It Is | Key Questions |
|---|---|---|
| **Acquisition (Buyside)** | Client is acquiring a company | What's the strategic rationale? What are we paying? How do we structure it? |
| **Sale (Sellside)** | Client is selling their company | Who are the buyers? What's the positioning? What's the valuation range? |
| **Equity Raise** | Client is raising capital (VC, growth equity, pre-IPO) | How much? At what valuation? What dilution? Who are the investors? |
| **Merger** | Two companies combining (merger of equals or acquirer/target) | What's the exchange ratio? What's the combined entity worth? Who controls? |

**From PLAYBOOK.md / USER.md:**
- ~~company-name (buyer, seller, or fundraising company)
- ~~deal-size (transaction value or fundraise amount)
- ~~strategic-context (why is this deal happening now?)
- ~~deal-timeline (how urgent? regulatory approvals needed?)

---

## Step 2: Gather deal details

**Required:**
- **Target company** (or fundraising company): Name, industry, size (revenue/EBITDA/users)
- **Deal value or raise amount**: $X million
- **Deal structure**: Stock purchase, asset purchase, equity round (Series A/B/C, etc.)

**Optional but improves brief:**
- **Strategic rationale**: Why is this deal happening?
- **Comparable transactions**: Recent deals in the sector
- **Buyer/investor universe**: Who are the likely acquirers or investors?
- **Timing**: When does this need to close?

---

## Step 3: Summarize deal structure

### For M&A (Acquisition/Sale)

**Key elements**:
- **Purchase price**: $X million
- **Form of consideration**: Cash, stock, earnout, seller note
- **Structure**: Stock purchase vs asset purchase
- **Financing**: How is buyer funding this? (Cash on hand, debt, equity raise)
- **Earnout**: % of price contingent on future performance (if any)
- **Rollover equity**: % of seller equity reinvested (if any)
- **Escrow**: % of price held back for reps & warranties (if any)
- **Key terms**: Non-compete, employment agreements, board seats

**Example**:

```
**Deal Structure**:
- **Purchase price**: $150M (EV)
- **Consideration**: $120M cash at close + $30M earnout (20% of price)
- **Structure**: Stock purchase (all equity, liabilities transfer)
- **Earnout**: $30M if Year 1 EBITDA exceeds $25M
- **Rollover**: Founder rolls over 15% ($22.5M) into buyer's equity
- **Escrow**: 10% ($15M) held for 18 months (reps & warranties)
- **Financing**: Buyer using $70M cash + $50M debt + $30M equity raise
```

---

### For Equity Raise

**Key elements**:
- **Amount raised**: $X million
- **Pre-money valuation**: $Y million
- **Post-money valuation**: $Y + $X million
- **Investor ownership**: % of company post-raise
- **Founder dilution**: % dilution for existing shareholders
- **Lead investor**: Who's leading the round?
- **Use of funds**: What will the money be used for?
- **Key terms**: Liquidation preference, board seats, anti-dilution, pro-rata rights

**Example**:

```
**Deal Structure**:
- **Raise**: $25M Series B
- **Pre-money valuation**: $75M
- **Post-money valuation**: $100M
- **Investor ownership**: 25% (new money)
- **Founder dilution**: Founders drop from 60% → 45% (15% dilution)
- **Lead investor**: [VC Firm Name]
- **Terms**: 1× non-participating liquidation preference, 2 board seats (investor + independent), weighted-average anti-dilution
- **Use of funds**: $15M sales/marketing, $7M engineering, $3M working capital
```

---

## Step 4: Quantify the economics

### For M&A:

**Valuation multiples**:
- EV / Revenue: $150M / $50M = **3.0×**
- EV / EBITDA: $150M / $20M = **7.5×**

**Returns** (if selling):
- Founder owns 40% → Receives $60M cash (40% of $150M EV)
- Less: Escrow ($6M held back for 18 months)
- **Net proceeds at close**: $54M

**IRR** (for investors):
- Initial investment: $10M (Series A, 3 years ago)
- Exit proceeds: $30M (20% ownership × $150M)
- **MoM**: 3.0× | **IRR**: 44%

---

### For Equity Raise:

**Dilution**:
- Pre-raise: Founders own 60% of $75M = $45M
- Post-raise: Founders own 45% of $100M = $45M (value unchanged, but % ownership drops)
- **Dilution**: 60% → 45% (15% dilution)

**Runway**:
- Current burn rate: $1.5M/month
- Cash raised: $25M
- **New runway**: 16 months (before needing next raise)

---

## Step 5: State strategic rationale

**Why is this deal happening?**

### M&A Strategic Rationale (Buyer Perspective):

**Example (Acquisition)**:

> **Strategic Rationale for [Buyer] to Acquire [Target]**:
>
> 1. **Market Expansion**: [Target] operates in [Geography/Segment] where [Buyer] has no presence. Acquisition instantly gives [Buyer] [X] customers in [Market].
> 2. **Product Capability**: [Target]'s [Product/Tech] fills a gap in [Buyer]'s product suite. Acquiring vs building saves 18-24 months.
> 3. **Talent Acquisition**: [Target]'s engineering team (40 engineers) brings deep expertise in [AI/ML/etc.].
> 4. **Financial Accretion**: [Target] is profitable ($20M EBITDA). Deal is 10% accretive to [Buyer]'s EPS in Year 1.
> 5. **Synergies**: Estimated $10M annual cost synergies (consolidate sales teams, eliminate duplicate SG&A).

---

### Equity Raise Strategic Rationale:

**Example (Series B)**:

> **Why We're Raising Now**:
>
> 1. **Scale Go-To-Market**: We've proven PMF (product-market fit). Revenue grew 4× in 18 months. Now we need capital to scale sales (hire 30 AEs) and marketing (increase spend 5×).
> 2. **Expand Product**: Build 3 new product lines that existing customers are asking for (roadmap is clear, need eng team to execute).
> 3. **Extend Runway**: Current burn is $1.5M/month. $25M raise gives us 16 months runway to reach $50M ARR (break-even point).
> 4. **Competitive Positioning**: Competitor just raised $40M. We need to maintain pace or risk losing market share.

---

## Step 6: Identify key risks

**M&A Risks**:

| Risk | Impact | Mitigation |
|---|---|---|
| **Integration complexity** | High | Retain key employees with retention bonuses; phase integration over 12 months |
| **Customer churn** | Medium | Lock in top 10 customers with contract extensions before close |
| **Regulatory approval delay** | Medium | Pre-file with FTC; keep timeline buffer |
| **Earnout not achieved** | Low | Earnout targets are conservative (80% confidence of hitting) |

**Equity Raise Risks**:

| Risk | Impact | Mitigation |
|---|---|---|
| **Valuation too high** | Medium | Market comparables support $75M pre-money; show DCF backing |
| **Dilution concerns** | Medium | Explain dilution is offset by growth (45% of $100M > 60% of $75M in 18 months) |
| **Use of funds not clear** | High | Detailed budget: $15M sales (hire 30 AEs), $7M eng (ship 3 products), $3M working capital |

---

## Step 7: Benchmark against comparable transactions

**M&A Comparables**:

| Deal | Date | Target | Buyer | EV | EV/Revenue | EV/EBITDA |
|---|---|---|---|---|---|---|
| Deal A | 2023 | [Company A] | [Buyer A] | $120M | 2.4× | 6.0× |
| Deal B | 2023 | [Company B] | [Buyer B] | $200M | 3.5× | 8.0× |
| Deal C | 2022 | [Company C] | [Buyer C] | $180M | 3.0× | 7.2× |
| **Median** | — | — | — | — | **3.0×** | **7.2×** |

**Observation**: Proposed deal at **3.0× Revenue and 7.5× EBITDA** is in-line with recent transactions (slightly above median EBITDA multiple due to [growth rate / margin profile]).

**Equity Raise Comparables**:

| Company | Round | Date | Amount | Pre-Money | ARR | ARR Multiple |
|---|---|---|---|---|---|---|
| Comp A | Series B | 2023 | $30M | $90M | $15M | 6.0× |
| Comp B | Series B | 2023 | $20M | $60M | $12M | 5.0× |
| Comp C | Series B | 2024 | $25M | $80M | $10M | 8.0× |
| **Our Deal** | Series B | 2024 | $25M | $75M | $12M | **6.25×** |

**Observation**: Proposed valuation of **6.25× ARR** is in the middle of the range for Series B companies with similar growth profiles.

---

## Step 8: Identify buyer/investor universe

**For M&A (Sellside)**:

List potential acquirers in 3 tiers:

**Tier 1: Strategic Buyers** (most likely, highest valuations)
- [Company A]: Natural fit (same market, product overlap)
- [Company B]: Geographic expansion play
- [Company C]: Acquihire for talent

**Tier 2: Financial Buyers** (PE firms)
- [PE Firm A]: Sector focus, right check size ($100-300M)
- [PE Firm B]: Roll-up strategy (acquiring competitors)

**Tier 3: Dark Horses** (less obvious but possible)
- [Company D]: Adjacent market, could be strategic
- [Company E]: International player looking to enter US

---

**For Equity Raise**:

List potential investors in 3 tiers:

**Tier 1: Growth Equity** (Series B focus)
- [VC Firm A]: Portfolio includes [Comp A, Comp B] (sector expertise)
- [VC Firm B]: Wrote $20-30M checks at Series B historically

**Tier 2: Late-Stage VCs** (expansion rounds)
- [VC Firm C]: Leads Series B/C in SaaS
- [VC Firm D]: Follow-on from existing investor [Firm X]

**Tier 3: Corporates / Strategics** (strategic investors)
- [Corp A]: Corporate VC arm, invests in adjacent tech
- [Corp B]: Could lead to acquisition down the road

---

## Output: Deal Brief

```markdown
# Deal Brief: [Deal Name]

**Date**: [YYYY-MM-DD]  
**Deal Type**: [Acquisition / Sale / Equity Raise]  
**Prepared by**: [Your name]

---

## Executive Summary

[Company A] is [acquiring / selling / raising] [Company B / equity] for **$[X]M** ([structure: cash/stock/earnout]). The deal [strategic rationale in 1 sentence]. Valuation is **[Y]× Revenue, [Z]× EBITDA**, in-line with recent comps. Key risks include [top 2 risks]. Recommended action: [Proceed / More DD / Pass].

---

## Deal Structure

| Item | Detail |
|---|---|
| **Target** | [Company Name] |
| **Buyer/Investor** | [Company/VC Name] |
| **Transaction Value** | $[X]M |
| **Form of Consideration** | $[A]M cash + $[B]M stock + $[C]M earnout |
| **Structure** | Stock purchase / Asset purchase / Series B |
| **Earnout** | [% of price, metric, timeline] |
| **Rollover** | [% of seller equity reinvested] |
| **Financing** | [How buyer is funding] |

---

## Economics

**Valuation Multiples**:
- EV / Revenue: [X]×
- EV / EBITDA: [Y]×

**Returns** (if exit):
- [Shareholder] receives $[Z]M ([% ownership] × $[X]M EV)
- IRR: [X]% (since [investment date])

**Dilution** (if equity raise):
- Founders: [A]% → [B]% ([C]% dilution)
- Investors: [New investor] gets [D]%

---

## Strategic Rationale

### Why This Deal Makes Sense:

1. **[Reason 1]**: [1-2 sentences + data]
2. **[Reason 2]**: [1-2 sentences + data]
3. **[Reason 3]**: [1-2 sentences + data]

---

## Key Risks

| Risk | Impact | Mitigation |
|---|---|---|
| [Risk 1] | High/Med/Low | [Action] |
| [Risk 2] | High/Med/Low | [Action] |
| [Risk 3] | High/Med/Low | [Action] |

---

## Comparable Transactions

[Insert table of recent deals with multiples]

**Observation**: Proposed valuation is [in-line / premium / discount] to recent transactions.

---

## Buyer/Investor Universe

**Tier 1** (most likely):
- [Company/VC A]: [Why they'd be interested]
- [Company/VC B]: [Why they'd be interested]

**Tier 2** (possible):
- [Company/VC C]
- [Company/VC D]

**Tier 3** (dark horses):
- [Company/VC E]

---

## Next Steps

1. [Action 1: e.g., "Complete financial DD by [date]"]
2. [Action 2: e.g., "Negotiate final SPA terms"]
3. [Action 3: e.g., "Secure board approval by [date]"]
4. [Target close date]: [YYYY-MM-DD]

---

## Recommendation

**[Proceed / More DD / Pass]**

**Rationale**: [2-3 sentences on why this is the right call]
```

---

## Escalation / Edge cases

**If valuation is significantly above comps**:  
- Justify with specific differentiators (faster growth, better margins, strategic value)
- Or flag as overpriced and recommend negotiation

**If deal structure is complex (multiple earnouts, stock + cash)**:  
- Break down each component separately
- Show NPV (net present value) of earnouts to compare apples-to-apples

**If buyer universe is thin (only 1-2 realistic buyers)**:  
- Flag lack of competitive tension (risk for seller)
- Consider broadening search or delaying sale until more buyers emerge

**If equity raise dilutes founders below control threshold (50%)**:  
- Flag governance implications (loss of board control)
- Recommend alternative structures (debt financing, smaller raise, higher valuation)
