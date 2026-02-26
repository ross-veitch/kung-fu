---
name: deal-review
description: Analyse a term sheet, LOI, or deal structure — economics, governance, and red flags.
argument-hint: "[term sheet / deal document or summary] [optional: deal type (investment/acquisition/partnership)]"
---

# /deal-review

Analyse a deal structure and flag what matters — the economics, governance terms, and anything that's non-market or worth negotiating hard on.

---

## Step 1: Gather inputs

**Required:**
- Deal document or term sheet (paste or attach)
- Deal type: investment round / M&A (buy or sell side) / commercial partnership / debt facility
- Company stage and cap table context (for dilution analysis)
- Any context on deal process: competitive? Single party? Anchor investor?

**From PLAYBOOK.md / USER.md:**
- Current cap table and ownership structure
- Board composition and reserved matters list
- Previous round terms (for comparison)

---

## Step 2: Classify deal type and apply appropriate framework

### Investment round (term sheet)

Analyse in three buckets:

**Economics:**
- Pre/post-money valuation and implied ownership
- Option pool: size, timing (pre- or post-money — pre-money dilutes founders more)
- Pro-rata rights: can existing investors maintain ownership in future rounds?
- Liquidation preference: 1× non-participating (standard) vs 2× or participating (red flag)
- Anti-dilution: broad-based weighted average (standard) vs ratchet or full-ratchet (red flag)
- Dividends: cumulative (red flag) vs non-cumulative

**Governance:**
- Board seats: who gets them, what triggers changes
- Reserved matters: what requires investor consent (over-broad lists are a control issue)
- Information rights: monthly vs quarterly, audit rights, inspection rights
- ROFR / co-sale / drag-along: standard package vs unusual triggers or thresholds

**Founder/employee terms:**
- Vesting: acceleration on change of control (single vs double trigger)
- Founder share restrictions: lock-ups, transfer restrictions
- Good/bad leaver: definitions and treatment

### M&A (acquisition)

Analyse: enterprise value, implied multiples (EV/Revenue, EV/EBITDA), consideration mix (cash/stock/earnout), earnout structure and risk, reps and warranties scope, indemnification caps and baskets, employee retention provisions, closing conditions and break fee.

### Commercial partnership

Analyse: exclusivity scope and duration, revenue share mechanics, minimum commitments, IP ownership and licence scope, termination triggers, liability allocation.

---

## Step 3: Flag deviations from market standard

| Term | Market Standard | 🔴 Flag if |
|---|---|---|
| Liquidation preference | 1× non-participating | >1×, or participating pref |
| Anti-dilution | Broad-based weighted avg | Full-ratchet or per-share ratchet |
| Option pool timing | Pre-money | Post-money (dilutes investors, not founders) |
| Board composition | Proportional to ownership | Investors get majority control pre-Series B |
| Reserved matters | Short, material list | Includes operational decisions (hiring, pricing, product) |
| Drag-along threshold | >50% of all shares | <50%, or investor-only trigger |
| Information rights | Standard annual audit + quarterly | Real-time data access, unrestricted audit rights |
| ROFR | Right of first refusal on transfers | Right of first offer (weaker for company/founders) |

---

## Output

```
## Deal Review: [Deal name / round / counterparty]
**Deal type**: [Investment round / Acquisition / Partnership]
**Date**: [Document date]

---

### Economics summary

| Item | This deal | Market standard | Status |
|---|---|---|---|
| Valuation | $X pre / $X post | — | — |
| Dilution | X% | — | — |
| Liquidation pref | [type] | 1× non-participating | 🟢/🟡/🔴 |
| Anti-dilution | [type] | Broad-based WA | 🟢/🟡/🔴 |
| Option pool | X% [pre/post] | Pre-money | 🟢/🟡/🔴 |

### Governance summary

| Term | This deal | Market standard | Status |
|---|---|---|---|
| Board seats | [composition] | Proportional | 🟢/🟡/🔴 |
| Reserved matters | [scope] | Short list | 🟢/🟡/🔴 |
| Drag-along | [threshold] | >50% | 🟢/🟡/🔴 |

---

### 🔴 Hard issues (must negotiate)
- [Issue — why it matters — proposed fix]

### 🟡 Worth pushing back on
- [Issue — why it's non-standard — fallback position]

### 🟢 Standard / acceptable
- [List of terms that are fine]

---

### Overall deal risk: LOW / MEDIUM / HIGH
[1–2 sentence summary of deal quality and key priorities for negotiation]
```

---

## Escalation

**Always escalate to licensed legal counsel before signing anything.** This analysis identifies financial and commercial issues — the legal review is a separate and necessary step.

Flag immediately if you see: unlimited liability exposure, assignment of background IP, unilateral amendment rights on any material term, punitive default provisions, or change-of-control triggers in commercial agreements that would be triggered by an investment round.
