---
name: performance-review
description: Run a structured performance review cycle or individual review with calibration and rating guidance
argument-hint: "[employee name or team] [review period]"
---

# /performance-review

Run a structured performance review cycle (company-wide or team-level) or prepare an individual performance review. Includes calibration guidance, rating frameworks, and feedback templates.

---

## Step 1: Gather inputs

**Required:**
- **Review scope**: Individual review OR team-wide calibration session?
- **Review period**: Q1 2024, Annual 2023, etc.
- **Employee(s)**: Name, role, manager, tenure

**Optional but improves output:**
- **Performance data**: Metrics, project outcomes, 360 feedback, peer reviews
- **Previous review**: What was the last rating? What feedback was given?
- **Company calibration guidelines**: Forced curve? Target distribution? Rating definitions?

**From PLAYBOOK.md / USER.md:**
- ~~company-name performance review process (annual vs quarterly, rating scale, forced curve)
- ~~compensation-philosophy (how ratings tie to raises/bonuses)
- ~~review-timeline (when reviews happen, when comp decisions finalize)

---

## Step 2: Define the rating scale

Most companies use a 3-5 point scale. Clarify definitions before rating.

### Example 5-point scale

| Rating | Label | Definition | Target % |
|---|---|---|---|
| 5 | Exceptional | Exceeds expectations in all areas; top 5% performer | 5-10% |
| 4 | Exceeds | Consistently exceeds expectations; strong performer | 15-25% |
| 3 | Meets | Meets all expectations; solid contributor | 60-70% |
| 2 | Below | Partially meets expectations; needs improvement | 5-10% |
| 1 | Unsatisfactory | Does not meet expectations; PIP or exit | 0-5% |

### Example 3-point scale (simpler, less political)

| Rating | Definition | Target % |
|---|---|---|
| Exceeds | Top performer, ready for more responsibility | 20-30% |
| Meets | Solid contributor, meets all expectations | 60-70% |
| Below | Underperforming, needs improvement or exit | 5-10% |

**Calibration target**: Aim for realistic distribution. If 80% of a team is rated "Exceeds," that's grade inflation (unless it's genuinely a high-performing team — rare).

---

## Step 3: Assess performance (evidence-based)

Rate based on observable outcomes and behaviors, not personality or likability.

### Performance dimensions to assess

#### 1. **Results / Impact**
- Did they achieve goals/OKRs?
- What measurable impact did their work have?
- Examples: "Shipped feature X, resulting in Y% conversion increase" / "Closed $2M in sales, 120% of quota"

#### 2. **Quality of work**
- Does their work require rework or is it high-quality on first pass?
- Do they anticipate problems or react after things break?

#### 3. **Collaboration / Teamwork**
- Do they help others succeed or hoard information?
- Are they easy to work with or do they create friction?

#### 4. **Ownership / Accountability**
- Do they own outcomes or make excuses?
- Do they follow through on commitments?

#### 5. **Growth / Learning**
- Are they improving over time?
- Do they seek feedback and act on it?

---

## Step 4: Write the performance summary

### Summary structure (1-2 paragraphs)

**Paragraph 1: Overall performance + rating**
> [Name] had a [strong/solid/challenging] [period]. They are rated **[Rating]** for this cycle. [One sentence on why this rating.]

**Paragraph 2: Key strengths (2-3 examples)**
> [Name]'s key strengths include [strength 1], demonstrated by [example], and [strength 2], seen in [example].

**Paragraph 3: Development areas (1-2 examples)**
> Areas for growth include [area 1], where [specific example], and [area 2], where [specific behavior to improve].

---

### Example performance summary (Meets Expectations)

> **Jane Doe — Senior Engineer — Q4 2023**
>
> Jane had a solid quarter and is rated **Meets Expectations**. She delivered on all committed projects and demonstrated strong technical execution.
>
> Jane's key strengths include her code quality (zero production bugs in her last 3 releases) and her collaboration with the design team (proactively flagged technical constraints early in the design phase, avoiding last-minute surprises). She also mentored two junior engineers, helping them ramp faster.
>
> Areas for development include taking more ownership of end-to-end outcomes (she completed her assigned tasks but didn't proactively identify gaps in the overall feature) and improving communication in cross-functional meetings (tends to be quiet in planning discussions; would benefit from sharing her technical perspective more openly).
>
> **Next quarter focus**: (1) Own one feature end-to-end (not just implementation), (2) Speak up in planning meetings with technical input.

---

## Step 5: Calibration session (for team-wide reviews)

### Calibration purpose
Align managers on ratings before finalizing reviews. Prevents grade inflation and ensures fairness across teams.

### Calibration process (2-hour session, 8-12 managers)

#### Pre-work (managers prepare)
Each manager brings:
- Proposed ratings for their team
- 1-sentence justification per person
- Performance data (metrics, examples)

#### Session agenda

**1. Review rating distribution (15 min)**
- Show proposed distribution: "Team A: 50% Exceeds, 40% Meets, 10% Below"
- Flag outliers: "Why does Team B have 80% Exceeds?"

**2. Discuss borderline cases (60 min)**
- Focus on: 
  - Anyone rated "Exceeds" (is it justified?)
  - Anyone rated "Below" (is exit/PIP appropriate?)
  - Disagreements (same role, different teams, different ratings — why?)

**3. Align on final ratings (30 min)**
- Managers adjust ratings based on discussion
- Document final distribution

**4. Review compensation impact (15 min)**
- How do ratings tie to raises/bonuses?
- Flag budget constraints

---

### Calibration red flags

**Grade inflation**:
- Manager rates 80% of team "Exceeds" (too generous, or genuinely exceptional team?)
- **Action**: Ask for evidence. Compare to peer teams. Adjust if not defensible.

**Recency bias**:
- Manager heavily weights last month's performance, ignores full review period
- **Action**: Remind manager to assess full period (6-12 months)

**Halo/horn effect**:
- One strong project → "Exceeds" across the board (halo)
- One mistake → "Below" across the board (horn)
- **Action**: Require evidence across multiple dimensions

**Similarity bias**:
- Manager rates people who are like them higher
- **Action**: Compare ratings to objective performance data

---

## Step 6: Deliver the review (manager → employee)

### Review conversation structure (30-45 min)

**1. Start with the rating (first 2 minutes)**
> "I want to share your performance review for [period]. You're rated **[Rating]** for this cycle."

**2. Share strengths (5-10 min)**
> "Here's what you did really well: [specific examples]."

**3. Share development areas (10-15 min)**
> "Here are areas where I'd like to see growth: [specific examples + actionable feedback]."

**4. Invite their perspective (10 min)**
> "How does this land for you? Is there anything you'd like to discuss?"

**5. Set goals for next period (5-10 min)**
> "For next quarter, let's focus on [2-3 specific goals]."

**6. Discuss compensation impact (5 min)**
> "Based on this rating, your raise/bonus is [X]. Comp letters go out [date]."

---

### How to deliver tough feedback (for "Below" rating)

**Be direct, not cruel**:
> "You're rated **Below Expectations** this cycle. That means your performance is not meeting the standards for this role."

**Give specific examples**:
> "Here are the gaps: (1) You missed 4 out of 6 deadlines this quarter. (2) Your code quality required significant rework from peers. (3) You haven't incorporated feedback from our last 1:1."

**State consequences clearly**:
> "If these gaps don't close in the next 90 days, we'll need to make a change. I'm putting you on a Performance Improvement Plan to give you a clear path forward."

**Offer support (if genuine)**:
> "I want you to succeed. Here's what I'll do to support you: [specific actions]. But improvement is ultimately on you."

**Don't soften the message**:
- ❌ "You're doing okay, but..."
- ❌ "This isn't a big deal, but..."
- ✅ "This is serious. Here's what needs to change."

---

## Step 7: Document the review

**Why document?**
- Legal protection (termination, discrimination claims)
- Performance history (for promotion/PIP decisions)
- Continuity (if manager changes)

**What to document:**
- Rating + rationale
- Key strengths (2-3 examples)
- Development areas (1-2 examples)
- Goals for next period
- Compensation impact (if applicable)
- Employee signature (or email confirmation they received it)

**Where to store**: HRIS system (BambooHR, Workday, etc.) OR secure shared drive (if no HRIS).

---

## Escalation / Edge cases

**If employee disagrees with rating**:
- Listen to their perspective
- Ask for evidence that contradicts your assessment
- If they have valid points → adjust rating (rare)
- If not → hold firm: "I understand you disagree, but this is my assessment based on [data]. Let's focus on what you can do next quarter to earn a higher rating."

**If manager wants to rate everyone "Exceeds"**:
- Push back in calibration: "What makes them exceed vs meet? Give me specific examples."
- If genuinely exceptional team → allow it (but rare)
- If grade inflation → require adjustment to target distribution

**If employee is surprised by negative feedback**:
- Manager failure (should have given feedback throughout the year, not just at review time)
- Action: Document the gap, but also note "Manager should have raised this earlier"
- Going forward: Require managers to give real-time feedback, not save it for reviews

**If review is delayed past comp cycle**:
- Separate performance feedback from comp discussion
- Deliver review on time (feedback is still valuable even if comp is delayed)

**If employee threatens legal action**:
- Stop. Involve legal counsel immediately.
- Do not continue conversation without legal review.

---

## Post-review actions

1. **File documentation** in HRIS or secure location
2. **Update goals/OKRs** for next period
3. **Track "Below" ratings** → Create PIP or exit plan within 30 days
4. **Monitor "Exceeds" ratings** → Check for retention risk (external offers?)
5. **Compensation updates** → Process raises/bonuses per company cycle
