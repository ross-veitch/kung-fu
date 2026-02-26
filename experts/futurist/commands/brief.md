# /brief — Compress Foresight to a 1-Page Exec Brief

Compress any futurist analysis — whether from this session or provided as input — into a tight, shareable 1-page executive brief. Built for the moment before a board meeting, investor call, or leadership discussion where you need the foresight to land quickly.

---

## When to use

- After a `/futures`, `/scenarios`, `/10yr`, or `/wind-tunnel` run — compress the output
- Before sharing strategic analysis with board members or investors who weren't in the analysis session
- When you need to send something written rather than speak the analysis
- When the full analysis is too long for the context (Ross needs the 3-minute version, not the 30-minute version)

---

## Input

Either:
1. Reference prior analysis in this session: `/brief` (no additional input — compresses the most recent substantive futurist output)
2. Paste content to compress: `/brief` followed by the text to compress
3. Describe a topic for a fresh brief: `/brief on [topic]` — generates a brief from scratch

---

## Output format (strict — max ~300 words)

```
# [Title] — Futurist Brief
[Date] | Horizon: [time period]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## 3 Structural Shifts

1. **[Shift name]** — [2 sentences: what is changing and why it's structural, not cyclical]
2. **[Shift name]** — [2 sentences]
3. **[Shift name]** — [2 sentences]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## 5 Strategic Implications

For [company/sector name]:

1. [1 sentence: concrete implication of the above shifts]
2. [1 sentence]
3. [1 sentence]
4. [1 sentence]
5. [1 sentence]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## 3 Actions (Next 12–24 Months)

1. **[Action]**: [1 sentence — specific enough to be assignable]
2. **[Action]**: [1 sentence]
3. **[Action]**: [1 sentence]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## 3 Signals to Watch

1. [Specific observable indicator — what to look for, and what it means if you see it]
2. [Same]
3. [Same]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## Key Uncertainty

[1–2 sentences: the single most important unresolved question. What would most change this brief if you knew the answer?]
```

---

## Compression rules

**What stays**: structural forces (irreversible, multi-year), concrete actions, specific signals
**What gets cut**: cyclical noise dressed up as structural, hedging language that adds no information, implications that are obvious to any informed reader
**What never appears**: "it depends", "it's unclear whether", "there are many factors" — pick a view and state it

**The test**: would an executive who read this brief and nothing else understand the 3 most important things happening in the relevant landscape and what to do about them? If yes: pass. If no: compress further or choose more important things.

---

## Tone

This is an executive-grade document, not a research memo. Every sentence earns its place. Write with the editorial restraint of *The Economist* — precision without jargon, confidence without false certainty, brevity without loss of substance.

---

## Variants

**`/brief --deck`**: same content but structured as slide annotations (headline + 2 bullet points per section) — intended for a Google Slides companion deck

**`/brief --slack`**: same content but formatted for Slack mrkdwn (bold, bullets, no tables) — intended for sharing in a channel

**`/brief --save`**: writes the brief to `~/clawd/brain/signals/briefs/YYYY-MM-DD-[topic].md` for future reference
