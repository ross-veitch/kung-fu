# /nda-review — Review and redline an NDA

**Purpose**: Systematically review a non-disclosure agreement, classify deviations from standard positions, and generate specific redlines with rationale.

**When to use**: When a counterparty sends an NDA for review, or when evaluating whether to sign an NDA before a commercial discussion, due diligence, or partnership exploration.

---

## Phase 1: Initial assessment

Before reviewing clause-by-clause, answer threshold questions:

1. **Is an NDA even necessary?** If the discussion involves only publicly available information, decline the NDA and proceed without one.
2. **Mutual or one-way?** Always prefer mutual (both parties bound). If counterparty proposes one-way (only we are bound), flag immediately.
3. **Who is the disclosing party?** If we are only receiving information, a one-way NDA binding us may be acceptable. If we are sharing information, we must be a disclosing party.
4. **Governing law and jurisdiction**: Note immediately — this affects enforceability of every other clause.

---

## Phase 2: Clause-by-clause review

For each clause, classify as:
- 🟢 **GREEN**: Acceptable — standard market position, no change needed
- 🟡 **YELLOW**: Negotiate — deviates from our standard, propose specific redline
- 🔴 **RED**: Escalate — creates material risk, requires senior review or rejection

### Key clauses to review:

**1. Definition of Confidential Information**
- 🟢 Broadly defined with reasonable exceptions (public info, independently developed, received from third party)
- 🟡 Overly broad (includes "all information disclosed in any form" with no exceptions)
- 🔴 Includes information that is already public, or lacks standard carve-outs

**Standard exceptions that MUST be present:**
- Information already in the public domain
- Information independently developed without reference to disclosed information
- Information received from a third party without breach
- Information required to be disclosed by law (with notice to discloser)

**2. Permitted use / purpose limitation**
- 🟢 Limited to "evaluating a potential business relationship between the parties"
- 🟡 Vaguely defined ("any purpose")
- 🔴 No purpose limitation at all

**3. Term and survival**
- 🟢 Term: 1–2 years; confidentiality obligations survive for 2–3 years after termination
- 🟡 Term: 3–5 years; survival: 5+ years
- 🔴 Perpetual obligations (no expiry on confidentiality duties) — push back unless trade secrets are involved

**4. Permitted disclosure (who can see it)**
- 🟢 Employees, officers, advisors, and professional advisors on a need-to-know basis, bound by similar obligations
- 🟡 Extends to "affiliates" without defining the term
- 🔴 Allows disclosure to any third party without consent

**5. Return or destruction of information**
- 🟢 Standard: return or destroy upon request or termination, with exception for legally required retention and automatic backup systems
- 🟡 Requires certified destruction (burdensome but negotiable)
- 🔴 No exception for backups or legal retention obligations

**6. No obligation to proceed**
- 🟢 Explicitly states that disclosure does not obligate either party to enter into any transaction
- 🟡 Missing — add it
- 🔴 Implies obligation to negotiate or transact

**7. Remedies**
- 🟢 Acknowledges that monetary damages may be inadequate and injunctive relief may be sought
- 🟡 Specifies liquidated damages (unusual for NDA — flag for review)
- 🔴 Includes penalty clauses or uncapped indemnification for any breach

**8. Non-solicitation / non-compete**
- 🟢 Not present (standard for a simple NDA)
- 🟡 Non-solicitation of employees for 12 months (common, usually acceptable)
- 🔴 Non-compete clause embedded in the NDA — this is a deal term, not an NDA term. Reject or escalate.

**9. Governing law and dispute resolution**
- 🟢 Familiar jurisdiction (Singapore, England & Wales, DIFC, New York, Delaware)
- 🟡 Unfamiliar jurisdiction — verify enforceability
- 🔴 Jurisdiction where enforcement is difficult or uncertain

**10. Residuals clause**
Watch for: "Nothing in this agreement restricts the Receiving Party from using any general knowledge, skills, or experience retained in the unaided memory of its personnel."
- This effectively permits use of confidential information if the person "remembers" it
- 🔴 if we are the disclosing party — our information is unprotected
- 🟢 if we are the receiving party — protects our people from inadvertent breach claims

---

## Phase 3: Generate redlines

For each 🟡 YELLOW clause, draft a specific redline:

**Format:**
```
Clause [X]: [Clause title]
Current: "[exact current language]"
Issue: [what is wrong with this]
Proposed redline: "[exact replacement language]"
Rationale: [why this change is necessary]
```

For 🔴 RED clauses, provide the same format but flag as "Requires approval before proceeding."

---

## Phase 4: Prepare the response

### If mostly GREEN:
Sign and return. Note any minor points in an email: "We've signed the attached. For clarity, we interpret [clause X] as [interpretation]."

### If mixed GREEN/YELLOW:
Return a redlined version with a cover email:
> "We've reviewed and are largely aligned. A few points for discussion — redlines attached with rationale. Happy to discuss."

### If RED issues present:
Escalate internally before responding. Prepare a brief:
- Which clauses are RED and why
- What the risk exposure is
- Recommended path: negotiate, reject, or accept with mitigation

---

## Phase 5: Track and file

After execution:
1. **File the signed NDA** in the contract management system with metadata:
   - Counterparty name
   - Effective date
   - Expiry date
   - Governing law
   - Key restrictions (non-solicit, residuals, etc.)
2. **Set a calendar reminder** for expiry date (30 days before)
3. **Brief relevant team members** on what they can and cannot share with this counterparty

---

## Output format

Deliver a structured NDA review memo:

```
NDA Review: [Counterparty Name]
Date: [Date]
Type: Mutual / One-way (favoring [party])
Governing law: [Jurisdiction]
Term: [X years], survival: [Y years]

Summary: [1–2 sentence overall assessment]

Clause Review:
🟢 Definition of Confidential Information — standard, acceptable
🟢 Purpose limitation — appropriately scoped
🟡 Term — 5 years is excessive; propose 2 years
🟡 Non-solicitation — 24 months; propose 12 months
🔴 Residuals clause — unacceptable for us as disclosing party; delete
🟢 Governing law — Singapore; acceptable

Redlines: [X] proposed changes attached
Recommendation: [Sign as-is / Sign with redlines / Escalate / Reject]
```
