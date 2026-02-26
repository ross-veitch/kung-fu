---
name: supplement-review
description: Evaluate a supplement stack for evidence quality, dosing, interactions, and risk
argument-hint: "[supplement list or proposed stack] [optional: current medications, goals]"
---

# /supplement-review

Evaluate a supplement stack or proposed intervention for evidence, dosing, interactions, and risk.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Supplements to review (names and current/proposed dosages)
- Goal (what are you trying to achieve?)

**Optional but improves output**:
- Current medications (critical for interaction check)
- Current health status and relevant biomarkers
- Existing conditions or contraindications
- Budget constraints
- Prior experience with these supplements (any known responses?)

**From USER.md** (load automatically if present):
- Known medications
- Known sensitivities or allergies
- Previous supplement history and responses

**If medications not disclosed**: Flag that interaction check is incomplete and potentially dangerous.

---

## Step 2: Evaluate each supplement

For each supplement, assess:

### Mechanism
- How does it work? (Biochemical pathway, target system)
- Is the mechanism well-understood or speculative?

### Evidence Quality

| Level | Definition | Examples |
|-------|-----------|----------|
| **Strong** | Multiple RCTs, meta-analyses, consistent results | Creatine for performance, Vitamin D for deficiency |
| **Moderate** | Some RCTs, mixed results, or specific populations only | Ashwagandha for cortisol, Berberine for glucose |
| **Weak** | Observational only, animal studies, mechanistic plausibility | Most nootropics, NMN for longevity in humans |
| **None** | No meaningful evidence, or evidence contradicts claims | Many proprietary blends, "detox" supplements |

### Effective Dosing
- What dose is supported by evidence?
- Is the proposed dose in that range?
- Timing: when to take for best effect (with food? AM vs PM? cycling?)

### Risk Profile

| Level | Definition |
|-------|-----------|
| **Low** | Generally well-tolerated, minimal side effects, wide safety margin |
| **Moderate** | Some side effects possible, dose-dependent risks, needs monitoring |
| **High** | Significant risk of adverse effects, narrow therapeutic window, or serious interactions |

---

## Step 3: Check interactions

**Drug-supplement interactions** (if medications provided):
- Pharmacokinetic: Does the supplement affect drug absorption, metabolism, or clearance?
- Pharmacodynamic: Does it amplify or counteract the drug's effect?

**Supplement-supplement interactions**:
- Absorption competition (e.g., calcium blocks iron absorption)
- Synergies (e.g., Vitamin D + K2 for calcium metabolism)
- Redundancies (two supplements targeting same pathway = diminishing returns)

**Common high-risk interactions**:
- Blood thinners + fish oil/vitamin E/ginkgo → increased bleeding risk
- Thyroid medication + calcium/iron → reduced absorption
- MAOIs + St. John's Wort → serotonin syndrome risk
- Statins + Red Yeast Rice → doubled statin effect (contains lovastatin)

---

## Output

```markdown
# Supplement Review

**Goal**: [What the stack is trying to achieve]
**Medications**: [Current medications, or "none disclosed"]

---

## Stack Assessment

| Supplement | Dose | Evidence | Risk | Verdict | Note |
|-----------|------|----------|------|---------|------|
| [Name] | [Dose] | Strong/Moderate/Weak/None | Low/Moderate/High | ✅ Keep / ⚠️ Adjust / ❌ Drop | [Key note] |
| [Name] | [Dose] | [Level] | [Level] | [Verdict] | [Note] |

---

## Detailed Review

### [Supplement 1]: [✅ Keep / ⚠️ Adjust / ❌ Drop]

**Mechanism**: [How it works — 1-2 sentences]

**Evidence**: [Strong / Moderate / Weak / None]
- [Key study or meta-analysis reference]
- [What the evidence actually shows — effect size, population]

**Effective dose**: [Evidence-supported range]
- Current dose: [X] → [Adequate / Too low / Too high]

**Timing**: [When to take, with/without food]

**Risk**: [Low / Moderate / High]
- [Side effects to watch for]
- [Contraindications]

**Interactions**: [With other supplements in stack or medications]

---

### [Supplement 2]: [✅ / ⚠️ / ❌]

[Repeat structure]

---

## Interactions Matrix

| Interaction | Type | Risk | Action |
|------------|------|------|--------|
| [Supp A] + [Supp B] | [Synergy / Competition / Redundancy] | [Low/Med/High] | [Separate timing / reduce dose / drop one] |
| [Supp] + [Medication] | [Absorption / Effect modifier] | [Low/Med/High] | [Separate by X hours / monitor / discontinue] |

---

## Recommended Stack

**Keep** (evidence supports, risk acceptable):
| Supplement | Dose | Timing |
|-----------|------|--------|
| [Name] | [Dose] | [When] |

**Adjust** (change dose or timing):
| Supplement | Current | Recommended | Reason |
|-----------|---------|-------------|--------|
| [Name] | [Current dose] | [New dose] | [Why] |

**Drop** (insufficient evidence or unfavorable risk):
| Supplement | Reason |
|-----------|--------|
| [Name] | [Why to discontinue] |

**Consider adding** (based on goals and current gaps):
| Supplement | Dose | Evidence | Reason |
|-----------|------|----------|--------|
| [Name] | [Dose] | [Level] | [What gap it fills] |

---

## Cost-Benefit Summary

**Monthly cost estimate**: $[X]
**Highest-value supplements** (best evidence per dollar): [Top 3]
**Lowest-value supplements** (drop first if cutting): [Bottom 2-3]
```

---

## Escalation / Edge cases

**Flag immediately if**:
- **Drug interaction detected**: Especially with blood thinners, cardiac medications, psychiatric medications, immunosuppressants
- **High-dose fat-soluble vitamins**: A, D, E, K at doses well above RDA — accumulation risk
- **Hormonal supplements**: DHEA, pregnenolone, melatonin at high doses — can affect endogenous production
- **Liver/kidney load**: Multiple supplements metabolized by same pathway (CYP450) — especially with medications

**Recommend physician consultation for**:
- Any prescription-grade supplement (high-dose niacin, berberine at therapeutic doses, etc.)
- Hormonal optimization supplements
- Supplements taken alongside 3+ medications
- Pre-existing liver or kidney conditions

**Common supplement mistakes**:
- **Proprietary blends**: Can't evaluate what you can't see — avoid undisclosed dosing
- **Megadosing**: More is not better (especially B6 — neurotoxic at high chronic doses)
- **Form matters**: Magnesium oxide (poor absorption) vs glycinate (good). Vitamin D2 vs D3. Cheap forms often ineffective.
- **No baseline labs**: Taking supplements without knowing your starting levels is flying blind

⚠️ **Disclaimer**: This review is for educational purposes. It does not constitute medical advice. Discuss all supplements with a licensed healthcare provider, especially if you take prescription medications or have existing health conditions.
