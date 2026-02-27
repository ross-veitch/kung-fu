# /retention-plan

Diagnose a retention problem and design a lifecycle marketing intervention.

---

## When to use

When retention metrics are declining, when a specific user segment is churning faster than expected, or when you need to design a lifecycle programme for a new product or segment.

---

## Steps

### 1. Diagnose the retention problem
Before designing a solution, understand the problem:

- **Pull retention data**: D1/D7/D30/D90 retention curves by cohort. Is the problem getting worse over time (newer cohorts retaining less)?
- **Segment analysis**: Where is retention weakest? By acquisition channel, by user segment, by platform, by geography?
- **Activation check**: Are users reaching first value moment (FVM)? If activation is the problem, retention fixes won't help — fix onboarding first.
- **Drop-off analysis**: Where in the user journey do people leave? First session? After first purchase? After 30 days? The timing reveals the root cause.

### 2. Identify the root cause
Common retention failure modes:

| Pattern | Root cause | Intervention |
|---------|-----------|--------------|
| Steep D1 drop-off | Onboarding failure | Improve activation flow |
| Flat D7, steep D30 drop-off | Habit not formed | Engagement loops, push/email cadence |
| Strong D30, weak D90 | Value exhaustion | Content refresh, feature expansion, loyalty programme |
| Segment-specific churn | Wrong audience acquisition | Fix targeting, not retention |
| Seasonal churn | Natural usage pattern | Seasonal re-engagement campaigns |

### 3. Design the intervention

**For activation problems** (D0–D7):
- Simplify onboarding flow
- Progressive disclosure of features
- Welcome email series (D0: value prop, D1: first action, D3: key feature, D7: social proof)
- In-app onboarding checklists

**For habit formation problems** (D7–D30):
- Define and reinforce the core loop (action → reward → trigger)
- Push notification strategy: triggered by user behaviour, not broadcast
- Email engagement series: weekly digests, personalised recommendations
- Gamification (streaks, progress indicators) — but only if authentic to the product

**For retention plateau / value exhaustion** (D30+):
- Feature discovery campaigns (introduce features they haven't tried)
- Loyalty or rewards programme
- Content or inventory refresh signals ("new flights added," "prices dropped")
- Community or social features

**For win-back** (already churned):
- Segment by recency: recently lapsed (30–60 days) vs. long-lapsed (60+ days)
- Email series: 3 emails over 2–3 weeks (value reminder → social proof → incentive)
- Push notification: if still installed, a compelling re-engagement message
- Retargeting ads: for high-LTV segments

### 4. Define success metrics
- **Primary**: Retention rate improvement at the target day (e.g., D30 retention from 15% → 20%)
- **Secondary**: Engagement depth (sessions per week, actions per session)
- **Guardrails**: Unsubscribe rate, notification opt-out rate, support ticket volume

### 5. Build the measurement plan
- Control group (holdout) that doesn't receive the intervention
- Cohort tracking: new users entering the programme vs. pre-programme cohorts
- Attribution: which specific message or touchpoint drove the re-engagement?

---

## Output format

```
## Retention Diagnosis: [Product/Segment]

**Current state**: [D1/D7/D30 retention rates, trend, segment breakdown]
**Root cause**: [Activation failure / Habit gap / Value exhaustion / Wrong audience / Seasonal]
**Evidence**: [Data supporting the diagnosis]

## Intervention Plan

**Target segment**: [Who]
**Target metric**: [D30 retention from X% to Y%]
**Timeline**: [X weeks to implement, Y weeks to measure]

### Channel plan
| Day | Channel | Message | Trigger |
|-----|---------|---------|---------|
| D0  | Email   | Welcome + FVM guide | Signup |
| D1  | Push    | Complete first [action] | No FVM after 24h |
| D3  | Email   | Key feature discovery | Still no FVM |
| D7  | Email   | Social proof / success stories | Active but not retained |
| ...

### Success criteria
- Primary: [metric] improvement of [X%] with p < 0.05
- Guardrails: [metrics] must not degrade
- Measurement: Holdout control group of [X%]
```
