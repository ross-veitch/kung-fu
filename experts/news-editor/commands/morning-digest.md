---
name: morning-digest
description: Compile and curate a morning news briefing — significance-filtered, section-organised, headline format with source and link.
argument-hint: "[optional: date, specific beat focus, or data sources to pull from]"
---

# /morning-digest

Compile a curated morning news briefing. Signal, not noise. The goal is to read the briefing in under 3 minutes and know what matters today.

---

## Step 1: Gather sources

**Pull from configured source list (see PLAYBOOK.md):**
- Wire services (Reuters, AP) for breaking facts
- Trade press (Skift, PhocusWire, WIT, Simple Flying) for industry depth
- Financial press (FT, Bloomberg) for market/business context
- Regional sources (Arab News, Gulf News, Al-Arabiya, Zawya) for MENA
- Tech press (The Verge, Ars Technica, MIT Tech Review) for AI/tech

**Default coverage sections:**
1. World news & geopolitics
2. Middle East & MENA
3. Technology & AI
4. Aviation, hospitality & tourism
5. Online travel (OTAs, metasearch, distribution)
6. Wego / company-relevant

---

## Step 2: Apply significance filter

For each candidate story, score against three criteria:

| Criterion | Weight | Question |
|---|---|---|
| Impact | 5 | How many people affected? Is this a structural shift or a one-day story? |
| Novelty | 3 | Genuinely new information, or a restatement of what's known? |
| Actionability | 2 | Does knowing this change what the reader should do or think today? |

**Threshold:** Only include stories scoring ≥7/10. A section with no qualifying stories gets a one-line note ("No significant [beat] news today") — don't pad.

**Tier classification:**
- **TIER 1** (score 9–10): affects strategy, requires attention today
- **TIER 2** (score 7–8): good to know, worth tracking
- Do not include TIER 3 or below

---

## Step 3: Verify and flag sourcing

- Single-source stories: include only if from a wire service with strong track record, and flag with `[single source]`
- Social media only: do not include without corroboration
- Company press releases: include only if newsworthy beyond the PR framing

---

## Step 4: Write the digest

**Format per story:** Headline — Source — Date — [link]
- No summaries unless the story is complex enough that the headline doesn't capture the significance
- If context is needed: 1 sentence maximum, in italics, after the headline line
- Order within sections: TIER 1 first, then TIER 2

---

## Output

```
## Morning Digest — [Day, Date]

---

### 🌍 World news & geopolitics
• [Headline] — [Source] — [Date] — [link]
• [Headline] — [Source] — [Date] — [link]

### 🇦🇪 Middle East & MENA
• [Headline] — [Source] — [Date] — [link]

### 🤖 Technology & AI
• [Headline] — [Source] — [Date] — [link]

### ✈️ Aviation, hospitality & tourism
• [Headline] — [Source] — [Date] — [link]

### 🌐 Online travel
• [Headline] — [Source] — [Date] — [link]

### 🏢 Wego / company-relevant
• [Headline] — [Source] — [Date] — [link]

---

⚠️ **Urgent** (if any): [Story requiring immediate attention — specific action]

📊 **Digest stats**: [X] stories across [N] sections | Sources: [list] | [N] below threshold, excluded
```

---

## Edge cases

**Source unavailable:** If a configured source is unreachable, note it briefly and proceed with available sources. Don't suppress the digest.

**Slow news day:** A thin briefing is better than a padded one. It's honest signal about the news environment. Flag it: "Slow news day — [N] stories met threshold across all beats."

**Major breaking story:** If a single story dominates multiple beats (e.g., regional conflict affecting travel, aviation, and business), lead with it as a standalone section before the regular beats.
