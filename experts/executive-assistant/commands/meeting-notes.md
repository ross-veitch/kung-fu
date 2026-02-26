---
name: meeting-notes
description: Process raw meeting notes into decisions, actions, and summary
argument-hint: "[raw notes or transcript] [optional: meeting context]"
---

# /meeting-notes

Process raw meeting notes or transcript into structured output: decisions, actions, open questions, summary.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Raw notes or transcript (paste, file, or Granola link)
- Meeting context: who was there, what was the purpose

**Optional but improves output**:
- Agenda (if one existed)
- Prior meeting actions (to check follow-up)
- Project context (what's this related to?)

**From PLAYBOOK.md / USER.md** (load automatically if present):
- Team roster (to match names to roles)
- Project status (to contextualize decisions)

**If transcript is messy**: Do best-effort extraction. Flag sections that are unclear with [UNCLEAR: context].

---

## Step 2: Extract structured content

Parse the raw input for four categories:

### Decisions
Anything explicitly agreed upon or approved:
- "[We decided to…]" / "[Agreed:]" / "[Approved:]"
- Look for: commitments, approvals, direction changes, go/no-go calls

### Actions
Tasks assigned to specific people:
- Must have: **owner** (one person) + **what** (specific task)
- Should have: **deadline** (when)
- Look for: "[X] will…" / "Action:" / "[X] to follow up on…"

### Open Questions
Unresolved items that need follow-up:
- Questions raised but not answered
- Decisions deferred ("let's revisit next week")
- Missing information needed to proceed

### Key Discussion Points
Important context that doesn't fit above categories:
- Concerns raised
- Data or insights shared
- Strategic direction discussed (but not formally decided)

---

## Step 3: Validate completeness

**Cross-check**:
- Every decision should have a clear owner or accountable person
- Every action should have an owner and ideally a deadline
- If agenda existed: are all agenda items addressed? Flag any skipped items.
- If prior actions existed: are they resolved or still open?

**Flag gaps**:
- Decision without clear ownership → "⚠️ Who owns this?"
- Action without deadline → "⚠️ When is this due?"
- Agenda item not discussed → "⚠️ Skipped: [item]"

---

## Output

```markdown
# Meeting Notes: [Meeting Title]

**Date**: [Date]
**Attendees**: [Name (Role)], [Name (Role)], [Name (Role)]
**Duration**: [X minutes]

---

## Summary
[Two sentences: what the meeting was about and the most important outcome. Write this for someone who wasn't there and has 10 seconds.]

---

## Decisions

1. **[Decision]** — [Context if needed]
   - Owner: [Name]
   - Effective: [Immediately / from date]

2. **[Decision]**
   - Owner: [Name]

---

## Actions

| # | Action | Owner | Deadline | Status |
|---|--------|-------|----------|--------|
| 1 | [Specific task] | [Name] | [Date] | 🔲 Open |
| 2 | [Specific task] | [Name] | [Date] | 🔲 Open |
| 3 | [Specific task] | [Name] | ⚠️ TBD | 🔲 Open |

---

## Open Questions

- [ ] [Question that needs resolution] — **Owner**: [Name to follow up]
- [ ] [Deferred decision] — **Revisit**: [When]
- [ ] [Missing info needed] — **Source**: [Who/where to get it]

---

## Key Discussion Points

- **[Topic]**: [Brief summary of what was discussed and any notable positions taken]
- **[Topic]**: [Brief summary]

---

## Follow-up from Previous Meeting

| Prior Action | Owner | Status |
|-------------|-------|--------|
| [Action from last time] | [Name] | ✅ Done / 🔄 In progress / ❌ Not started |

---

## Filing

**Tags**: [project], [meeting-type]
**Next meeting**: [Date if scheduled]
```

---

## Escalation / Edge cases

**Flag immediately if**:
- **Contradictory decisions**: Two things agreed that conflict → clarify before filing
- **Unassigned critical actions**: Important task with no owner → prompt principal to assign
- **Scope creep**: Meeting produced actions outside original purpose → flag for prioritization

**Request clarification when**:
- Speaker attribution unclear in transcript (who said what?)
- Technical jargon or acronyms not recognizable
- Action items are vague ("look into it" — look into what, specifically?)

**Quality checks**:
- Every action is SMART-ish: Specific, has an owner, has a deadline (or flagged as missing)
- Decisions are stated as facts, not opinions ("We decided X" not "People seemed to agree on X")
- Summary is genuinely two sentences (discipline — if you can't summarize in two sentences, you didn't understand the meeting)

**Ross/Wego context**:
- Board meetings: formal structure, decisions need clear documentation for minutes
- Investor meetings: note asks and commitments carefully (these get followed up)
- Team syncs: focus on actions and blockers, skip lengthy discussion summaries
- Strategy sessions: capture the reasoning behind decisions, not just the decisions (future Ross needs to know WHY)
