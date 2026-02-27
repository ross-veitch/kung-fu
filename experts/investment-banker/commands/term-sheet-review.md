# /term-sheet-review

Analyse a term sheet or LOI: economic terms, governance terms, red flags, and negotiation leverage.

---

## When to use

When reviewing a term sheet for an equity financing round, an LOI (Letter of Intent) for an acquisition, or any preliminary deal document that sets the framework for a transaction.

---

## Steps

### 1. Identify the document type
- **Venture / growth equity term sheet**: Pre-money valuation, series terms, protective provisions
- **M&A LOI (Letter of Intent)**: Purchase price, consideration structure, exclusivity, conditions
- **Debt term sheet**: Principal, interest, covenants, collateral, maturity
- **SAFE / convertible note**: Valuation cap, discount, MFN, conversion mechanics

### 2. Analyse economic terms

**For equity term sheets**:
- Pre-money valuation and implied post-money
- Investment amount and resulting ownership %
- Option pool size and whether it's pre-money (dilutes founders) or post-money
- Liquidation preference: 1x non-participating (standard) vs participating (investor-friendly) vs >1x (very investor-friendly)
- Anti-dilution protection: broad-based weighted average (standard) vs full ratchet (aggressive)
- Dividends: participating, cumulative, or none
- Pay-to-play provisions

**For M&A LOIs**:
- Enterprise value and equity value
- Consideration mix: cash vs stock vs earnout
- Earnout structure (if any): metrics, timeline, caps, floors
- Working capital adjustment mechanism
- Escrow / holdback: amount, release schedule, indemnification claims

### 3. Analyse governance / control terms

- Board composition (how many seats, who appoints)
- Protective provisions (what requires investor consent — typically: new equity issuance, debt, M&A, dividends, charter changes)
- Information rights (financial reporting obligations)
- Pro rata rights (right to invest in future rounds)
- Drag-along rights (can majority force sale?)
- Tag-along rights (can minority join a sale?)
- ROFR (Right of First Refusal on share transfers)

### 4. Flag red flags

**Red flags for founders/sellers**:
- >1x liquidation preference
- Full ratchet anti-dilution
- Participating preferred without a cap
- Ratchets or performance-based claw-backs
- Excessively broad protective provisions
- Long exclusivity periods (>60 days)
- Material adverse change (MAC) clauses that are too broad
- Non-compete provisions that are unusually restrictive

**Red flags for investors/buyers**:
- No protective provisions
- Insufficient information rights
- Founder vesting already complete (no ongoing retention mechanism)
- No drag-along
- Weak representations and warranties

### 5. Assess negotiation leverage

Consider:
- How competitive is the process? (Multiple bidders = seller leverage)
- What alternatives does each side have? (BATNA analysis)
- Which terms are market standard vs. non-standard?
- Where can value be created for both sides? (Expand the pie before splitting it)

### 6. Produce the review

---

## Output format

```
## Term Sheet Review: [Transaction Name]

**Document type**: [Equity term sheet / LOI / Convertible note / SAFE]
**Parties**: [Investor/Buyer] → [Company/Target]
**Date**: [Date]

### Economic Terms Summary
| Term | Proposed | Market standard | Assessment |
|------|----------|----------------|------------|
| Valuation | $XM pre-money | Comparable range | ✅ Fair / ⚠️ Below / 🔴 Aggressive |
| Liquidation pref | 1x non-participating | 1x non-participating | ✅ Standard |
...

### Governance Terms Summary
| Term | Proposed | Assessment |
|------|----------|------------|
| Board | 2 founder + 1 investor + 1 independent | ✅ Balanced |
...

### Red Flags
1. 🔴 [Description of concerning term and why]
2. ⚠️ [Description of term to negotiate]

### Negotiation Recommendations
1. [Specific recommendation — what to push back on and what to offer in exchange]
2. [Specific recommendation]

### Overall Assessment
[1–2 paragraph summary: is this a fair deal? What are the key points to negotiate?]
```
