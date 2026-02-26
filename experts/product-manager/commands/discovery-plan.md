---
name: discovery-plan
description: Plan a product discovery sprint to validate assumptions before building
argument-hint: "[hypothesis or problem area to explore]"
---

# /discovery-plan

Plan a product discovery sprint to validate key assumptions before committing engineering resources. Discovery is about learning fast and cheaply — not building. The output is a research plan with specific hypotheses to test, methods to use, and decision criteria for what to do next.

---

## Step 1: Frame the problem or hypothesis

**Required:**
- **Problem statement** OR **feature hypothesis** you want to validate
- **Decision at stake**: What will we do if we learn X? What if we learn Y?

**From PLAYBOOK.md / USER.md:**
- ~~company-name user segments (to target the right people for research)
- ~~research-tools available (UserTesting, Maze, Typeform, etc.)
- ~~research-budget per sprint (if any constraints)

**Good problem/hypothesis framing:**
- "Users abandon checkout because they don't trust our site with payment info" (testable hypothesis)
- "First-time users don't understand how to search for hotels on our site" (specific user problem)
- "Repeat users want a faster way to rebook past trips" (user need to validate)

**Bad problem/hypothesis framing:**
- "We should build dark mode" (that's a solution, not a problem)
- "Users want a better experience" (too vague to test)
- "Competitors have feature X, so we need it too" (not a user problem)

---

## Step 2: Map assumptions to validate

List the key assumptions embedded in the problem/hypothesis. These are the things that must be true for the solution to work.

**Assumption types:**
- **Desirability**: Do users actually want this? Is this a real problem?
- **Viability**: Will this make business sense? (economics, scale, etc.)
- **Feasibility**: Can we actually build this? (technical, legal, partnership constraints)
- **Usability**: Can users figure out how to use it?

**Example (for "One-click rebooking" feature):**

| Assumption | Type | Risk if wrong | Test method |
|---|---|---|---|
| Users want to rebook past trips without re-entering details | Desirability | High — we build something no one uses | Customer interviews |
| Users remember what they booked previously | Desirability | Medium — feature requires memory aids | Customer interviews + prototype test |
| We can fetch booking history from all sources (including partners) | Feasibility | High — feature is incomplete if we can't | Technical spike |
| One-click flow is intuitive without onboarding | Usability | Medium — users get confused, don't complete | Usability test with prototype |
| Rebooking doesn't cannibalize higher-margin new bookings | Viability | Medium — hurts revenue | Cohort analysis of existing repeat behavior |

---

## Step 3: Prioritize assumptions by risk

Not all assumptions need validation. Prioritize by:
- **Risk**: How catastrophic if wrong?
- **Uncertainty**: How confident are we already?

**Priority matrix:**

| Risk if wrong | Confidence | Priority |
|---|---|---|
| High | Low | **P0** — Must validate |
| High | Medium | **P1** — Should validate |
| Medium | Low | **P1** — Should validate |
| Medium | Medium | **P2** — Optional |
| Low | Any | **P3** — Skip |

Focus discovery on P0 and P1 assumptions. Don't waste time validating low-risk or already-confident assumptions.

---

## Step 4: Design validation experiments (cheap → expensive)

For each P0/P1 assumption, choose the cheapest validation method that will give you confidence.

### Validation method ladder (cheapest → most expensive):

#### 1. **Customer interviews** (Cost: $0-500, Time: 1-2 weeks)
**When to use**: Validate problem existence, understand user mental models, explore "why" behind behavior.

**How**:
- Recruit 5-8 users from target segment
- Script using Mom Test principles (ask about past behavior, not hypotheticals)
- Run 30-45 min interviews
- Synthesize findings

**Decision criteria**: If 5+ out of 8 users describe this problem unprompted → validated.

---

#### 2. **Survey** (Cost: $0-200, Time: 3-5 days)
**When to use**: Quantify a pattern you've seen in interviews, or validate demand at scale.

**How**:
- Write clear, unbiased questions (see user-research skill for survey design)
- Target 100+ users (for statistical significance)
- Analyze: what % say yes to key question?

**Decision criteria**: If >40% say "very interested" or "would definitely use" → validated.

---

#### 3. **Smoke test / Fake door test** (Cost: $0-100, Time: 1 week)
**When to use**: Test demand without building anything. See if users click on a feature that doesn't exist.

**How**:
- Add a button/link for the feature in your app
- When clicked, show a "Coming soon! Want to be notified?" message
- Track click-through rate

**Decision criteria**: If >5% of users click → strong signal of interest.

---

#### 4. **Landing page + ad spend** (Cost: $500-2000, Time: 1-2 weeks)
**When to use**: Validate demand for a new product/service before building it.

**How**:
- Create a landing page describing the product
- Run targeted ads (Google, Meta) to drive traffic
- Track: click-through rate, signup rate
- (No actual product exists yet — this is a demand test)

**Decision criteria**: If signup rate >10% and CAC is <$50 → validated.

---

#### 5. **Concierge MVP** (Cost: manual effort, Time: 1-2 weeks)
**When to use**: Validate the value proposition by manually delivering the service (before automating).

**How**:
- User thinks they're using an automated product, but you're doing it manually behind the scenes
- Example: "AI recommendations" → PM manually curates recommendations and emails them

**Decision criteria**: If users pay for it or engage repeatedly → validated.

---

#### 6. **Wizard of Oz MVP** (Cost: eng time + ops, Time: 2-4 weeks)
**When to use**: Validate end-to-end user experience while faking the backend automation.

**How**:
- Build minimal UI
- Humans fulfill requests behind the scenes (users think it's automated)
- Example: DoorDash founders delivered food themselves initially

**Decision criteria**: If users complete the flow and repeat → validated.

---

#### 7. **Clickable prototype** (Cost: design/eng time, Time: 1-3 weeks)
**When to use**: Validate usability and flow before building production code.

**How**:
- Design clickable prototype (Figma, InVision)
- Run usability tests with 5-8 users
- Watch where they get stuck

**Decision criteria**: If 80%+ complete the task successfully → usable design.

---

#### 8. **Beta / limited release** (Cost: full eng build, Time: 4-8 weeks)
**When to use**: After validating problem + usability, test real usage at small scale before full launch.

**How**:
- Ship to 5-10% of users
- Measure: adoption rate, retention, feedback
- Iterate before full rollout

**Decision criteria**: If metrics hit target → roll out to 100%.

---

## Step 5: Define success/failure criteria upfront

Before running discovery, decide: **What would make us build this? What would make us kill it?**

**Decision framework:**

| Outcome | Criteria | Action |
|---|---|---|
| **Strong validation** | 6+ out of 8 users describe this problem; 70%+ complete usability test successfully | BUILD — write PRD, prioritize for next quarter |
| **Moderate validation** | 3-5 out of 8 users mention problem; 50-70% task success rate | ITERATE — refine solution, test again |
| **Weak/no validation** | <3 users care; <50% task success; low engagement in tests | KILL — deprioritize, move to backlog |

**Rule**: Define these criteria BEFORE running discovery. Otherwise you'll rationalize weak results into building anyway.

---

## Step 6: Plan the sprint timeline

Discovery sprints should be **1-3 weeks max**. If it's taking longer, you're overthinking it.

**Sample 2-week discovery sprint timeline:**

### Week 1: Qualitative research
- **Day 1-2**: Recruit users (5-8 target segment)
- **Day 3-5**: Run customer interviews
- **Day 5**: Synthesize findings, update hypotheses

### Week 2: Quantitative validation
- **Day 6-7**: Design survey or smoke test
- **Day 8-10**: Run test, collect data
- **Day 11**: Analyze results
- **Day 12**: Present findings + recommendation (build / iterate / kill)

**Stakeholder checkpoints:**
- **Kickoff** (Day 1): Align on assumptions to test + decision criteria
- **Mid-sprint** (Day 5): Share interview findings, adjust plan if needed
- **Readout** (Day 12): Present final recommendation

---

## Output: Discovery Sprint Plan

```markdown
# Discovery Sprint Plan: [Feature/Problem Name]

**Dates**: [Start] → [End] (2 weeks)  
**Owner**: [PM name]  
**Decision at stake**: Build vs Deprioritize [Feature X]

---

## Hypothesis

We believe that [user segment] experiences [problem] and would benefit from [solution] because [evidence/assumption].

**What we're validating**:
1. Is this a real problem users experience? (Desirability)
2. Would users use our proposed solution? (Desirability)
3. Can users figure out how to use it? (Usability)
4. Can we technically deliver this? (Feasibility)

---

## Key Assumptions to Test

| Assumption | Type | Risk | Method | Owner |
|---|---|---|---|---|
| Users want to rebook past trips quickly | Desirability | High | Customer interviews | PM |
| Users remember what they booked | Desirability | Medium | Customer interviews | PM |
| We can fetch all booking history | Feasibility | High | Technical spike | Eng |
| One-click flow is intuitive | Usability | Medium | Prototype test | Designer |

---

## Validation Plan

### Phase 1: Customer Interviews (Week 1)

**Goal**: Validate that users experience the problem and care about solving it.

**Method**:
- Recruit 8 users: 4 frequent travelers (3+ trips/year), 4 occasional travelers (1-2 trips/year)
- Run 30-minute interviews (see interview guide below)
- Ask about past booking behavior, pain points, current rebooking process

**Interview guide (key questions)**:
1. Tell me about the last time you booked a return trip to a hotel you'd stayed at before. Walk me through it.
2. What information did you need to remember or look up?
3. What was frustrating about that process?
4. Have you tried any tools or services to make rebooking easier? What happened?
5. [Show prototype] How would you use this to rebook a past trip?

**Success criteria**: If 6+ out of 8 users describe rebooking friction unprompted → problem validated.

---

### Phase 2: Prototype Usability Test (Week 2)

**Goal**: Validate that users can successfully complete one-click rebooking without help.

**Method**:
- Design clickable prototype (Figma) of one-click rebooking flow
- Run usability tests with 5 users (can reuse interview participants)
- Task: "You want to rebook your last hotel stay in Bangkok. Show me how you'd do that."

**Success criteria**: If 4+ out of 5 users complete task successfully without help → usable.

---

### Phase 3: Technical Feasibility Check (Week 1-2, parallel)

**Goal**: Confirm we can fetch booking history from all sources (including partner bookings).

**Method**:
- Engineering runs 2-day technical spike
- Check: Can we access booking history API for direct bookings? For partner bookings?
- Estimate: How much effort to build booking history sync?

**Success criteria**: If we can access 80%+ of bookings → feasible. If not, descope or deprioritize.

---

## Decision Criteria

| Outcome | What we learned | Action |
|---|---|---|
| **GREEN** | 6+ users validate problem; 80%+ usability success; technically feasible | **BUILD** — Write PRD, prioritize for Q2 |
| **YELLOW** | 3-5 users mention problem; 50-70% usability; partial technical feasibility | **ITERATE** — Refine scope, retest in 2 weeks |
| **RED** | <3 users care; <50% usability; not technically feasible | **KILL** — Deprioritize, focus on higher-impact work |

**Commitment**: We will follow the decision framework. If results are RED, we will deprioritize, even if stakeholders love the idea.

---

## Timeline

| Day | Activity | Owner |
|---|---|---|
| Day 1 | Kickoff: Align on plan | PM + Eng + Design |
| Day 1-2 | Recruit users | PM |
| Day 3-5 | Run customer interviews | PM |
| Day 5 | Synthesize interview findings | PM |
| Day 6-7 | Design prototype | Designer |
| Day 8-10 | Run usability tests | PM + Designer |
| Day 8-10 | Technical feasibility spike (parallel) | Eng |
| Day 11 | Analyze all findings | PM |
| Day 12 | Present recommendation (build/iterate/kill) | PM → Leadership |

---

## Risks

| Risk | Mitigation |
|---|---|
| Can't recruit enough users in time | Use existing customer list + incentivize with $25 gift cards |
| Technical spike reveals blockers | Have backup scope: limit to direct bookings only (v1) |
| Usability test shows major issues | Iterate design and retest with 2-3 more users |

---

## Estimated Cost

- User incentives: $200 (8 interviews × $25)
- Prototype design time: 3 days (designer)
- PM time: 8 days (full sprint)
- Eng spike: 2 days (technical validation)

**Total**: ~13 person-days + $200 incentives

**Compared to**: Building without validation would cost ~30 person-days (eng + design + QA). Discovery costs 40% of build cost and dramatically reduces risk.
```

---

## Escalation / Edge cases

**If stakeholders want to skip discovery and "just build it"**:  
- Show the cost comparison: discovery = 40% of build cost, but prevents wasting 100% if wrong
- Ask: "What would make us wrong? What would we learn from discovery that would change our approach?"

**If discovery reveals the problem is NOT real**:  
- Kill it. Don't rationalize weak results into building.
- Celebrate learning fast and cheaply (better than building the wrong thing)

**If discovery reveals a different/bigger problem**:  
- Pivot: reframe the solution to address the real problem
- Example: Interviews reveal users don't care about rebooking, but they DO care about price tracking → shift focus

**If technical spike reveals major blockers**:  
- Descope: what's the MVP version that's feasible?
- Example: Can't get partner bookings → v1 only shows direct bookings (60% of users)

**If usability test shows confusion**:  
- Don't build yet — iterate the design and retest
- Better to spend 3 more days fixing design than shipping confusing UX

**If timeline is too tight (< 1 week)**:  
- Cut scope: focus on the highest-risk assumption only
- Example: Skip usability test, just do customer interviews to validate problem

**If there's no budget for user incentives**:  
- Recruit from your existing user base (offer product credits instead of cash)
- Or: Run guerrilla research (coffee shop intercepts, friends-of-friends)
