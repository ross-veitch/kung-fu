---
name: source-check
description: Evaluate the credibility and bias profile of a news outlet — ownership, editorial perspective, track record, and best use case.
argument-hint: "[outlet name or URL]"
---

# /source-check

Evaluate a news source before relying on it. Know who owns it, what perspective they bring, and what they're actually good for.

---

## Step 1: Gather inputs

**Required:** Outlet name, URL, or article link
**Optional:** Specific concern (e.g., "Is this outlet trustworthy on AI regulation?" or "How does it cover the Middle East?")

---

## Step 2: Evaluate across five dimensions

**1. Ownership and funding**
- Who owns the outlet? Corporate media group, private equity, billionaire individual, non-profit, state-affiliated?
- Are there known editorial implications of this ownership?
- How is it funded? Subscriptions, advertising, grants, government funding?
- Any major ownership changes in the past 5 years?

**2. Editorial perspective**
- Political/ideological lean: use AllSides, Ground.news, or Ad Fontes Media as reference
- Geographic perspective: US-centric, European, regional, global?
- Industry/sector bias: any corporate relationships that affect coverage?
- What topics do they cover well vs. where do they have a blind spot?

**3. Track record**
- Notable corrections, retractions, or failed fact checks in recent years
- Major stories they got right (credibility on certain beats)
- History with contested stories (did they stand by accurate reporting under pressure, or cave?)
- Relationship with the Press Standards Organisation, IPSO, or equivalent regulatory body

**4. Methodology**
- Do they cite primary sources (documents, official statements) or rely on unnamed sources?
- Do they use single-source reporting without flagging it?
- Do they distinguish news from opinion clearly?
- Do they publish corrections and how prominently?

**5. Best use case**
- What is this outlet reliably useful for?
- What should you NOT use it for?
- How should you weight it vs. peer outlets on the same story?

---

## Output

```
## Source Check: [Outlet name]
**URL**: [outlet URL]
**Type**: Wire / Broadsheet / Trade / Tabloid / Digital native / State-affiliated / Other

---

### Ownership & funding
[Summary — owner, funding model, any known editorial implications]

### Editorial perspective
**Lean**: [Centre / Centre-Left / Centre-Right / Left / Right / State / Unknown]
**Geographic perspective**: [Primary focus region]
**Sector bias**: [Any industry or institutional affiliations worth noting]

### Track record
**Strengths**: [What they get right consistently]
**Weaknesses**: [Where they've made major errors or have known blind spots]
**Notable issues**: [Specific retractions, corrections, controversies — dated]

### Methodology
**Source transparency**: [High / Medium / Low] — [brief explanation]
**Correction culture**: [Active / Minimal / None on record]
**Opinion/news separation**: [Clear / Blurred]

### Best use case
✅ Use for: [What this outlet is reliable for]
⚠️ Use with caution: [Situations where bias or methodology is a concern]
❌ Don't use for: [Topics or contexts where this outlet is consistently unreliable]

### Peer comparison
Compared to [outlet 1] and [outlet 2] on similar coverage: [brief note on how they stack up]

---

### Overall credibility: HIGH / MEDIUM / LOW / UNKNOWN
[One sentence summary]
```
