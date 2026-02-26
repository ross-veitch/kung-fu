---
name: contract-review
description: Review a contract clause-by-clause against market standard positions
argument-hint: "[contract text or file] [optional: our side (vendor/customer/investor)]"
---

# /contract-review

Review a contract against standard market positions. Classify each key clause area as GREEN/YELLOW/RED.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Contract text (full agreement, or key sections to review)
- Which side we're on (vendor, customer, investor, licensee, etc.)
- Agreement type (SaaS, services, license, partnership, NDA, employment)

**Optional but improves output**:
- Counterparty context (big tech vendor? startup? government?)
- Negotiation leverage (are we the bigger party? competitive bids?)
- Deal value (affects risk tolerance for unfavorable terms)
- Jurisdiction (affects enforceability assessment)
- Our standard positions (from PLAYBOOK.md if available)

**From PLAYBOOK.md** (load automatically if present):
- Standard acceptable positions per clause type
- Previously negotiated terms with this counterparty
- Non-negotiables (hard limits that cannot be crossed)

**If agreement type is unclear**: Infer from content and flag assumption.

---

## Step 2: Review each clause area

For each key clause area, classify:

- 🟢 **GREEN (Market standard)**: Acceptable, no changes needed
- 🟡 **YELLOW (Negotiate)**: Below our preferred position but within market range — push back
- 🔴 **RED (Reject)**: Outside market norms, creates unacceptable risk — redline or walk away

### Key Clause Areas

**1. Scope and Deliverables**
- Are obligations clear and specific?
- Any ambiguity in what's included vs excluded?
- Acceptance criteria defined?

**2. Fees and Payment**
- Payment terms reasonable? (Net 30 standard)
- Price escalation clauses?
- Currency and FX risk allocation?
- Late payment penalties proportionate?

**3. Term and Termination**
- Duration reasonable?
- Termination for convenience available to both parties?
- Cure period for breach?
- Effect of termination clearly stated?
- Auto-renewal terms and opt-out window?

**4. Liability Cap**
- Is there a cap? (Uncapped = 🔴 always)
- Cap amount reasonable? (12 months fees is standard)
- Mutual or one-sided?
- What's excluded from the cap?
- Consequential damages excluded?

**5. Indemnification**
- Mutual or one-sided?
- Scope (IP infringement, breach, negligence, data breach)
- Capped or uncapped?
- Indemnification procedure (notice, control of defense)

**6. IP Ownership**
- Who owns deliverables/work product?
- Background IP protected?
- License grants appropriate for use case?
- Improvements and modifications — who owns them?

**7. Data Protection**
- DPA included if personal data processed?
- Sub-processor restrictions?
- Data breach notification timeline?
- Data return/deletion on termination?
- Compliance with applicable laws (PDPA, GDPR, UAE DPL)?

**8. Confidentiality**
- Reasonable scope and duration?
- Standard carve-outs (public knowledge, independent development)?
- Residual knowledge clause? (Watch for this — can undermine protection)

**9. Governing Law and Disputes**
- Favorable jurisdiction?
- Arbitration vs litigation?
- Arbitration institution and rules specified?

**10. General Terms**
- Assignment clause (can they sell the contract to someone else?)
- Force majeure (reasonable scope?)
- Amendment clause (mutual written consent required?)
- Entire agreement (no side deals)?

---

## Step 3: Identify RED flags (auto-flag regardless)

**Always flag these as 🔴 RED**:
- Unlimited liability exposure (no cap)
- IP assignment that captures our background IP
- Unilateral amendment rights (one party can change terms)
- No termination for convenience
- One-sided indemnity with no cap
- Data processed with no DPA or security obligations
- Governing law in jurisdiction where we have no presence and no leverage
- Non-compete that's overly broad in scope/geography/duration
- Automatic renewal with <30 days opt-out window

---

## Output

```markdown
# Contract Review: [Agreement Title]

**Parties**: [Party A] ↔ [Party B]
**Our side**: [Vendor / Customer / etc.]
**Agreement type**: [SaaS / Services / License / etc.]
**Governing law**: [Jurisdiction]

---

## Clause-by-Clause Assessment

| # | Clause Area | Status | Key Issue | Action |
|---|-------------|--------|-----------|--------|
| 1 | Scope & Deliverables | 🟢/🟡/🔴 | [Issue or "Acceptable"] | [None / Negotiate / Redline] |
| 2 | Fees & Payment | 🟢/🟡/🔴 | [Issue] | [Action] |
| 3 | Term & Termination | 🟢/🟡/🔴 | [Issue] | [Action] |
| 4 | Liability Cap | 🟢/🟡/🔴 | [Issue] | [Action] |
| 5 | Indemnification | 🟢/🟡/🔴 | [Issue] | [Action] |
| 6 | IP Ownership | 🟢/🟡/🔴 | [Issue] | [Action] |
| 7 | Data Protection | 🟢/🟡/🔴 | [Issue] | [Action] |
| 8 | Confidentiality | 🟢/🟡/🔴 | [Issue] | [Action] |
| 9 | Governing Law | 🟢/🟡/🔴 | [Issue] | [Action] |
| 10 | General Terms | 🟢/🟡/🔴 | [Issue] | [Action] |

---

## 🔴 RED Flags

### 1. [Clause reference]: [Issue title]

**Current language**: "[Quote from contract]"

**Problem**: [Why this is unacceptable]

**Market standard**: [What this should say instead]

**Proposed redline**: "[Suggested replacement language]"

---

### 2. [Next RED flag]

[Repeat structure]

---

## 🟡 Priority Negotiation Points

### 1. [Clause reference]: [Issue title]

**Current**: [What it says]

**Our position**: [What we want]

**Proposed language**: "[Suggested change]"

**Fallback**: [Minimum acceptable position if they push back]

---

## Overall Deal Risk: [LOW / MEDIUM / HIGH]

**GREEN clauses**: [N] / 10
**YELLOW clauses**: [N] / 10
**RED clauses**: [N] / 10

**Assessment**: [2-3 sentences on overall contract risk and whether to proceed]

---

## Recommended Next Steps

1. [Most critical redline to send back]
2. [Second priority change]
3. [Additional due diligence if needed]

**Sign as-is?** [YES — acceptable risk / NO — must address RED items first]

---

⚠️ **Disclaimer**: This review is for informational purposes and does not constitute legal advice. A licensed attorney should review before execution, especially for agreements involving significant liability, IP, or cross-border obligations.
```

---

## Escalation / Edge cases

**Always recommend external counsel when**:
- Contract value >$500K
- Unlimited or uncapped liability
- Complex IP provisions (assignments, cross-licenses)
- Cross-border data transfer obligations
- Employment-related agreements in unfamiliar jurisdictions
- Government contracts (public procurement rules)

**Common contract traps**:
- "Limitation of liability" section excludes nothing from the cap → effectively no cap on key risks
- "Work product" definition is broader than the deliverables → captures background IP
- Force majeure doesn't include pandemic/epidemic → learned nothing from 2020
- "Material breach" not defined → subjective trigger for termination
- Data processing addendum references old law (pre-GDPR DPA → needs update)

**Negotiation tactics**:
- Start with RED items (non-negotiable) → get those resolved first
- Bundle YELLOW items (trade concessions) → "We'll accept X if you fix Y"
- Don't fight GREEN items (waste of leverage and goodwill)
- If counterparty won't negotiate RED items → escalate to commercial sponsor or walk away

**Ross/Wego context**:
- **Standard Wego position**: Liability capped at 12 months fees, mutual indemnity, Singapore law
- **Common contracts**: Airline/hotel API agreements, SaaS vendor subscriptions, marketing partnerships, data provider licenses
- **MENA specifics**: UAE courts may not enforce foreign arbitration awards as reliably as DIFC/ADGM courts; Saudi requires Arabic-language version
- **Sensitive areas**: User data (multiple jurisdictions), pricing data from suppliers (competition law), content licensing
