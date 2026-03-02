# /assumption-test — Hidden Assumption Stress Test & Strategic Provocations

Two modes:

- **`/assumption-test`** — surface and audit the hidden assumptions in a strategy or worldview
- **`/assumption-test provoke`** — generate structured provocations that challenge conventional thinking

Both challenge the same enemy: assumptions so deeply held they've become invisible.

---

## MODE 1: `/assumption-test` — Assumption Archaeology

**Purpose**: Surface and stress-test hidden assumptions embedded in a strategy, worldview, or forecast. The most dangerous assumptions are the ones so deeply held they've become invisible.

**When to use**: Before major strategy commitments; when a strategy feels obviously right; when a forecast looks too clean; at the start of a planning cycle.

### Phase 1: Assumption archaeology

Surface assumptions in three layers:

**Layer 1 — Stated assumptions** (visible, usually in planning docs)
The starting point, not the destination.

**Layer 2 — Implied assumptions** (inferred from choices made)
What must be true about the world for the strategy to make sense? If the company is investing heavily in SEO, it's assuming Google search remains the dominant discovery channel. That assumption is probably nowhere in the deck.

**Layer 3 — Background assumptions** (so embedded they feel like facts)
What does everyone believe that nobody has questioned? Examples:
- "Customers always want the cheapest price"
- "Our moat is defensible"
- "The technology will continue improving"
- "Our key supplier relationships are stable"

### Phase 2: The inversion test

For each significant assumption: *what would have to be true for the opposite to be correct?*

Not about predicting the opposite is true — about understanding when your assumption fails. If those conditions are plausible, the assumption deserves explicit monitoring.

Example:
- Assumption: "AI will continue to improve at the current rate"
- Inversion: energy/compute constraints; regulatory prohibition of frontier training; architectural ceiling; economic viability of further scaling
- Assessment: some are plausible → this assumption deserves a slow-AI scenario

### Phase 3: Assumption ranking

Rate each:
- **Centrality**: if false, does the strategy still work?
- **Challengeability**: is there genuine evidence, or is it a belief dressed as fact?
- **Monitorability**: can we track whether this assumption is holding?

**Priority**: high centrality × high challengeability = needs explicit monitoring and contingency.

### Phase 4: Six-inversion provocations

Six questions to challenge conventional assumptions in any domain:

1. **The reversal**: what if the opposite of the dominant trend is true?
2. **The floor**: what if the physical/economic limit arrives earlier than expected?
3. **The preference shift**: what if customers stop caring about what they currently care about?
4. **The power shift**: what if the power in this value chain moves to a different layer?
5. **The technology flip**: what if the enabling technology becomes free/ubiquitous?
6. **The regulation inversion**: what if the regulatory environment becomes hostile to this model?

### Output format

```
STRATEGY / WORLDVIEW: [what is being tested]

ASSUMPTION INVENTORY:
  Stated: [from the strategy/plan]
  Implied: [inferred from choices made]
  Background: [things everyone believes but nobody has checked]

INVERSION ANALYSIS (top 5 most load-bearing assumptions):
  [Assumption]
  Inversion: [what would have to be true for the opposite to hold]
  Conditions under which this fails: [list]
  Plausibility: H/M/L
  Centrality: [what breaks if this assumption is false]

ASSUMPTION RISK RANKING:
  🔴 Critical: [high centrality + high challengeability]
  🟠 Monitor: [medium centrality or challengeability]
  🟢 Low risk: [low centrality or high confidence]

MONITORING PLAN:
  [Assumption] → [metric/signal] → [threshold that triggers reconsideration]

STRATEGIC DESIGN CHANGES:
  [Strategy changes based on vulnerabilities found]
```

---

## MODE 2: `/assumption-test provoke` — Strategic Provocations

**Purpose**: Generate structured provocations to challenge conventional thinking. These are not predictions — thought experiments designed to expose the brittleness of current assumptions and open up the strategic imagination.

**When to use**: Strategy workshops, annual planning, when thinking has become too consensus-driven.

A good provocation challenges a hidden assumption, is specific enough to be uncomfortable, is plausible enough to be taken seriously, and generates strategy-relevant implications. When asked "do you really think this will happen?" — the answer is: "I don't know. Does your strategy still work if it does?"

### The six provocation types

**1. The Reversal** — take the dominant assumption and reverse it
*"What if [the thing everyone believes is increasing] actually reverses/plateaus/collapses?"*
- "What if AI capability improvement plateaus in 3 years — what does your product strategy look like then?"
- "What if remote work reverses and 90% of workers return to offices?"

**2. The Extreme** — take a trend to its logical limit
*"What if [current trend] continues to its maximum logical conclusion?"*
- "What if every trip was booked by an AI agent with no human browsing a single OTA page?"
- "What if solar energy becomes functionally free in 15 years?"

**3. The Inversion** — who wins if the current model breaks?
*"The current model benefits [X]. If the model broke, who would gain, and what would they do to break it?"*
- "Airlines benefit from OTA distribution costs. If airlines got distribution costs to zero, what does that do to OTA take rates?"

**4. The Convergence** — two trends whose intersection most people haven't considered
*"What happens when [trend A] meets [trend B]?"*
- "What happens when aging populations (more retirees with time) meet AI travel planning (frictionless discovery)?"

**5. The Newcomer** — a plausible disruptor that doesn't yet exist
*"Describe a company founded in [horizon year] that disrupts [current leader] by doing [structural difference]."*

**6. The Regulation Shock** — a plausible regulatory change that reshapes the sector
*"What if the EU / US / China decided to [specific regulation]?"*

### Output format

```
DOMAIN: [sector / question]

PROVOCATIONS:

  [Type: Reversal / Extreme / Inversion / Convergence / Newcomer / Regulation Shock]
  PROVOCATION: "[the specific, uncomfortable statement]"
  Hidden assumption challenged: [what belief does this challenge]
  If true: [what would change — specifically for this company]
  Strategy question it raises: [the question this forces]

  [repeat × 5–8]

MOST UNCOMFORTABLE (the one that gets defensive reactions):
  [name it] — [why it's the most structurally threatening]
```
