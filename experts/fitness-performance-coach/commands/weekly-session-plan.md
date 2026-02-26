---
name: weekly-session-plan
description: Generate a personalised weekly training plan based on current readiness and programme context.
argument-hint: "[readiness data] [optional: week focus or constraints]"
---

# /weekly-session-plan

Generate a personalised weekly training plan calibrated to current biometric readiness, active programme phase, and upcoming events.

---

## Step 1: Gather inputs

**Required inputs** — prompt for any that are missing:
- Current HRV (today's reading + 7-day average)
- Sleep score or quality (last night)
- Subjective feel (1–10)
- Active programme phase (base / build / peak / deload — load from USER.md if configured)
- Training days available this week
- Any constraints (travel, meetings, known life stressors)

**From PLAYBOOK.md / USER.md** (load automatically if present):
- Current programme and phase
- Target event and date (if applicable)
- Available equipment and locations
- Personal zones (HR or power)
- Injury history and current restrictions

**If no readiness data is available**: proceed with default Build week structure; note that readiness data was not provided and intensity recommendations may need adjustment.

---

## Step 2: Classify readiness

Apply GREEN/YELLOW/RED classification from `skills/recovery/`:

| Status | HRV vs 7-day avg | Sleep score | Subjective | Action |
|--------|-----------------|-------------|-----------|--------|
| 🟢 GREEN | At or above average | > 70 | ≥ 7/10 | Execute plan; may push slightly |
| 🟡 YELLOW | Within 1 SD below | 50–70 | 5–6/10 | Execute plan; do not exceed target intensity |
| 🔴 RED | > 1 SD below | < 50 | ≤ 4/10 | Zone 1–2 only, or rest |
| 🚨 ESCALATE | See escalation triggers below | | | Stop; assess |

**Escalation triggers — do not prescribe training, immediately flag:**
- HRV depressed > 3 consecutive days with no clear cause
- RHR elevated > 5bpm above 7-day average for 3+ days
- Any report of chest pain, dizziness, or breathlessness during exercise
- Suspected illness symptoms alongside depressed readiness
- Sharp or localised pain (as opposed to generalised muscle fatigue)
- Explicit mental health crisis or extreme psychological stress

---

## Step 3: Determine week type

Based on programme phase and readiness:

| Programme phase | Default week type | Readiness modifier |
|----------------|------------------|--------------------|
| Base building | Build | RED → Maintain; YELLOW → no change |
| Development | Build | RED → Deload; YELLOW → Maintain |
| Peak / pre-event | Maintain | RED → Deload regardless |
| Scheduled deload | Deload | Override only for GREEN + compelling reason |

**Week types**:
- **Build**: +5–10% volume vs prior week. Standard intensity distribution.
- **Maintain**: Same volume as prior week. Intensity maintained.
- **Deload**: 40–50% volume reduction. Intensity maintained at ~85% of normal.

---

## Step 4: Design the session sequence

**Sequencing rules** (hard constraints):
1. High-intensity sessions (Zone 4–5, heavy strength) require ≥ 48 hours between them
2. Strength before endurance on the same day
3. VO2 max intervals: maximum 2× per week; never on consecutive days
4. Zone 2 / active recovery can be placed anywhere; recovers quickly
5. Rest or active recovery day after any session rated RED or YELLOW

**Session type distribution** (guideline for endurance-focused athletes):
- ~80% of weekly volume in Zone 1–2
- ~20% in Zone 4–5 (intervals)
- Zone 3 minimised — the "junk miles" zone

---

## Step 5: Specify each session

For each training day, specify:
- **Type**: Zone 2 run / VO2 max intervals / strength / active recovery / rest
- **Duration**: Total session time
- **Intensity target**: Zone (HR or pace), key workout structure
- **Key details**: Interval structure, key exercises, specific targets

---

## Output

```
## Weekly Training Plan
**Week type**: [Build / Maintain / Deload]
**Readiness classification**: 🟢 / 🟡 / 🔴 [+ brief context]
**Programme phase**: [Base / Build / Peak / Deload]

### Session Schedule

| Day | Session type | Duration | Intensity | Key details |
|-----|-------------|----------|-----------|-------------|
| Mon | [type] | [Xmin] | [Zone/target] | [key details] |
| Tue | [type] | [Xmin] | [Zone/target] | [key details] |
| ... | ... | ... | ... | ... |

**Weekly totals**: [Total hours] | [Zone 2 %] | [High intensity %]

### Notes
- [Any adjustments from standard plan based on readiness]
- [Constraints accommodated]
- [Upcoming event considerations]

### Reminders
- [Nutrition timing note if relevant — e.g. fuel the intervals session]
- [Recovery note if readiness was YELLOW or RED]
```

---

## Escalation output

If escalation triggers are met:

```
## ⚠️ Training Hold — [reason]

Current biometric data suggests [specific concern].

**Recommended action**: [Rest / Zone 1 walk only / See physician]
**Duration**: [1–3 days monitoring / Until symptoms resolve / Immediate medical assessment]

**Return-to-training criteria**:
- [Specific criteria: HRV back to average for 2+ days; symptom-free for X days; etc.]

**If symptoms worsen**: [Specific escalation — e.g. "seek medical attention if chest pain persists"]
```
