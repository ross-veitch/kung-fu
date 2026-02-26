---
name: delegate
description: Structure a delegation using the Mochary Method framework
argument-hint: "[task to delegate] [optional: available team members]"
---

# /delegate

Structure a delegation with clear owner, scope, deliverable, timeline, and success criteria.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Task to delegate (what needs to get done?)
- Why it matters (context for the delegate)
- Available team (who could own this?)

**Optional but improves output**:
- Deadline or time constraint
- Quality bar (good enough vs perfect)
- Budget or resource constraints
- Dependencies (what needs to happen first? who else is involved?)

**From PLAYBOOK.md / USER.md** (load automatically if present):
- Team roster with roles and strengths
- Delegation preferences (who handles what domain)
- Recurring delegation patterns

**If team is unknown**: Structure the delegation spec anyway — principal can assign the owner.

---

## Step 2: Choose the right delegate

**Selection criteria**:

| Factor | Question |
|--------|----------|
| **Capability** | Can they do this? (skill + experience) |
| **Capacity** | Do they have bandwidth? (workload check) |
| **Growth** | Would this stretch them productively? (development opportunity) |
| **Context** | Do they already have the context? (efficiency) |
| **Authority** | Do they have the access and authority needed? |

**If no single delegate fits**: Consider splitting the task or pairing people.

---

## Step 3: Structure the delegation (Mochary Method)

The Mochary Method delegation framework ensures clarity:

1. **Owner**: One person. Not "the team." One name.
2. **Scope**: What's included and what's NOT included (explicit boundaries).
3. **Deliverable**: What does "done" look like? Be concrete — a document, a decision, a shipped feature, a report.
4. **Timeline**: Deadline + any intermediate checkpoints.
5. **Check-in cadence**: How often you'll sync (daily, twice/week, weekly).
6. **Success criteria**: How will you evaluate if this was done well?
7. **Authority level**: What can they decide alone vs what needs your approval?

**Authority levels**:
- **Level 1**: Do exactly as I say (minimal autonomy)
- **Level 2**: Research and recommend; I decide (they propose, you approve)
- **Level 3**: Decide and inform me (they own it, you stay in the loop)
- **Level 4**: Decide and act; I trust you (full delegation — only escalate if off-track)

---

## Output

```markdown
# Delegation: [Task Title]

## Owner
**Name**: [Who owns this]
**Why them**: [Capability + context fit]

---

## Scope

**In scope**:
- [Specific deliverable 1]
- [Specific deliverable 2]
- [Specific deliverable 3]

**Out of scope**:
- [What they should NOT do or worry about]
- [Adjacent task that's separate]

---

## Deliverable
**What "done" looks like**:
[Concrete description — "a 5-slide deck with Q1 financials, approved by CFO" not "prepare something on financials"]

**Format**: [Document / presentation / code / decision / email / etc.]

---

## Timeline

**Deadline**: [Date]

**Checkpoints**:
- [Date]: [Milestone — e.g., "Draft outline shared for feedback"]
- [Date]: [Milestone — e.g., "First draft complete"]
- [Date]: [Milestone — e.g., "Final version delivered"]

**Check-in cadence**: [Daily standup / Twice weekly / Weekly sync]

---

## Authority Level: [1 / 2 / 3 / 4]

**They can decide alone**:
- [Decision type]
- [Decision type]

**They need your approval for**:
- [Decision type — e.g., spend over $X, external communication, scope changes]

---

## Success Criteria

**How we'll evaluate**:
- [ ] [Specific measurable criterion]
- [ ] [Quality bar — e.g., "no factual errors, reviewed by legal"]
- [ ] [Timeline met]
- [ ] [Stakeholder satisfied]

---

## Context for Delegate

**Background**:
[1-2 paragraphs: why this matters, what's the bigger picture, what they need to know]

**Resources**:
- [Link to relevant doc]
- [Person to talk to for context]
- [Data source]

**Pitfalls to avoid**:
- [Common mistake in this type of task]
- [Political landmine or sensitive area]

---

## Delegation Message

```
[Name],

I'd like you to own [task].

**What**: [One sentence — what needs to be done]
**Why**: [One sentence — why it matters]
**Deliverable**: [What "done" looks like]
**Deadline**: [When]
**Authority**: [What you can decide vs what needs my input]

Checkpoints:
- [Date]: [What's due]
- [Date]: [What's due]

Let me know if you have questions or need anything to get started.

Ross
```
```

---

## Escalation / Edge cases

**Don't delegate if**:
- **Only principal can do it**: Board communication, investor relationships, strategic decisions that require CEO judgment
- **Sensitive personnel matters**: Firing, performance issues, compensation (unless delegated to HR with clear guidance)
- **Reputational risk**: Public-facing decisions where principal's judgment is the product

**Re-delegate if**:
- Delegate is blocked and can't make progress
- Scope changed significantly (re-scope before continuing)
- Timeline is blown and delegate didn't flag it

**Common delegation failures**:
- **Vague deliverable**: "Look into this" → no clear definition of done
- **No checkpoints**: Finding out it's off-track on deadline day
- **Wrong authority level**: Delegate afraid to make decisions, or makes decisions they shouldn't
- **Missing context**: Delegate has to reverse-engineer why this matters

**Ross/Wego context**:
- **Mamoun (Co-founder/CTO)**: Authority Level 4 for technical decisions
- **Rahul (Corp dev)**: Authority Level 3 for partnership and M&A evaluation
- **Direct reports**: Default to Authority Level 2-3 depending on seniority
- **External contractors**: Authority Level 1-2 (tighter scope, more checkpoints)
