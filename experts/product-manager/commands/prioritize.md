---
name: prioritize
description: Prioritise a backlog or feature list using RICE framework + strategic fit
argument-hint: "[list of features/initiatives to prioritize]"
---

# /prioritize

Prioritise a product backlog or feature list using the RICE framework (Reach × Impact × Confidence / Effort) combined with strategic judgment. The output is a ranked list with clear rationale for sequencing.

---

## Step 1: Gather the backlog

**Required:**
- List of features, initiatives, or bets to prioritise (at least 3, ideally 5-15)
- For each item: a brief description of what it is

**Optional but improves prioritisation:**
- User research data (which problems are highest pain?)
- Analytics data (which areas have highest drop-off?)
- Strategic goals (what outcomes are we optimising for this quarter?)
- Engineering estimates (rough complexity: S/M/L/XL)
- Dependencies (what must be built before what?)

**From PLAYBOOK.md / USER.md:**
- ~~current-quarter themes (to assess strategic fit)
- ~~company-name OKRs or North Star metric (to connect initiatives to outcomes)
- ~~team-capacity (to ground effort estimates in reality)

---

## Step 2: Score each initiative using RICE

For each item in the backlog, assign:

### Reach (R)
**How many users/customers will this impact per time period?**

Estimate: Number of users per quarter (or per month, if more relevant).

**Examples:**
- Feature affects all active users → 50,000 users/quarter
- Feature affects only premium users → 5,000 users/quarter
- Feature affects new signups only → 2,000 users/quarter

**Tips:**
- Use actual user counts from analytics if available
- If unknown, estimate based on segment size
- Be conservative (underestimate rather than overestimate)

### Impact (I)
**How much will this improve the outcome for each user?**

Scale:
- **3** = Massive impact (solves a core problem, dramatically improves a key metric)
- **2** = High impact (meaningful improvement, noticeable to users)
- **1** = Medium impact (helpful but not transformative)
- **0.5** = Low impact (nice-to-have, small improvement)
- **0.25** = Minimal impact (barely noticeable)

**Tips:**
- Think about the metric you're trying to move (conversion, retention, NPS)
- High impact = the feature significantly moves that metric
- Don't inflate impact because you personally like the feature

### Confidence (C)
**How confident are you in your Reach and Impact estimates?**

Scale:
- **100%** = High confidence (strong evidence from research, data, or past experiments)
- **80%** = Medium confidence (some evidence, reasonable assumptions)
- **50%** = Low confidence (gut feeling, limited data)

**Tips:**
- If you've validated the problem with users → 80-100%
- If it's based on assumptions or competitor behavior → 50-80%
- If it's speculative → 50% or below

### Effort (E)
**How many person-months will this take to build, test, and ship?**

Estimate: Total person-months (1 engineer for 2 months = 2 person-months; 2 engineers for 1 month = 2 person-months).

**Tips:**
- Include: design, engineering, QA, launch prep
- Use T-shirt sizes if exact estimates aren't available:
  - **S** (Small) = 0.5 person-months
  - **M** (Medium) = 1-2 person-months
  - **L** (Large) = 3-5 person-months
  - **XL** (Extra Large) = 6+ person-months
- Involve engineering early for better estimates
- Pad by 20-30% (things always take longer)

---

## Step 3: Calculate RICE scores

**RICE Score = (Reach × Impact × Confidence) / Effort**

**Example:**

| Feature | Reach | Impact | Confidence | Effort | RICE Score |
|---|---|---|---|---|---|
| One-click rebooking | 10,000 | 2 | 80% | 1.5 | **10,667** |
| Guest checkout | 50,000 | 1 | 100% | 2 | **25,000** |
| Loyalty program integration | 5,000 | 3 | 50% | 4 | **1,875** |
| Dark mode | 50,000 | 0.5 | 100% | 0.5 | **50,000** |
| AI-powered recommendations | 50,000 | 2 | 50% | 6 | **8,333** |

**Ranked by RICE score:**
1. Dark mode (50,000)
2. Guest checkout (25,000)
3. One-click rebooking (10,667)
4. AI recommendations (8,333)
5. Loyalty integration (1,875)

---

## Step 4: Apply strategic overlay (adjust ranking with judgment)

RICE is a tool, not a gospel. Adjust the ranking based on:

### A. Strategic fit
Does this align with the current quarter's themes or company OKRs?

**Example**: If Q2 theme is "Increase repeat bookings," bump "One-click rebooking" higher even if RICE is lower than "Dark mode."

### B. Dependencies
Does Feature B require Feature A to be built first?

**Example**: "AI recommendations" requires "User preference model" to be built first → deprioritise AI recs until the foundation is ready.

### C. Learning value
Is this a low-effort experiment that teaches us something valuable?

**Example**: A feature with medium RICE but high learning value (validates a key assumption) might be worth doing early.

### D. Platform bets
Does this unlock future capabilities even if near-term RICE is low?

**Example**: "API for partners" has low immediate user reach but unlocks ecosystem growth → strategic bet even with low RICE.

### E. Risk/reversibility
Is this easy to reverse if it fails? Or is it a one-way door?

**Example**: "Remove legacy payment flow" is irreversible and risky → validate thoroughly before committing.

### F. Team capacity / morale
Is the team burned out on complex features? Would a quick win boost morale?

**Example**: "Dark mode" is high-confidence, low-effort, high-visibility → good morale boost.

---

## Step 5: Final ranked backlog

Present the prioritised backlog with explicit rationale for the top 3-5.

**Output format:**

```markdown
## Prioritised Backlog

### Tier 1: Ship this quarter (Now)

1. **Guest checkout** (RICE: 25,000)
   - **Why top priority**: Highest RICE score. Removes massive friction for new users. 50% of users abandon at signup step. Confidence is high (validated in user research). Strategic fit: Q2 goal is "reduce booking friction."
   - **Reach**: 50,000 users/quarter (all new users)
   - **Impact**: 1 (medium — improves conversion but not transformational)
   - **Effort**: 2 person-months
   - **Dependencies**: None

2. **One-click rebooking** (RICE: 10,667)
   - **Why #2**: Strong strategic fit with "increase repeat bookings" theme. Medium RICE but unlocks retention loop. High confidence (user interviews confirm demand).
   - **Reach**: 10,000 users/quarter (returning users)
   - **Impact**: 2 (high — significantly improves repeat booking UX)
   - **Effort**: 1.5 person-months
   - **Dependencies**: Requires booking history API (already exists)

3. **Dark mode** (RICE: 50,000)
   - **Why #3**: Highest RICE technically, but low strategic impact. Quick win, high user satisfaction signal. Good team morale boost after complex Q1 projects.
   - **Reach**: 50,000 users/quarter (all users)
   - **Impact**: 0.5 (low — nice-to-have, doesn't move core metrics)
   - **Effort**: 0.5 person-months
   - **Dependencies**: Design system update (in progress)

---

### Tier 2: Queue for next quarter (Next)

4. **AI-powered recommendations** (RICE: 8,333)
   - **Why not now**: High effort (6 person-months), medium confidence (requires experimentation). Strategic value is high but risky. Queue for Q3 when we have more capacity.
   - **Recommendation**: Run a 2-week prototype spike first to validate feasibility.

5. **Loyalty program integration** (RICE: 1,875)
   - **Why not now**: Low reach (only 5,000 loyalty members), high effort (4 person-months), low confidence (50%). Partnership complexity. Deprioritise unless strategic deal is in play.

---

### Tier 3: Backlog (Later / Maybe)

[Features that didn't make the cut — list with 1-sentence rationale for why deprioritised]

---

## Key Tradeoffs

**What we're saying YES to**: Reducing booking friction (guest checkout, one-click rebooking) and a quick user satisfaction win (dark mode).

**What we're saying NO to (for now)**: Complex AI features (need more validation), loyalty integration (low ROI), and speculative bets without user evidence.

**Capacity check**: Tier 1 totals 4 person-months. If team capacity is 6 person-months/quarter, we have 2 person-months buffer for bug fixes and unplanned work.
```

---

## Escalation / Edge cases

**If two features have similar RICE scores**:  
- **Tiebreaker 1**: Strategic fit (which aligns better with this quarter's goals?)
  - **Tiebreaker 2**: Confidence (which has stronger evidence?)
  - **Tiebreaker 3**: Reversibility (which is easier to undo if it fails?)

**If RICE score is very high but strategic fit is low**:  
- Consider splitting: ship a minimal version now (low effort), full version later
- Example: "Dark mode" has high RICE but low strategic value → ship basic version, deprioritise polish

**If engineering says effort is way higher than estimated**:  
- Re-run RICE with updated effort
- If effort doubles, RICE score halves — might drop out of top tier
- Consider descoping: what's the MVP version?

**If the backlog is > 20 items**:  
- Do a first pass to eliminate obvious non-starters (low impact + high effort)
- Only score the remaining ~10-15 items with RICE
- Don't waste time scoring things that are clearly not getting built

**If stakeholders disagree with the ranking**:  
- Make the criteria transparent (share the RICE scores)
- Ask: "What criteria would you weight differently?" (Helps surface hidden assumptions)
- If they still disagree, escalate to product leadership with options

**If a "favorite feature" scores low on RICE**:  
- Double-check the scoring (are you being honest about Reach/Impact/Confidence?)
- If it's truly low RICE but people love it: explain why you're deprioritising, or descope it to reduce Effort
- If it's a pet project without data: push for validation before building

---

## Post-prioritisation actions

1. **Share the ranked backlog** with engineering and stakeholders
2. **Get buy-in** on Tier 1 (top 3-5 to ship this quarter)
3. **Write PRDs** for Tier 1 features
4. **Re-prioritise quarterly** (backlog is a living document, not a contract)
