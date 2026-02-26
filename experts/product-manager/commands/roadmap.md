---
name: roadmap
description: Build or review a product roadmap with Now/Next/Later sequencing and outcome-based themes
argument-hint: "[strategic goals or feature ideas to organize into roadmap]"
---

# /roadmap

Build or review a product roadmap using the Now/Next/Later framework. This is an outcome-based roadmap, not a feature wishlist — it organizes work into themes that align with strategic goals and clearly sequences what's happening now, what's queued, and what's future.

---

## Step 1: Gather inputs

**Required:**
- **Strategic goals** or OKRs for the next 2-4 quarters
- **Feature ideas or initiatives** (if building from scratch) OR **existing roadmap** (if reviewing)
- **North Star metric** (what outcome are we ultimately driving?)

**Optional but improves roadmap:**
- **User research findings** (what problems are most painful?)
- **Competitive context** (what are competitors shipping?)
- **Technical debt or platform work** that needs to be addressed
- **Team capacity** (how many person-months per quarter?)
- **Known dependencies** (what must be built before what?)

**From PLAYBOOK.md / USER.md:**
- ~~company-name annual strategy or key bets
- ~~team-size and engineering capacity per quarter
- ~~roadmap-review-cadence (monthly? quarterly?)
- ~~stakeholder-list (who needs to approve or review the roadmap?)

---

## Step 2: Define the outcome themes (not features)

A theme is a 3-month bet on what capability will improve which outcome. Themes are broad enough to allow solution exploration but specific enough to exclude irrelevant work.

**Good themes:**
- "Reduce booking friction for first-time users" (Outcome: increase signup-to-booking conversion)
- "Increase repeat bookings" (Outcome: improve 90-day retention)
- "Build trust in recommendations" (Outcome: increase engagement with recommended hotels)

**Bad themes:**
- "Improve UX" (too vague — improve which part? for what outcome?)
- "Ship dark mode" (that's a feature, not a theme)
- "Make the app faster" (that's a quality goal, not a user outcome)

**Theme structure:**

```markdown
## Theme: [Name]

**Outcome hypothesis**: We believe that [improving capability X] will [move metric Y] because [assumption Z].

**Success metric**: [Metric] from [current] → [target] by [date]

**User problem**: [What user pain does this address?]

**Strategic fit**: [How does this align with company strategy?]

**Potential initiatives** (not committed yet):
- [Initiative 1]
- [Initiative 2]
- [Initiative 3]
```

**Example:**

```markdown
## Theme: Reduce booking friction for first-time users

**Outcome hypothesis**: We believe that simplifying the signup and checkout flow will increase signup-to-booking conversion from 35% → 50% because user research shows 60% of new users abandon at the signup step.

**Success metric**: Signup-to-booking conversion from 35% → 50% within 90 days of launch.

**User problem**: New users abandon at signup because they don't trust the site yet and don't want to create an account before browsing.

**Strategic fit**: Q2 goal is "grow new user acquisition" — improving conversion multiplies effectiveness of marketing spend.

**Potential initiatives**:
- Guest checkout (no account required)
- Social login (Google/Apple)
- Trust signals on checkout page (security badges, money-back guarantee)
- Simplified signup form (5 fields → 2 fields)
```

---

## Step 3: Sequence themes into Now / Next / Later

### Now (this quarter)
**What we're actively working on.**

- 2-3 themes max (focus is critical)
- These should be the highest strategic priority + validated problems
- Engineering is actively building these

### Next (next quarter)
**What we're preparing to work on.**

- 2-3 themes
- These are queued — we're doing discovery, design, or validation work
- Not yet committed to build (could shift based on learnings)

### Later (future quarters)
**Ideas we believe in but aren't ready to commit to.**

- 3-5 themes
- These are strategic bets we want to explore when capacity allows
- Could be dependencies (need something else built first) or lower priority

---

## Step 4: For each theme, define initiatives and dependencies

Within each theme, list the specific features or experiments you might build. Be explicit about what's required before this theme can start.

**Format per theme:**

```markdown
## Theme: [Name]

**Now / Next / Later**: [Which bucket]

**Outcome hypothesis**: [What we believe]

**Success metric**: [Target]

**Initiatives** (in priority order):
1. [Initiative 1] — [Why this is highest priority]
2. [Initiative 2] — [Rationale]
3. [Initiative 3] — [Rationale]

**Dependencies**:
- [What must exist before we can start]
- Example: "Requires new payment API (ETA: March 2024)"
- Example: "Requires user preference model to be trained (in progress)"

**Risks**:
- [Key risk 1] — [Mitigation plan]
- [Key risk 2] — [Mitigation plan]

**Capacity estimate**: [X person-months]
```

---

## Step 5: Validate sequencing logic

Check that the Now → Next → Later sequencing makes sense:

### Sequencing rules (priority order):

1. **Survival issues first**  
   If something is breaking the core experience or causing significant churn, fix it now.

2. **Foundations before features**  
   If Theme B requires infrastructure from Theme A, do Theme A first.  
   Example: Don't build "AI recommendations" before "User preference model."

3. **High-confidence, high-impact before exploratory bets**  
   Themes with strong evidence (user research, analytics) should come before speculative ideas.

4. **Validate before building**  
   If a theme is unvalidated, queue it in "Next" and run discovery first. Don't commit to "Now" without evidence.

5. **Balance strategic vs tactical**  
   Don't fill the entire roadmap with small tactical wins — reserve capacity for strategic platform bets even if near-term ROI is unclear.

**Example of bad sequencing:**
- **Now**: "AI recommendations" (unvalidated, high effort)
- **Next**: "Guest checkout" (validated, solves major pain point)
- **Problem**: High-confidence, high-impact fix is queued behind speculative bet.

**Example of good sequencing:**
- **Now**: "Guest checkout" (validated, high impact, no dependencies)
- **Next**: "AI recommendations" (run discovery + prototype, then decide)

---

## Step 6: Capacity reality check

Estimate total capacity needed for "Now" themes. Does it fit within your team's capacity?

**Capacity math:**
- Team size: [X engineers + Y designers]
- Capacity per quarter: [Z person-months]
- Now themes: [A + B + C = Total person-months]

**Rules:**
- Leave 20-30% buffer for bugs, tech debt, unplanned work
- If "Now" themes exceed capacity, either descope or move something to "Next"

**Example:**
- Team: 4 engineers + 1 designer = ~10 person-months/quarter (after buffer)
- Now Theme 1: 3 person-months
- Now Theme 2: 4 person-months
- Now Theme 3: 2 person-months
- **Total: 9 person-months** → Fits within 10 person-month capacity ✅

---

## Output: Roadmap document

```markdown
# Product Roadmap: [Q2 2024]

**North Star Metric**: [e.g., Trips booked per month]  
**Strategic Focus**: [e.g., Grow new user acquisition + improve retention]  
**Team Capacity**: [X person-months/quarter]

---

## Now (Q2 2024: Apr-Jun)

### Theme 1: Reduce booking friction for first-time users

**Outcome**: Increase signup-to-booking conversion from 35% → 50%

**Why now**: Highest-impact opportunity based on user research. 60% of new users abandon at signup. Strategic fit: Q2 goal is grow new user acquisition.

**Initiatives**:
1. Guest checkout (no account required) — 2 person-months
2. Trust signals on checkout page (badges, reviews) — 1 person-month
3. Simplified signup form (5 fields → 2) — 0.5 person-months

**Dependencies**: None

**Success metric**: Signup-to-booking conversion rate (tracked daily)

**Capacity**: 3.5 person-months

---

### Theme 2: Increase repeat bookings

**Outcome**: Improve 90-day repeat booking rate from 18% → 25%

**Why now**: Strategic priority. Retention is more valuable than acquisition long-term. User interviews show demand for easier rebooking.

**Initiatives**:
1. One-click rebooking for past trips — 1.5 person-months
2. Saved searches with price alerts — 2 person-months
3. Email reminders for upcoming trips — 1 person-month

**Dependencies**: Booking history API (already exists)

**Success metric**: 90-day repeat booking rate (cohort analysis)

**Capacity**: 4.5 person-months

---

**Total Now capacity**: 8 person-months (fits within 10 person-month team capacity) ✅

---

## Next (Q3 2024: Jul-Sep)

### Theme 3: Build trust in recommendations

**Outcome**: Increase click-through rate on recommended hotels from 8% → 15%

**Why next**: Medium priority. Discovery needed — we don't yet know why users ignore recommendations. Running user research + A/B tests in Q2.

**Potential initiatives** (TBD after discovery):
- Personalized recommendations based on past behavior
- More transparent recommendation logic ("Why we recommend this")
- Verified booking badges

**Dependencies**: User research findings from Q2

**Capacity estimate**: 4-5 person-months

---

### Theme 4: Mobile app performance

**Outcome**: Reduce app crash rate from 2.5% → 0.5%

**Why next**: Quality issue, but not yet critical. Will become critical if crash rate continues to rise.

**Potential initiatives**:
- Refactor payment flow (most crashes)
- Implement crash analytics
- Automated performance testing

**Dependencies**: None

**Capacity estimate**: 3 person-months

---

## Later (Q4 2024 and beyond)

### Theme 5: AI-powered travel assistant

**Outcome**: TBD (exploratory)

**Why later**: Strategic bet on AI, but unvalidated. Requires significant engineering investment + user research. Queue for later when we have confidence in the approach.

**Potential initiatives**:
- Conversational trip planning
- Natural language search
- Itinerary generation

**Dependencies**: User preference model, LLM integration

**Capacity estimate**: 8-10 person-months

---

### Theme 6: Loyalty program integration

**Outcome**: TBD

**Why later**: Low reach (only 5K loyalty members), partnership complexity. Deprioritised unless strategic deal materialises.

**Potential initiatives**:
- Airline miles redemption
- Hotel points integration
- Loyalty tier benefits display

**Dependencies**: Partnership agreements (not yet signed)

**Capacity estimate**: 4-6 person-months

---

## Key Tradeoffs

**What we're prioritising**: Conversion (new user growth) + retention (repeat bookings). These are the two highest-leverage areas based on data.

**What we're deprioritising**: AI experimentation (unvalidated), loyalty integration (low reach), advanced personalization (medium priority, queued for Q3).

**Strategic rationale**: Focus on proven, high-impact opportunities first. Build trust and scale, then invest in platform bets.

---

## Dependencies & Risks

| Dependency | Owner | ETA | Impact if delayed |
|---|---|---|---|
| Booking history API performance | Engineering (Jane) | May 1 | Delays "One-click rebooking" |
| User research for recommendations | Product (Alex) | Jun 15 | Can't start Q3 Theme 3 |

| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| Guest checkout reduces email capture rate | Medium | High | Add optional email at post-booking confirmation |
| Repeat booking feature cannibalizes higher-margin bookings | Low | Medium | Monitor AOV (average order value) closely |

---

## Roadmap Review Cadence

- **Weekly**: Progress check on "Now" themes (standup/sprint review)
- **Monthly**: Adjust "Now" if priorities shift (PM + eng leads)
- **Quarterly**: Full roadmap refresh (re-sequence Now/Next/Later based on learnings)
```

---

## Escalation / Edge cases

**If stakeholders want more themes in "Now"**:  
- Show the capacity math — explain that adding more themes reduces quality and increases risk of shipping nothing
- Offer tradeoff: "If we add Theme X, we need to move Theme Y to Next"

**If a theme is too vague**:  
- Push for specificity: "What metric are we trying to move? What user problem does this solve?"
- If it can't be made specific, move it to "Later" or drop it

**If engineering says a theme is way more effort than estimated**:  
- Descope: what's the MVP version?
- Or move to "Next" and do more discovery/design to reduce uncertainty

**If "Now" themes get blocked mid-quarter**:  
- Pull from "Next" if there's a validated, ready-to-build theme
- Don't pull from "Later" (not yet validated)

**If the roadmap is too feature-focused (not outcome-focused)**:  
- Reframe: group features into outcome themes
- Ask: "Why are we building this? What user problem does it solve? What metric does it move?"

**If leadership asks "When will Feature X ship?"**:  
- Don't commit to dates for "Later" themes (too much uncertainty)
- For "Now" themes: give estimated ship date
- For "Next" themes: "Queued for Q3, but not yet committed — depends on discovery findings"
