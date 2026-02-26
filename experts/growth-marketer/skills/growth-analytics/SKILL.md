---
name: growth-analytics
description: >
  Attribution models, incrementality testing, cohort analysis, funnel analysis, 
  and experiment design. Use when measuring true marketing impact, designing 
  A/B tests, or diagnosing growth leaks.
---

# Growth Analytics

## Attribution Models

**Last-Click**: 100% credit to final touch (broken — ignores upper funnel)  
**First-Click**: 100% credit to first touch (ignores conversion drivers)  
**Linear**: Equal credit across all touches (simple but naive)  
**Time-Decay**: More credit to recent touches  
**Data-Driven** (GA4/Meta): ML model distributes credit based on conversion probability

**Best practice**: Use data-driven attribution when you have sufficient data (>1000 conversions/month). Otherwise, use last-click but validate with incrementality tests.

---

## Incrementality Testing

**Goal**: Measure true causality (did the ad cause the conversion, or would it have happened anyway?)

**Methods**:
1. **Geo Holdout**: Run ads in 80% of markets, hold out 20% → measure lift
2. **Brand Search Holdout**: Pause brand search ads for 2 weeks → measure organic traffic change
3. **PSA Test**: Replace real ads with PSAs (public service announcements) in holdout group

**Example**: Meta reports 1000 conversions. Geo holdout shows only 600 incremental conversions (40% would have converted anyway). True CAC is 67% higher than reported.

---

## Cohort Analysis

Track users grouped by acquisition date/channel. Measure retention, revenue, LTV over time.

**Example (monthly cohorts)**:

| Cohort | M0 | M1 | M2 | M3 | LTV (M3) |
|---|---|---|---|---|---|
| Jan 2024 | 100% | 40% | 30% | 25% | $120 |
| Feb 2024 | 100% | 45% | 35% | 30% | $135 |

**Insights**: Feb cohort has better retention and LTV → investigate what changed (better onboarding? different channel mix?).

---

## Funnel Analysis

**AARRR Framework**: Acquisition → Activation → Retention → Revenue → Referral

Measure conversion rates at each stage. Optimize the biggest leak first.

**Example**:
- 10,000 visitors → 5% signup rate → 500 signups
- 500 signups → 40% activation rate → 200 activated users
- 200 activated → 20% purchase rate → 40 customers

**Biggest leak**: Activation (60% drop-off). Focus here first.

---

## A/B Testing

**Sample size calculator**: Use to determine how long to run test.

**Statistical significance**: 95% confidence minimum. Don't call winners early.

**Common mistakes**:
- Peeking (checking results early and stopping test)
- Testing too many variants (dilutes traffic)
- Not accounting for seasonality (run tests for full weeks, not mid-week)
- Ignoring segment effects (test might win for new users, lose for returning users)
