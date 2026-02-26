---
name: headcount-plan
description: Build a headcount plan for a team or company with hiring priority, justification per role, and cost model
argument-hint: "[team/function/company] [time period, e.g., 2024, Q2-Q4]"
---

# /headcount-plan

Build a headcount plan for a team, function, or company. The output includes hiring priorities, role justifications, cost model, and hiring velocity assumptions.

---

## Step 1: Gather inputs

**Required:**
- **Scope**: Team, function, or company-wide?
- **Time period**: Q2 2024, Full Year 2024, etc.
- **Current headcount**: How many people today (by role/level)?
- **Strategic goals**: What are we trying to achieve? (revenue growth, product launches, market expansion, etc.)

**Optional but improves output:**
- **Budget envelope**: Total headcount budget (e.g., $5M for 2024)
- **Attrition assumptions**: Expected voluntary + involuntary attrition (typically 10-20%/year)
- **Revenue/ARR targets**: (to calculate revenue per employee, sales capacity, etc.)
- **Hiring velocity**: How many offers/month can we realistically make?

**From PLAYBOOK.md / USER.md:**
- ~~company-name headcount today (current size)
- ~~company-stage (startup/scaling/mature — affects hiring priorities)
- ~~company-strategy (which functions need to scale fastest?)
- ~~budget-constraints (cash runway, profitability targets)

---

## Step 2: Understand the hiring drivers

Why are we hiring? Different drivers = different headcount priorities.

### Common hiring drivers

| Driver | What it means | Hiring focus |
|---|---|---|
| **Revenue growth** | Need more salespeople, account managers, customer success | GTM (sales, marketing, CS) |
| **Product velocity** | Need to ship faster, expand product surface area | Engineering, Product, Design |
| **Scale operations** | Current team is underwater, need more hands | Ops, Support, Finance |
| **New market entry** | Expanding to new geography or segment | Local hires (sales, ops, compliance) |
| **Build new capability** | Don't have a function today (e.g., need Data team, need Legal) | New functions (0→1 hiring) |
| **Backfill attrition** | Replace people who left | Replace like-for-like (same role/level) |

**Rule**: Prioritize hires that directly unblock strategic goals. Support functions (HR, finance, legal) scale slower than revenue-generating or product-building functions.

---

## Step 3: Model current vs future headcount

### Step 3a: Current headcount snapshot

| Function | Current Headcount | Breakdown by Level |
|---|---|---|
| Engineering | 40 | IC: 30, Manager: 8, Director: 2 |
| Product | 8 | IC: 6, Director: 2 |
| Design | 6 | IC: 5, Lead: 1 |
| Sales | 25 | AE: 20, Manager: 4, VP: 1 |
| Marketing | 10 | IC: 8, Manager: 1, VP: 1 |
| Customer Success | 12 | CSM: 10, Manager: 2 |
| Operations | 8 | IC: 6, Manager: 1, VP: 1 |
| Finance | 5 | IC: 3, Manager: 1, CFO: 1 |
| HR | 3 | IC: 2, HRBP: 1 |
| **Total** | **117** | — |

---

### Step 3b: Project attrition

Attrition = people leaving (voluntary + involuntary).

**Industry benchmarks**:
- **Startups (high-growth)**: 15-25% annual attrition
- **Mature tech**: 10-15% annual attrition
- **Enterprise**: 8-12% annual attrition

**Attrition math** (example: 117 people, 15% annual attrition over 12 months):
- Expected departures: 117 × 15% = ~18 people
- Monthly attrition rate: 18 / 12 = 1.5 people/month

**Backfill assumption**: Plan to replace 80-100% of attrition (some roles you might not backfill if priorities shift).

---

### Step 3c: Model net new hires (growth)

**Net new hires** = hires beyond backfilling attrition.

**Example strategic goal**: "Grow engineering team from 40 → 60 to accelerate product velocity."

**Hiring math**:
- Target: 60 engineers (end of year)
- Current: 40 engineers
- Attrition: 40 × 15% = 6 people leave
- **Gross hires needed**: (60 - 40) + 6 = 26 engineering hires in 12 months
- **Monthly hiring rate**: 26 / 12 = ~2 engineers/month

---

## Step 4: Prioritize hires by strategic impact

Rank roles by:
1. **Business impact** (how much does this role unblock revenue or product?)
2. **Urgency** (how soon do we need this person?)
3. **Difficulty** (how hard is it to hire this role?)

### Prioritization matrix

| Role | Impact | Urgency | Difficulty | Priority |
|---|---|---|---|---|
| VP Sales | High | High | High | **P0** (hire now) |
| Senior Engineers (×4) | High | High | Medium | **P0** |
| Product Manager (×2) | High | Medium | Medium | **P1** (Q2) |
| Customer Success Manager (×3) | Medium | Medium | Low | **P2** (Q3-Q4) |
| HR Generalist | Low | Low | Low | **P3** (backlog) |

**P0** = Must hire this quarter (blocks critical goals)  
**P1** = Should hire next quarter (important but not blocking)  
**P2** = Nice to have (hire if capacity allows)  
**P3** = Backlog (defer to next year unless circumstances change)

---

## Step 5: Build the headcount plan

### Headcount plan format

```markdown
## Headcount Plan: [Team/Company] — [Time Period]

**Current headcount**: 117  
**Target headcount (end of period)**: 145  
**Net new hires**: 28  
**Attrition assumption**: 15% (18 departures expected)  
**Gross hires needed**: 28 + 18 = 46 total hires  
**Hiring velocity**: ~4 hires/month (realistic given current recruiting capacity)

---

### Hiring Plan by Function

#### Engineering (40 → 60, net +20)

**Why**: Accelerate product velocity; need to ship 3 major features in 2024.

**Roles to hire**:
- 10× Senior Engineers (IC3-IC4)
- 4× Staff Engineers (IC5) — platform/architecture work
- 3× Engineering Managers (need 2 new teams)
- 3× Backfill attrition

**Hiring priority**: P0 (critical path for product roadmap)

**Timeline**:
- Q1: 5 hires (2 Sr Eng, 1 Staff, 2 EM)
- Q2: 6 hires (4 Sr Eng, 1 Staff, 1 EM)
- Q3: 5 hires (3 Sr Eng, 1 Staff, 1 backfill)
- Q4: 4 hires (3 Sr Eng, 1 backfill)

**Cost**: $3.6M annual comp (avg $180K per engineer × 20 net new)

---

#### Sales (25 → 35, net +10)

**Why**: Revenue target of $50M requires 35 AEs (at $1.5M/AE quota).

**Roles to hire**:
- 8× Account Executives (mid-market segment)
- 2× Sales Engineers (technical presales)

**Hiring priority**: P0 (directly drives revenue)

**Timeline**:
- Q1: 3 AEs
- Q2: 3 AEs + 1 SE
- Q3: 2 AEs + 1 SE
- Q4: Backfill only (no net new)

**Cost**: $1.2M annual comp (avg $120K base × 10 net new; OTE is $240K but we model base)

---

#### Product (8 → 12, net +4)

**Why**: PM:Eng ratio is 1:5 (currently 8 PMs : 40 Engineers). Scaling eng to 60 requires 12 PMs.

**Roles to hire**:
- 3× Senior Product Managers
- 1× Principal PM (platform strategy)

**Hiring priority**: P1 (needed by Q2 to support eng ramp)

**Timeline**:
- Q2: 2 Sr PMs
- Q3: 1 Sr PM + 1 Principal PM

**Cost**: $720K annual comp (avg $180K per PM × 4 net new)

---

#### Customer Success (12 → 18, net +6)

**Why**: CS:ARR ratio is 1:$2M. At $50M ARR target, need 25 CSMs. Phased hiring (don't hire ahead of revenue).

**Roles to hire**:
- 6× Customer Success Managers

**Hiring priority**: P2 (scales with revenue, not ahead of revenue)

**Timeline**:
- Q2: 2 CSMs
- Q3: 2 CSMs
- Q4: 2 CSMs

**Cost**: $480K annual comp (avg $80K per CSM × 6 net new)

---

#### Support Functions (HR, Finance, Ops)

**Why**: Company scales from 117 → 145 people (+24% growth). Support functions scale slower (1:30-50 ratio).

**Roles to hire**:
- 1× HR Generalist (Q3) — current team underwater at 117 people
- 1× Finance Analyst (Q4) — needed for budgeting/forecasting at scale
- 0× Ops hires (defer to 2025)

**Hiring priority**: P2-P3 (not blocking)

**Cost**: $180K annual comp ($90K × 2 hires)

---

### Total Headcount Plan Summary

| Function | Current | Target | Net New | Gross Hires (incl. backfill) | Annual Cost (net new) |
|---|---|---|---|---|---|
| Engineering | 40 | 60 | +20 | 26 | $3.6M |
| Sales | 25 | 35 | +10 | 14 | $1.2M |
| Product | 8 | 12 | +4 | 5 | $720K |
| Customer Success | 12 | 18 | +6 | 8 | $480K |
| Support (HR, Finance) | 16 | 18 | +2 | 3 | $180K |
| **Total** | **117** | **145** | **+28** | **46** | **$6.18M** |

**Budget check**: $6.18M annual comp for net new hires. If budget is $6M, need to cut 1-2 hires or defer to later quarters.
```

---

## Step 6: Model hiring velocity (can we actually hire this fast?)

### Hiring velocity factors

| Stage | Typical Timeline | Notes |
|---|---|---|
| Job req approval | 1-2 weeks | Faster if pre-approved in headcount plan |
| Sourcing candidates | 2-4 weeks | Depends on role difficulty |
| Interview process | 2-3 weeks | 4-6 interviews, scheduling delays |
| Offer → accept | 1 week | Negotiation time |
| Notice period | 2-8 weeks | Varies by country (US: 2 weeks, EU/Asia: 4-8 weeks) |
| **Total: Req → Start date** | **8-16 weeks** | Average ~10 weeks for mid-level roles |

**Hiring capacity constraint**: How many roles can recruiting team handle simultaneously?

**Benchmarks**:
- 1 recruiter can manage ~5 open roles at a time
- If you have 2 recruiters → 10 active searches max at any time
- If headcount plan has 46 gross hires → need 2-3 recruiters for 12 months

**Hiring velocity reality check**:
- Plan says "hire 26 engineers in 12 months" = 2 engineers/month
- Is this realistic given recruiter capacity + engineering interview bandwidth?
- If not: extend timeline OR add more recruiting capacity

---

## Step 7: Cost model (fully-loaded cost per hire)

### Fully-loaded cost formula

**Fully-loaded cost** = Base Salary + Bonus/Equity + Benefits + Taxes + Recruiting Costs + Onboarding

**Example** (Senior Engineer in Singapore):
- Base salary: $140K
- Bonus/equity (annualized): $40K
- Benefits (health, CPF, etc.): $25K (18% of base)
- Employer taxes/CPF: $24K (17% of salary for non-citizens)
- Recruiting cost (amortized): $10K ($140K × 7% fee, amortized over 3 years)
- Onboarding (laptop, training, lost productivity): $5K

**Fully-loaded annual cost**: $244K

**Budget modeling**: Use fully-loaded cost, not just base salary. If you budget $6M for 28 hires, that's $214K per hire fully-loaded — need to ensure comp + benefits + recruiting fit within that.

---

## Output: Headcount Plan Document

```markdown
# Headcount Plan: [Company/Team] — [Year]

**Prepared by**: [Your name]  
**Date**: [YYYY-MM-DD]  
**Status**: Draft | Approved

---

## Executive Summary

- **Current headcount**: 117
- **Target headcount** (EOY): 145
- **Net new hires**: +28 (24% growth)
- **Gross hires** (incl. attrition backfill): 46
- **Total annual cost** (net new): $6.18M
- **Hiring velocity**: ~4 hires/month (46 / 12)

**Strategic rationale**: Scale engineering (product velocity) + sales (revenue growth). Support functions scale slower.

---

## Headcount by Function

[See detailed breakdown in Step 5 above]

---

## Hiring Timeline (Quarterly)

| Quarter | Gross Hires | Functions | Cost |
|---|---|---|---|
| Q1 | 10 | Eng (5), Sales (3), Backfill (2) | $1.8M |
| Q2 | 14 | Eng (6), Sales (4), Product (2), CS (2) | $2.4M |
| Q3 | 12 | Eng (5), Sales (2), Product (2), CS (2), HR (1) | $1.6M |
| Q4 | 10 | Eng (4), CS (2), Finance (1), Backfill (3) | $1.4M |
| **Total** | **46** | — | **$7.2M** (incl. backfill) |

---

## Hiring Velocity & Recruiting Capacity

**Current recruiting team**: 2 recruiters (can handle ~10 active searches at a time)

**Recommended**: Add 1 contract recruiter for Q2-Q3 (peak hiring period).

**Bottlenecks**:
- Engineering interviews (need 4-6 interviewers per candidate × 2 hires/month = ~12 interviews/month)
- Hiring manager bandwidth (need dedicated time for sourcing review + debriefs)

---

## Budget

| Item | Amount |
|---|---|
| Base salary (net new hires) | $4.5M |
| Bonus/equity (annualized) | $1.2M |
| Benefits + employer taxes | $1.1M |
| Recruiting fees (7% of base) | $315K |
| Onboarding (laptops, training) | $140K |
| **Total fully-loaded cost** | **$7.27M** |

**Budget check**: If approved budget is $6.5M, need to cut ~3-4 hires or defer to Q4/next year.

---

## Risks & Mitigation

| Risk | Likelihood | Mitigation |
|---|---|---|
| Recruiting can't keep pace | Medium | Add contract recruiter Q2-Q3 |
| Key hires (VP Sales, Principal Eng) take >3 months | High | Start searches in Q1 (even if start date is Q2) |
| Attrition higher than 15% | Medium | Monitor monthly; adjust backfill plan |
| Budget overrun | Low | Monthly finance review; pause non-P0 hires if needed |

---

## Success Metrics

| Metric | Current | Target (EOY) |
|---|---|---|
| Total headcount | 117 | 145 |
| Engineering headcount | 40 | 60 |
| Revenue per employee | $350K | $345K (slightly lower due to ramp time) |
| Time-to-fill (avg) | 12 weeks | <10 weeks |
| Offer acceptance rate | 75% | >80% |

---

## Approval

- [ ] CEO
- [ ] CFO
- [ ] VP Engineering
- [ ] VP Sales
```

---

## Escalation / Edge cases

**If budget is cut mid-year**:
- Pause P2/P3 hires immediately
- Protect P0 hires (critical path)
- Revisit headcount plan quarterly

**If attrition spikes unexpectedly**:
- Increase backfill budget
- Diagnose root cause (bad manager? comp not competitive? strategy unclear?)
- Don't just hire more — fix the retention problem

**If key hire (VP-level) takes >6 months**:
- Interim solution: promote internal or hire contract executive
- Don't leave role open indefinitely (creates leadership vacuum)

**If recruiting team is underwater**:
- Add contract recruiters (faster than hiring FTE)
- Slow down hiring velocity (better to hire slower than burn out recruiting team)

**If headcount plan is way off (hired 20, planned 46)**:
- Diagnose: Is it recruiting capacity? Interview bandwidth? Offer competitiveness?
- Adjust plan for next quarter (don't let unrealistic plans persist)
