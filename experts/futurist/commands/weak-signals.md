# /weak-signals — Early Signal Detection & Logging

**Purpose**: Identify and prioritise early indicators of structural change in a domain before the shift becomes consensus — and log them as a persistent, compounding intelligence asset.

**When to use**: Environmental scanning; identifying inflection points before competitors; quarterly foresight reviews. Use `/weak-signals log` to add individual signals at any time.

---

## What makes a signal weak (and worth tracking)

A weak signal is:
- **Early**: most people haven't noticed it yet, or dismiss it as an anomaly
- **Directional**: points toward a structural change, not just a fluctuation
- **Triangulated**: corroborated by independent signals in adjacent domains

**Noise characteristics**: one-off, explained by cyclical dynamics, contradicted by other signals, driven by hype rather than underlying mechanism.
**Signal characteristics**: unexpected, hard to explain away, consistent with a broader structural story, appearing in multiple independent domains simultaneously.

---

## MODE 1: `/weak-signals` — Full scan

### Phase 1: STEEP scan

Scan each domain for anomalies — things that don't fit the current dominant model.

**S — Social / behavioural**: unexpected generational shifts, new forms of status signalling, behavioural changes in emerging markets that precede developed market shifts

**T — Technology**: research papers 3–5 years from product, cost curves crossing thresholds, unexpected capability jumps

**E — Economic**: margin structures under pressure, business models dependent on shifting conditions

**E — Environmental / physical**: energy cost curves, water stress in key geographies, climate policy lagging physical reality

**P — Political / regulatory**: regulatory signals from leading jurisdictions (EU → global), political economy shifts

### Phase 2: Signal prioritisation

For each signal:
- **Impact if correct**: how much does this change the strategic landscape? (1–5)
- **Confidence signal is real**: how well-evidenced, triangulated? (1–5)
- **Time to mainstream**: months / 1–2 years / 3–5 years / 5+ years

Prioritise: High impact × medium-high confidence × 1–5 year time horizon. Discard: low confidence, already mainstream, low impact.

### Phase 3: Implication mapping (top 5 signals)

- **First-order implication**: what directly changes if this signal is correct?
- **Second-order implication**: what changes *because* of the first-order change?
- **Strategic exposure**: which parts of the current strategy are most exposed?
- **Monitoring metric**: what single number would confirm this signal is strengthening?

### Phase 4: Log the signals

Write signals to the persistent log (see below). This turns a point-in-time scan into a compounding intelligence asset.

### Output format

```
DOMAIN: [sector / question]

TOP SIGNALS:

  [Signal name]
  What: [1–2 sentence description]
  Evidence: [where this signal is visible]
  Impact: [X/5] | Confidence: [X/5] | Time to mainstream: [estimate]
  First-order: [implication if true]
  Second-order: [what changes because of first-order]
  Exposure: [what part of current strategy is at risk]
  Monitor: [specific metric or indicator to watch]

  [repeat × 5]

NOISE (dismissed and why):
  - [Signal]: [reason it's noise]

SIGNALS MONITORING DASHBOARD:
  [Signal] → [metric] → [threshold that confirms strengthening]
```

---

## MODE 2: `/weak-signals log` — Persistent signal log

Manage a living database of signals across sessions. Turns individual observations into a strategic intelligence asset over time.

**Signal log location**: `~/clawd/brain/signals/` — one file per date: `YYYY-MM-DD.md`

### `/weak-signals log add`

Log a new signal. Describe it in plain language; the futurist structures it.

**Output record:**

```markdown
## [YYYY-MM-DD] [DOMAIN] — [Signal headline]

**Source**: [publication/URL]
**Domain**: [tech-ai / economics-cycles / geopolitics / energy / biology / platforms / travel-ota / other]
**Strength**: [WEAK / MODERATE / STRONG]
**Time horizon**: [1-2yr / 3-5yr / 7-10yr / 15yr+]

**Signal**: [2–3 sentences — specific and concrete, not interpreted]
**Interpretation**: [what structural shift does this point to?]
**Related signals**: [previously logged signals this connects to]
**Watch for**: [what would confirm this signal is strengthening?]
```

### `/weak-signals log view [options]`

- `/weak-signals log view` — last 30 days, all domains
- `/weak-signals log view --days 90`
- `/weak-signals log view --domain tech-ai`
- `/weak-signals log view --strength STRONG`

### `/weak-signals log trend`

Synthesise patterns across accumulated signals. This is the high-value command.

1. Group by domain
2. Identify: converging signals (multiple independent signals → same structural shift), accelerating signals, contradicting signals, dormant signals
3. Synthesise into structural themes

**Output:**
```
## Signal Trend Report — [date range]

### Converging themes (high confidence)
[2–5 themes with supporting signal count]

### Accelerating domains (watch closely)
[domains where signal frequency/strength is increasing]

### Unresolved tensions
[contradicting signal pairs]

### Top structural shifts with strategic implications
[2–3 most important findings]

### Signals requiring immediate action
[any strong enough to warrant near-term response]
```

### `/weak-signals log connect`

Given a new piece of information, check the log for related entries and synthesise connections. Share the content, then run this command.

---

## Domain taxonomy

| Code | Domain |
|------|---------|
| `tech-ai` | AI capabilities, model development, agentic systems |
| `economics-cycles` | Macro cycles, capital flows, paradigm shifts |
| `geopolitics` | Great power competition, regional conflicts, sanctions, regulatory |
| `energy` | Energy transition, grid, storage, nuclear, fossil fuel dynamics |
| `biology` | Biotech, longevity, synthetic biology, AI×biology |
| `platforms` | Platform dynamics, network effects, marketplace economics |
| `travel-ota` | OTA/metasearch, airline distribution, hotel economics |
| `demographics` | Population waves, ageing, migration, urbanisation |
| `other` | Cross-cutting or uncategorised |
