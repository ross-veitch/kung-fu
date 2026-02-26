# /assumption-test — Hidden Assumption Stress Test

**Purpose**: Surface and stress-test the hidden assumptions embedded in a strategy, worldview, or forecast. The most dangerous assumptions are the ones so deeply held they've become invisible.

**When to use**: Before major strategy commitments; when a strategy feels obviously right (that's when to be most suspicious); when a forecast looks too clean; at the start of a planning cycle.

---

## Why this matters

Every strategy rests on a set of assumptions about the world. Most are never stated explicitly. The ones that are unstated are the most dangerous — nobody is checking them, nobody is designing contingencies for them, and when they fail, the failure appears to come from nowhere.

The best strategic thinkers hold their beliefs lightly. Not because they don't have convictions — but because they know which parts of their worldview are load-bearing and which are assumptions dressed as facts.

---

## Phase 1: Assumption archaeology

Surface assumptions buried in the strategy or worldview. Dig in three layers:

**Layer 1 — Stated assumptions** (visible, usually in planning docs)
These are the ones that made it into the deck. They're the starting point, not the destination.

**Layer 2 — Implied assumptions** (can be inferred from the choices made)
What must be true about the world for the strategy to make sense? If the company is investing heavily in SEO, it's assuming Google search remains the dominant discovery channel. That's an implied assumption — probably nowhere in the deck.

**Layer 3 — Background assumptions** (so embedded they feel like facts)
What does everyone in the organisation believe that they've never questioned? These are the most dangerous. Examples:
- "Customers always want the cheapest price" (maybe not in premium segments)
- "Our moat is defensible" (maybe it's eroding faster than we think)
- "The technology will continue improving" (maybe the S-curve is flattening)
- "Our key supplier relationships are stable" (maybe one competitor is quietly locking them up)

---

## Phase 2: The inversion test

For each significant assumption, apply the inversion: *what would have to be true for the opposite of this assumption to be correct?*

This is not about predicting that the opposite is true — it's about understanding the conditions under which your assumption fails. If those conditions are plausible, the assumption deserves explicit monitoring.

**Example**:
- Assumption: "AI will continue to improve at the current rate"
- Inversion: what would cause AI progress to slow significantly?
  - Energy/compute constraints
  - Regulatory prohibition of frontier training
  - Architectural ceiling of current paradigm
  - Economic viability of further scaling
- Assessment: some of these are plausible → this assumption deserves a scenario where AI progress slows

---

## Phase 3: Assumption ranking

Rate each assumption on:
- **Centrality**: how load-bearing is this assumption? If false, does the strategy still work?
- **Challengeability**: how confident are we it's correct? Is there genuine evidence, or is it a belief?
- **Monitorability**: can we track whether this assumption is holding?

**Priority**: high centrality × high challengeability = needs explicit monitoring and contingency.

---

## Phase 4: The six-inversion provocations

Six questions to challenge conventional assumptions in any domain:

1. **The reversal**: what if the opposite of the dominant trend is true?
2. **The floor**: what if the physical/economic limit arrives earlier than expected?
3. **The preference shift**: what if customers stop caring about what they currently care about?
4. **The power shift**: what if the power in this value chain moves to a different layer?
5. **The technology flip**: what if the enabling technology becomes free/ubiquitous?
6. **The regulation inversion**: what if the regulatory environment becomes hostile to this model?

---

## Output format

```
STRATEGY / WORLDVIEW: [what is being tested]

ASSUMPTION INVENTORY:
  Stated: [list from the strategy/plan]
  Implied: [list inferred from choices made]
  Background: [list of things everyone believes but nobody has checked]

INVERSION ANALYSIS (top 5 most load-bearing assumptions):
  [Assumption]
  Inversion: [what would have to be true for the opposite to hold]
  Conditions under which this fails: [list]
  Plausibility of those conditions: H/M/L
  Centrality: [what breaks if this assumption is false]

ASSUMPTION RISK RANKING:
  🔴 Critical (high centrality + high challengeability): [list]
  🟠 Monitor (medium centrality or medium challengeability): [list]
  🟢 Low risk (low centrality or high confidence): [list]

MONITORING PLAN:
  [Assumption] → [metric/signal to watch] → [threshold that would trigger reconsideration]

STRATEGIC DESIGN CHANGES:
  [Changes to the strategy based on assumption vulnerabilities found]
```
