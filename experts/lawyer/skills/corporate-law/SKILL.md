---
name: corporate-law-fundamentals
description: >
  Corporate governance, cap tables, financing rounds, and M&A basics.
  Use when: reviewing term sheets, structuring equity, governance questions,
  shareholder agreements, company formation, due diligence, what does this clause mean.
---

# Corporate Law Fundamentals

## The corporate structure stack

Understanding how a technology company's legal structure works:

```
Investors (VC, angels)
    ↓ own shares in
HoldCo / Parent (often Delaware C-Corp, Cayman Islands, or Singapore)
    ↓ owns
Operating Entities (one per jurisdiction: Singapore Pte Ltd, UAE LLC, etc.)
    ↓ employ people, hold contracts, pay tax
```

Jurisdiction selection tradeoffs:
- **Delaware C-Corp**: US VC standard. Predictable law, well-understood by investors. No local revenue required.
- **Cayman Islands**: Preferred for funds and some non-US startups raising US VC. Tax neutral. No local presence.
- **Singapore Pte Ltd**: ASEAN HQ standard. Strong legal system, English common law, tax treaties, MAS regulation.
- **DIFC/ADGM**: UAE free zones with English common law. Preferred for MENA-HQ tech companies.

## Term sheet essentials

The term sheet is the most important document in a financing. Most deal terms are set here. Key economics:

**Valuation**:
- Pre-money valuation: company value before new investment
- Post-money = pre-money + investment amount
- Dilution: new investors' percentage = investment ÷ post-money

**Option pool**: Investors typically require an option pool (10–20% fully diluted) *before* their investment, which means it dilutes founders, not investors. "Option pool shuffle" — be aware of this.

**Liquidation preference**:
- 1× non-participating: investor gets their money back first, then converts to common and participates pro-rata. Standard in most friendly VC deals.
- 1× participating ("double dip"): investor gets their money back AND participates pro-rata. Significantly less founder-friendly.
- 2× or higher: aggressive; signals difficult negotiation ahead.

**Anti-dilution**:
- Broad-based weighted average: standard and reasonable. Adjusts conversion price based on all outstanding shares.
- Narrow-based weighted average: more investor-friendly than broad-based.
- Full ratchet: very investor-friendly; adjusts conversion price to the new round price. Rare in healthy markets.

**Key governance terms**:
- Board composition: who controls the board post-investment? Standard: founders hold majority until Series B or C.
- Protective provisions (vetoes): investor blocking rights over certain actions (new share issuances, M&A, debt above a threshold, changing the business). Negotiate the threshold carefully.
- Information rights: right to receive financial statements and board materials. Standard; the scope matters.
- Pro-rata rights: right to participate in future rounds to maintain ownership percentage. Often heavily negotiated.

## Cap table mechanics

Understanding dilution through rounds:

| Round | Shares | % |
|-------|--------|---|
| Founders (post-split) | 8,000,000 | 80% |
| ESOP pool | 1,000,000 | 10% |
| Seed investors | 1,000,000 | 10% |
| **Post-seed total** | **10,000,000** | **100%** |

Series A: $5M at $20M pre-money → 20% dilution for everyone above
Post-A: all previous holders are at 80% of their prior stake.

**Fully diluted**: always model the cap table fully diluted (including all options, warrants, convertible notes) — this is what investors price off.

**Convertible instruments** (SAFEs, convertible notes): convert to equity at the *next priced round*, typically at a discount (20% standard) and/or with a valuation cap. A SAFE is not debt. A convertible note is debt with interest.

## Good leaver / bad leaver

Standard in most shareholder agreements for founders and employees with equity:

**Good leaver**: leaves involuntarily (redundancy, death, disability, or termination without cause). Retains vested equity; sometimes gets accelerated vesting of some unvested portion.

**Bad leaver**: resigns, dismissed for cause, breaches non-compete. Forfeits unvested equity; often forfeits some or all vested equity too (the harshness varies dramatically by jurisdiction and negotiation).

**Cliff and vesting**: standard is 4-year vest with 1-year cliff. Nothing vests in the first year; 25% vests at the cliff; monthly thereafter. Acceleration on acquisition (single-trigger or double-trigger) is heavily negotiated.

See `references/` for: term sheet annotated template, cap table Excel model, standard ESOP plan summary.
