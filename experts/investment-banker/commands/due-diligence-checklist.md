# /due-diligence-checklist

Generate a workstream-organised due diligence checklist for an M&A or financing transaction.

---

## When to use

At the start of any buy-side acquisition, sell-side preparation, or financing transaction. The checklist ensures no workstream is missed and creates the framework for the data room request list.

---

## Steps

### 1. Determine transaction type
- Buy-side M&A (acquirer doing DD on target)
- Sell-side preparation (target preparing for buyer DD)
- Equity financing (investor doing DD on company)
- Debt financing (lender doing DD on borrower)

Each type has different emphasis areas.

### 2. Generate workstream checklist

**Financial DD**:
- [ ] Historical financials (3 years audited P&L, balance sheet, cash flow)
- [ ] Monthly management accounts (24 months)
- [ ] Revenue breakdown by segment, geography, customer
- [ ] Cost structure analysis (fixed vs variable, headcount costs, unit costs)
- [ ] Working capital analysis (DSO, DPO, DIO, seasonality)
- [ ] Capital expenditure history and forward plan
- [ ] Debt schedule (all outstanding debt, covenants, maturity, interest rates)
- [ ] Tax returns and tax position (deferred tax assets, transfer pricing, disputes)
- [ ] Audit management letters (qualifications, noted issues)
- [ ] Quality of earnings adjustments (non-recurring items, pro forma adjustments)

**Commercial DD**:
- [ ] Market sizing (TAM, SAM, SOM)
- [ ] Competitive landscape and market share
- [ ] Customer concentration analysis (top 10 customers as % of revenue)
- [ ] Customer retention and churn data
- [ ] Sales pipeline and forward bookings
- [ ] Pricing history and pricing power assessment
- [ ] Channel strategy and distribution economics

**Legal DD**:
- [ ] Corporate structure and org chart
- [ ] Share register and cap table
- [ ] Material contracts (customers, suppliers, partners)
- [ ] IP portfolio (patents, trademarks, copyrights, trade secrets)
- [ ] Litigation history and pending disputes
- [ ] Regulatory licenses and compliance status
- [ ] Data privacy and GDPR/PDPL compliance
- [ ] Employment contracts (key person terms, non-competes, change of control provisions)

**Technology DD** (for tech companies):
- [ ] Architecture overview and tech stack
- [ ] Code quality assessment (tech debt, test coverage, deployment frequency)
- [ ] Infrastructure and hosting (cloud providers, costs, scalability)
- [ ] Security posture (penetration testing, SOC 2, vulnerability management)
- [ ] IP ownership and open-source dependency audit
- [ ] Key technical person dependency

**HR / People DD**:
- [ ] Org chart and headcount by function
- [ ] Key person identification and retention risk
- [ ] Compensation benchmarking (are people paid fairly?)
- [ ] Employee contracts and benefits summary
- [ ] Pending HR issues or disputes
- [ ] Culture assessment (Glassdoor, engagement survey data)

**Operational DD**:
- [ ] Key operational processes and SLAs
- [ ] Supplier dependency analysis
- [ ] Insurance coverage
- [ ] Business continuity and disaster recovery plans

### 3. Prioritise by transaction type
For each workstream, flag:
- **Critical** (must complete before signing)
- **Important** (complete before closing)
- **Nice to have** (post-closing integration)

### 4. Create data room request list
Transform the checklist into a numbered request list suitable for sending to the target/company. Group by workstream. Include format requirements (e.g., "Excel format preferred for financial data").

---

## Output format

```
## Due Diligence Checklist: [Transaction Name]

**Transaction type**: [Buy-side M&A / Sell-side prep / Equity raise / Debt financing]
**Target/Company**: [Name]
**Date**: [Date]

### 1. Financial (Priority: Critical)
- [ ] 1.1 Audited financials — 3 years
- [ ] 1.2 Monthly management accounts — 24 months
...

### 2. Commercial (Priority: Critical)
...

### 3. Legal (Priority: Critical)
...

### 4. Technology (Priority: [Critical/Important])
...

### 5. HR / People (Priority: Important)
...

### 6. Operational (Priority: Important)
...
```
