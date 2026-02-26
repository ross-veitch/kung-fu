---
name: architecture-review
description: Review system design or architecture proposal against key dimensions
argument-hint: "[architecture doc or diagram] [system description]"
---

# /architecture-review

Evaluate a system design or architecture proposal for soundness, operability, evolvability, and cost.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Architecture description (doc, diagram, or narrative)
- Problem being solved
- Scale expectations (users, requests/sec, data volume)

**Optional but improves output**:
- Existing system (if this is a migration/redesign)
- Team size and experience level
- Compliance requirements (GDPR, HIPAA, PCI)
- Budget constraints
- Timeline/phasing plan

**From PLAYBOOK.md** (load automatically if present):
- Standard tech stack
- Approved cloud providers
- Org patterns (microservices vs monolith, event-driven, etc.)

**If scale expectations unavailable**: Assume moderate scale (10K-100K users, <1000 req/sec) and flag the assumption.

---

## Step 2: Evaluate across four dimensions

### Correctness — Does it actually solve the problem?
- Does the design address all stated requirements?
- Are there unstated requirements being ignored? (observability, security, compliance)
- Consistency model: does it match the use case? (eventual vs strong)
- Data model: does it support the queries needed?
- Are there single points of failure?
- Race conditions, distributed system pitfalls (split brain, clock skew)

### Operability — Can a team run this at 2am?
- Deployment complexity (how many moving parts?)
- Observability: metrics, logs, traces — is it debuggable?
- Failure modes: what breaks first? How do you detect it? How do you recover?
- Runbook-ready: can on-call fix common issues without deep system knowledge?
- Configuration management (secrets, feature flags, env-specific config)
- Backup and restore: data loss scenarios covered?
- Scaling: what do you do when traffic 10x's overnight?

### Evolvability — What's hard to change later?
- Hard boundaries: can components evolve independently?
- Data migration path: schema changes, data backfill
- API versioning strategy
- Tech debt hotspots: where are the shortcuts that will hurt later?
- Testing strategy: can you refactor safely?
- Dependency management: pinned versions, security updates

### Cost — Compute, bandwidth, operational overhead
- Infrastructure cost: compute, storage, network
- Operational cost: people-hours to run and maintain
- Efficiency: are you over-provisioning? Under-utilizing resources?
- Cost scaling: linear with users? Exponential?
- Hidden costs: vendor lock-in, data egress fees, compliance tooling

---

## Step 3: Classify health per dimension

| Dimension | Status | Meaning |
|-----------|--------|---------|
| Correctness | 🟢 GREEN | Solves the problem correctly |
| | 🟡 YELLOW | Addressable gaps or assumptions |
| | 🔴 RED | Fundamental issues, won't work |
| Operability | 🟢 GREEN | Team can run this 24/7 |
| | 🟡 YELLOW | Needs tooling/docs before prod |
| | 🔴 RED | Undebuggable, fragile, complex |
| Evolvability | 🟢 GREEN | Easy to change and extend |
| | 🟡 YELLOW | Some locked-in decisions |
| | 🔴 RED | Painted into a corner |
| Cost | 🟢 GREEN | Efficient and sustainable |
| | 🟡 YELLOW | Acceptable with optimizations |
| | 🔴 RED | Prohibitively expensive |

---

## Output

```markdown
# Architecture Review: [System Name]

## Overview
[1-2 sentence summary of what this system does and the design approach]

---

## Correctness: [🟢 / 🟡 / 🔴]

**Assessment**: [Does it solve the problem?]

**Gaps**:
- [Missing requirement or concern]
- [Consistency issue or race condition]

**Recommendations**:
- [Specific fix or addition]

---

## Operability: [🟢 / 🟡 / 🔴]

**Assessment**: [Can a team run this at 2am?]

**Concerns**:
- [Debuggability issue]
- [Failure mode not handled]
- [Deployment complexity]

**Recommendations**:
- [Specific improvement]
- [Observability to add]

---

## Evolvability: [🟢 / 🟡 / 🔴]

**Assessment**: [What's hard to change later?]

**Locked-in decisions**:
- [Tight coupling or hard-to-change choice]
- [Missing abstraction or boundary]

**Recommendations**:
- [How to improve flexibility]

---

## Cost: [🟢 / 🟡 / 🔴]

**Assessment**: [Efficient and sustainable?]

**Cost breakdown** (estimated per month at stated scale):
- Compute: $[amount]
- Storage: $[amount]
- Network: $[amount]
- People (operational overhead): [hours/week]
- Total: $[amount]/mo

**Optimizations**:
- [Potential cost reduction]

---

## Overall: [APPROVE / APPROVE WITH CHANGES / REWORK NEEDED]

**Summary**: [1-2 sentences on overall readiness]

**Top 3 priorities before shipping**:
1. [Most critical item]
2. [Second priority]
3. [Third priority]
```

---

## Escalation / Edge cases

**RED flag immediately**:
- No error handling or retry logic in distributed system
- Single point of failure with no backup/failover
- Data loss scenarios not addressed (no backups, no replication)
- Strong consistency required but design assumes eventual consistency (or vice versa)
- Cost scaling is exponential with users (unbounded growth)

**Request more detail when**:
- Scale expectations are vague or unrealistic ("millions of users" with no supporting numbers)
- Data model doesn't match access patterns described
- Technology choices unexplained (why this database? why this queue?)

**Out of scope** (don't review):
- Code-level implementation details (that's code-review)
- UI/UX design (unless it impacts architecture)
- Project management (timeline, resourcing) unless it affects technical feasibility

**Note for Ross/Wego context**:
- If this is customer-facing (Wego marketplace, WegoBeds, WegoPro): operability and cost are critical — team is lean, margins matter.
- MENA region: consider data sovereignty (Dubai/Saudi requirements), payment provider availability, RTL support if relevant.
