---
name: competitive-analysis
description: Map the competitive landscape — competitor profiles, white space, differentiated position, and exposed flank.
argument-hint: "[market or product category] [optional: specific competitors, Wego angle, depth needed]"
---

# /competitive-analysis

A structured competitive landscape map. Where are the real battles, who's winning and why, and where is the position differentiated vs. exposed.

---

## Step 1: Define the competitive arena

**Clarify before starting:**
- What is the market? (Define precisely — "OTA in MENA" is different from "flight search globally")
- What is the unit of competition? (For customers? Suppliers? Both?)
- From whose perspective? (Wego's position by default, or a specified entity)

**From USER.md / PLAYBOOK.md:** Wego's current positioning, known competitor intel already on file, priority markets.

---

## Step 2: Map the landscape

**Layer 1: Direct competitors** (same product, same customer, same market)
**Layer 2: Indirect competitors** (different product, same job-to-be-done)
**Layer 3: Substitutes** (not a competitor but takes the same budget/attention)
**Layer 4: Non-consumption** (the status quo — customers doing nothing or DIYing)

Don't skip Layers 3 and 4. The most significant competitive threats are often indirect.

---

## Step 3: Profile each direct competitor

For each major direct competitor:
- **Positioning**: How do they describe themselves? Who is their target customer?
- **Differentiation**: What do they do better than alternatives?
- **Business model**: How do they make money? Unit economics signals from public data?
- **Trajectory**: Growing, stable, declining? Recent moves (product, market, funding)?
- **Weakness**: Where are they vulnerable? What do customers complain about?

---

## Step 4: Apply Porter's Five Forces + power assessment

Beyond competitor profiles, assess structural dynamics:
- **Threat of new entrants**: What are the barriers? Capital, data, relationships?
- **Supplier power**: How much leverage do airlines/hotels have?
- **Buyer power**: How much leverage do customers have (switching cost, loyalty)?
- **Threat of substitutes**: What could make this whole category irrelevant?
- **Competitive rivalry**: Is this winner-takes-most, or can multiple players coexist?

---

## Output

```
## Competitive Analysis: [Market]
**Perspective**: [Wego / specified entity]
**Date**: [Date] | **Sources**: [Key sources used]

---

### Competitive landscape map

**Direct competitors**
| Competitor | Positioning | Differentiation | Weakness | Trajectory |
|---|---|---|---|---|
| [Name] | [1-line] | [1-line] | [1-line] | ↑/→/↓ |

**Indirect competitors / substitutes**
| Player | How they compete | Why they matter |
|---|---|---|
| [Name] | [How] | [Significance] |

---

### Porter's Forces Summary

| Force | Level | Key driver |
|---|---|---|
| New entrant threat | LOW/MED/HIGH | [What determines it] |
| Supplier power | LOW/MED/HIGH | [Airlines/hotels leverage] |
| Buyer power | LOW/MED/HIGH | [Switching cost, loyalty] |
| Substitutes | LOW/MED/HIGH | [What could replace the category] |
| Rivalry intensity | LOW/MED/HIGH | [Market concentration, growth rate] |

---

### Position assessment (Wego or specified entity)

**Differentiated position** (where we're ahead and it's defensible):
- [Specific claim with evidence]

**Contested ground** (competing but no clear advantage):
- [Area + nature of competition]

**Exposed flank** (where we're vulnerable):
- [Specific weakness + which competitor is best positioned to exploit it]

**White space** (uncontested opportunity):
- [Gap in the market not currently served well]

---

### Strategic implications

1. [Specific recommendation or observation — not generic]
2. [Specific threat to monitor]
3. [Opportunity to act on]
```
