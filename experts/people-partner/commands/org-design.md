---
name: org-design
description: Analyse or design an org structure for a team or function, with rationale for spans/layers and transition plan
argument-hint: "[team/function name] [current structure or 'from scratch']"
---

# /org-design

Analyse an existing org structure or design a new one for a team, function, or company. The output includes the org chart, rationale for spans/layers decisions, transition plan, and risks.

---

## Step 1: Understand the business context

**Required:**
- **Scope**: What team/function/company are we designing for?
- **Strategic goal**: What are we trying to achieve in the next 12-24 months?
- **Current structure** (if redesigning): Org chart, team sizes, reporting lines

**Optional but improves output:**
- **Pain points**: What's broken? (slow decisions, unclear ownership, silos, etc.)
- **Team size**: How many people today? Expected growth?
- **Key talent**: Who are the strong leaders? Who can grow?
- **Budget constraints**: Headcount budget, comp budget

**From PLAYBOOK.md / USER.md:**
- ~~company-name org chart (if available)
- ~~company-stage (startup/scaling/mature — affects optimal structure)
- ~~company-strategy (which capabilities matter most?)
- ~~leadership-team (who are the key decision-makers?)

---

## Step 2: Choose the org model (centralized vs decentralized vs hybrid)

### Centralized (functional hierarchy)

**Structure**: All engineers → VP Eng, all designers → VP Design, all PMs → VP Product

**When to use**:
- Early-stage (0-50 people): Need functional depth, can't afford duplication
- Deep expertise industries (finance, healthcare, regulated sectors)

**Pros**:
- Deep functional skill development
- Efficient resource allocation (no duplication)
- Consistent standards across the company

**Cons**:
- Slow cross-functional decision-making
- Weak product ownership (features require 3 teams to coordinate)
- Coordination overhead

---

### Decentralized (product-aligned squads)

**Structure**: Cross-functional teams own a product area (each team has eng + design + PM embedded)

**When to use**:
- Scaling stage (50-500 people)
- Consumer tech, SaaS, marketplaces (fast iteration required)

**Pros**:
- Fast decisions (team owns end-to-end)
- Strong product ownership
- Clear accountability

**Cons**:
- Duplicate work across teams (each team builds similar components)
- Inconsistent standards (design/eng patterns diverge)
- Harder to develop deep functional expertise

---

### Hybrid (matrix or functional + embedded)

**Structure**: 
- **Matrix**: People have two bosses (functional manager + product manager)
- **Functional + embedded**: Functional teams, but people embed with product teams 80% of the time

**When to use**:
- Large companies (500+ people) with multiple product lines

**Pros**:
- Balances functional depth with product focus

**Cons**:
- Role confusion (two bosses)
- Slow decisions (managers must align)
- Hard to execute well (requires strong, aligned leadership)

**Warning**: Matrix structures fail more often than they succeed. Only use if you have:
1. Strong, aligned leadership
2. Clear decision protocols (who breaks ties?)
3. High trust between functional and product leaders

---

## Step 3: Design spans and layers

### Span of control

| Role | Typical Span | Notes |
|---|---|---|
| CEO | 5-8 | More than 10 is hard to manage |
| VP/Exec | 5-10 | Mix of managers + senior ICs |
| Director | 6-12 | Mostly managers |
| Manager | 5-10 | Mostly ICs; 12+ is too wide |

**Too narrow** (<4): Micromanagement risk, unnecessary layers  
**Too wide** (>12): Managers become admins, no coaching time

### Layer efficiency

| Company Size | Recommended Layers | Example |
|---|---|---|
| 0-50 people | 2-3 layers | CEO → Manager → IC |
| 50-200 people | 3-4 layers | CEO → VP → Manager → IC |
| 200-500 people | 4-5 layers | CEO → VP → Director → Manager → IC |
| 500+ people | 5-6 layers | CEO → SVP → VP → Director → Manager → IC |

**Rule**: Every added layer slows decisions by ~30%. Only add layers when the alternative (too-wide spans) is worse.

---

## Step 4: Map decision rights (RACI)

Clarify who makes what decisions in the new structure.

### Example RACI for product decisions

| Decision | PM | Eng Lead | Designer | CEO |
|---|---|---|---|---|
| Define product roadmap | A | C | C | I |
| Approve feature spec | A | C | C | I |
| Approve design | C | I | A | I |
| Prioritize backlog | A | C | C | I |
| Approve major architectural changes | C | A | I | I |
| Approve launch | A | C | I | I |

**A** = Accountable (owns the decision)  
**C** = Consulted (input before decision)  
**I** = Informed (told after decision)

**Rule**: Every decision has exactly ONE person who is Accountable. No committees.

---

## Step 5: Design the org chart

### Org chart format

```
CEO
├── VP Engineering (span: 7)
│   ├── Director, Platform Engineering (span: 10)
│   │   ├── Sr Eng, Infrastructure (IC)
│   │   ├── Sr Eng, Data Platform (IC)
│   │   └── [8 more engineers]
│   ├── Director, Product Engineering (span: 12)
│   │   ├── Engineering Manager, Booking Flow (span: 6)
│   │   └── Engineering Manager, Search & Discovery (span: 6)
│   └── [5 more direct reports]
├── VP Product (span: 5)
│   ├── Senior PM, Booking Experience
│   ├── Senior PM, Search & Discovery
│   └── [3 more PMs]
└── VP Sales (span: 8)
    └── [8 sales reps/managers]
```

**Notation**:
- **(span: N)** = number of direct reports
- **[OPEN]** = role not yet filled
- **Bold names** = new hires or promotions
- **Dotted line** (if matrix) = indirect report

---

## Step 6: Assess talent against structure

Map current people to new roles. Identify gaps.

| New Role | Current Person | Fit? | Action |
|---|---|---|---|
| VP Engineering | Jane Smith (current Dir Eng) | ✅ Ready now | Promote |
| Director, Platform Eng | John Doe (current Sr Eng) | ⚠️ Ready in 6 months | Interim role or external hire |
| Director, Product Eng | [OPEN] | ❌ No internal candidate | External hire (start search now) |
| Engineering Manager, Booking | Sarah Lee (current Sr Eng) | ✅ Ready with coaching | Promote + provide mgmt training |

**Talent decisions**:
- **Promote internal** if ready or nearly ready (better retention, faster ramp)
- **Hire external** if no internal candidate or need fresh perspective
- **Interim role** if person is promising but not ready (e.g., "Acting Director" for 6 months)

---

## Step 7: Plan the transition

### Transition phases

#### Phase 1: Announce (Week 1)
- Leadership announces new structure
- Explain: **What's changing, why now, what stays the same**
- Share org chart (new reporting lines)
- Q&A session (address concerns)

#### Phase 2: Transition (Weeks 2-4)
- People move into new roles
- Managers hold 1:1s with all direct reports (clarify expectations)
- Update HRIS (new titles, reporting lines)

#### Phase 3: Stabilize (Months 2-6)
- New teams execute
- Monitor: decision speed, attrition, morale
- Address friction points as they surface

**Timeline**: Allow 6-12 months for new structure to stabilize. Don't re-org again in <12 months.

---

## Step 8: Communication plan

### Stakeholders to brief (in order)

1. **Leadership team** (C-suite): Brief first, get alignment before announcing
2. **Managers** (directors, senior ICs): Brief 1 day before company announcement, explain their role
3. **All employees**: Company-wide announcement (email + all-hands)
4. **Individuals impacted** (role changes, new manager): 1:1 conversations same day as announcement

### Announcement template

```markdown
Subject: Org Structure Update — [Function/Team Name]

Team,

I'm writing to share an update to our [team/function] org structure, effective [date].

**Why we're making this change**:
[1-2 sentences: strategic rationale. Example: "As we scale from 100 → 200 people this year, we need clearer ownership and faster decision-making."]

**What's changing**:
- [Change 1: e.g., "Engineering is splitting into two teams: Platform and Product Engineering"]
- [Change 2: e.g., "Jane Smith is promoted to VP Engineering"]
- [Change 3: e.g., "We're hiring a Director of Product Engineering (search starts this week)"]

**What's staying the same**:
- [Continuity message: e.g., "Our product roadmap and company strategy are unchanged."]
- [Reassurance: e.g., "No one is losing their job as part of this change."]

**What this means for you**:
- [If your manager is changing]: You'll now report to [New Manager]. They'll reach out to schedule a 1:1 this week.
- [If your role is changing]: [Explain new responsibilities]
- [If nothing changes for you]: Your day-to-day work and reporting line remain the same.

**New org chart**: [Link to chart or attach image]

**Q&A session**: [Date/time] — optional to attend, but encouraged if you have questions.

I'm confident this structure will help us [strategic outcome: move faster, scale effectively, etc.]. Thank you for your flexibility as we make this transition.

[Your name]
```

---

## Output: Org Design Document

```markdown
# Org Design: [Team/Function Name]

**Author**: [Your name]  
**Date**: [YYYY-MM-DD]  
**Status**: Draft | In Review | Approved

---

## Business Context

**Strategic goal**: [What we're trying to achieve in next 12-24 months]

**Current state**:
- Team size: [X people]
- Structure: [Centralized / Decentralized / Hybrid]
- Pain points: [What's broken?]

---

## Recommended Structure

**Model**: [Centralized / Decentralized / Hybrid] — [1 sentence rationale]

**Org chart**: [See attached or below]

```
CEO
├── VP Engineering (span: 7)
│   ├── Director, Platform (span: 10)
│   └── Director, Product Eng (span: 12)
├── VP Product (span: 5)
└── VP Sales (span: 8)
```

**Spans**: [Summary of span decisions]
- VP Eng: 7 reports (within healthy range of 5-10)
- Directors: 10-12 reports (acceptable for senior managers; on the high end)

**Layers**: 4 layers (CEO → VP → Director → IC) — appropriate for a 150-person company

---

## Key Changes

| Change | Rationale |
|---|---|
| Engineering splits into Platform + Product teams | Separate infrastructure work (platform) from feature work (product); reduces coordination overhead |
| Jane Smith promoted to VP Engineering | Ready now; has led the team informally for 6 months |
| Hire Director of Product Engineering | No strong internal candidate; need external hire |

---

## Talent Mapping

| New Role | Current Person | Fit? | Action |
|---|---|---|---|
| VP Engineering | Jane Smith | ✅ Ready | Promote |
| Director, Platform | John Doe | ⚠️ Almost ready | Promote + coaching |
| Director, Product Eng | [OPEN] | ❌ No candidate | Hire externally |

---

## Decision Rights (RACI)

| Decision | PM | Eng Lead | Designer | VP Eng |
|---|---|---|---|---|
| Define roadmap | A | C | C | I |
| Approve architecture | C | A | I | C |
| Approve design | C | I | A | I |

**A** = Accountable | **C** = Consulted | **I** = Informed

---

## Transition Plan

| Phase | Timeline | Actions |
|---|---|---|
| **Announce** | Week 1 | Leadership brief → manager brief → all-hands announcement |
| **Transition** | Weeks 2-4 | People move into new roles; 1:1s with all reports |
| **Stabilize** | Months 2-6 | Monitor decision speed, attrition, morale; address friction |

**Key dates**:
- [Date]: Leadership approval
- [Date]: Manager briefing
- [Date]: Company announcement
- [Date]: New structure goes live

---

## Risks & Mitigation

| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| John Doe (promoted to Director) struggles | Medium | High | Provide exec coaching + weekly 1:1s with VP for first 90 days |
| Director search takes >3 months | High | Medium | Interim solution: Jane Smith covers both Platform + Product until hire is made |
| Attrition spikes (uncertainty) | Low | High | Over-communicate rationale; 1:1s with all key people week 1 |

---

## Success Metrics (6-month check-in)

| Metric | Current | Target (6 months) |
|---|---|---|
| Decision speed (proposal → decision) | 3 weeks | <1 week |
| Voluntary attrition | 10% | <12% (acceptable during reorg) |
| eNPS (employee Net Promoter Score) | 25 | >30 |
| Manager satisfaction ("I have clear decision authority") | 60% | >80% |
```

---

## Escalation / Edge cases

**If leadership disagrees on structure**:
- Present 2-3 options with explicit tradeoffs
- Run a decision-making session (not endless debate)
- CEO breaks the tie

**If key person threatens to quit over reorg**:
- 1:1 conversation: understand their concern (role change? new manager? loss of status?)
- If retention-critical: adjust structure to keep them (rare)
- If not: let them leave (don't let one person hold the org hostage)

**If structure is too complex (>6 layers, matrix everywhere)**:
- Simplify ruthlessly
- Default to decentralized (product squads) unless you have a compelling reason for centralized

**If team is too small to justify new structure**:
- Don't over-engineer
- Rule: Don't add a layer until you have >40-50 people in a function

**If reorg happens <12 months after last reorg**:
- Strongly discourage (restructure fatigue)
- Only proceed if there's a genuine business crisis (not just a new leader wanting to "make their mark")
