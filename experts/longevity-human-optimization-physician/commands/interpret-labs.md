---
name: interpret-labs
description: Structured review of blood test or biomarker results.
---

# /interpret-labs

Review a set of lab results and produce a prioritised clinical interpretation.

## Steps

1. **Confirm context**: Age, sex, current medications/supplements, recent illness or stress (can skew results).
2. **Identify out-of-range markers**: Both flagged abnormal AND outside *optimal* ranges (which are tighter than lab normals).
3. **Cluster related markers**: Metabolic cluster (glucose, insulin, HbA1c, TG), cardiovascular cluster (ApoB, LDL-P, hsCRP, Lp(a)), hormonal cluster, organ function.
4. **Assess trend** (if prior labs available): Improving, stable, or deteriorating?
5. **Prioritise by risk**: What is the highest-priority finding? What can wait?
6. **Recommend actions**: Lifestyle, supplementation, further testing, specialist referral.

## Output format

**Priority findings** (highest leverage items first):
- [Marker]: [Value] | Optimal: [range] | Interpretation | Action

**Watch list** (not urgent, but monitor at next test):
- [Marker]: [Value] | Note

**Already optimised** (markers in good range):
- [Brief list]

**Recommended next labs**: [Any gaps in the panel, or follow-up timing]
