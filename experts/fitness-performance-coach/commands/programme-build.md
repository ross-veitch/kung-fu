---
name: programme-build
description: Build a multi-week periodised training programme from scratch.
argument-hint: "[goal] [timeline] [current fitness level] [available days/equipment]"
---

# /programme-build

Design a complete periodised training programme — macrocycle structure, mesocycle breakdown, weekly templates, and session types — calibrated to the athlete's goal, timeline, and baseline.

---

## Step 1: Gather the brief

**Required** — prompt for any missing:
- **Primary goal**: VO2 max development / strength / event preparation / body composition / general health
- **Timeline**: Total programme duration; target event date if applicable
- **Current fitness baseline**: VO2 max estimate, recent training history, lifting maxes (if strength-focused)
- **Available days per week**: How many days can be committed to structured training?
- **Available session time**: Typical session duration
- **Equipment**: Gym access / outdoor running / pool / bike / home kit

**From USER.md / PLAYBOOK.md** (load if configured):
- Injury history and current restrictions
- Previous programmes and what worked / didn't work
- Wearables and tracking tools available
- Upcoming events or life constraints (travel-heavy periods, etc.)

**Clarifying questions if goal is ambiguous**:
- "Is the primary objective improving cardiovascular fitness, building muscle, or preparing for a specific event?"
- "Are there any movement restrictions I should know about?"
- "Has a similar programme been tried before? What happened?"

---

## Step 2: Assess feasibility

Before designing, check whether the goal is achievable in the timeline:

| Goal | Realistic timeline | Notes |
|------|------------------|----|
| Beginner → running 5K | 8–12 weeks | Couch to 5K structure |
| VO2 max +3–5 ml/kg/min | 8–12 weeks | Requires consistent Zone 4–5 work |
| VO2 max +8–10 ml/kg/min | 6–12 months | Requires full base + interval periodisation |
| Beginner strength gains | 8–16 weeks | Fastest gains in first 6 months |
| Experienced athlete meaningful strength | 12–24 weeks per block | |
| Event preparation (marathon) | 16–20 weeks minimum | |

Flag if goal-timeline mismatch is significant. Suggest adjusted goal or extended timeline rather than designing an unrealistic programme.

---

## Step 3: Design macrocycle structure

Map the total timeline into phases:

**Endurance-focused macrocycle (standard)**:
```
Base phase (40–50% of total time):  Build aerobic engine. High Zone 2 volume. Low intensity.
Build phase (30–40%):               Introduce intervals. Progressive overload.
Peak phase (15–20%):                Race-specific training. Maintain VO2 max stimulus. Reduce volume.
Taper (1–3 weeks):                  Reduce volume 40–60%. Maintain intensity. Arrive fresh.
```

**Strength-focused macrocycle (standard)**:
```
Accumulation (4–6 weeks):  Higher volume, moderate intensity (8–12 rep range). Build work capacity.
Intensification (4–6 weeks): Lower volume, higher intensity (3–6 rep range). Strength gains.
Realisation (2–3 weeks):    Peak strength expression. Low volume, maximal intensity.
Deload (1 week):            Full reset before next block.
```

**Concurrent (strength + endurance)**:
- Prioritise the primary goal in session ordering (primary first when fatigued)
- Minimise interference: separate heavy strength and high-intensity endurance by ≥ 24 hours; same day = strength before endurance
- Monitor for interference effect signs: strength gains stalling despite adequate sleep/nutrition

---

## Step 4: Design weekly templates per phase

For each phase, create a weekly template specifying:
- Day-by-day session type
- Volume and intensity targets
- Progression rules (how load increases week-to-week)
- Deload week protocol (every 3–4 weeks)

---

## Step 5: Define key performance indicators

How will progress be measured?

| Goal | KPIs | Assessment method | Frequency |
|------|------|------------------|-----------|
| VO2 max | Garmin VO2 max estimate; time trial | Field test (3km TT) | Every 4–6 weeks |
| Strength | 1RM or estimated 1RM | Working max; rep max | End of each mesocycle |
| Body composition | Weight trend; progress photos | Scale + photos | Weekly weight; monthly photos |
| Event prep | Pace at target HR; long run duration | Training runs | Weekly |

---

## Output

```
## Training Programme: [Goal] — [Total Duration]

### Programme Overview
**Goal**: [Specific goal and target]
**Duration**: [X weeks] ([Start date] → [End date or event])
**Structure**: [X-phase macrocycle description]
**Volume**: [Starting weekly hours/distance] → [Peak weekly hours/distance]

---

### Phase 1: [Base / Accumulation / etc.] — Weeks 1–[N]
**Focus**: [What this phase develops]
**Weekly volume target**: [X hours or X km]
**Intensity distribution**: [Zone 2: X% / Intervals: X% / Strength: X sessions]

**Weekly template**:
| Day | Session | Duration | Intensity |
|-----|---------|----------|-----------|
| Mon | [type] | [Xmin] | [Zone/target] |
| ...

**Progression rule**: [Add X% volume each week; deload week [N]]
**Key sessions**: [The 1–2 sessions that define this phase]

---

[Repeat for each phase]

---

### Testing and check-in schedule
| Week | Assessment |
|------|-----------|
| Week [N] | [VO2 max estimate / 1RM test / progress photos] |

### Escalation criteria
The following warrant programme modification or medical review:
- [e.g. VO2 max declining after 6+ weeks of consistent training]
- [e.g. persistent injury symptoms]
- [e.g. weight loss > 1% per week while strength training]
```
