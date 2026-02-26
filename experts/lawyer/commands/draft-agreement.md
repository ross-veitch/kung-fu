---
name: draft-agreement
description: Draft a commercial agreement from a deal brief with clause-by-clause structure
argument-hint: "[deal description] [optional: jurisdiction, key terms]"
---

# /draft-agreement

Draft a commercial agreement from a deal brief. Produces a working first draft for negotiation — not execution without legal review.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Parties (full legal names, jurisdictions of incorporation)
- Commercial relationship (what's being exchanged?)
- Key obligations on each side
- Term and termination conditions
- Governing law / jurisdiction

**Optional but improves output**:
- Fee structure (fixed, variable, milestone-based)
- IP ownership requirements
- Data handling and privacy requirements
- Exclusivity or non-compete terms
- Non-negotiables (must-have or must-not-have terms)
- Template or precedent to follow

**From PLAYBOOK.md** (load automatically if present):
- Standard positions (liability caps, indemnity scope, IP default)
- Preferred governing law
- Boilerplate preferences (dispute resolution, notice provisions)

**If jurisdiction is unclear**: Default to Singapore law (Wego's holding company jurisdiction) and flag for confirmation.

---

## Step 2: Identify agreement type and structure

| Agreement Type | Key Sections | Watch For |
|---------------|-------------|-----------|
| **SaaS/Subscription** | Service description, SLA, data processing, fees, term | Auto-renewal traps, data portability on exit |
| **Services** | Scope of work, deliverables, milestones, acceptance criteria | Scope creep, IP in deliverables |
| **License** | Grant, restrictions, sublicensing, royalties | Background IP vs foreground IP |
| **Distribution/Partnership** | Territory, exclusivity, targets, revenue share | Minimum commitments, termination for convenience |
| **NDA** | Definition of confidential info, term, carve-outs | Residual knowledge clause, term length |
| **Employment** | Role, compensation, IP assignment, non-compete, notice | Non-compete enforceability by jurisdiction |
| **Data Processing (DPA)** | Data categories, purposes, security, sub-processors | GDPR/PDPA compliance, breach notification |

---

## Step 3: Draft key commercial terms

**Draft in this order** (deal-specific first, boilerplate last):

### A. Commercial Terms
1. **Recitals**: Context and purpose of the agreement
2. **Definitions**: Key terms used throughout
3. **Scope**: What's being provided/exchanged
4. **Fees and Payment**: Amount, timing, currency, late payment
5. **Term**: Start date, duration, renewal

### B. Obligations and Rights
6. **Party A obligations**: Deliverables, timelines, standards
7. **Party B obligations**: Payment, cooperation, access
8. **Performance standards / SLAs**: If applicable

### C. Risk Allocation
9. **IP ownership**: Who owns what (background, foreground, improvements)
10. **Confidentiality**: Scope, duration, carve-outs
11. **Data protection**: Compliance obligations, DPA if needed
12. **Representations and warranties**: What each party guarantees
13. **Indemnification**: Scope, caps, procedures
14. **Limitation of liability**: Cap, exclusions, carve-outs

### D. Termination and Dispute
15. **Termination**: For cause, for convenience, effect of termination
16. **Dispute resolution**: Negotiation → mediation → arbitration/litigation
17. **Governing law and jurisdiction**

### E. Boilerplate
18. **Notices**: How and where to send
19. **Assignment**: Whether rights can be transferred
20. **Force majeure**: What qualifies, obligations during event
21. **Entire agreement**: Supersedes prior discussions
22. **Amendments**: In writing, signed by both parties
23. **Severability**: Invalid clause doesn't void agreement

---

## Step 4: Apply standard positions and flag departures

**High-risk clause types** — always flag for review:

| Clause | Standard Position | RED Flag |
|--------|------------------|----------|
| Liability cap | Aggregate cap = 12 months fees paid | Unlimited liability |
| Indemnity | Mutual, capped, for IP infringement and breach | One-sided, uncapped |
| IP ownership | Creator owns background IP; client owns deliverables | Assignment of background IP |
| Non-compete | Reasonable scope and duration (6-12 months) | >24 months, overly broad geography |
| Termination | Either party, for convenience, 30-90 days notice | No termination for convenience |
| Auto-renewal | OK if with reasonable opt-out window | Short opt-out window, price escalation |
| Data on exit | Data portability within 30 days | No data return clause |
| Amendment | Requires written agreement of both parties | Unilateral amendment rights |

---

## Output

```markdown
# [AGREEMENT TYPE] AGREEMENT

**Between**:
(1) [Party A full legal name], a company incorporated in [Jurisdiction] ("Party A")
(2) [Party B full legal name], a company incorporated in [Jurisdiction] ("Party B")

**Effective Date**: [Date]

---

## RECITALS

A. [Party A context]
B. [Party B context]
C. The Parties wish to [purpose of agreement]

---

## 1. DEFINITIONS

1.1 "[Term]" means [definition].
1.2 "[Term]" means [definition].

---

## 2. SCOPE OF [SERVICES/LICENSE/AGREEMENT]

2.1 [Party A] shall [obligation].
2.2 The scope includes [specific inclusions].
2.3 The scope excludes [specific exclusions].

---

## 3. FEES AND PAYMENT

3.1 [Party B] shall pay [Party A] [fee structure].
3.2 Invoices shall be issued [frequency] and payable within [N] days.
3.3 Late payments shall accrue interest at [X]% per annum.

---

## 4. TERM AND RENEWAL

4.1 This Agreement commences on the Effective Date and continues for [N] months/years.
4.2 [Renewal terms: auto-renewal with N days opt-out / fixed term / rolling]
4.3 Either Party may terminate for convenience by giving [N] days' written notice.

---

## 5. INTELLECTUAL PROPERTY

5.1 Each Party retains ownership of its Background IP.
5.2 [IP ownership for deliverables/work product].
5.3 [License grants if applicable].

---

## 6. CONFIDENTIALITY

6.1 Each Party shall keep the other's Confidential Information confidential.
6.2 Confidential Information excludes: (a) publicly available; (b) independently developed; (c) received from third party without restriction.
6.3 Obligations survive for [N] years after termination.

---

## 7. DATA PROTECTION

7.1 Each Party shall comply with applicable data protection laws.
7.2 [DPA reference if personal data is processed].

---

## 8. REPRESENTATIONS AND WARRANTIES

8.1 Each Party represents that it has authority to enter this Agreement.
8.2 [Party A] warrants that [the services/product] will [performance standard].

---

## 9. INDEMNIFICATION

9.1 Each Party shall indemnify the other against claims arising from [scope].
9.2 Indemnification is subject to the liability cap in Section 10.

---

## 10. LIMITATION OF LIABILITY

10.1 Neither Party's aggregate liability shall exceed [X — e.g., fees paid in prior 12 months].
10.2 Neither Party shall be liable for indirect, consequential, or punitive damages.
10.3 Exclusions from cap: (a) breach of confidentiality; (b) wilful misconduct; (c) indemnification obligations.

---

## 11. TERMINATION

11.1 Either Party may terminate for material breach with [30] days' written notice and opportunity to cure.
11.2 Either Party may terminate for convenience with [90] days' written notice.
11.3 Upon termination: [obligations — data return, final payment, survival clauses].

---

## 12. DISPUTE RESOLUTION

12.1 Disputes shall first be escalated to senior management for [30] days.
12.2 If unresolved, disputes shall be referred to [arbitration under SIAC Rules / courts of Singapore].

---

## 13. GOVERNING LAW

13.1 This Agreement is governed by the laws of [Singapore / relevant jurisdiction].

---

## 14. GENERAL

14.1 **Notices**: In writing, to addresses in the signature block.
14.2 **Assignment**: Neither Party may assign without prior written consent.
14.3 **Force Majeure**: Neither Party is liable for failure caused by events beyond reasonable control.
14.4 **Entire Agreement**: This Agreement supersedes all prior negotiations and agreements.
14.5 **Amendments**: Must be in writing, signed by both Parties.
14.6 **Severability**: Invalid provisions shall be modified to minimum extent necessary.

---

**SIGNED** by the duly authorized representatives:

**[Party A]**
Name: _______________
Title: _______________
Date: _______________

**[Party B]**
Name: _______________
Title: _______________
Date: _______________
```

---

## Drafting Notes

**Flagged for review**:
- [Clause X]: [Why it needs attention — e.g., "liability cap amount to be confirmed"]
- [Clause Y]: [Open issue requiring instruction]

**Deviations from standard**:
- [What was changed and why]

**Open issues**:
- [ ] [Item requiring client decision]
- [ ] [Item requiring counterparty input]

---

⚠️ **Disclaimer**: This draft is for negotiation purposes only and does not constitute legal advice. Review by a licensed attorney in the relevant jurisdiction is required before execution.

---

## Escalation / Edge cases

**Always recommend external counsel for**:
- Employment agreements (jurisdiction-specific enforceability, especially non-competes)
- IP assignments (tax implications, registration requirements)
- Cross-border agreements (conflicting jurisdiction requirements)
- Agreements >$500K in value
- Any agreement involving equity, securities, or investment terms

**RED flags in counterparty drafts** (if reviewing rather than drafting):
- Unlimited liability on one side only
- IP assignment that captures background IP
- Unilateral amendment or termination rights
- Governing law in unfamiliar/unfavorable jurisdiction
- Automatic renewal with short opt-out window and price escalation

**Ross/Wego context**:
- **Default governing law**: Singapore (holding company jurisdiction)
- **Common agreement types**: Airline/hotel partnerships (distribution), technology licenses, SaaS subscriptions, employment (multi-jurisdiction: SG, UAE, India)
- **MENA specifics**: UAE law has specific requirements for service agreements; Saudi requires Arabic version for enforcement; DIFC/ADGM have English common law frameworks
- **Data protection**: Singapore PDPA, UAE data protection law, GDPR if European users
