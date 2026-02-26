---
name: data-privacy-frameworks
description: >
  Data privacy law across key jurisdictions: GDPR, CCPA, Singapore PDPA, UAE PDPL.
  Use when: data privacy questions, DPA review, breach response, cookie consent,
  data subject requests, cross-border data transfer, privacy policy, GDPR compliance.
---

# Data Privacy Frameworks

## The key frameworks

| Framework | Jurisdiction | Threshold | Key regulator |
|-----------|-------------|-----------|---------------|
| GDPR (EU/UK) | EU + EEA + UK | Processes EU/UK personal data | EDPB; national DPAs (ICO in UK) |
| CCPA/CPRA | California (US) | $25M revenue OR 100K consumers OR 50% revenue from selling data | California Privacy Protection Agency |
| Singapore PDPA | Singapore | Processes personal data in Singapore | PDPC |
| UAE PDPL | UAE (federal) | Processes UAE personal data | UAE Data Office |
| DIFC DP Law | DIFC free zone | Processes personal data in DIFC | DIFC Commissioner of Data Protection |
| ADGM DP | ADGM free zone | Processes personal data in ADGM | ADGM Registration Authority |

## GDPR: the gold standard

**Lawful basis** (one required for every processing activity):
- Consent: freely given, specific, informed, unambiguous. Hard to get right; easy to withdraw. Not the default for B2B.
- Legitimate interests: most flexible basis. Requires a balancing test: your interests vs. individual rights. Standard for most B2B processing.
- Contract: processing necessary to perform the contract with the individual.
- Legal obligation: required by law.
- Vital interests and public task: rare in commercial context.

**Data subject rights**:
- Right of access (SAR): respond within 1 month. Extend to 3 months for complex requests.
- Right to erasure ("right to be forgotten"): not absolute — exceptions for legal obligation, legitimate interests.
- Right to portability: provide data in machine-readable format.
- Right to restrict processing, right to object.
- Rights re automated decisions: no solely automated decisions with significant effect without human review option.

**Data breach notification**:
- 72-hour clock to notify supervisory authority (not calendar days — starts when you "become aware")
- Notify affected individuals "without undue delay" if high risk
- Document all breaches (even those below threshold) in the breach register

**Cross-border transfers**:
- EEA → third country: only allowed with a valid transfer mechanism
- Adequacy decisions: UK, Switzerland, Japan, South Korea, Israel, Canada (commercial), NZ — transfers flow freely
- SCCs (Standard Contractual Clauses): most common mechanism. EU 2021 SCCs replaced old form. Must complete a Transfer Impact Assessment (TIA) for high-risk destinations.
- Binding Corporate Rules: for intra-group transfers; expensive to set up but comprehensive
- No more Privacy Shield (invalidated 2020); EU-US Data Privacy Framework adopted 2023 but legally challenged

**DPA requirements**: A Data Processing Agreement is required whenever a controller engages a processor. Key terms: processing only on instructions, sub-processor controls, security measures, audit rights, data deletion/return on termination, breach notification to controller within 72 hours (so the controller can meet its 72-hour DPA obligation).

## Singapore PDPA

Consent-based framework, though "legitimate interests" exception (introduced in 2020 amendments) now allows some processing without consent. Key differences from GDPR:
- No DPO requirement (but recommended for larger organisations)
- Data breach: notify PDPC within 3 business days if "significant harm" or > 500 individuals
- Notify affected individuals if likely to cause significant harm
- PDPA applies to organisations, not individuals acting in personal capacity
- Business contact information exception: name, title, company, business contact details are excluded

## UAE PDPL (Federal Law No. 45/2021)

The UAE's first federal privacy law, effective September 2021 (implementing regulations 2022):
- Applies to any processing of UAE personal data, regardless of where the processor is located
- Consent or legitimate purposes required; consent must be explicit, specific, informed
- Data subject rights: access, correction, erasure, portability
- Cross-border transfer: requires UAE Data Office approval, adequacy, or appropriate safeguards
- Breach notification: notify Data Office "immediately" (within 72 hours) + individuals if high risk
- DPO required if: core activities involve large-scale processing, or processing of sensitive data

**DIFC and ADGM** operate their own English law-based privacy frameworks, separate from the federal PDPL — similar to GDPR in structure, administered by their own regulators.

## Privacy by design checklist

When reviewing a new product feature or data initiative:

- [ ] What personal data will be collected? Is it the minimum necessary?
- [ ] What is the lawful basis for processing?
- [ ] Has a DPIA (Data Protection Impact Assessment) been completed? (Required for GDPR if high risk)
- [ ] Where will data be stored? Is cross-border transfer involved? What mechanism?
- [ ] Who are the processors? Do DPAs exist with all of them?
- [ ] How will data subjects be notified? (Privacy notice update needed?)
- [ ] How will data subject rights be handled? (DSAR process in place?)
- [ ] What is the retention period? Is there a deletion process?
- [ ] What security measures are in place?

See `references/` for: GDPR lawful basis selection guide, DPA template, breach response protocol, DSAR workflow template, Transfer Impact Assessment framework.
