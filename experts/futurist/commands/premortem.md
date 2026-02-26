# /premortem — Pre-Mortem Analysis

**Purpose**: Assume the strategy, product, or bet failed catastrophically 3–5 years from now. Work backwards to identify the most likely failure modes before commitment, while there is still time to address them.

**When to use**: Before major strategic commitments, product launches, capital allocations, or M&A. The premortem is most valuable *before* the decision is finalised — not as a compliance exercise after.

**Method base**: Gary Klein's Pre-Mortem; adapted with futurist structural analysis.

---

## Why premortems work

Standard risk analysis is contaminated by optimism bias and planning fallacy — the tendency to overweight best-case scenarios, underestimate execution complexity, and underestimate time/cost. The premortem bypasses this by starting from failure as a *given*, not a possibility. You're not being asked "what could go wrong?" — you're being asked "what *did* go wrong?"

The shift from conditional to indicative changes the cognitive mode. It's easier to generate specific failure stories than to analytically enumerate risks.

---

## Phase 1: Set the scene

State clearly:
- What was decided / launched / built?
- What was the goal (what would success have looked like)?
- What is the time horizon? (e.g., "it is now 2029, 4 years after the strategy launched")

---

## Phase 2: The failure narrative (divergent thinking)

**Instruction**: It is [horizon year]. The strategy has failed spectacularly. Not a minor underperformance — a real failure: the company lost market position, the product was shut down, the investment wrote off. What happened?

Generate failure stories from multiple angles:

**External failure modes**:
- Market didn't develop as expected (why?)
- Competitor made a move we didn't anticipate (what?)
- Regulatory intervention changed the game (how?)
- Macro event disrupted the environment (what?)
- Technology shifted in a way our strategy was wrong-footed by (how?)

**Internal failure modes**:
- Execution failures (what specifically didn't get built, by when, and why?)
- Capability gaps (what did we not have that we needed?)
- Resource failures (capital, talent, time — which ran out first?)
- Strategic drift (how did the original thesis get diluted or confused?)
- Incentive misalignments (whose incentives caused them to do the wrong thing?)

**Assumption failures**:
- Which core assumption in the original strategy turned out to be wrong?
- What did we believe about customers that wasn't true?
- What did we believe about competitors that wasn't true?
- What did we believe about technology timing that wasn't true?

---

## Phase 3: Convergent analysis — rank the failure modes

From the narratives generated, identify:
- **Most likely failures** (highest probability given current information)
- **Most catastrophic failures** (highest impact if they occur)
- **Most actionable failures** (could be prevented or mitigated by decisions made now)

Focus on the intersection: likely × catastrophic × actionable.

---

## Phase 4: Mitigation and design changes

For each top failure mode:
- Can it be prevented? (structural change to the strategy)
- Can it be detected early? (what leading indicator would show this is starting to happen?)
- Can it be mitigated? (contingency plan if it occurs)

---

## Output format

```
STRATEGY / BET: [what is being assessed]
HORIZON: [year of imagined failure]

FAILURE PREMISE: "It is [year]. [Strategy] has failed. What happened?"

FAILURE STORIES GENERATED:
  External:
    - [story 1]
    - [story 2]
  Internal:
    - [story 1]
    - [story 2]
  Assumption failures:
    - [story 1]

TOP FAILURE MODES (ranked: likely × catastrophic × actionable):
  1. [failure mode] | Likely: H/M/L | Impact: Existential/Significant/Manageable | Actionable: Y/N
  2. ...

MITIGATION:
  [Failure mode] →
    Prevention: [structural change to strategy]
    Early warning: [leading indicator to monitor]
    Contingency: [response if it starts to materialise]

DESIGN CHANGES RECOMMENDED:
  [Changes to the strategy / plan based on the premortem analysis]
```
