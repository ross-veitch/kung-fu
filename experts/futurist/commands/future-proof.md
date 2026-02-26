# /future-proof — Business Model Resilience Assessment

**Purpose**: Assess how resilient a business model is to structural change across 5–10 year horizons. Identify existential risks, structural vulnerabilities, and optionality-building moves.

**When to use**: Annual strategy review, major investment decisions, pre-acquisition due diligence, after a major market shift.

---

## The core question

*If the 5 most likely structural changes over the next decade materialise, does this business model still work?*

Most business models are optimised for the world that exists today. Future-proofing means stress-testing against the worlds that are coming.

---

## Phase 1: Business model dissection

Map the current model:
- **Value proposition**: what problem does the customer pay for solving?
- **Revenue mechanism**: how does the business capture value (transaction, subscription, ads, data, platform fees)?
- **Moat mechanism**: what stops a competitor from doing this cheaper or better?
- **Key dependencies**: what external conditions (technology regime, regulatory environment, market structure) must remain true for this model to work?
- **Unit economics**: what do CAC, LTV, and contribution margin look like at current scale?

---

## Phase 2: Identify structural vulnerabilities

For each component of the business model, ask: *what structural change would make this component obsolete, dramatically cheaper, or impossible?*

**Value proposition vulnerabilities**:
- What technology change would make this problem trivially solvable without us?
- What behaviour change would make customers stop caring about this problem?

**Revenue mechanism vulnerabilities**:
- What structural shift would compress margins on this mechanism? (examples: regulatory price caps, new entrant commoditization, customer power shift)
- What technology makes the payment mechanism irrelevant (e.g., AI agents bypassing the UI)?

**Moat vulnerabilities**:
- If the moat is network effects: what technology enables a fragmented competitor to serve each node independently?
- If the moat is scale economies: what technology reduces minimum efficient scale?
- If the moat is switching costs: what makes switching effortless (AI-assisted migration, open standards)?
- If the moat is data: when does public/synthetic data approach parity?

**Dependency vulnerabilities**:
- Which external conditions does the model depend on that are actually changing?

---

## Phase 3: Resilience scoring

Score each vulnerability:
- **Probability**: Low (< 20%) / Medium (20–60%) / High (> 60%) over the horizon
- **Impact if materialised**: Manageable / Significant / Existential
- **Lead time**: how much notice would there be before this hits? (years / months / sudden)

**Red flags**: High probability + Existential impact + Short lead time = urgent strategic priority.

---

## Phase 4: Future-proofing moves

For each significant vulnerability, identify moves that reduce exposure:

**Defensive moves**: build capability or moat that is resilient to the disruption scenario
**Offensive moves**: be the disruptor (cannibalise your own model before a competitor does)
**Optionality moves**: position to adapt if/when the scenario materialises, without betting on a single outcome

**Prioritise**: moves that are valuable even if the vulnerability never materialises (robust moves) over moves that only pay off if the specific scenario occurs (scenario bets).

---

## Output format

```
BUSINESS MODEL: [company]
HORIZON: [5yr / 10yr]

CURRENT MODEL ANATOMY:
  Value proposition: [what]
  Revenue mechanism: [how]
  Moat: [why hard to compete with]
  Key dependencies: [what must remain true]

STRUCTURAL VULNERABILITIES:
  [Vulnerability name]
  Mechanism: [how this could break]
  Probability: [L/M/H] | Impact: [Manageable/Significant/Existential] | Lead time: [estimate]
  
  [repeat for each]

RESILIENCE SCORECARD:
  🔴 Existential risks: [count + list]
  🟠 Significant risks: [count + list]
  🟢 Manageable risks: [count + list]

FUTURE-PROOFING MOVES:
  [Move] — addresses [vulnerability] — Cost: [investment level] — Robust/Bet: [which]

PRIORITY ORDER:
  1. [most urgent move — why]
  2. ...

12–24 MONTH ACTIONS:
  1. ...
```
