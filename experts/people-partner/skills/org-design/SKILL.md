---
name: org-design
description: >
  Org design frameworks including spans and layers, RACI, team topologies, 
  centralized vs decentralized models, and when to restructure. Use when 
  designing or reviewing org structures, diagnosing org dysfunction, or 
  planning a restructure.
---

# Org Design

## Spans and Layers

**Span of control** = number of direct reports a manager has  
**Layers** = levels between CEO and frontline employees

### Healthy span benchmarks

| Level | Typical Span | Notes |
|---|---|---|
| CEO | 5-8 | Depends on company size; 10+ is hard to manage well |
| Exec (VP/SVP) | 5-10 | Mix of managers + senior ICs common |
| Director | 6-12 | Mostly managers reporting |
| Manager | 5-10 | Mostly ICs reporting; 12+ is too wide for coaching |
| Tech Lead / Staff IC | 0-3 | Informal influence, not formal management |

**Too narrow** (span <4): Micromanagement risk, slow decision-making, creates unnecessary layers  
**Too wide** (span >12): Managers become admins, no time for coaching or strategy

### Layer efficiency

**Startup (0-50 people)**: 2-3 layers max (CEO → manager → IC)  
**Scaling (50-500 people)**: 3-4 layers (CEO → VP → Director/Manager → IC)  
**Enterprise (500+ people)**: 4-6 layers (more layers = slower decisions, but sometimes necessary for complexity)

**Rule**: Every added layer slows decision speed by ~30% and distorts information by ~20%. Add layers only when the alternative (too-wide spans) is worse.

---

## RACI (Decision Rights Framework)

RACI clarifies who does what in a decision or process.

**R** = Responsible (does the work)  
**A** = Accountable (owns the outcome, final decision)  
**C** = Consulted (provides input before decision)  
**I** = Informed (told after decision is made)

### RACI rules

1. **Every task/decision has exactly ONE person who is Accountable** (not a committee)
2. **Multiple people can be Responsible** (doing the work)
3. **Consulted = two-way communication** (they give input, you listen)
4. **Informed = one-way communication** (you tell them, they don't need to respond)

**Anti-pattern**: Too many Cs → consensus-driven gridlock  
**Anti-pattern**: No clear A → decisions don't get made

### Example RACI for "Launching a new product feature"

| Activity | PM | Eng Lead | Designer | Marketing | CEO |
|---|---|---|---|---|---|
| Define product requirements | A | C | C | I | I |
| Design UI/UX | C | I | A/R | I | I |
| Build feature | C | A | I | I | I |
| Write launch messaging | C | I | C | A/R | I |
| Approve launch | I | I | I | I | A |

---

## Team Topologies (Conway's Law Applied)

Conway's Law: "Organizations design systems that mirror their communication structure."

If your teams are siloed, your product will be siloed. If your teams collaborate well, your product will integrate well.

### Four fundamental team types (from *Team Topologies* by Skelton & Pais)

#### 1. Stream-Aligned Teams
**Purpose**: Deliver value directly to customers (features, products, user journeys)  
**Structure**: Cross-functional (eng, design, PM, sometimes data/QA embedded)  
**Ownership**: End-to-end ownership of a product area or customer segment  
**Example**: "Booking Flow Team" owns checkout experience from search → payment

#### 2. Platform Teams
**Purpose**: Build internal tools/services that stream-aligned teams consume  
**Structure**: Engineering-heavy, product-minded (treat internal teams as customers)  
**Ownership**: APIs, infrastructure, shared services  
**Example**: "Payments Platform Team" provides payment API to all product teams

#### 3. Enabling Teams
**Purpose**: Help other teams adopt new practices, tools, or technologies  
**Structure**: Small, specialist teams (SRE, security, data engineering enablement)  
**Ownership**: Consulting, training, embedding temporarily with teams  
**Example**: "DevOps Enablement Team" helps product teams adopt CI/CD

#### 4. Complicated-Subsystem Teams
**Purpose**: Build and maintain systems that require deep specialist knowledge  
**Structure**: Specialists only (ML engineers, algorithm experts, hardware engineers)  
**Ownership**: Components too complex for stream-aligned teams to own  
**Example**: "Search Ranking Team" owns the algorithm; product teams consume the API

### When to use which topology

| Company Stage | Recommended Topology |
|---|---|
| Early (0-50 people) | Mostly stream-aligned teams; no platform yet |
| Scaling (50-200 people) | Stream-aligned + 1-2 platform teams (shared services) |
| Mature (200+ people) | Stream-aligned + platform + enabling teams; introduce complicated-subsystem teams as needed |

**Anti-pattern**: Creating platform teams too early (pre-product-market fit) → teams build tools no one uses.

---

## Centralized vs Decentralized Structures

### Centralized (functional hierarchy)

**Structure**: All engineers report to VP Eng, all designers to VP Design, all PMs to VP Product  
**Pros**: Deep skill development, efficient resource allocation, consistent standards  
**Cons**: Slower decision-making, coordination overhead, weak product ownership  
**When to use**: Early-stage (0-50 people), or industries with deep functional expertise needs (finance, regulated industries)

### Decentralized (product-aligned squads)

**Structure**: Cross-functional teams own a product area; each team has eng + design + PM embedded  
**Pros**: Fast decisions, strong product ownership, clear accountability  
**Cons**: Duplicate work across teams, inconsistent standards, harder to develop deep functional expertise  
**When to use**: Scaling stage (50-500 people), especially for consumer tech, SaaS, marketplaces

### Hybrid (matrix)

**Structure**: People have two bosses — a functional manager (for development, comp, career) and a product manager (for day-to-day work)  
**Pros**: Balances functional depth with product focus  
**Cons**: Role confusion, conflicting priorities, slow decisions when managers disagree  
**When to use**: Large companies (500+ people) with multiple product lines

**Warning**: Matrix structures are hard to execute well. Only use if you have strong, aligned leadership and clear decision protocols.

---

## When to Restructure (and When Not To)

### Good reasons to restructure

1. **Decision-making is too slow** (too many layers, unclear ownership)
2. **Spans are unhealthy** (managers have 15 reports and can't coach, or <4 reports and micromanage)
3. **Strategy has shifted** (new product lines, new markets, M&A integration)
4. **Cross-team coordination is breaking** (duplicate work, missed dependencies, no one owns end-to-end outcomes)
5. **Key talent is leaving because of org dysfunction** (unclear roles, political gridlock)

### Bad reasons to restructure

1. **A new leader wants to "make their mark"** (change for change's sake destroys trust)
2. **One team is underperforming** (fix the team, don't reorganize the company)
3. **A competitor has a different structure** (their structure fits their strategy, not yours)
4. **To avoid a difficult performance conversation** (don't reorganize to shuffle out underperformers — manage them out directly)

**Rule**: Restructuring is expensive (6-12 months of productivity loss). Only restructure if the dysfunction is structural, not execution-based.

---

## Org Dysfunction Patterns (What to Look For)

### 1. Too many layers (bureaucracy)
**Symptom**: Decisions take weeks; information is distorted by the time it reaches the top  
**Fix**: Flatten — reduce layers, widen spans where managers are strong

### 2. Too many managers (spans too narrow)
**Symptom**: Managers are bored, micromanaging, or creating work to justify their role  
**Fix**: Consolidate management; some managers become ICs or leave

### 3. Unclear ownership (no single Accountable person)
**Symptom**: Decisions don't get made; everyone's consulted, no one decides  
**Fix**: RACI exercise — name the A for every key decision

### 4. Siloed teams (Conway's Law problem)
**Symptom**: Features require 5 teams to coordinate; integration is broken; duplicate work  
**Fix**: Reorganize around product streams (end-to-end ownership) instead of functional silos

### 5. Matrix confusion (dual reporting lines)
**Symptom**: People don't know whose priorities to follow; managers fight over resources  
**Fix**: Clarify decision rights (functional manager owns career/comp; product manager owns day-to-day work)

### 6. Too much change (restructure fatigue)
**Symptom**: Teams are cynical about "yet another reorg"; productivity drops every time structure changes  
**Fix**: Commit to org stability for 12-18 months; let teams execute

---

## Org Design Process (Step-by-Step)

### Step 1: Start with strategy
What are we trying to achieve in the next 12-24 months? Which capabilities matter most? What customer outcomes are we optimizing for?

### Step 2: Define key work streams
What are the major product areas / customer segments / value streams? These become the foundation for team structure.

### Step 3: Map current vs future structure
Draw the current org chart. Draw the desired org chart. What's the gap?

### Step 4: Assess talent
Who are the strong leaders? Who can grow into bigger roles? Who is in the wrong seat?

### Step 5: Design the transition
How do we move from current → future without destroying productivity?  
- Phase 1: Announce new structure, clarify roles  
- Phase 2: People transition into new roles  
- Phase 3: Teams stabilize (6-12 months)

### Step 6: Communicate clearly
**What's changing**: New structure, why now, what stays the same  
**Why**: Strategic rationale, business outcomes we're optimizing for  
**Impact on individuals**: Who reports to whom, role changes, timeline

**Rule**: Over-communicate. People need to hear the rationale 3-5 times before they internalize it.

---

## Org Chart Notation Best Practices

- **Solid line** = direct report  
- **Dotted line** = indirect report (matrix structure)  
- **Bold names** = new hires or promotions  
- **[OPEN]** = role not yet filled  
- **Annotate spans** = show number of direct reports per manager

**Example**:
```
CEO
├── VP Engineering (span: 7)
│   ├── Director, Platform (span: 10)
│   └── Director, Product Eng (span: 12)
├── VP Product (span: 5)
└── VP Sales (span: 8)
```

---

## Post-Restructure: What to Monitor

### Leading indicators (first 30 days)
- **Clarity**: Do people know what they own? (Survey: "I understand my role" — target >80% agree)
- **Morale**: Is there panic or calm? (Track Slack sentiment, 1:1 feedback)

### Lagging indicators (90-180 days)
- **Decision speed**: Are decisions getting made faster? (Track time from proposal → decision)
- **Attrition**: Are key people leaving? (Track voluntary attrition by team)
- **Cross-team coordination**: Is collaboration improving? (Track # of dependencies resolved vs missed)

**Rule**: Give the new structure 6 months before declaring success or failure. Early turbulence is normal.
