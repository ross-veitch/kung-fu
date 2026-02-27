# /metrics-review

Review product metrics to diagnose a health, retention, or funnel problem.

---

## When to use

When a key metric is moving in the wrong direction, during a weekly/monthly product health review, before a strategy decision, or when leadership asks "why is [metric] down?"

---

## Steps

### 1. Define the review scope
- **Which metric is the concern?** (Conversion, retention, engagement, revenue, activation)
- **Time period**: What window shows the problem? (Last 7 days, last 30 days, vs. same period last year)
- **Severity**: How large is the delta? (5% decline = optimise; 25% decline = fire drill)

### 2. Data gathering checklist

Pull the following before forming any hypothesis:

**Acquisition metrics** (to rule out traffic/quality issues):
- [ ] Total users / new users (volume)
- [ ] Traffic by channel (organic, paid, direct, email, push)
- [ ] New user cohort quality — are acquisition sources changing?

**Activation metrics**:
- [ ] % of new users reaching FVM (first value moment) within 7 days
- [ ] Onboarding funnel step-by-step conversion
- [ ] Time to FVM

**Retention metrics**:
- [ ] D1 / D7 / D30 retention by cohort
- [ ] DAU / WAU / MAU trends
- [ ] DAU/MAU ratio (stickiness)

**Engagement metrics**:
- [ ] Sessions per user per week
- [ ] Actions per session
- [ ] Feature adoption rates (which features are being used / ignored)

**Funnel metrics** (if transactional):
- [ ] Full funnel conversion (visit → search → details → booking)
- [ ] Drop-off at each step
- [ ] Average order value / booking value

**Revenue metrics**:
- [ ] Revenue per user
- [ ] Take rate (if marketplace)
- [ ] Cancellation / refund rate

### 3. Segment the problem

A metric declining overall almost always means it's declining in a specific segment. Find the segment:

- **By platform**: Web vs app vs mobile web — which is declining?
- **By market/geography**: Is this global or specific to one country?
- **By user type**: New users vs. returning users?
- **By acquisition channel**: Did the mix shift to lower-quality channels?
- **By cohort**: Are all cohorts declining or only recent ones? (Recent-only = product change caused it; all cohorts = external factor)
- **By device**: iOS vs Android? (Useful for catching OS update issues)

### 4. Formulate hypotheses

Generate 3–5 hypotheses that could explain the metric movement. For each:
- What data supports this hypothesis?
- What data would refute it?
- How can we test it quickly?

**Common culprits by metric**:

| Metric declining | Common causes |
|----------------|--------------|
| Conversion rate | Price change, UX change, traffic mix shift, competitor |
| D7 retention | Onboarding issue, feature regression, wrong user targeting |
| DAU | Notification reduction, habit disruption, competitor |
| Revenue/user | Mix shift (lower-value bookings), pricing change, take rate change |
| App store rating | Bug, UX regression, content issue |

### 5. Validate or refute each hypothesis

- Check dates: Did the decline start the same day as a product release or config change?
- Check logs: Any errors or latency spikes that coincide?
- Check experiments: Any A/B tests running that could be causing this?
- Check externals: Industry event, competitor action, OS/browser update, seasonality?

### 6. Produce findings and recommendations

---

## Output format

```
## Metrics Review: [Metric] — [Date range]

**Situation**: [Metric] has [declined/improved] by [X%] over [time period].

### Data summary
| Metric | Current | Previous period | YoY | Trend |
|--------|---------|----------------|-----|-------|
| [Metric] | [X] | [X] | [+/-X%] | [↑↓→] |

### Segmentation findings
- Platform: [Finding]
- Geography: [Finding]
- User type: [Finding]
- Cohort: [Finding]

### Hypotheses
| # | Hypothesis | Supporting data | Refuting data | Confidence |
|---|-----------|----------------|---------------|------------|
| 1 | [Hypothesis] | [Data] | [Data] | [H/M/L] |

### Root cause assessment
[Most likely root cause with evidence]

### Recommended actions
1. [Immediate action to investigate or fix]
2. [Short-term intervention]
3. [Monitoring — what to watch and when]

### Open questions
- [What we still don't know]
```
