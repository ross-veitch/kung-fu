---
name: health-protocol
description: Design a personalised health optimisation protocol across key domains
argument-hint: "[goals] [current biomarkers/lifestyle] [optional: constraints]"
---

# /health-protocol

Design a personalised health optimisation protocol covering sleep, metabolic health, cardiovascular fitness, strength, stress/recovery, and supplementation.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Primary goals (longevity, performance, body composition, cognitive, energy)
- Current biomarkers (recent lab results — use /interpret-labs first if raw)
- Current lifestyle snapshot: sleep, exercise, diet, stress level

**Optional but improves output**:
- Age, sex, body composition (weight, body fat %)
- Current supplement stack
- Medical history, medications
- Lifestyle constraints (travel schedule, time available, equipment access)
- Wearable data (Oura, Whoop, Apple Watch — HRV, sleep, resting HR)

**From USER.md** (load automatically if present):
- Known health history
- Previous protocols and what worked/didn't
- Training history and current fitness level

**If biomarkers unavailable**: Design protocol with baseline testing as Step 1. Don't guess.

---

## Step 2: Assess current state per domain

| Domain | Current State | Target | Gap | Priority |
|--------|--------------|--------|-----|----------|
| **Sleep** | [X hrs, quality assessment] | 7-8 hrs, >85% efficiency | [Gap] | 🟢/🟡/🔴 |
| **Metabolic** | [Glucose, insulin, HbA1c] | Optimal ranges | [Gap] | 🟢/🟡/🔴 |
| **Cardiovascular** | [VO2max estimate, resting HR, ApoB] | VO2max >45, RHR <60 | [Gap] | 🟢/🟡/🔴 |
| **Strength** | [Training status, key lifts] | Functional strength benchmarks | [Gap] | 🟢/🟡/🔴 |
| **Stress/Recovery** | [HRV, subjective stress, recovery quality] | HRV stable/improving | [Gap] | 🟢/🟡/🔴 |
| **Supplementation** | [Current stack] | Evidence-based optimization | [Gap] | 🟢/🟡/🔴 |

**Priority**: 🔴 = significant gap, address immediately. 🟡 = room for improvement. 🟢 = on track, maintain.

---

## Step 3: Design protocol per domain

### Sleep Protocol
**Target**: 7-8 hours, sleep efficiency >85%, consistent schedule ±30 min

**Interventions** (evidence-tiered):
- **Tier 1 (behavior)**: Consistent wake time, light exposure AM, dark/cool bedroom (18-19°C), caffeine cutoff 10+ hrs before bed
- **Tier 2 (supplements)**: Magnesium glycinate (200-400mg), if needed: glycine (3g)
- **Tier 3 (devices)**: Blue light blocking evening, sleep tracker for feedback

**Measurement**: Sleep tracker (Oura/Whoop) — track total time, efficiency, latency, HRV during sleep.

---

### Metabolic Health Protocol
**Target**: Fasting glucose 70-85, insulin <6, HbA1c <5.3%, HOMA-IR <1.5

**Interventions**:
- **Nutrition**: Prioritize protein (1.6-2.2g/kg), fiber (>30g/day), minimize refined carbs and sugar
- **Exercise**: Zone 2 cardio (3-4x/week, 30-45 min) — strongest intervention for metabolic health
- **Timing**: Consider time-restricted eating (8-10 hr window) if metabolic markers are suboptimal
- **Monitoring**: CGM for 2-4 week baseline if glucose/insulin elevated

**Measurement**: Quarterly fasting glucose, insulin, HbA1c. Annual OGTT if insulin resistant.

---

### Cardiovascular Protocol
**Target**: VO2max top quartile for age, ApoB <60 mg/dL, hsCRP <0.5

**Interventions**:
- **Zone 2**: 150-180 min/week (3-4 sessions of 40-60 min) — builds aerobic base
- **Zone 5**: 1 session/week of 4x4 min intervals (VO2max stimulus)
- **Lipid management**: If ApoB >70 with lifestyle: discuss pharmacological intervention with physician
- **Blood pressure**: Target <120/80; DASH-style diet if borderline

**Measurement**: Annual VO2max test (or estimate from wearable), quarterly lipid panel including ApoB.

---

### Strength Protocol
**Target**: Maintain/build lean mass, functional movement patterns, injury prevention

**Interventions**:
- **Resistance training**: 3x/week minimum, compound movements (squat, hinge, push, pull, carry)
- **Progressive overload**: Structured programming (not random workouts)
- **Mobility**: 10-15 min daily (hip, thoracic spine, shoulders — the CEO sitting-all-day problem)
- **Protein timing**: 30-50g protein per meal, post-training within 2 hours

**Measurement**: Track key lifts (trend over time), body composition (DEXA annually), grip strength.

---

### Stress/Recovery Protocol
**Target**: HRV stable or improving trend, subjective well-being, stress resilience

**Interventions**:
- **Tier 1**: Daily 10-min practice (meditation, breathwork, or nature walk)
- **Tier 2**: Cold exposure (1-3 min cold shower or plunge, 3x/week) — if tolerated
- **Tier 3**: Social connection, adequate downtime, boundaries on work hours
- **Travel recovery**: Jet lag protocol (light timing, melatonin for timezone shifts >3 hours)

**Measurement**: Morning HRV (Oura/Whoop), subjective energy/mood rating.

---

### Supplementation Protocol
**Target**: Fill gaps not covered by diet, evidence-based only

*Use /supplement-review for detailed evaluation of each supplement.*

**Foundation stack** (broadly supported):
- Vitamin D3: 2000-5000 IU/day (titrate to 50-80 ng/mL blood level)
- Omega-3 (EPA/DHA): 2-3g/day (if not eating fatty fish 3x/week)
- Magnesium glycinate: 200-400mg/day (most people deficient)
- Creatine monohydrate: 5g/day (cognitive + physical performance)

**Conditional** (based on labs and goals):
- [Listed based on individual biomarker results]

---

## Step 4: Set measurement checkpoints

| Timeframe | What to Measure | Method |
|-----------|----------------|--------|
| **Daily** | Sleep, HRV, subjective energy | Wearable + self-report |
| **Weekly** | Training progression, body weight trend | Gym log, scale (average, not daily) |
| **Monthly** | Habit adherence, protocol adjustments | Self-audit |
| **Quarterly** | Blood panel (metabolic, lipid, hormonal) | Lab draw |
| **Annually** | DEXA scan, VO2max test, comprehensive panel | Clinic visit |

---

## Output

```markdown
# Health Optimisation Protocol — [Name]

**Date**: [Date]
**Goals**: [Primary goals]
**Current state summary**: [1-2 sentences]

---

## Priority Actions (Start Here)

1. **[Highest-impact intervention]**: [Specific action, dosage, frequency]
   - Why: [What it addresses]
   - Timeline: [When to expect results]

2. **[Second priority]**: [Details]
   - Why: [What it addresses]

3. **[Third priority]**: [Details]

---

## Domain Protocols

### Sleep: [🟢/🟡/🔴]
- [Intervention 1]
- [Intervention 2]
- **Measure**: [How to track]

### Metabolic: [🟢/🟡/🔴]
- [Intervention 1]
- [Intervention 2]
- **Measure**: [How to track]

### Cardiovascular: [🟢/🟡/🔴]
- [Intervention 1]
- [Intervention 2]
- **Measure**: [How to track]

### Strength: [🟢/🟡/🔴]
- [Intervention 1]
- [Intervention 2]
- **Measure**: [How to track]

### Stress/Recovery: [🟢/🟡/🔴]
- [Intervention 1]
- [Intervention 2]
- **Measure**: [How to track]

### Supplementation: [🟢/🟡/🔴]
| Supplement | Dose | Timing | Reason |
|-----------|------|--------|--------|
| [Supplement] | [Dose] | [When] | [Why] |

---

## Measurement Schedule

| Checkpoint | What | When |
|-----------|------|------|
| Daily | [Metrics] | AM |
| Quarterly | [Lab panel] | [Month] |
| Annual | [Comprehensive] | [Month] |

---

## Review Triggers

Revisit this protocol if:
- Lab results change significantly
- Goals change
- New symptoms or health events
- 90 days without measurable progress in a RED domain
```

---

## Escalation / Edge cases

**Requires licensed physician sign-off before implementing**:
- Any pharmacological intervention (statins, metformin, TRT, thyroid medication)
- Significant caloric restriction or fasting protocols (>24h)
- High-dose supplementation outside standard ranges
- Exercise programming for someone with cardiovascular risk factors or history
- Hormonal optimization beyond lifestyle intervention

**Flag immediately**:
- Biomarkers suggesting acute disease (not optimization territory)
- Drug-supplement interactions (always cross-reference current medications)
- Symptoms suggesting overtraining (declining HRV trend, persistent fatigue, elevated resting HR)
- Mental health concerns (sleep issues + stress + mood changes = consider professional support)

**Protocol isn't working if**:
- No improvement in RED-flagged domains after 90 days of compliance
- Biomarkers worsening despite intervention
- Adherence is <50% (protocol may be too complex — simplify)

⚠️ **Disclaimer**: This protocol is for health optimisation and educational purposes. It does not constitute medical advice. All interventions, especially pharmacological, should be discussed with a licensed physician. Individual responses vary; monitor and adjust.

**Ross context**:
- Splits time Singapore/Dubai — consider heat acclimatization, hydration in desert climate
- CEO schedule: high stress, frequent travel, limited time → protocol must be time-efficient
- Access to good clinics in both locations for testing and monitoring
