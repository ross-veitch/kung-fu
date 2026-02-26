# /signal-log — Persistent Weak Signal Intelligence Log

Manage a living, persistent database of weak signals. Turns foresight from a point-in-time exercise into a compounding intelligence asset. Every `/weak-signals` scan, every interesting article, every anomalous data point — logged once, retrievable forever, synthesisable over time.

---

## Signal Log Location

`~/clawd/brain/signals/` — one file per date: `YYYY-MM-DD.md`
Index: `~/clawd/brain/signals/INDEX.md` — auto-maintained summary

---

## Sub-commands

### `/signal-log add`

Log a new signal manually.

**Prompt format**: Describe the signal in plain language. The futurist will structure it.

**Output record** (written to today's file):

```markdown
## [YYYY-MM-DD] [DOMAIN] — [Signal headline]

**Source**: [publication/URL]
**Domain**: [tech-ai / economics-cycles / geopolitics / energy / biology / platforms / travel-ota / other]
**Strength**: [WEAK / MODERATE / STRONG]  
**Time horizon**: [when this signal becomes material: 1-2yr / 3-5yr / 7-10yr / 15yr+]
**Wego relevance**: [HIGH / MEDIUM / LOW] — [1-sentence why]

**Signal**: [2–3 sentence description of what was observed — specific and concrete, not interpreted]

**Interpretation**: [What structural shift does this point to? What mechanism?]

**Related signals**: [List any previously logged signals this connects to]

**Watch for**: [What would confirm this signal is strengthening?]
```

---

### `/signal-log view`

Retrieve and display recent signals.

**Options**:
- `/signal-log view` — last 30 days, all domains
- `/signal-log view --days 90` — last 90 days
- `/signal-log view --domain tech-ai` — filter by domain
- `/signal-log view --strength STRONG` — filter by signal strength
- `/signal-log view --wego HIGH` — filter by Wego relevance
- `/signal-log view --horizon 3-5yr` — filter by time horizon

Output: structured list of matching signals, most recent first.

---

### `/signal-log trend`

Synthesise patterns across accumulated signals. This is the high-value command — turns individual data points into structural insight.

**Process**:
1. Scan all signals in the log (default: last 6 months)
2. Group by domain
3. Identify:
   - **Converging signals**: multiple independent signals pointing to the same structural shift
   - **Accelerating signals**: signals in a domain getting stronger or more frequent over time
   - **Contradicting signals**: signals pointing in opposite directions (unresolved tension — often where the real uncertainty lives)
   - **Dormant signals**: signals that were logged and then went quiet (either resolved or underappreciated)
4. Synthesise into structural themes

**Output format**:

```
## Signal Trend Report — [date range]

### Converging themes (high confidence)
[2–5 themes with supporting signal count and brief description]

### Accelerating domains (watch closely)
[domains where signal frequency/strength is increasing]

### Unresolved tensions
[contradicting signal pairs — where the uncertainty is genuine]

### Wego-relevant synthesis
[Top 3 structural shifts with direct Wego implications]

### Signals that should trigger immediate action
[any signals strong enough + Wego-relevant enough to warrant near-term response]
```

---

### `/signal-log connect`

Given a new piece of information (article, announcement, data point), check the signal log for related entries and synthesise connections.

Usage: Share the content, then `/signal-log connect`. Outputs:
- Related prior signals
- Whether this strengthens, weakens, or reframes existing patterns
- Updated interpretation

---

## Domain taxonomy

| Code | Domain |
|------|---------|
| `tech-ai` | AI capabilities, model development, agentic systems |
| `economics-cycles` | Macro cycles, capital flows, Perez paradigm shifts |
| `geopolitics` | Great power competition, regional conflicts, sanctions, regulatory |
| `energy` | Energy transition, grid, storage, nuclear, fossil fuel dynamics |
| `biology` | Biotech, longevity, synthetic biology, AI×biology |
| `platforms` | Platform dynamics, network effects, marketplace economics |
| `travel-ota` | OTA/metasearch, airline distribution, hotel economics, MENA travel |
| `demographics` | Population waves, ageing, migration, urbanisation |
| `other` | Cross-cutting or uncategorised |

---

## Implementation note

Signals are written as plain Markdown files in `~/clawd/brain/signals/`. No special database — just structured text. The `memory-query.js` semantic index will naturally index these files and make them searchable via `node ~/clawd/scripts/memory-query.js "query"`.

To write a signal: use the `write` tool to append to `~/clawd/brain/signals/YYYY-MM-DD.md`.
To read/synthesise: use the `read` tool to load relevant date files, or `memory-query.js` for semantic search across the full archive.

---

## Why this matters

Most organisations treat foresight as episodic. A consultant comes in, runs a scenario workshop, produces a deck, and the organisation forgets it in six months. The signal log breaks this pattern:
- Signals accumulate over time — a weak signal logged in January may become a strong signal by October
- Converging signals from independent sources are strong evidence of structural shift
- The log creates accountability: "we saw this coming" vs "we didn't notice"
- For Wego: this is the foundation of an ongoing strategic intelligence capability, not just a one-time exercise
