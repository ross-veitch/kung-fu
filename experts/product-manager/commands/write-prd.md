---
name: write-prd
description: Write a product requirements document from problem statement, user research, and constraints
argument-hint: "[problem statement or feature request]"
---

# /write-prd

Write a crisp, decision-quality Product Requirements Document. This is not a requirements dump — it's a strategic artifact that captures why we're building, what success looks like, and what we're explicitly not doing.

---

## Step 1: Gather inputs

**Required:**
- **Problem statement** or feature request (from user, stakeholder, or product strategy)
- **User research** (if available): customer interview notes, usability test findings, survey data, behavioral analytics
- **Success metrics**: What metric(s) are we trying to move? By how much?

**Optional but improves output:**
- **User personas** or target segment
- **Competitive context** (what do competitors do? what do users expect?)
- **Technical constraints** (platform limitations, dependencies, existing architecture)
- **Business context** (revenue impact, strategic priority, timeline pressure)

**From PLAYBOOK.md / USER.md:**
- ~~company-name product development process (if standardised PRD template exists, reference it)
- ~~current-quarter themes and strategic priorities (to assess strategic fit)
- ~~product-platform (web, iOS, Android, API) to understand scope boundaries

---

## Step 2: Frame the problem (not the solution)

Start with the user problem, not the feature. This is the "why" section.

**Template:**
```
## Problem

[User segment] is experiencing [specific problem]. 

Evidence:
- [Data point 1: e.g., 60% of users abandon checkout at payment step]
- [Data point 2: e.g., In interviews, 8/10 users mentioned confusion about pricing]
- [Data point 3: e.g., Support tickets about [topic] increased 40% last quarter]

Impact:
- [Business impact: e.g., $X lost revenue, Y% churn, Z hours support time]
- [User impact: e.g., users can't complete their core job-to-be-done]

Why now:
- [Strategic fit: e.g., Q2 theme is "reduce booking friction"]
- [Market context: e.g., competitors launched similar feature]
- [Urgency: e.g., regulatory requirement, user churn spike]
```

**Rule**: If you can't quantify the problem (with data, not opinions), you shouldn't be building yet. Go back and validate the problem.

---

## Step 3: Define success metrics

What does success look like? Be specific and measurable.

**Good success metrics:**
- Increase checkout conversion rate from 45% → 52% within 30 days of launch
- Reduce time-to-first-booking from 8 minutes → 5 minutes (median)
- Improve NPS for booking experience from 35 → 50
- Increase repeat booking rate from 18% → 25% in 90 days

**Bad success metrics:**
- "Improve user experience" (not measurable)
- "Launch by end of Q2" (output, not outcome)
- "Users love it" (not specific)

**Metric hierarchy:**
- **North Star metric impact**: Which NSM does this move? (e.g., trips booked per month)
- **Primary success metric**: The specific metric this feature is designed to move
- **Secondary/guardrail metrics**: Metrics we want to track but not optimise for (e.g., ensure feature doesn't hurt page load time)

---

## Step 4: Define scope — what we're building

Describe the solution at a level that engineering can design the implementation. Don't over-specify.

**User stories format (optional but helpful):**
```
As a [user type],
I want to [action],
So that [benefit].
```

**Example user stories:**
- As a returning user, I want to see my past bookings on the home screen, so I can quickly rebook the same hotel.
- As a first-time user, I want to see verified reviews, so I can trust the recommendations.

**Feature description**:
- What screens/flows are affected?
- What new capabilities are added?
- What existing behavior changes?

**Example**:
```
## What we're building

**New feature: One-click rebooking**

Returning users will see a "Book Again" section on the home screen showing their last 3 bookings. 
Clicking a card pre-fills the booking flow with:
- Same hotel/property
- Same room type (if available)
- Same dates +1 year (or user can adjust)
- Same traveler details

Success state: User completes booking in 2 clicks (select dates → confirm booking).
```

---

## Step 5: Define non-goals (what we're explicitly NOT doing)

This section prevents scope creep and sets expectations. Be explicit.

**Examples:**
- ❌ **Not building**: Integration with loyalty programs (out of scope for v1, consider for v2)
- ❌ **Not building**: Multi-hotel booking in one cart (complex, low user demand based on research)
- ❌ **Not supporting**: Bookings older than 12 months (data retention policy limit)
- ❌ **Not optimising for**: Users with 0 past bookings (focus is on repeat users)

**Format:**
```
## Non-Goals

We are explicitly NOT:
- [Feature/capability X]: [Reason — usually: low priority, high complexity, or different user segment]
- [Feature/capability Y]: [Reason]
- [Feature/capability Z]: [Reason]
```

---

## Step 6: Open questions & dependencies

Capture what you don't know yet. This is where you flag risks and blockers.

**Open questions format:**
```
## Open Questions

1. **[Question]**  
   Owner: [Name]  
   Deadline: [Date]  
   Impact if unresolved: [Blocker / delays launch / reduces quality]

Example:
1. **Do we have API access to booking history for users who booked via partner sites?**  
   Owner: Engineering (Jane)  
   Deadline: Feb 15  
   Impact: If no, we can only show bookings made directly on our platform (60% of users)
```

**Dependencies format:**
```
## Dependencies

- [System/team/feature]: [What we need and when]
- Example: "Requires new API endpoint from Booking Service (ETA: March 1)"
- Example: "Design system update needed for card component (in progress)"
```

---

## Step 7: Acceptance criteria (detailed requirements)

This is the checklist engineering will use to determine when the feature is done.

**Format (Gherkin-style is clear):**
```
## Acceptance Criteria

### Scenario: Returning user sees rebooking options
- **GIVEN** I am a logged-in user with at least 1 past booking
- **WHEN** I land on the home screen
- **THEN** I see a "Book Again" section with up to 3 past bookings
- **AND** each card shows: hotel name, location, dates, price

### Scenario: User clicks a rebooking card
- **GIVEN** I click a "Book Again" card
- **WHEN** the booking flow loads
- **THEN** hotel, room type, and traveler details are pre-filled
- **AND** dates are set to same dates +1 year (editable)
- **AND** I can proceed to payment in 2 clicks

### Edge cases
- If the hotel is no longer available → show error message + suggest similar hotels
- If the room type is sold out → show next available room type with price difference
- If the user has 0 bookings → don't show "Book Again" section
```

---

## Step 8: Technical considerations (high-level)

You're not designing the implementation, but flag any known technical constraints or preferences.

**Examples:**
```
## Technical Considerations

- **Performance**: Fetching booking history should not slow down home screen load (consider caching)
- **API**: Requires new endpoint: `GET /users/{id}/recent-bookings?limit=3`
- **Privacy**: Only show bookings for the logged-in user (strict user ID validation)
- **Localization**: Dates and prices must respect user's locale settings
- **Platform**: Launch on web first, then iOS/Android in v2
```

---

## Output: PRD Document Structure

```markdown
# PRD: [Feature Name]

**Author**: [Your name]  
**Date**: [YYYY-MM-DD]  
**Status**: Draft | In Review | Approved  
**Strategic Theme**: [Q2 2024: Reduce Booking Friction]

---

## Problem

[User segment] is experiencing [problem].

**Evidence**:
- [Data 1]
- [Data 2]
- [Data 3]

**Impact**:
- Business: [Revenue/churn/cost impact]
- User: [User experience impact]

**Why now**:
- [Strategic fit + urgency]

---

## Success Metrics

**Primary metric**: [Metric] from [X → Y] within [timeframe]  
**Secondary metrics**: [Metric], [Metric]  
**Guardrail metrics**: [Metric] (should not degrade)

---

## Solution

### What we're building
[Feature description + user stories]

### User flow
[Describe or link to flow diagram]

### Mockups / Wireframes
[Link to Figma or attach screenshots]

---

## Non-Goals

We are explicitly NOT:
- [Feature X]: [Reason]
- [Feature Y]: [Reason]

---

## Open Questions

1. **[Question]** — Owner: [Name] | Deadline: [Date] | Impact: [High/Med/Low]
2. **[Question]** — Owner: [Name] | Deadline: [Date] | Impact: [High/Med/Low]

---

## Dependencies

- [Dependency 1]: [Details]
- [Dependency 2]: [Details]

---

## Acceptance Criteria

### Scenario 1: [Name]
- GIVEN [context]
- WHEN [action]
- THEN [outcome]

### Scenario 2: [Name]
- GIVEN [context]
- WHEN [action]
- THEN [outcome]

### Edge cases
- [Edge case 1]: [Expected behavior]
- [Edge case 2]: [Expected behavior]

---

## Technical Considerations

- [Performance notes]
- [API/integration notes]
- [Platform/browser support]
- [Security/privacy notes]

---

## Risks

| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| [Risk 1] | High/Med/Low | High/Med/Low | [Action] |
| [Risk 2] | High/Med/Low | High/Med/Low | [Action] |

---

## Launch Plan

- **Beta/internal launch**: [Date]
- **Rollout strategy**: [Phased rollout / dark launch / feature flag details]
- **Full launch**: [Date]
- **Post-launch monitoring**: [Which metrics to watch, for how long]

---

## Appendix

- [Link to user research notes]
- [Link to design files]
- [Link to technical spec (if separate)]
- [Link to competitive analysis]
```

---

## Escalation / Edge cases

**If the problem is not validated**:  
Stop. Go back to user research. A PRD without a validated problem is just a wishlist.

**If success metrics are unclear**:  
Work with data team or product leadership to define them. Without clear success criteria, you can't evaluate whether the feature worked.

**If scope is too large**:  
Break into v1 (MVP) and v2 (full vision). Ship v1 fast, validate, then iterate.

**If dependencies are blocking**:  
Flag early. Work with engineering to sequence work or find alternative approaches.
