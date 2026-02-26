---
name: interpret-labs
description: Structured review of blood test or biomarker results — optimal ranges, risk classification, and prioritised action plan.
argument-hint: "[lab results — paste values or attach] [optional: prior results for trend analysis]"
---

# /interpret-labs

Review lab results against optimal (not just normal) ranges, cluster related markers, assess trends, and produce a prioritised action plan.

---

## Step 1: Gather inputs

**Required:**
- Lab results with values and units
- Age, sex
- Any current medications or supplements that could affect results

**Optional but improves interpretation:**
- Prior lab results (for trend analysis — single-point data is weaker)
- Recent illness, major stress event, or strenuous exercise in the 48 hours before the draw (can skew WBC, cortisol, glucose, CK)
- Specific concerns or questions to address

**From USER.md:**
- Personal baseline values (where established)
- Known conditions or genetic factors (e.g., familial hypercholesterolaemia, MTHFR variant)

---

## Step 2: Cluster markers and apply optimal ranges

**Key distinction:** Lab "normal" ranges are population averages, including unhealthy people. Optimal ranges are narrower.

**Metabolic cluster:**
| Marker | Lab Normal | Optimal | Risk if outside optimal |
|---|---|---|---|
| Fasting glucose | 70–99 mg/dL | 70–85 mg/dL | Pre-diabetes risk above 90 |
| Fasting insulin | <25 µIU/mL | <6 µIU/mL | Insulin resistance even in "normal" range |
| HbA1c | <5.7% | <5.3% | Metabolic dysfunction risk 5.4–5.6% |
| Triglycerides | <150 mg/dL | <80 mg/dL | Strong signal for insulin resistance |
| HOMA-IR | <2.9 | <1.5 | IR present at >2.0 even with normal glucose |

**Cardiovascular cluster:**
| Marker | Lab Normal | Optimal | Risk if outside optimal |
|---|---|---|---|
| ApoB | <90 mg/dL | <60 mg/dL | Most direct atherogenicity measure |
| LDL-C | <130 mg/dL | <90 mg/dL | Useful but less precise than ApoB |
| Lp(a) | <50 mg/dL | <30 mg/dL | Genetic; doesn't respond to statins |
| hsCRP | <3.0 mg/L | <0.5 mg/L | Systemic inflammation marker |
| HDL | >40 (M), >50 (F) | >60 mg/dL | Inverse risk factor |

**Hormonal cluster:**
| Marker | Optimal range | Notes |
|---|---|---|
| Testosterone (total, M) | 600–1000 ng/dL | "Normal" low end (300) is not optimal |
| Free testosterone | 15–25 ng/dL | Total T without SHBG context is incomplete |
| SHBG | 20–50 nmol/L | High SHBG → lower free T despite adequate total |
| DHEA-S | Age-matched upper quartile | Correlates with biological vs chronological age |
| TSH | 0.4–4.0 mU/L | Optimal closer to 1.0–2.0; >3 warrants Free T4/T3 |
| Free T3 | 3.5–4.3 pg/mL | End-organ thyroid effect; often omitted |

**Other:**
- Vitamin D: lab normal >20; optimal 50–80 ng/mL
- Ferritin: normal 12–300 (M); optimal 70–150; >200 elevated inflammation risk
- eGFR, ALT, AST, creatinine: kidney/liver function

---

## Step 3: Classify findings

| Status | Criteria | Action |
|---|---|---|
| 🟢 OPTIMAL | Within optimal range, trending stable or improving | Monitor at standard interval |
| 🟡 SUBOPTIMAL | Outside optimal range but within lab normal; or trending wrong direction | Targeted intervention; retest in 3–6 months |
| 🔴 ELEVATED RISK | Outside lab normal range | Active management; specialist input if applicable |
| 🚨 ESCALATE | Critical value or pattern suggesting acute risk | Refer to physician immediately |

---

## Output

```
## Lab Interpretation — [Date]
**Context**: [Age, sex, relevant history]

---

### 🚨 Urgent findings
[If any — specific values, risk, recommended action including physician referral]

---

### Priority actions (highest leverage)

| Marker | Value | Optimal | Status | Recommended action |
|---|---|---|---|---|
| [Marker] | [X] | [range] | 🟢/🟡/🔴 | [specific action] |
| ... | ... | ... | ... | ... |

---

### Trending (prior results available)
| Marker | Prior | Current | Trend | Significance |
|---|---|---|---|---|
| [Marker] | [X] | [Y] | ↑/→/↓ | [interpretation] |

---

### Already optimised
[Brief list of markers in good range — acknowledge what's working]

---

### Recommended next steps
1. [Action — specific intervention, supplement, lifestyle change]
2. [Follow-up test or specialist]
3. [Timing for next panel — and which markers to focus on]
```

---

## Escalation

**Refer to physician immediately if:**
- Creatinine, eGFR, or liver enzymes significantly out of range (organ function concern)
- Critical glucose values (>250 or <50 mg/dL)
- Haemoglobin, WBC, or platelet counts significantly abnormal
- Troponin elevated (cardiac marker)
- Any marker with an active "critical value" flag from the lab

**Disclaimer:** This interpretation is for educational and optimisation purposes. It does not constitute medical advice and is not a substitute for clinical assessment by a licensed physician. All interventions should be discussed with a qualified healthcare provider.

**Ross context:**
- Singapore-based: access to private labs (Healthway, Raffles, pathology labs) and optimization-focused physicians
- Dubai-based access: Cleveland Clinic Abu Dhabi, German Heart Centre, etc.
- Track trends longitudinally — build personal baseline over time
- If Ross is training (running, cycling): flag exercise-related marker distortions (CK, cortisol, ferritin)
