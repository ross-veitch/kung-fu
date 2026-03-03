# /breaking-news — Assess significance of a breaking story

**Purpose**: Rapidly evaluate a breaking news story for significance, reliability, and implications — determining whether it warrants an alert, digest inclusion, or can be ignored.

**When to use**: When a story breaks and the question is: does this matter? How much? What should the reader know right now?

---

## Phase 1: Source verification (first 5 minutes)

Before assessing significance, establish what is actually known:

### Source quality check
1. **Who broke the story?** (Wire service, investigative outlet, social media, government press release, company PR)
2. **How many independent sources?** (One source = lead; two independent = story; primary document = highest confidence)
3. **What is the source's track record?** (Reuters/AP/Bloomberg have strong verification; anonymous social media accounts do not)
4. **What are the source's incentives?** (Government press release → political framing; company IR → investor management; analyst → positioning)

### Verification steps
- Cross-reference with at least one other source
- Check if wire services (Reuters, AP, AFP) are carrying it
- If visual claims: reverse image search (Google Images, TinEye)
- If document claims: verify authenticity if possible (WHOIS, metadata)

### Confidence classification
- **Confirmed**: Multiple independent sources, primary documents available
- **Likely**: Two sources, consistent reporting, no contradictions
- **Unconfirmed**: Single source, no corroboration yet
- **Disputed**: Contradictory reports from credible sources

**Always state the confidence level.** "Reuters is reporting..." is different from "Social media accounts claim..."

---

## Phase 2: Significance assessment

Evaluate the story across four dimensions:

### 1. Impact (who is affected and how many?)
- **Global**: Affects multiple countries or the global economy (war, pandemic, major policy shift)
- **Regional**: Affects a specific region (MENA policy, ASEAN trade, EU regulation)
- **Industry**: Affects a specific sector (airline merger, tech regulation, oil price shock)
- **Company-specific**: Affects one entity (earnings miss, CEO departure, product launch)

### 2. Novelty (is this genuinely new?)
- **Breaking**: First report of a new development
- **Escalation**: Known situation has materially changed
- **Follow-up**: Restates what is already known with minor additions → likely not worth alerting
- **Noise**: Speculation, opinion, or repackaged old information → ignore

### 3. Durability (will this matter in a week? A month?)
- **Structural**: Changes the landscape permanently (regulation, acquisition, geopolitical shift) → high durability
- **Event-driven**: Significant but time-limited (earnings, natural disaster, election result) → medium durability
- **Ephemeral**: Trending today, forgotten tomorrow (celebrity controversy, viral moment) → low durability

### 4. Actionability (does knowing this change what the reader should do?)
- **High**: Reader needs to make a decision (sell, buy, cancel, prepare, respond)
- **Medium**: Reader should be aware but no immediate action required
- **Low**: Interesting but informational only

### Significance matrix

| Score | Classification | Action |
|-------|---------------|--------|
| High impact + Novel + Durable | **Alert immediately** | Push notification, real-time brief |
| High impact + Novel + Ephemeral | **Same-day brief** | Include in next digest with context |
| Medium impact + Novel | **Digest inclusion** | Standard placement in next scheduled digest |
| Low impact or Follow-up | **Monitor** | Track but do not alert |
| Noise | **Ignore** | Do not include |

---

## Phase 3: Context and implications

For stories that warrant coverage, provide the "so what":

### What happened (facts only)
State what is confirmed, in 2–3 sentences. No speculation, no editorializing.

### Why it matters
Connect to the reader's context:
- **For a CEO**: How does this affect our business, our competitors, our market?
- **For an investor**: What are the financial implications?
- **For a region-focused reader**: What does this mean for [MENA/Southeast Asia/etc.]?

### What to watch next
Identify the next data point or development that will clarify the situation:
- "The market reaction when US markets open will signal whether investors view this as material"
- "The regulatory response in the next 48 hours will determine whether this becomes an industry-wide issue"
- "Watch for [Company X]'s response — if they confirm, this story escalates significantly"

### What is not yet known
Explicitly flag gaps:
- "The motivation behind this decision is unclear"
- "No official statement from [relevant party] yet"
- "The financial impact has not been quantified"

---

## Phase 4: Deliver the assessment

### If alert-worthy (push immediately):

```
🔴 BREAKING: [Headline]

What happened: [2–3 sentences, facts only]
Confidence: [Confirmed / Likely / Unconfirmed]
Source: [Primary source + any corroboration]

Why it matters: [1–2 sentences connecting to reader's context]

Watch next: [What will clarify the situation]

[Link to primary source]
```

### If digest-worthy (include in next scheduled briefing):

```
[Headline] — [Source] — [Date]
[One sentence of context if the headline alone is insufficient]
Significance: [Industry/Regional/Global] | Durability: [High/Medium/Low]
```

### If noise (do not alert, do not include):
No output. Document the decision internally if needed ("Assessed [story] — classified as noise, not included").

---

## Output format

The breaking news assessment should be delivered within 15 minutes of the story breaking. Speed matters, but accuracy matters more. If verification takes longer, send a holding note:

> "Seeing reports of [X]. Verifying now. Will update within [timeframe]."

Then follow up with the full assessment once confidence level is established.
