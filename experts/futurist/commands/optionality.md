# /optionality — Strategic Optionality Map

**Purpose**: Design a strategic optionality map — positions to take now that preserve maximum strategic flexibility as uncertainty resolves, without requiring a bet on a specific outcome.

**When to use**: High-uncertainty environments; when the key uncertainties won't resolve for 2–5 years; when large irreversible commitments are being considered.

---

## The optionality principle

In high-uncertainty environments, the value of a strategic position comes not just from its expected return in the most likely scenario, but from **what other positions it enables**. A move that pays off in one scenario but forecloses all others may be worse than a smaller move that keeps multiple futures open.

**Real options analogy**: financial options have value from the right, not the obligation, to act. Strategic positions work the same way. The question isn't just "what does this bet pay off?" but "what does this bet keep open?"

**When to commit vs stay flexible**:
- Commit when: the uncertainty will be resolved soon, the position is reversible, or the cost of waiting exceeds the option value
- Stay flexible when: the uncertainty resolves slowly, commitment is irreversible, or the option value is high (many futures it preserves access to)

---

## Phase 1: Map the key uncertainties

Identify the 3–5 uncertainties that most affect the strategic landscape:
- What is uncertain?
- When will it resolve (or become clearer)?
- What are the main poles of each uncertainty?

---

## Phase 2: Map the strategic positions available

List the major strategic moves under consideration:
- For each move: what scenario does it bet on? What scenarios does it foreclose?
- For each move: what is its reversibility? (easy to undo / partially reversible / irreversible)
- For each move: what options does it preserve or create?

---

## Phase 3: Evaluate each position on optionality

Rate each candidate move on:
- **Scenarios where it performs well**: how many of the major scenarios benefit from this?
- **Scenarios where it performs poorly**: how many scenarios is this harmful in?
- **Options created**: what future moves does this enable that wouldn't otherwise be possible?
- **Options foreclosed**: what future moves does this prevent?
- **Reversibility**: if wrong, how costly is unwinding?

---

## Phase 4: Design the optionality portfolio

The goal is a portfolio of moves that:
- Performs reasonably across the range of scenarios (robustness)
- Creates optionality to shift position as uncertainty resolves (flexibility)
- Includes some explicit bets where evidence is strong (conviction)
- Avoids large irreversible commitments where uncertainty is high (discipline)

Structure the portfolio in three tiers:
1. **Robust moves**: take these regardless — valuable in most scenarios and reversible if wrong
2. **Optionality moves**: small investments that keep a future option open, without full commitment
3. **Conviction bets**: full commitments in areas where evidence is strong enough to justify irreversibility

---

## Phase 5: Trigger conditions

For each optionality move or conviction bet in the portfolio, define the trigger condition that would cause escalation or de-escalation:
- Optionality move → conviction bet: what signal would justify full commitment?
- Conviction bet → reconsider: what signal would trigger a strategic pivot?

---

## Output format

```
KEY UNCERTAINTIES:
  1. [Uncertainty] — resolves by [timeframe] — Poles: [A] vs [B]
  2. ...

STRATEGIC POSITIONS EVALUATED:
  [Move]
  Scenarios it performs in: [list]
  Scenarios it performs poorly: [list]
  Options created: [what it unlocks]
  Options foreclosed: [what it prevents]
  Reversibility: [easy / partial / irreversible]
  Rating: 🟢 Robust / 🟡 Conditional / 🔴 High-stakes bet

OPTIONALITY PORTFOLIO:
  Robust moves (take now regardless):
    1. [move] — rationale
  
  Optionality moves (small, keeps futures open):
    1. [move] — what option it preserves — cost
  
  Conviction bets (full commitment — strong evidence only):
    1. [move] — what evidence justifies commitment

TRIGGER CONDITIONS:
  [Move] → escalate to conviction if: [signal]
  [Move] → reconsider if: [signal]

WHAT TO AVOID:
  [Large irreversible commitments that close too many futures — specific]
```
