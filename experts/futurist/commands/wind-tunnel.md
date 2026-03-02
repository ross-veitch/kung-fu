# /wind-tunnel — Strategy & Business Model Stress-Test

Two modes:

- **`/wind-tunnel strategy`** — test a decision, investment thesis, or strategic plan against multiple futures
- **`/wind-tunnel model`** — assess how resilient a business model is to structural change (formerly `/future-proof`)

Where `/scenarios` builds the map, `/wind-tunnel` drives your strategy through it.

---

## MODE 1: `/wind-tunnel strategy` — Stress-test a strategy

### When to use
- Before a board meeting: "Does our current strategy survive the scenarios we just built?"
- Before a major capital allocation decision: "Are we betting on one future or do we have optionality?"
- After a `/scenarios` or `/10yr` run — natural follow-on
- When a strategy *feels* right but you want to expose hidden assumptions

### Inputs required
1. **The strategy** — 2–5 sentence summary of the approach, decision, or thesis
2. **The scenarios** — from a prior `/scenarios` session, or describe up to 4 named scenarios briefly
3. **Time horizon** — when does this strategy need to be vindicated?

### Phase 1: Strategy Decomposition
Decompose the strategy into its load-bearing assumptions — beliefs that *must* be true for the strategy to work. Typically 4–7. Name these explicitly.

### Phase 2: Scenario-by-scenario assessment

For each scenario:

| Dimension | Assessment |
|-----------|------------|
| Strategy performance | STRONG / ADEQUATE / WEAK / FATAL |
| Which assumptions hold | List |
| Which assumptions break | List |
| Key vulnerabilities | What specifically goes wrong |
| Recommended adaptations | If this scenario materialises, what must change? |

### Phase 3: Robustness scoring

- **Robust**: holds in 3+ of 4 scenarios
- **Scenario-dependent**: holds in 2 of 4
- **Fragile**: holds in only 1 scenario
- **Universally false**: breaks in all scenarios → requires strategy redesign

### Phase 4: Strategic options

**No-regret actions** — positive or neutral across ALL scenarios. Do these regardless.

**Optionality-preserving moves** — keep multiple paths open; avoid locking into a single-scenario bet.

**Scenario bets** — strongly positive in some scenarios, costly in others. Purchase cheaply, exercise when signals confirm.

**Hedges** — reduce catastrophic downside in worst-case scenarios. Insurance logic.

### Output format

```
STRATEGY UNDER TEST: [1–2 sentence restatement]
TIME HORIZON: [stated]
SCENARIOS TESTED: [list]

LOAD-BEARING ASSUMPTIONS:
[numbered list]

SCENARIO PERFORMANCE MATRIX:
[table: scenario × assumption × hold/break]

ROBUSTNESS CLASSIFICATION:
[no-regret / optionality / bets / hedges]

RECOMMENDED STRATEGY ADJUSTMENTS:
[what to do differently, add, or drop]

SIGNALS THAT WOULD FORCE A PIVOT:
[3–5 specific observable indicators]
```

---

## MODE 2: `/wind-tunnel model` — Business model resilience assessment

**Purpose**: Assess how resilient a business model is to structural change across 5–10 year horizons. Identify existential risks, structural vulnerabilities, and optionality-building moves.

**When to use**: Annual strategy review, major investment decisions, pre-acquisition due diligence.

### The core question

*If the 5 most likely structural changes over the next decade materialise, does this business model still work?*

### Phase 1: Business model dissection

- **Value proposition**: what problem does the customer pay for solving?
- **Revenue mechanism**: how does the business capture value?
- **Moat mechanism**: what stops a competitor from doing this cheaper or better?
- **Key dependencies**: what external conditions must remain true for this model to work?
- **Unit economics**: CAC, LTV, contribution margin at current scale

### Phase 2: Structural vulnerabilities

For each component, ask: *what structural change would make this component obsolete, dramatically cheaper, or impossible?*

**Value proposition**: what technology change would make this problem trivially solvable without us? What behaviour change would make customers stop caring?

**Revenue mechanism**: what structural shift would compress margins? What technology bypasses the payment mechanism (e.g., AI agents bypassing the UI)?

**Moat**:
- Network effects: what enables a fragmented competitor to serve each node independently?
- Scale economies: what technology reduces minimum efficient scale?
- Switching costs: what makes switching effortless?
- Data moat: when does public/synthetic data approach parity?

**Dependencies**: which external conditions are actually changing?

### Phase 3: Resilience scoring

Rate each vulnerability:
- **Probability**: Low (<20%) / Medium (20–60%) / High (>60%) over the horizon
- **Impact if materialised**: Manageable / Significant / Existential
- **Lead time**: how much notice would there be?

**Red flags**: High probability + Existential impact + Short lead time = urgent strategic priority.

### Phase 4: Future-proofing moves

**Defensive**: build capability resilient to the disruption scenario
**Offensive**: be the disruptor (cannibalise your own model before a competitor does)
**Optionality**: position to adapt without betting on a single outcome

Prioritise robust moves (valuable even if the vulnerability never materialises) over scenario bets.

### Output format

```
BUSINESS MODEL: [company]
HORIZON: [5yr / 10yr]

CURRENT MODEL ANATOMY:
  Value proposition: [what]
  Revenue mechanism: [how]
  Moat: [why hard to compete with]
  Key dependencies: [what must remain true]

STRUCTURAL VULNERABILITIES:
  [Vulnerability] | Mechanism | Probability | Impact | Lead time

RESILIENCE SCORECARD:
  🔴 Existential risks: [count + list]
  🟠 Significant risks: [count + list]
  🟢 Manageable risks: [count + list]

FUTURE-PROOFING MOVES:
  [Move] — addresses [vulnerability] — Robust/Bet

PRIORITY ORDER + 12–24 MONTH ACTIONS:
  1. ...
```
