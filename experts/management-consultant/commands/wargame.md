# /wargame — Scenario Stress-Testing

**Purpose**: Test a strategy or decision against competitive, macro, and regulatory shocks. Identify fragility before execution, not after.

**When to use**: High-stakes strategy decisions, before major capital allocation, when competitive landscape is unstable.

---

## Phase 1: Define the strategic position being tested

State clearly:
- The strategy or decision under review
- The assumed world it's designed for (base case assumptions)
- The 12–18 month horizon being assessed

---

## Phase 2: Identify shock categories

Cover at minimum:

**Competitive shocks**
- Key competitor accelerates (more capital, product move, pricing aggression)
- New entrant with structural cost advantage
- Platform incumbent enters the space
- Consolidation that changes the competitive landscape

**Market shocks**
- Demand collapse (recession, travel downturn, macro contraction)
- Supply glut (overcapacity, price war)
- Consumer behaviour shift (accelerates or reverses current trends)

**Macro/geopolitical shocks**
- Currency move of >15% in key markets
- Regulatory intervention (data, competition, content, pricing)
- Supply chain / distribution disruption

**Technology shocks**
- AI capability jump that commoditizes current product
- Competitor adopts new distribution channel at scale
- Platform dependency risk materialises (app store, Google, GDS)

**Internal shocks**
- Key executive departure
- Engineering delivery miss (6-month delay)
- Unit economics deterioration (CAC +40%, LTV -20%)

---

## Phase 3: For each shock

Score:
- **Probability**: Low / Medium / High (in the specified horizon)
- **Impact**: Manageable / Significant / Existential
- **Strategic resilience**: Does the current strategy survive? Partially? Not at all?
- **Trigger signal**: What early indicator would tell us this shock is materialising?
- **Contingency**: What's the pre-planned response?

Priority: focus depth on High probability + Significant/Existential impact shocks.

---

## Phase 4: Resilience assessment

After all shocks are scored:

1. **What is the single biggest fragility?** The shock most likely to break the strategy.
2. **What structural changes would most improve resilience?** Rank by cost vs resilience gain.
3. **What decisions should be made now** to pre-position for the most likely shocks?

---

## Phase 5: Strategic resilience score

Summarise overall strategic resilience:
- 🟢 **Robust** — survives all high-probability shocks; only existential shocks are low-probability
- 🟡 **Conditional** — survives with adaptation; 1–2 high-probability shocks require strategic response
- 🔴 **Fragile** — dependent on base-case conditions holding; multiple shocks would require fundamental pivot

---

## Output format

```
STRATEGY UNDER TEST: [summary]
BASE CASE ASSUMPTIONS: [list]

SHOCK ANALYSIS:
  [Shock name]
  Probability: [L/M/H] | Impact: [Manageable/Significant/Existential]
  Resilience: [Survives / Adapts / Breaks]
  Trigger: [early indicator]
  Contingency: [response]

  [repeat per shock]

BIGGEST FRAGILITY: [name it]

RESILIENCE IMPROVEMENTS:
  1. [structural change] — Cost: [X] | Resilience gain: [High/Med/Low]
  2. ...

PRE-EMPTIVE DECISIONS TO MAKE NOW:
  1. ...

STRATEGIC RESILIENCE SCORE: 🟢 / 🟡 / 🔴 — [rationale]
```
