---
name: ab-test
description: Design or analyse an A/B test with proper statistical rigor
argument-hint: "[test description or results] [design/analyse mode]"
---

# /ab-test

Design or analyse an A/B test. Covers: hypothesis, sample size, randomisation, result interpretation (statistical + practical significance), common mistakes.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Mode: **design** (planning a test) or **analyse** (interpreting results)
- Hypothesis: what are you testing? (specific change + expected outcome)
- Primary metric: what are you measuring? (conversion, revenue, engagement)

**For design mode**:
- Baseline rate (current conversion, CTR, etc.)
- Minimum detectable effect (MDE): smallest change worth detecting (e.g., +5% relative)
- Traffic available (users/day or sessions/day)
- Statistical parameters (α = 0.05, power = 0.80 are standard)

**For analyse mode**:
- Test results: control vs treatment metrics (mean, std dev, sample size)
- Test duration and sample size achieved
- Any anomalies during test (bugs, outages, holidays)

**Optional but improves output**:
- Secondary metrics (guardrail metrics, diagnostic metrics)
- Segment hypotheses (will effect vary by user type, device, market?)
- Prior test results in this area

**From PLAYBOOK.md** (load automatically if present):
- Standard statistical parameters (org's α and power thresholds)
- Minimum test duration policy
- Guardrail metrics to always check

---

## Step 2: Design — Calculate sample size

**Formula**: Sample size per variant
```
n = (Z_α/2 + Z_β)² × 2 × p × (1-p) / (MDE × p)²
```

Where:
- `p` = baseline conversion rate
- `MDE` = minimum detectable effect (relative lift)
- `Z_α/2` = 1.96 (for α = 0.05, two-tailed)
- `Z_β` = 0.84 (for power = 0.80)

**Example**:
- Baseline conversion: 3% (p = 0.03)
- MDE: +20% relative (detect if new rate is 3.6%)
- α = 0.05, power = 0.80
- **Result**: n = 3,922 per variant (7,844 total)
- At 1,000 users/day → **8 days minimum**

**Output**:
- Sample size needed per variant: [N]
- Total sample size: [N × variants]
- Test duration (at current traffic): [X days]

**If underpowered**: Flag that test won't detect effect at this sample size. Options: increase traffic allocation, run longer, or accept larger MDE.

---

## Step 3: Design — Check randomisation plan

**Requirements for valid A/B test**:
- ✅ **Random assignment**: Each user has equal probability of control vs treatment
- ✅ **Unit of randomisation**: User-level (not session-level, unless session-based product)
- ✅ **Consistent experience**: Same user always sees same variant (no flip-flopping)
- ✅ **Isolation**: One test at a time, or orthogonal tests (no interaction effects)

**Common mistakes**:
- ❌ Assigning by time (morning = control, afternoon = treatment) → time-of-day bias
- ❌ Assigning by geography when geography affects metric → confounded
- ❌ Reassigning on every page load → inconsistent experience
- ❌ Starting on Monday (different behavior than weekend)

**Guardrails to check**:
- Traffic split is actually 50/50 (or specified ratio)
- No bot traffic or fraud skewing results
- No overlap with other running tests

---

## Step 4: Analyse — Calculate statistical significance

**Inputs from results**:
- Control: n₁ conversions out of N₁ trials → p₁ = n₁/N₁
- Treatment: n₂ conversions out of N₂ trials → p₂ = n₂/N₂
- Observed lift: (p₂ - p₁) / p₁

**Z-test for proportions**:
```
pooled_p = (n₁ + n₂) / (N₁ + N₂)
SE = sqrt(pooled_p × (1 - pooled_p) × (1/N₁ + 1/N₂))
Z = (p₂ - p₁) / SE
p-value = 2 × (1 - Φ(|Z|))   [two-tailed]
```

**Result**:
- p-value < 0.05 → **statistically significant**
- p-value ≥ 0.05 → **not significant** (can't conclude treatment is different)

**Confidence interval** (95%):
```
CI = (p₂ - p₁) ± 1.96 × SE
```
Shows range of plausible treatment effects.

---

## Step 5: Analyse — Assess practical significance

**Statistical significance ≠ practical significance**

| Observed Lift | Statistical Significance | Practical Significance | Decision |
|---------------|--------------------------|------------------------|----------|
| +20% | p < 0.001 | YES (large impact) | **Ship it** |
| +2% | p = 0.03 | NO (too small to matter) | **Don't ship** |
| +15% | p = 0.08 | YES but not stat sig | **Inconclusive** — run longer or larger test |

**Questions to ask**:
- Is the lift large enough to justify the cost/risk of shipping?
- Does it move the needle on business goals?
- Is the confidence interval tight enough? (wide CI = more uncertainty)

**Example**:
- Treatment converted at 3.5%, control at 3.0%
- Lift: +16.7% relative, +0.5pp absolute
- p = 0.02 (statistically significant)
- 95% CI: [+0.1pp, +0.9pp]
- **Decision**: Ship if +0.5pp conversion is worth the engineering cost

---

## Step 6: Check for common pitfalls

**Red flags that invalidate results**:

| Issue | What it is | How to detect | Impact |
|-------|------------|---------------|--------|
| **Peeking** | Checking results before planned end → inflated false positive rate | Test stopped early with "p < 0.05" | Invalid p-value |
| **Multiple testing** | Running many tests without correction → some will show false significance | 20 tests at α=0.05 → expect 1 false positive | Bonferroni correction: α/N |
| **Novelty effect** | Users engage more because it's new → effect disappears later | Metric improves week 1, regresses week 2+ | Run longer (2-4 weeks) |
| **Survivorship bias** | Only measuring users who stayed → ignoring those who churned | Treatment shows higher engagement but also higher churn | Check overall user counts |
| **Sample ratio mismatch** | Traffic split is not 50/50 → something wrong with randomisation | 55/45 split when expecting 50/50 | Invalidates test |

---

## Output

### Design Mode

```markdown
# A/B Test Design: [Test Name]

## Hypothesis
**Change**: [What we're changing]
**Expected outcome**: [Predicted direction and magnitude]
**Rationale**: [Why we think this will work]

---

## Primary Metric
**Metric**: [e.g., Conversion rate]
**Baseline**: [Current rate, e.g., 3.0%]
**MDE**: [Minimum detectable effect, e.g., +20% relative = 3.6%]

---

## Sample Size Calculation

**Parameters**:
- α (significance level): 0.05
- Power (1 - β): 0.80
- Baseline: [p]
- MDE: [relative lift %]

**Result**:
- Sample size per variant: [N]
- Total sample size: [N × 2]
- Test duration at [X] users/day: **[Y] days**

**Recommendation**: [Run for X days minimum, or increase traffic if needed]

---

## Randomisation Plan

**Unit**: User-level (consistent experience per user)

**Assignment**: [Random, 50/50 split, assigned on first visit]

**Guardrails**:
- ✅ Check traffic split is 50/50 after day 1
- ✅ No other tests running on same population
- ✅ Filter out bot traffic

---

## Secondary Metrics

**Guardrails** (must not degrade):
- [Metric]: [e.g., Revenue per user]
- [Metric]: [e.g., Bounce rate]

**Diagnostics** (help interpret results):
- [Metric]: [e.g., Time on page]
- [Metric]: [e.g., Scroll depth]

---

## Success Criteria

**Ship if**:
1. Primary metric improves by ≥[MDE] with p < 0.05
2. Guardrail metrics don't degrade significantly
3. Effect is consistent across key segments (mobile/desktop, new/returning)

**Don't ship if**:
1. No statistical significance (p ≥ 0.05)
2. Lift is too small to matter (< MDE)
3. Guardrail metrics tank
```

---

### Analyse Mode

```markdown
# A/B Test Results: [Test Name]

## Test Setup
**Duration**: [Start date] to [End date] ([N] days)
**Traffic**: [N] users per variant

---

## Results

| Metric | Control | Treatment | Absolute Lift | Relative Lift | p-value | Significant? |
|--------|---------|-----------|---------------|---------------|---------|--------------|
| [Primary] | [val] | [val] | [+X pp] | [+Y%] | [p] | ✅ / ❌ |
| [Guardrail] | [val] | [val] | [+X pp] | [+Y%] | [p] | ✅ / ❌ |

**Primary metric**: [Name]
- Control: [p₁] ([n₁]/[N₁])
- Treatment: [p₂] ([n₂]/[N₂])
- Absolute lift: [+X percentage points]
- Relative lift: [+Y%]
- p-value: [p] → **[Significant / Not significant]**
- 95% CI: [[lower, upper]]

---

## Statistical Significance: [✅ / ❌]

**Interpretation**:
[p < 0.05: Treatment is statistically different from control]
[p ≥ 0.05: No significant difference detected]

---

## Practical Significance: [✅ / ❌]

**Is the lift large enough to matter?**
[Assessment of whether the observed lift justifies shipping]

**Example**:
- +0.5pp conversion = +$150K/year in GMV at current traffic
- Engineering cost: 2 weeks dev time
- **Verdict**: [Worth it / Not worth it]

---

## Guardrail Metrics: [✅ / ❌]

[Check that no critical metrics degraded]

---

## Segment Analysis

| Segment | Control | Treatment | Lift | p-value |
|---------|---------|-----------|------|---------|
| [e.g., Mobile] | [val] | [val] | [+X%] | [p] |
| [e.g., Desktop] | [val] | [val] | [+X%] | [p] |
| [e.g., New users] | [val] | [val] | [+X%] | [p] |
| [e.g., Returning] | [val] | [val] | [+X%] | [p] |

**Observation**: [Is effect consistent across segments, or isolated to one?]

---

## Red Flags / Anomalies

**Sample ratio mismatch**: [Check if traffic split is 50/50]
- Expected: 50/50
- Actual: [X%/Y%]
- Issue? [YES/NO]

**Novelty effect**: [Did metric improve early then regress?]
- Week 1: [+X%]
- Week 2: [+Y%]
- Trend: [Stable / Declining / Increasing]

**External events**: [Holidays, outages, marketing campaigns during test?]
- [Event]: [Impact]

---

## Recommendation: [SHIP / DON'T SHIP / RUN LONGER]

**Rationale**:
[Clear recommendation with reasoning]

**If RUN LONGER**:
- Current power: [X%]
- Need [N more] users per variant to achieve 80% power
- Run for [N more] days
```

---

## Escalation / Edge cases

**Don't trust results if**:
- **Underpowered**: Sample size < calculated requirement → p-value unreliable
- **Sample ratio mismatch**: Traffic split not 50/50 → randomisation broken
- **Peeked early**: Test stopped because "p < 0.05" before planned end → inflated false positive
- **Major anomaly**: Bug, outage, or holiday during test → results not representative

**Escalate to leadership if**:
- Treatment significantly hurts key metric (>10% drop in conversion or revenue)
- Guardrail metric tanks (data loss, security issue, performance degradation)
- Unexplained result (treatment should improve, but significantly hurts — something's wrong)

**Request more data when**:
- Borderline significance (p = 0.06) but practically important lift → run longer
- Large variance → tight CI requires more samples
- Inconsistent across segments → investigate interaction effects

**Common mistakes to avoid**:
- **Peeking**: Checking daily for p < 0.05, stopping when it crosses → use sequential testing if you must peek
- **HARKing**: Hypothesizing after results are known → this is p-hacking
- **Ignoring practical significance**: "p = 0.03!" but lift is +0.1% → not worth shipping
- **Cherry-picking segments**: "Treatment lost overall but won on mobile!" → this is fishing for significance

**Ross/Wego context**:
- Typical baseline conversion: 1-3% (flight), 3-5% (hotel)
- Meaningful lift: >5% relative (big enough to move the needle at Wego's scale)
- Seasonality: avoid running tests across Ramadan/Eid boundaries (behavior changes sharply)
- Market differences: test may win in UAE but lose in Egypt — always segment by market
