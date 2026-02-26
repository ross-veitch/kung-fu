---
name: triage-inbox
description: Prioritise and draft responses to a batch of messages
argument-hint: "[inbox/messages to triage] [optional: context or deadlines]"
---

# /triage-inbox

Triage emails, messages, or notifications and produce a prioritised action plan with drafted responses.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Batch of messages to triage (inbox dump, message list, or summary)
- Principal's calendar context (what's happening this week? Deadlines?)

**Optional but improves output**:
- Ongoing projects or priorities (what's hot right now?)
- Decision-making authority (what can be delegated? What needs principal's call?)
- Response templates or tone preferences

**From PLAYBOOK.md / USER.md** (load automatically if present):
- Standard response templates (decline template, delegation template)
- Auto-archive rules (newsletters, low-signal notifications)
- Delegation targets (who handles what types of requests)

**If calendar context unavailable**: Assume standard workweek, flag anything that looks time-sensitive.

---

## Step 2: Classify each message (Eisenhower Matrix)

| | **Urgent** (requires action today/tomorrow) | **Not Urgent** (can wait >2 days) |
|---|---|---|
| **Important** (high impact, aligns with goals) | 🔴 **DO NOW** — respond today | 🟡 **SCHEDULE** — block time this week |
| **Not Important** (low impact, doesn't align) | 🟠 **DELEGATE** — quick delegation note | ⚪ **ARCHIVE** — defer, decline, or ignore |

**Classification criteria**:

**Urgent = action needed within 48h**:
- Meeting/call request <2 days away
- Deadline approaching
- Time-sensitive opportunity (closes soon)
- Escalation or blocker (someone waiting on you)

**Important = high impact on goals**:
- Strategic decision required
- Key stakeholder (board, investor, key customer)
- Revenue/deal impact (>$X threshold)
- Team blocker (your input unblocks others)

---

## Step 3: Prioritise and recommend action

Sort by quadrant:
1. 🔴 **DO NOW** — urgent + important (top of list)
2. 🟠 **DELEGATE** — urgent but not important (handle quickly, don't spend time)
3. 🟡 **SCHEDULE** — important but not urgent (block time this week)
4. ⚪ **ARCHIVE** — neither (defer or ignore)

Within each quadrant, order by:
- Impact (bigger consequence first)
- Dependency (who's blocked waiting on this?)
- Ease (quick wins first if impact is equal)

---

## Step 4: Draft responses or delegation notes

### Response template

**Subject: [Original subject or clear one-liner]**

[Recipient name],

[Opening — acknowledge if late, set context if needed]

[Core response — answer question, make decision, provide info]

[Closing — next step if needed]

[Sign-off]
Ross

**Length**: as short as possible while being complete. No fluff.

---

### Delegation template

**To: [Delegate]**
**Subject: [FWD: Original] — [action needed]**

[Name],

Please handle this:

**What:** [One sentence — what needs to be done]
**Why:** [One sentence — context if not obvious]
**Deadline:** [When by]
**Deliverable:** [What does "done" look like?]

Let me know if you need anything from me.

[Sign-off]

---

## Output

```markdown
# Inbox Triage — [Date]

**Summary**:
- Total messages: [N]
- DO NOW (🔴): [N]
- DELEGATE (🟠): [N]
- SCHEDULE (🟡): [N]
- ARCHIVE (⚪): [N]

---

## 🔴 DO NOW — Urgent + Important

### 1. [Sender] — [Subject]

**Category**: 🔴 Urgent + Important

**Why urgent**: [Meeting tomorrow / deadline today / someone blocked]

**Why important**: [Strategic decision / key stakeholder / revenue impact]

**Recommended action**: REPLY (draft below)

**Draft**:
```
[Draft response]
```

---

### 2. [Sender] — [Subject]

[Repeat structure]

---

## 🟠 DELEGATE — Urgent but Not Important

### 1. [Sender] — [Subject]

**Category**: 🟠 Urgent but Not Important

**Why urgent**: [Time-sensitive]

**Why not important**: [Routine / low impact / someone else's domain]

**Recommended action**: DELEGATE to [Name]

**Delegation note**:
```
[Draft delegation message]
```

---

## 🟡 SCHEDULE — Important but Not Urgent

### 1. [Sender] — [Subject]

**Category**: 🟡 Important but Not Urgent

**Why important**: [Strategic / high impact]

**Why not urgent**: [No immediate deadline]

**Recommended action**: Schedule for [day/time this week]

**Prep needed**: [Any research, docs, or decisions before responding]

**Draft response** (when ready):
```
[Draft response if applicable]
```

---

## ⚪ ARCHIVE — Neither Urgent nor Important

### Batch summary:
- [N] newsletters (archive or unsubscribe)
- [N] FYI-only messages (no response needed)
- [N] low-priority requests (politely decline or defer)

**Auto-decline template** (if needed):
```
[Name],

Thanks for reaching out. Unfortunately, I don't have bandwidth for this at the moment.

[If appropriate: suggest alternative, or timeline when you might revisit]

Best,
Ross
```
```

---

## Escalation / Edge cases

**Escalate immediately if**:
- **Time collision**: Meeting request conflicts with existing commitment <24h away → propose alternative immediately
- **Urgent decision needed**: Board/investor/key customer needs answer today and principal hasn't seen the message → ping principal directly
- **Reputational risk**: Something that could go sideways publicly if ignored (press, legal, public complaint)
- **Team blocker**: Multiple people waiting on principal's input and deadline is today

**Request principal decision when**:
- **Strategic call**: Requires judgment that can't be delegated (partnership, acquisition, major hire/fire)
- **Policy change**: Affects team or company direction (not just execution)
- **Ambiguous priority**: Could be important or could be noise — need context only principal has

**Batch low-signal items**:
- Don't list every newsletter or FYI individually — summarize as "12 newsletters archived"
- Group similar requests ("5 intro requests — template decline sent")

**When to NOT draft a response**:
- Requires information only principal has (personal decision, confidential context)
- Tone-sensitive (apology, sensitive feedback, relationship repair)
- Principal prefers to handle this type directly (investor updates, board communication)

**Ross/Wego context**:
- **Urgent + Important threshold**: Board members, investors (Wamda, BECO, Crescent, Alter Global), co-founder (Mamoun), key execs (Rahul for corp dev)
- **Delegate to**:
  - Mamoun (Co-founder/CTO): tech decisions, product strategy
  - Rahul (Corp dev): M&A, partnerships, strategic deals
  - [EA name if Ross has one]: scheduling, travel, administrative
- **Auto-decline**: Random intro requests, speaking invitations (unless high-profile), cold sales emails
- **MENA communication norms**: Respond faster to UAE/Saudi stakeholders (relationship-driven culture, delayed response can signal disrespect)
- **Timezone**: Ross splits SG/Dubai — flag messages that need same-day response based on sender's timezone
