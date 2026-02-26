---
name: calendar-prep
description: Prepare daily or weekly calendar brief with context and prep needs
argument-hint: "[time period: today/tomorrow/this week] [optional: focus areas]"
---

# /calendar-prep

Prepare a daily or weekly calendar brief: meeting purpose, key attendees + context, prep needed, focus time ratio.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Calendar for the period (today / tomorrow / this week)
- Period type: **daily** (detailed, tactical) or **weekly** (high-level, strategic)

**Optional but improves output**:
- Recent context (what happened yesterday? Any ongoing issues?)
- Project status (what's in flight that might come up?)
- Attendee relationship history (past meeting notes, CRM data)

**From USER.md / PLAYBOOK.md** (load automatically if present):
- Key relationships (board members, investors, co-founders, direct reports)
- Recurring meetings (what they're for, typical agenda)
- Calendar preferences (morning focus time, no meetings after 5pm, etc.)

**If calendar is unavailable**: Request export from Google Calendar or calendar tool.

---

## Step 2: Parse and categorise events

For each event:

**Meeting basics**:
- Time (with timezone if traveling)
- Duration
- Title
- Location (in-person / video / phone)
- Attendees (names + titles/companies)

**Meeting type**:
- 🎯 **Decision** — requires principal to make a call
- 📊 **Review** — status update, dashboard review, team sync
- 🤝 **Relationship** — investor, board, partner, customer (relationship maintenance)
- 🧠 **Strategy** — planning, brainstorming, deep work session
- ⚙️ **Operational** — routine sync, standup, recurring check-in
- 🔥 **Firefight** — urgent issue, escalation, crisis response

---

## Step 3: Add relationship context for key attendees

For **non-routine attendees** (not your team):

**Who are they?**
- Name, title, company
- Relationship: investor / board member / partner / customer / candidate

**Last interaction**:
- When did you last meet/talk?
- What was discussed?
- Any open loops or follow-ups?

**Context**:
- Why does this meeting matter?
- What do they want? (if known)
- What do you want from them?

**Source this from**:
- Meeting notes archive (`memory/` or CRM)
- Email threads
- LinkedIn (if relationship is new)

---

## Step 4: Identify prep needed

For each meeting, flag what principal needs to do BEFORE:

| Prep Type | Example |
|-----------|---------|
| **Decision required** | "Decide: approve $500K marketing budget or defer to Q2" |
| **Briefing to read** | "Read: Q4 financials (link), investor update draft" |
| **Action to bring** | "Bring: feedback on partnership term sheet" |
| **Context to review** | "Review: last board meeting notes (open items)" |
| **Approval needed** | "Approve: hiring plan for eng team" |
| **No prep** | Routine sync, no prep needed |

**Prioritize by deadline**: prep for tomorrow's meetings before next week's.

---

## Step 5: Calculate focus time ratio

**Focus time** = calendar blocks with NO meetings (>1h contiguous)
**Meeting time** = all scheduled meetings

**Ratio thresholds**:
- 🟢 **Healthy**: ≥40% focus time (enough deep work)
- 🟡 **Tight**: 20-40% focus time (manageable but packed)
- 🔴 **Underwater**: <20% focus time (back-to-back meetings, unsustainable)

**If RED or YELLOW**: flag specific recommendations (reschedule non-urgent, delegate, batch shorter).

---

## Output

### Daily Brief

```markdown
# Calendar — [Day, Date]

**Focus time**: [X hours] ([Y%])  →  [🟢 Healthy / 🟡 Tight / 🔴 Underwater]

**Meeting count**: [N meetings], [X hours total]

**Recommendation**: [If YELLOW/RED: suggest what to move or batch]

---

## Morning

### 9:00 - 10:00 AM | [Meeting Title] | [Type emoji]

**Attendees**:
- [Name] ([Title, Company]) — [Relationship context]
- [Name] ([Title, Company])

**Purpose**: [What this meeting is for — decision/update/relationship]

**Prep needed**:
- [Specific action: read doc, make decision, bring feedback]
- [ETA: 15 min]

**Last interaction**: [When you last met, what was discussed, any open loops]

**Your goal**: [What you want to get out of this — decision, info, alignment]

---

### 10:30 - 11:00 AM | [Meeting Title] | [Type emoji]

[Repeat structure]

---

## Afternoon

[Continue...]

---

## Prep Summary (Priority Order)

1. **By 9am**: [Task for first meeting]
2. **By 2pm**: [Task for afternoon meeting]
3. **EOD**: [Task for tomorrow]

---

## Notes

**Conflicts / Issues**:
- [Any back-to-back with no travel time between locations]
- [Any double-booked slots]

**Opportunities for consolidation**:
- [3 separate syncs with same team — could batch into one?]
```

---

### Weekly Brief

```markdown
# Calendar — Week of [Date]

**This week**:
- [N] meetings ([X] hours)
- Focus time: [Y] hours ([Z%])  →  [🟢 / 🟡 / 🔴]

**Key themes**:
- [e.g., "3 investor meetings — fundraise push"]
- [e.g., "Board meeting Thursday — prep Tuesday/Wednesday"]

---

## Monday [Date]

**Meetings**: [N] ([X hours])
**Focus time**: [Y hours]

### [Time] | [Meeting] | [Type emoji]
**Attendees**: [Names with brief context]
**Purpose**: [One sentence]
**Prep**: [What's needed]

[List each meeting]

---

## Tuesday [Date]

[Repeat for each day]

---

## Key Prep Items (Week View)

### By Monday AM:
- [Prep task]

### By Wednesday:
- [Prep task for Thursday board meeting]

### By Friday:
- [Prep task]

---

## Focus Time Health: [🟢 / 🟡 / 🔴]

**Total meeting hours**: [X] / [40-hour week] = [Y%]

**Assessment**:
[Healthy: good balance / Tight: manageable but no slack / Underwater: need to move things]

**Recommendations** (if YELLOW/RED):
- Move [Meeting X] to next week (not urgent)
- Delegate [Meeting Y] to [Name]
- Batch three 30-min syncs into one 60-min block
- Protect [Time block] as no-meeting zone for [Project]

---

## Relationships This Week

**Investors/Board**:
- [Name] on [Day] — [Context]

**Key Partners/Customers**:
- [Name] on [Day] — [Context]

**Internal Leadership**:
- [Weekly exec sync / 1-on-1s]

**New People** (first-time meetings):
- [Name], [Title], [Company] — [Why meeting, what to know]
```

---

## Escalation / Edge cases

**Flag immediately if**:
- **Double-booked**: Two meetings at same time → resolve conflict or propose reschedule
- **Travel time issue**: Back-to-back meetings in different locations with no transit time
- **Underwater week**: <20% focus time, multiple urgent meetings, unsustainable → recommend cuts
- **Missing critical prep**: Board meeting tomorrow but no deck or financials ready → escalate to get materials

**Request more info when**:
- Attendee is unfamiliar and no context available (who is this person? why are we meeting?)
- Meeting purpose is vague ("catch up" — what's the agenda?)
- Recurring meeting but not clear what it's for (document purpose in PLAYBOOK.md)

**Smart defaults**:
- **Focus time threshold**: Count only contiguous blocks ≥1 hour (30-min gaps aren't useful for deep work)
- **Prep time estimation**: 15 min for reading, 30 min for decision-making, 60 min for strategy prep
- **Batching**: If 3+ meetings with same person/team in one week → suggest consolidating

**Ross/Wego context**:
- **Timezone juggling**: Ross splits Singapore (GMT+8) and Dubai (GMT+4) — always show timezone, flag if meeting is at awkward local time
- **Travel**: If calendar shows flights, adjust focus time expectations (travel days = low productivity)
- **Key relationships**:
  - Co-founder Mamoun: weekly sync, strategic decisions
  - Investors: Wamda (Khaled), BECO, Crescent, Alter Global — relationship maintenance critical
  - Board meetings: quarterly, require 3-5 days prep (deck, financials, narrative)
- **MENA norms**: Dinner meetings common, especially in Dubai (relationship-building culture)
- **Focus time**: Protect mornings (Ross's peak productivity) — flag if meetings encroach on 8-11am block
