---
name: story-brief
description: Brief on a specific developing story — facts, significance, key players, what to watch, and direct relevance to Wego/travel.
argument-hint: "[story or topic to brief on] [optional: depth needed, specific angle]"
---

# /story-brief

A focused brief on one story or topic. What happened, why it matters, who the players are, and what to watch next.

---

## Step 1: Gather inputs

**Required:** Story or topic
**Optional:** Specific angle or question (e.g., "What does this mean for Wego?" or "How does this affect airline distribution?"), depth needed (quick brief vs. deep analysis)

---

## Step 2: Research and frame

**Source hierarchy:**
1. Primary: official statements, regulatory filings, court documents, company announcements
2. Secondary: wire services (Reuters, AP, Bloomberg), quality broadsheets
3. Supporting: trade press, analysis pieces, expert commentary

**Minimum for a publishable brief:** 2 independent sources for key factual claims

---

## Step 3: Structure the brief

Five components — never skip any:

1. **What happened** — facts only, no interpretation. Who did what, when, where.
2. **Why it matters** — the significance. Not "this is interesting" — specific: what changes as a result of this?
3. **Key players** — who is involved, what are their interests, what do they each want
4. **What to watch next** — the 2–3 signals that will tell you where this goes
5. **Direct relevance** — does this touch Wego, the travel industry, MENA, or Ross's specific interests?

---

## Output

```
## Story Brief: [Headline title]
**Date**: [Brief date] | **Depth**: [Quick / Standard / Deep] | **Sources**: [N sources used]

---

### What happened
[Pure facts — who, what, when, where. No interpretation. Maximum 3 sentences.]

### Why it matters
[The significance. What changes as a result of this? Who is affected and how? What is structurally different because this happened?]

### Key players
| Player | Role | Interest |
|---|---|---|
| [Name/Org] | [Their role in this story] | [What they want] |

### What to watch
1. [Signal — what to look for, and what it would mean]
2. [Signal]
3. [Signal — if applicable]

### Relevance to Wego / travel
[Flag: HIGH / MEDIUM / LOW / NOT RELEVANT]
[Specific implication if relevant — not generic "the travel industry may be affected"]

---

### Sourcing note
- Sources used: [List]
- Single-source claims: [Flagged if any]
- Uncertainties: [What's not yet confirmed]
```

---

## Edge cases

**Rapidly developing story:** Mark brief with `[DEVELOPING — [timestamp]]`. Include only confirmed facts. Clearly flag anything from unverified sources. Recommend a follow-up check in [X hours].

**Conflicting reports:** Name the conflict explicitly. "Reuters reports X; Bloomberg reports Y. The discrepancy may be [explanation]. Until confirmed, treat as uncertain."

**Deliberately partisan framing:** If the main available sources have a clear institutional angle, flag it: "This story is being framed by [outlet] as [angle]. The factual basis is [X]. Consider [alternative framing]."
