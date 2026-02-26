---
name: interpret-biometrics
description: Interpret a set of biometric readings and generate a readiness assessment with training recommendation.
argument-hint: "[today's HRV, sleep score, RHR] [optional: recent training data, subjective feel]"
---

# /interpret-biometrics

Interpret biometric data from wearables, classify readiness, identify patterns or concerns, and generate a specific training recommendation for today.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Today's HRV value (and which device/method)
- 7-day HRV average (or enough history to calculate)
- Sleep score or quality description (last night)
- Resting HR (today vs. typical)
- Subjective feel (1–10)

**Optional but improves analysis**:
- Last 7 days of HRV readings (to identify trend direction)
- Recent training load (sessions in past 3–5 days)
- Sleep duration (not just score)
- Body temperature variation (Oura provides this)
- Respiratory rate trend (Oura / WHOOP)

**From USER.md** (load automatically if configured):
- Baseline HRV average and standard deviation
- Personal zone thresholds
- Known chronic conditions or medication interactions
- Wearable devices in use

**If baseline data is absent**: Apply general population norms; note that personalised baselines improve interpretation accuracy.

---

## Step 2: Process each metric

**HRV analysis**:
- Compare today vs. 7-day average
- Calculate deviation in standard deviations (if SD known) or estimate
- Check direction: is HRV trending up, flat, or down over past 7 days?
- Flag if 3+ consecutive suppressed days (escalation trigger)

**Sleep analysis**:
- Total sleep duration vs. individual target (default: 7–9 hours)
- Sleep quality indicators (if available): deep sleep %, REM %, WASO
- Consistency: is this an outlier night or part of a pattern?
- Note any likely cause of poor sleep (late training, alcohol, travel, stress)

**Resting heart rate analysis**:
- Compare to 7-day rolling average
- Elevated RHR (+3–5bpm): mild stress signal
- Elevated RHR (+5bpm or more): significant recovery concern
- Low RHR (below normal): improved fitness or fully recovered

**Cross-metric pattern recognition**:
- HRV down + RHR up + poor sleep = likely cumulative fatigue or early illness
- HRV down + RHR normal + good sleep = likely psychological stress
- HRV variable + elevated respiratory rate = potential illness 1–2 days before symptoms
- Everything down + subjective feel low = clear recovery need; deload or rest

---

## Step 3: Classify readiness

Apply GREEN/YELLOW/RED from `skills/recovery/` biometrics table.

Check all escalation triggers:
- HRV depressed 3+ consecutive days with no clear benign explanation
- RHR elevated > 5bpm above rolling average for 3+ days
- Respiratory rate elevated > 1 breath/min above baseline for 3+ days (illness indicator)
- Any report of chest pain, dizziness, breathlessness, or irregular heartbeat
- Injury symptoms or sharp localised pain

---

## Step 4: Generate recommendation

Map readiness to today's planned session (if known from USER.md) or generate a general recommendation.

---

## Output

```
## Biometric Readiness Report — [Date]

### Today's Readings
| Metric | Today | 7-day avg | Status |
|--------|-------|-----------|--------|
| HRV | [X]ms | [Y]ms | 🟢/🟡/🔴 |
| Resting HR | [X]bpm | [Y]bpm | 🟢/🟡/🔴 |
| Sleep score | [X] | [Y] avg | 🟢/🟡/🔴 |
| Subjective | [X/10] | — | — |

### Overall Readiness: 🟢 GREEN / 🟡 YELLOW / 🔴 RED

**Summary**: [2–3 sentence interpretation of what the data is telling you]

### Pattern analysis
- [Any notable trend across the past 7 days]
- [Any likely cause identified]
- [Cross-metric observations]

### Today's training recommendation
**Recommended session**: [Specific session type and intensity]
**Adjustment from plan**: [None / Reduce intensity to Zone X / Rest / See escalation]
**Rationale**: [Brief explanation]

### Watch
- [Any metric or pattern to monitor in coming days]
```

---

## Escalation output

```
## ⚠️ Escalation — [Metric] — [Reason]

**Observed**: [Specific biometric data that triggered escalation]
**Concern**: [What this may indicate — overtraining / illness / cardiac / other]

**Recommended action**: [Rest + monitor / See GP / Emergency services]
**Training**: [Hold training until criteria below are met]

**Return-to-training criteria**:
- [Specific, measurable criteria]

**If [symptom] occurs**: Seek immediate medical attention.
```

---

## Sources not available

If wearable data cannot be retrieved:
```
⚠️ Biometric data not provided. Proceeding with subjective-only assessment.
Recommendation accuracy is reduced. For a full readiness report, provide:
- HRV (today + 7-day average)
- Resting HR (today + typical)
- Sleep score or duration (last night)
```
