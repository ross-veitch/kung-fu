---
name: legal-brief
description: Concise legal briefing with risk classification and recommended action
argument-hint: "[legal question or issue] [optional: jurisdiction, facts]"
---

# /legal-brief

Produce a concise, plain-English legal briefing with issue identification, risk classification, and recommended action.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Legal question or issue (what do you need to know?)
- Relevant facts (what's the situation?)
- Jurisdiction(s) (where does this apply?)

**Optional but improves output**:
- Business context (why does this matter? what's the commercial goal?)
- Timeline (is there urgency?)
- Prior legal advice on this topic
- Risk tolerance (conservative vs aggressive posture)

**From PLAYBOOK.md** (load automatically if present):
- Standard legal positions
- Existing legal opinions on similar issues
- Outside counsel contacts by specialty

**If jurisdiction is unclear**: Brief for Singapore (Wego holding company) and flag. If MENA-relevant, note UAE and Saudi positions too.

---

## Step 2: Identify and frame the issues

Break the question into discrete legal issues:

**Issue identification**:
1. [Legal issue 1]: [One sentence framing]
2. [Legal issue 2]: [One sentence framing]
3. [Legal issue 3]: [One sentence framing]

For each issue:
- What law governs this?
- What's the legal test or standard?
- How do the facts apply?
- What are the exceptions or grey areas?

---

## Step 3: Classify risk per issue

| Risk Level | Meaning | Action |
|------------|---------|--------|
| 🟢 **LOW** | Clear legal position, minimal risk | Proceed with standard safeguards |
| 🟡 **MEDIUM** | Ambiguity exists, defensible but not certain | Proceed with documented risk acceptance |
| 🔴 **HIGH** | Significant legal risk, potential liability | Get specialist counsel opinion before proceeding |
| ⛔ **CRITICAL** | Clear violation or existential risk | Stop, do not proceed, get counsel immediately |

**Classification factors**:
- Severity of consequence (fine, lawsuit, criminal liability, reputational damage)
- Probability (clear violation vs grey area vs theoretical risk)
- Detectability (will anyone notice? Is there a regulator watching?)
- Reversibility (can you undo it if you're wrong?)

---

## Step 4: Practical analysis

For each issue, address:

**The legal position**: What does the law actually say? (statute, regulation, case law)

**Application to facts**: How does this legal position apply to the specific situation?

**Uncertainties**: Where is the law unclear, evolving, or jurisdiction-dependent?

**Practical implications**: What does this mean for the business? What can and can't you do?

---

## Output

```markdown
# Legal Brief: [Topic]

## Question
[Restated precisely — what exactly is being asked?]

## Jurisdiction(s)
[Applicable law(s)]

---

## Summary
[The answer in 2-3 sentences. Lead with the bottom line. What can or cannot be done.]

---

## Issue Analysis

### Issue 1: [Issue title]

**Risk Level**: [🟢 LOW / 🟡 MEDIUM / 🔴 HIGH / ⛔ CRITICAL]

**Legal basis**: [Relevant statute, regulation, or legal principle]

**Analysis**:
[2-3 paragraphs: what the law says, how it applies to these facts, where the uncertainty is]

**Practical implication**: [What this means for the business in plain English]

---

### Issue 2: [Issue title]

**Risk Level**: [🟢 / 🟡 / 🔴 / ⛔]

**Legal basis**: [Source of law]

**Analysis**:
[Analysis]

**Practical implication**: [What it means]

---

### Issue 3: [Issue title]

[Repeat as needed]

---

## Risk Summary

| Issue | Risk Level | Key Risk | Mitigant |
|-------|-----------|----------|----------|
| [Issue 1] | 🟢/🟡/🔴/⛔ | [Core risk in one sentence] | [Available mitigation] |
| [Issue 2] | 🟢/🟡/🔴/⛔ | [Core risk] | [Mitigation] |

**Overall risk**: [LOW / MEDIUM / HIGH / CRITICAL]

---

## Recommended Action

1. **[Action]**: [What to do, by when]
2. **[Action]**: [Next step]
3. **[Action]**: [Follow-up]

**If proceeding**: [Safeguards to put in place]

**If not proceeding**: [Alternative approach]

---

## Specialist Counsel Recommended?

[YES / NO]

**If YES**:
- **Specialty**: [Type of lawyer needed]
- **Reason**: [Why specialist input is needed]
- **Urgency**: [Timeline for getting opinion]

---

⚠️ **Disclaimer**: This briefing is for informational purposes and does not constitute legal advice. Verify conclusions with a licensed attorney in the relevant jurisdiction before relying on them for legal decisions.
```

---

## Escalation / Edge cases

**Always recommend specialist counsel for**:
- **Employment law**: Varies dramatically by jurisdiction, especially termination, non-competes
- **Securities/investment**: Regulatory implications of fundraising, token issuance
- **Tax**: Cross-border structuring, transfer pricing, permanent establishment
- **IP disputes**: Patent claims, trademark conflicts
- **Criminal/regulatory exposure**: Sanctions, AML, bribery/corruption
- **Litigation**: Actual or threatened lawsuit

**Flag as CRITICAL immediately if**:
- Clear statutory violation (not a grey area — the law says no)
- Regulatory enforcement risk (regulator is active in this space)
- Criminal liability exposure (fraud, sanctions, bribery)
- Data breach notification obligations (clock is ticking)

**When risk assessment is ambiguous**:
- State the range: "This is likely LOW risk but could be MEDIUM if [condition]"
- Identify what would change the assessment
- Recommend monitoring triggers

**Ross/Wego context**:
- **Jurisdictions**: Singapore (holding), UAE (operations), Saudi Arabia (operations), India (tech team)
- **Common issues**: Data protection (PDPA, UAE DPL), competition law, employment (multi-jurisdiction), content liability (user reviews, pricing data), aviation regulations
- **MENA specifics**: UAE Federal laws vs free zone (DIFC/ADGM) laws, Saudi Sharia-influenced commercial law, Arabic language requirements for certain filings
- **Regulatory relationships**: GCAA (UAE aviation), CITC (Saudi), PDPC (Singapore privacy)
