---
name: risk-assessment
description: Assess legal risk profile of a proposed action or decision
argument-hint: "[proposed action or decision] [optional: jurisdiction, context]"
---

# /risk-assessment

Assess the legal risk profile of a proposed action or decision. Identify risk areas, classify severity, recommend mitigants.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- What is being proposed? (action, decision, new practice, product feature)
- Who is doing it? (Wego, Ross personally, subsidiary, partner)
- Where? (jurisdictions affected)

**Optional but improves output**:
- Business rationale (why do we want to do this?)
- Timeline (when does this need to happen?)
- Stakeholders affected (customers, employees, regulators, partners)
- Similar precedents (has anyone else done this? what happened?)
- Risk tolerance (conservative vs aggressive posture)

**From PLAYBOOK.md** (load automatically if present):
- Regulatory contacts and relationships
- Prior legal opinions on similar matters
- Company risk appetite guidelines

**If jurisdiction unclear**: Assume all jurisdictions where Wego operates (Singapore, UAE, Saudi, India) and flag.

---

## Step 2: Identify legal risk areas

Scan across all relevant legal domains:

| Domain | Risk Question |
|--------|--------------|
| **Regulatory/Compliance** | Does this require a license, permit, or regulatory approval? |
| **Data Protection/Privacy** | Does this involve personal data? Cross-border transfer? |
| **Employment** | Does this affect employees? (terms, classification, termination) |
| **Competition/Antitrust** | Does this involve pricing, market allocation, or competitor coordination? |
| **Consumer Protection** | Does this affect how consumers are treated? (pricing, terms, refunds) |
| **IP** | Does this create, use, or risk infringing intellectual property? |
| **Tax** | Does this create tax obligations or permanent establishment risk? |
| **Contract** | Does this breach existing contractual obligations? |
| **Corporate/Governance** | Does this require board approval or shareholder consent? |
| **Criminal** | Is there any criminal liability exposure? (fraud, sanctions, bribery) |

---

## Step 3: Classify risk per area

For each identified risk area:

| Level | Criteria | Typical Response |
|-------|----------|-----------------|
| 🟢 **LOW** | Unlikely to cause legal issues; well-established practice; minor consequence if wrong | Proceed with standard documentation |
| 🟡 **MEDIUM** | Possible legal challenge; grey area; moderate consequence | Proceed with specific mitigants and monitoring |
| 🔴 **HIGH** | Likely to attract regulatory attention or litigation; significant financial/reputational consequence | Get specialist counsel opinion before proceeding |
| ⛔ **CRITICAL** | Clear legal violation or existential risk to company/individuals | Do not proceed; get counsel immediately |

**Risk scoring factors**:
- **Likelihood**: How probable is a legal issue? (certain / probable / possible / unlikely)
- **Severity**: What's the worst case? (fine, lawsuit, criminal, loss of license, reputational)
- **Detectability**: Will regulators or counterparties discover this? (certain / likely / unlikely)
- **Reversibility**: Can you undo it if challenged? (easily / with difficulty / impossible)

---

## Step 4: Identify mitigants

For each risk area, determine what can reduce or eliminate the risk:

**Types of mitigants**:
- **Structural**: Change how the action is implemented (different jurisdiction, entity, approach)
- **Contractual**: Add protections via agreements (indemnity, insurance, consent)
- **Procedural**: Document decision-making, get approvals, create audit trail
- **Insurance**: Professional liability, D&O, cyber insurance
- **Counsel opinion**: Get formal legal opinion to demonstrate good faith
- **Regulatory engagement**: Pre-clear with regulator if possible

---

## Output

```markdown
# Legal Risk Assessment: [Proposed Action]

## Proposed Action
**What**: [Clear description of what's being proposed]
**Who**: [Entity or person taking the action]
**Where**: [Jurisdictions affected]
**When**: [Timeline]

---

## Summary

**Overall risk level**: [🟢 LOW / 🟡 MEDIUM / 🔴 HIGH / ⛔ CRITICAL]

**Bottom line**: [2-3 sentences: can we do this? Under what conditions?]

---

## Risk Map

| # | Risk Area | Level | Key Risk | Mitigant |
|---|-----------|-------|----------|----------|
| 1 | [Domain] | 🟢/🟡/🔴/⛔ | [One-sentence risk] | [Available mitigation] |
| 2 | [Domain] | 🟢/🟡/🔴/⛔ | [One-sentence risk] | [Available mitigation] |
| 3 | [Domain] | 🟢/🟡/🔴/⛔ | [One-sentence risk] | [Available mitigation] |

---

## Detailed Analysis

### Risk 1: [Risk Area] — [🟢/🟡/🔴/⛔]

**Risk**: [What could go wrong]

**Legal basis**: [Relevant law, regulation, or contractual obligation]

**Likelihood**: [Certain / Probable / Possible / Unlikely]

**Severity**: [If this materializes, what happens?]

**Mitigants**:
- [Specific action to reduce risk]
- [Specific action]

**Residual risk after mitigation**: [LOW / MEDIUM / HIGH]

---

### Risk 2: [Risk Area] — [🟢/🟡/🔴/⛔]

[Repeat structure]

---

## Recommended Path

**If overall LOW-MEDIUM**:
1. [Proceed with these safeguards]
2. [Document these decisions]
3. [Monitor for these triggers]

**If overall HIGH**:
1. [Get specialist counsel opinion on: specific issue]
2. [Consider alternative approach: X]
3. [If proceeding anyway: minimum safeguards required]

**If CRITICAL**:
1. **Do not proceed** until counsel has reviewed
2. [Engage: type of specialist]
3. [Alternative approach that avoids the risk]

---

## Monitoring Triggers

**Revisit this assessment if**:
- [Regulatory change in relevant jurisdiction]
- [Competitor is challenged for similar action]
- [Scale of activity increases beyond X threshold]
- [New jurisdiction is added]

---

⚠️ **Important**: This assessment identifies legal risks but does not constitute legal advice. Before acting on any HIGH or CRITICAL risk areas, obtain a formal opinion from licensed counsel in the relevant jurisdiction. This is particularly important for regulatory compliance, cross-border operations, and actions affecting individual rights.
```

---

## Escalation / Edge cases

**Always flag as CRITICAL**:
- Any action that could constitute fraud, bribery, or sanctions violation
- Processing children's data without parental consent
- Terminating employees without following local labor law procedures
- Operating without required licenses (financial services, travel agency licenses in some MENA jurisdictions)
- Sharing competitively sensitive information with competitors

**Request specialist counsel for**:
- Cross-border data transfers (GDPR, PDPA, UAE DPL — different rules, different enforcement)
- Employment actions in unfamiliar jurisdictions
- Tax structuring or permanent establishment questions
- Regulatory filings or license applications
- Anything involving securities law (fundraising, equity grants, secondary sales)

**Common blind spots**:
- "Everyone does it" is not a legal defense
- Terms of service compliance (are we violating a supplier's ToS by scraping or reselling data?)
- Employee vs contractor classification (varies dramatically by jurisdiction)
- Export controls and sanctions (MENA operations, especially involving Iran-adjacent markets)

**Ross/Wego context**:
- **Multi-jurisdiction complexity**: Action legal in Singapore may be illegal in Saudi or vice versa
- **Travel industry specifics**: IATA accreditation, airline distribution agreements, GDS terms, hotel rate parity obligations
- **MENA regulatory**: UAE Consumer Protection Law, Saudi e-commerce regulations, Central Bank regulations for payment handling
- **Personal liability**: Ross as director has personal liability exposure for certain corporate actions — always flag D&O implications
- **Data**: Wego processes user data across multiple jurisdictions — data protection is always a consideration for new features or partnerships
