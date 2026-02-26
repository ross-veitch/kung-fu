---
name: investor-update
description: Draft a monthly or quarterly investor update — headline KPIs, narrative, key decisions, and asks.
argument-hint: "[period] [optional: data file or KPI summary]"
---

# /investor-update

Draft a concise, credible investor update that leads with performance, owns the misses, and signals what's being done about them.

---

## Step 1: Gather inputs

**Required:**
- Period (month/quarter + year)
- Key KPIs vs prior period and vs plan: GMV, revenue, take rate, EBITDA/burn, key segment breakdowns
- What worked this period (max 3 items)
- What didn't work (max 3 items)
- Key decisions made since last update
- Any asks (capital, intros, advice, board input)

**From PLAYBOOK.md / USER.md:**
- Company name, stage, investor base
- KPI definitions and preferred metric set
- Board/investor communication style preferences

**If data is incomplete:** draft with placeholders marked `[TBC]` — flag them explicitly at the top.

---

## Step 2: Assess narrative tone

Before drafting, classify the period:

| Status | Criteria | Tone |
|---|---|---|
| 🟢 ON TRACK | KPIs at or above plan; no structural concerns | Lead with performance, brief narrative |
| 🟡 MIXED | Some metrics above, some below; explainable | Lead with headline, own the miss, show the response |
| 🔴 BELOW PLAN | Key metrics below; needs explanation | Lead with honest summary, root cause, specific response plan |

Investors forgive misses. They don't forgive surprises or vagueness about root cause.

---

## Step 3: Structure the update

**Headline section (≤3 sentences):**
One-paragraph summary of the period. What happened. The key number. The key reason. Don't bury the miss.

**KPI table:**
Core metrics vs prior period and vs plan. Keep to the 5–7 that actually matter. Include GMV, revenue, take rate, EBITDA/burn, and one leading indicator.

**What's working:**
3 bullets max. Specific, not vague. "App bookings up 34% MoM driven by iOS redesign" not "good product progress."

**What's not working:**
2–3 bullets. Own it. State the root cause hypothesis and the specific response. No euphemisms.

**Key decisions:**
What material decisions were made this period — strategy, headcount, product bets, partnerships. Context investors need to understand the direction.

**Asks:**
Be specific. Vague asks ("any intros would be great") get ignored. "Introduction to X at Y re: Z partnership" gets acted on.

---

## Output

```
## [Company] — [Month/Quarter YYYY] Update

**TL;DR:** [One sentence. Best: headline KPI + key narrative point.]

---

### KPIs

| Metric | [Prior Period] | [This Period] | vs Plan |
|---|---|---|---|
| GMV | $X | $X | +/-X% |
| Revenue | $X | $X | +/-X% |
| Take rate | X% | X% | +/-Xbps |
| EBITDA/Burn | $(X)M | $(X)M | +/-X% |
| [Leading indicator] | X | X | +/-X% |

---

### What's working

- [Specific result with specific number and cause]
- [Specific result with specific number and cause]
- [Specific result with specific number and cause]

### What's not working

- [Issue — root cause — what we're doing about it]
- [Issue — root cause — what we're doing about it]

### Key decisions

- [Decision + one-line rationale]
- [Decision + one-line rationale]

---

### Asks

1. [Specific ask — name, company, context]
2. [Specific ask]

---

Next update: [date]
```

---

## Edge cases

**Catastrophic miss:** If a key metric missed by >30% vs plan, lead with that. Don't bury it in "what's not working." A separate paragraph before the KPI table. Investors read in order — surprises buried at the end read as concealment.

**First update after a bad period:** Acknowledge it in the opening. "Last month was tough. Here's what happened and what we've changed." Moving on without acknowledgment destroys credibility.

**Confidential information:** Never include commercially sensitive information (acquisition discussions, litigation, regulatory matters) in investor updates distributed broadly. Flag sensitive items for 1-on-1 calls instead.
