---
name: race-prep
description: Design a taper, race-day plan, and post-race recovery protocol for a specific event.
argument-hint: "[event name, distance, date] [current fitness level] [goal time or finish]"
---

# /race-prep

Design a complete race preparation plan: taper protocol, race-week schedule, race-day execution plan, and post-race recovery protocol.

---

## Step 1: Gather event details

**Required** — prompt for any missing:
- **Event**: Name, distance, terrain type (road / trail / track / triathlon)
- **Date**: How many weeks until the event?
- **Goal**: Target time / pace / just finish / podium position
- **Current fitness**: Recent long run / most recent race result / estimated VO2 max

**From USER.md / PLAYBOOK.md** (load if configured):
- Recent training volume and long run distance
- Historical race performances
- Known nutrition strategy during events
- Travel requirements for the event (affects logistics planning)

**Clarifying questions**:
- "Is this an A-race (peak performance target) or a B/C-race (training run)?"
- "Have you raced this distance before? How did it go?"
- "Any known issues with fuelling, cramping, or GI problems in long events?"

---

## Step 2: Assess readiness

Evaluate whether current fitness is appropriate for the event goal:

**For endurance events**: Has the athlete completed 80%+ of the target distance in training? Long runs/rides should reach at least 80% of race distance within 3–4 weeks of the event.

**Flag** if:
- Goal pace significantly faster than recent training paces at equivalent HR — goal may need revision
- Training volume significantly below what the distance requires — risk of injury or DNF
- Event is < 2 weeks away and athlete is undertrained — advise adjusted goal, not aggressive taper

---

## Step 3: Design the taper

**Taper principles**:
- Reduce **volume** by 40–60% over the taper period (volume is what causes fatigue)
- **Maintain intensity** — keep some fast running/high-effort work to preserve neuromuscular sharpness
- Taper length by distance:

| Distance | Taper duration | Volume reduction |
|----------|---------------|-----------------|
| 5K / 10K | 5–7 days | 30–40% |
| Half marathon | 10–14 days | 40–50% |
| Marathon | 2–3 weeks | 50–60% |
| Ultra / Ironman | 3–4 weeks | 50–60% |

**Taper week-by-week template** (marathon example):
- Week -3: Full training volume. Last long run at 80% of peak.
- Week -2: Reduce volume 30%. One quality session (marathon pace intervals). Medium long run.
- Week -1 (race week): Reduce volume 50–60% further. 2–3 short runs including strides. Rest 2 days before race.

**Common taper mistakes**:
- Doing too much in taper week out of anxiety ("taper madness")
- Eliminating all intensity — legs go flat
- Trying a new food, shoe, or kit on race day (never test anything new on race day)

---

## Step 4: Race-week schedule

**Days -7 to -3**: Light training with intensity maintained. Sleep prioritised. Carbohydrate intake increased gradually if racing > 90 minutes (glycogen loading).

**Day -2 (2 days before)**: Rest or very short easy run (20 minutes). Carbohydrate loading at peak if marathon+ distance. Hydration prioritised.

**Day -1 (day before)**: Rest or 15-minute shake-out run with 4–6 strides. Gear check. Nutrition: normal eating, not overeating. Sleep: target 8+ hours, but don't stress if pre-race nerves cause poor sleep — sleep 2 nights before matters more.

**Race day morning**: Wake 2.5–3 hours before start. Familiar breakfast (nothing new). 500ml water in first hour of waking. Light warm-up.

---

## Step 5: Race-day execution plan

**Pacing strategy**:
- Negative split (second half faster than first) is the gold standard for most endurance events
- The most common race mistake: starting too fast
- First 20% of the race should feel "embarrassingly easy"

**Fuelling during the race** (for events > 75 minutes):
- Start fuelling at 45 minutes regardless of how you feel
- 30–60g carbohydrate per hour for most events; up to 90g/hr for elite athletes using 2:1 glucose:fructose
- Practise race-day nutrition in training — GI distress is the most preventable DNF cause

**Hydration**:
- Drink to thirst — not on a rigid schedule
- For events > 2 hours in heat: consider sodium supplementation (SaltStick, Precision Hydration)
- Avoid over-drinking: hyponatraemia (low sodium from excess water) is dangerous

---

## Step 6: Post-race recovery

**Immediate (0–2 hours)**: Protein + carbohydrate within 30–60 minutes. Rehydrate. Light movement; avoid sitting still.

**Days 1–3**: Rest or easy walking only. Don't run through delayed onset muscle soreness — that's tissue repair in progress.

**Return to training** (guideline: one easy day per race mile):
- 5K: 3–5 days easy
- Half marathon: 7–10 days easy
- Marathon: 14–21 days before any structured training

---

## Output

```
## Race Preparation Plan: [Event Name]
**Event**: [Distance] on [Date] — [X weeks away]
**Goal**: [Target time / goal]
**Current fitness assessment**: [Readiness rating + brief assessment]

---

### Taper Schedule

| Period | Dates | Volume | Key sessions | Notes |
|--------|-------|--------|-------------|-------|
| Week -3 | [dates] | [X%] | [Last long run + quality session] | |
| Week -2 | [dates] | [X%] | [Quality session + medium long run] | |
| Race week | [dates] | [X%] | [Short runs + strides + rest] | |

---

### Race-Day Plan
**Wake up**: [X:XX] ([X hours before start])
**Breakfast**: [Specific recommendation based on USER.md nutrition preferences or defaults]
**Pre-race**: [Warm-up protocol]
**Pacing strategy**: [Specific pace targets by km or mile split]
**Fuelling**: [What, when, how often]
**Hydration**: [Strategy]

---

### Post-Race Recovery
**Immediate**: [Recovery nutrition + actions]
**Days 1–[N]**: [Rest protocol]
**Return to training**: [Week-by-week return plan]
**Next event eligibility**: [Earliest date for next structured training block]

---

### Risk flags
- [Any concern about current fitness vs. goal — recommend goal adjustment if warranted]
- [Any nutrition or equipment decision that needs a test run before race day]
```

---

## Escalation output

```
## ⚠️ Race Preparation Concern — [Issue]

**Concern**: [Specific fitness gap / injury risk / unrealistic goal]
**Recommendation**: [Adjust goal to X / Defer entry / Consult physician before racing]

A-race readiness requires [specific criteria]. Current status: [assessment].

Proceeding with the current plan carries [specific risk]. Recommended path: [alternative].
```
