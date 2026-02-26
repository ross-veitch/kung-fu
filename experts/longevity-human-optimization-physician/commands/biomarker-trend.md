---
name: biomarker-trend
description: Analyse biomarker results over time — trajectory, clinical significance of the trend, and recommended action.
argument-hint: "[lab results with dates — multiple timepoints] [optional: interventions made between tests]"
---

# /biomarker-trend

Trend analysis is more powerful than single-point labs. A marker within range but moving in the wrong direction is a more important finding than a stable out-of-range marker.

---

## Step 1: Gather inputs

**Required:**
- Lab results from at least 2 timepoints with dates
- What, if anything, changed between tests (diet, exercise, supplements, medications, stress)

**Minimum useful interval:** 6–8 weeks for most metabolic markers; 3 months for HbA1c, hormones; 12 months for cardiovascular risk markers.

---

## Step 2: Compute trends and classify

For each marker with multiple data points:
- Calculate the change (absolute and %)
- Identify the direction (improving ↑ / stable → / declining ↓)
- Apply clinical significance threshold — small changes within measurement error are not meaningful

**Measurement variability guidance:**
| Marker | Meaningful change | Notes |
|---|---|---|
| ApoB | >5 mg/dL | Less variable than LDL-C |
| LDL-C | >10 mg/dL | Can vary with recent diet |
| HbA1c | >0.2% | 3-month average — not acutely affected |
| Fasting glucose | >5 mg/dL consistent | Single readings vary with meal timing |
| Testosterone | >50 ng/dL | Diurnal variation — standardise draw time |
| Vitamin D | >5 ng/mL | Seasonal variation expected |
| hsCRP | >0.5 mg/L | Highly variable — single elevated reading may be acute |

---

## Step 3: Interpret trajectory

| Pattern | Significance |
|---|---|
| 🟢 Improving → optimal | On track; maintain intervention |
| 🟢 Stable within optimal | Maintain; retest at standard interval |
| 🟡 Stable but suboptimal | Intervention needed; current approach insufficient |
| 🟡 Slowly worsening from optimal | Early warning; intervention now before it's high-risk |
| 🔴 Rapidly worsening | Active management required; consider specialist |
| 🔴 Was good, now out of optimal | Something changed — investigate cause |

---

## Output

```
## Biomarker Trend Analysis — [Date range]

### Trend summary

| Marker | [Date 1] | [Date 2] | [Date 3] | Change | Trend | Status | Action |
|---|---|---|---|---|---|---|---|
| ApoB | X | Y | Z | +/-X% | ↑/→/↓ | 🟢/🟡/🔴 | [action] |
| ... | ... | ... | ... | ... | ... | ... | ... |

---

### Key findings

**Moving in the right direction:**
- [Marker]: [values] — [what's working, what drove it]

**Moving in the wrong direction — needs attention:**
- [Marker]: [values] — [likely cause, specific intervention]

**Watch — not urgent but monitor:**
- [Marker]: [why it needs watching]

---

### Likely drivers of changes (if interventions occurred between tests)
[Analysis of what appears to have worked and what hasn't]

---

### Recommendations for next test cycle
- Markers to focus on: [prioritised list]
- Timing: [when to retest and why]
- Interventions to trial before next test: [specific, measurable]
```

---

## Escalation

If a previously stable marker has deteriorated significantly between two tests with no clear benign explanation (lifestyle change, illness, etc.) — flag for physician review. Unexplained changes in kidney function, liver enzymes, CBC, or cardiac markers warrant clinical follow-up regardless of absolute level.

**Disclaimer:** Biomarker trend analysis is for educational purposes and does not constitute medical advice.
