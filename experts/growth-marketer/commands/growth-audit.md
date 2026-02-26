---
name: growth-audit
description: Audit the current growth engine with channel health assessment, biggest leaks, and prioritized experiments
argument-hint: "[company/product name] [optional: channel data or funnel metrics]"
---

# /growth-audit

Audit the current growth engine. Output: channel health assessment (GREEN/YELLOW/RED), biggest opportunity areas ranked by impact, and 3 specific experiments to run next.

---

## Step 1: Gather funnel metrics

**AARRR Framework**:
- **Acquisition**: Traffic sources, visitors/month
- **Activation**: Signup rate, onboarding completion rate
- **Retention**: D1/D7/D30 retention, repeat purchase rate
- **Revenue**: Conversion rate, AOV (average order value)
- **Referral**: Referral rate, viral coefficient

---

## Step 2: Assess channel health

For each acquisition channel, calculate:
- **CAC** (Customer Acquisition Cost)
- **LTV:CAC Ratio** (target: 3:1 to 5:1)
- **Payback Period** (target: <12 months)

**Channel Health**:
- 🟢 **GREEN**: LTV:CAC >3:1, payback <12 months
- 🟡 **YELLOW**: LTV:CAC 2-3:1, payback 12-18 months
- 🔴 **RED**: LTV:CAC <2:1, payback >18 months

---

## Step 3: Identify biggest leaks

Which stage has the largest drop-off? Focus there.

**Example**:
- 10K visitors → 5% signup = 500 signups (**95% leak at acquisition**)
- 500 signups → 80% activation = 400 activated (**20% leak**)
- 400 activated → 20% purchase = 80 customers (**80% leak at conversion**)

**Biggest opportunity**: Conversion (80% drop-off). Optimize checkout flow before acquisition.

---

## Step 4: Prioritize experiments

**Format**:
1. **Experiment**: [What to test]
2. **Hypothesis**: [Expected outcome]
3. **Impact**: [High/Med/Low]
4. **Effort**: [Days to implement]
5. **Priority**: [P0/P1/P2]

---

## Output Example

```markdown
# Growth Audit: [Company Name]

## Channel Health

| Channel | CAC | LTV:CAC | Payback | Health |
|---|---|---|---|---|
| Google Search | $45 | 4.5:1 | 9 mo | 🟢 GREEN |
| Meta Ads | $80 | 2.2:1 | 15 mo | 🟡 YELLOW |
| SEO | $15 | 10:1 | 3 mo | 🟢 GREEN |
| Referral | $5 | 20:1 | 1 mo | 🟢 GREEN |

**Recommendation**: Scale Google Search + SEO. Fix or pause Meta.

---

## Biggest Leaks

1. **Conversion** (checkout): 80% drop-off → biggest opportunity
2. **Activation** (onboarding): 20% drop-off → medium priority
3. **Acquisition** (signup): 95% don't sign up → lowest priority (funnel stage 1, focus lower-funnel first)

---

## Top 3 Experiments

### 1. Reduce checkout friction (P0)
- **Test**: One-page checkout vs multi-step
- **Hypothesis**: Reduce steps → improve conversion by 15%
- **Impact**: High (affects 400 users/month)
- **Effort**: 5 days

### 2. Add social proof to landing page (P1)
- **Test**: Customer reviews + trust badges
- **Hypothesis**: Increase signup rate from 5% → 7%
- **Impact**: Medium
- **Effort**: 2 days

### 3. Refresh Meta ad creative (P1)
- **Test**: UGC vs brand creative
- **Hypothesis**: Lower CAC from $80 → $60
- **Impact**: High (if successful, makes Meta viable again)
- **Effort**: 3 days
```
