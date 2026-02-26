---
name: exploratory-analysis
description: Structured first-pass analysis on a new dataset or data question
argument-hint: "[dataset or data question] [optional: decision context]"
---

# /exploratory-analysis

Run a structured first pass on any new dataset or data question.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Dataset or data source (CSV, database table, API, etc.)
- Question to answer or decision to inform
- Time period covered by the data

**Optional but improves output**:
- Business context (why does this question matter?)
- Known data quality issues or quirks
- Prior hypotheses or expectations
- Stakeholder (who will use this analysis?)

**From PLAYBOOK.md** (load automatically if present):
- Standard metric definitions (GMV, conversion, MAU, etc.)
- Data dictionary or schema documentation
- Known data pipelines and refresh cadence

**If question is vague**: Prompt for specificity. "Analyze user data" is not actionable. "Why did conversion drop 15% last week?" is.

---

## Step 2: Understand the data

Before running queries or calculations, establish:

**Data grain**: One row = one what?
- One user? One transaction? One event? One day?

**Key fields**:
- What do the columns mean?
- What are the data types? (numeric, categorical, timestamp)
- What are the unique identifiers?

**Time coverage**:
- Date range: [earliest] to [latest]
- Refresh cadence: real-time / daily / weekly?
- Time zone: is timestamp in UTC or local?

**Volume**:
- Row count: [N rows]
- Distinct entities: [N users / N transactions / etc.]
- Data per period: [N rows per day]

---

## Step 3: Check data quality

**Surface issues BEFORE analysis**:

| Quality Check | Finding | Impact |
|---------------|---------|--------|
| **Missing values** | [% null for key fields] | [Can we proceed or need to exclude?] |
| **Duplicates** | [% duplicate rows] | [Will this skew metrics?] |
| **Outliers** | [Extreme values: max = X, min = Y] | [Real or error?] |
| **Consistency** | [Field definitions changed mid-period?] | [Are comparisons valid?] |
| **Completeness** | [Expected N rows, got M] | [Data pipeline issue?] |

**Classification**:
- 🟢 **GREEN**: Clean enough to proceed (minor issues, <5% null on non-critical fields)
- 🟡 **YELLOW**: Proceed with caveats (5-20% null, some outliers, document assumptions)
- 🔴 **RED**: Don't trust this data (>20% null, major inconsistencies, pipeline broken)

**If RED**: Stop analysis, flag data quality issues to data eng team. Document what's broken and how to fix it.

---

## Step 4: Describe the distribution

**For key metrics** (revenue, conversion, engagement, etc.):

| Metric | Mean | Median | P25 | P75 | P95 | Max | Note |
|--------|------|--------|-----|-----|-----|-----|------|
| [metric] | [val] | [val] | [val] | [val] | [val] | [val] | [Skewed? Bimodal?] |

**Why not just averages?**
- Mean lies. Medians tell the truth. (Especially when distribution is skewed.)
- P25/P75 show the bulk of the distribution.
- P95 catches the tail (power users, outliers, edge cases).

**Visualize if helpful**:
- Histogram for continuous (revenue, time spent)
- Bar chart for categorical (country, source, product)
- Time series for trends (daily active users, weekly GMV)

---

## Step 5: Surface top 3 findings

**Lead with the most decision-relevant insights**.

Format each finding:
- **Finding**: [What the data shows — specific numbers]
- **Confidence**: [HIGH / MEDIUM / LOW]
  - HIGH: Large sample, clean data, clear signal
  - MEDIUM: Moderate sample or some data quality issues, signal present but noisy
  - LOW: Small sample, dirty data, or confounders present
- **Implication**: [What this means for the decision at hand]
- **Next step**: [If applicable — what to investigate further or what action to take]

**Example**:
- **Finding**: Conversion rate dropped from 3.2% to 2.1% starting Feb 15
- **Confidence**: HIGH (N=50K sessions, consistent across all traffic sources)
- **Implication**: We're losing ~$150K/week in GMV at current traffic levels
- **Next step**: Investigate funnel steps — where are users dropping off?

---

## Step 6: Identify open questions

**What would you need to know to go deeper?**

- [ ] [Question requiring additional data or analysis]
- [ ] [Potential confounding factor to control for]
- [ ] [Segment to drill into]
- [ ] [Causal mechanism to investigate]

**Prioritize by impact**: Which question, if answered, would most change the recommended action?

---

## Output

```markdown
# Exploratory Analysis: [Dataset / Question]

## Question
**What decision will this analysis inform?**
[Specific question or decision context]

---

## Data Summary

**Grain**: One row = one [entity]

**Time period**: [Start date] to [End date]

**Volume**: [N rows], [N distinct entities]

**Key fields**:
- [Field]: [Description]
- [Field]: [Description]

---

## Data Quality: [🟢 / 🟡 / 🔴]

| Check | Finding | Impact |
|-------|---------|--------|
| Missing values | [% null for key fields] | [Can proceed?] |
| Duplicates | [% duplicate rows] | [Skews metrics?] |
| Outliers | [Extreme values] | [Real or error?] |
| Consistency | [Definition changes?] | [Valid comparisons?] |

**Assessment**: [GREEN: proceed / YELLOW: proceed with caveats / RED: fix data first]

**Caveats** (if YELLOW):
- [Assumption or limitation]
- [Exclusion or filtering applied]

---

## Distribution

| Metric | Mean | Median | P25 | P75 | P95 | Max |
|--------|------|--------|-----|-----|-----|-----|
| [metric] | [val] | [val] | [val] | [val] | [val] | [val] |

**Observations**:
- [Is distribution skewed? Bimodal? Power law?]
- [Where is the bulk of the data?]

---

## Top Findings

### 1. [Finding headline]
- **Finding**: [What the data shows]
- **Confidence**: [HIGH / MEDIUM / LOW]
- **Implication**: [What this means]
- **Next step**: [What to do or investigate]

### 2. [Finding headline]
- **Finding**: [What the data shows]
- **Confidence**: [HIGH / MEDIUM / LOW]
- **Implication**: [What this means]
- **Next step**: [What to do or investigate]

### 3. [Finding headline]
- **Finding**: [What the data shows]
- **Confidence**: [HIGH / MEDIUM / LOW]
- **Implication**: [What this means]
- **Next step**: [What to do or investigate]

---

## Open Questions

- [ ] [Question requiring deeper dive]
- [ ] [Potential confounding factor]
- [ ] [Segment to explore]

**Prioritization**: [Which question is most critical to answer?]
```

---

## Escalation / Edge cases

**Stop and flag immediately if**:
- **RED data quality**: >20% null on key fields, major inconsistencies, clear pipeline failure
- **Sample too small**: <30 data points for statistical claims (flag as LOW confidence)
- **Contradictory signals**: Data says one thing, business reality says another (investigate discrepancy before drawing conclusions)

**Request more context when**:
- Question is ambiguous or too broad ("analyze users" — which users? for what purpose?)
- Data definitions are unclear (what does this field mean? what's the source?)
- Time period doesn't match decision horizon (analyzing last 30 days when decision is about next quarter)

**Caution with**:
- **Correlation ≠ causation**: Flag when findings suggest causality but experiment is needed to confirm
- **Survivorship bias**: Are you only seeing successful outcomes? (e.g., analyzing active users ignores churned users)
- **Simpson's paradox**: Aggregate trend can reverse when you segment (always check key dimensions)

**Ross/Wego context**:
- Travel data is seasonal (school holidays, Ramadan, summer) — always compare YoY, not just MoM
- MENA market specifics: weekends are Fri-Sat in some countries, Thursday in others
- GMV metric: distinguish between gross bookings and net revenue
- Currency: analyze in USD for consistency, but flag FX impact if material
