# /wind-tunnel — Strategy Stress-Test Against Scenarios

Test an existing strategy, decision, or investment thesis against multiple futures. Where `/scenarios` builds the map, `/wind-tunnel` drives your strategy through it.

---

## When to use

- Before a board meeting: "Does our current strategy survive the scenarios we just built?"
- Before a major capital allocation decision: "Are we betting on one future or do we have optionality?"
- After a `/scenarios` or `/10yr` run: natural follow-on to stress-test implications
- When a strategy *feels* right but you want to expose hidden assumptions

---

## Inputs required

1. **The strategy** — 2–5 sentence summary of the approach, decision, or thesis being tested
2. **The scenarios** — either:
   - Previously built in this session (reference the 2×2 or scenario names directly)
   - Or describe up to 4 named scenarios briefly; the tool will apply them
3. **Time horizon** — when does this strategy need to be vindicated? (e.g., "by 2028", "over 10 years")

---

## Methodology

### Phase 1: Strategy Decomposition
Before testing, decompose the strategy into its load-bearing assumptions. These are the beliefs that *must* be true for the strategy to work. Typically 4–7 assumptions. Example:
- "AI agents will not disintermediate OTA metasearch before 2028"
- "MENA middle-class travel demand will grow 15%+ annually through 2030"
- "WegoPro's B2B offering can achieve 30% market penetration in KSA by 2027"

Name these explicitly — they are what you're testing.

### Phase 2: Scenario-by-Scenario Assessment

For each scenario:

**[Scenario Name] — [1-line description]**

| Dimension | Assessment |
|-----------|------------|
| Strategy performance | STRONG / ADEQUATE / WEAK / FATAL |
| Which assumptions hold | List |
| Which assumptions break | List |
| Key vulnerabilities | What specifically goes wrong |
| Recommended adaptations | If this scenario materialises, what must change? |

### Phase 3: Robustness Scoring

Score each assumption across all scenarios:
- **Robust**: holds in 3+ of 4 scenarios
- **Scenario-dependent**: holds in 2 of 4
- **Fragile**: holds in only 1 scenario
- **Universally false**: breaks in all scenarios → fatal assumption, strategy requires redesign

### Phase 4: Strategic Options

Based on the matrix:

**No-regret actions** — moves that are positive (or at least neutral) across ALL scenarios. Do these regardless. High confidence.

**Optionality-preserving moves** — keep multiple paths open; avoid locking into a single-scenario bet until signals clarify which scenario is materialising.

**Scenario bets** — moves that are strongly positive in some scenarios and costly in others. Treat these as options to be purchased cheaply now and exercised when signals confirm the scenario.

**Hedges** — moves specifically designed to reduce catastrophic downside in worst-case scenarios. Insurance logic: accept negative expected value in exchange for eliminating tail risk.

---

## Output Format

**Strategy under test**: [1–2 sentence restatement]
**Time horizon**: [stated]
**Scenarios tested**: [list the 4]

---

### Load-bearing assumptions
[numbered list]

---

### Scenario performance matrix
[table: scenario × assumption × hold/break]

---

### Robustness classification
[no-regret / optionality / bets / hedges]

---

### Recommended strategy adjustments
[bullet list: what to do differently, what to add, what to drop]

---

### Signals that would force a strategy pivot
[3–5 specific observable indicators to monitor]

---

## Example trigger

> `/wind-tunnel` 
> Strategy: Double down on Wego Consumer metasearch; invest $10M in AI-native search to defend against Google and agentic disruption. Don't expand WegoPro this year.
> Scenarios: from the 2×2 we just built (AI Fast / AI Slow × MENA Boom / MENA Flat)
> Horizon: 2027

---

## Notes

- The most common failure: a strategy that *looks* robust but has one universally-fragile assumption that nobody named. That assumption is the point of the exercise.
- For Wego specifically: the AI disruption timeline assumption is almost always the most fragile. Force explicit treatment.
- If the strategy is FATAL in more than one scenario: this is valuable information, not a reason to stop. The output should be "here is what we'd need to change" not "abandon the strategy."
