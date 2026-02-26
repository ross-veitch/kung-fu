---
name: kpi-review
description: Review a metrics dashboard or KPI set for health and validity
argument-hint: "[metrics/KPIs to review] [optional: dashboard link or context]"
---

# /kpi-review

Review a metrics dashboard or KPI set. Flag vanity metrics, missing leading indicators, misleading aggregates.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- List of metrics/KPIs to review
- Business goal or decision the metrics are meant to inform
- Current dashboard or report (link, screenshot, or description)

**Optional but improves output**:
- Target audience (exec team, product manager, ops team)
- Frequency of review (daily, weekly, monthly)
- Existing concerns or confusion about metrics

**From PLAYBOOK.md** (load automatically if present):
- Standard metric definitions (how org calculates GMV, MAU, conversion, etc.)
- North Star metric (company-wide)
- OKRs or key goals for this team/period

**If business goal is unclear**: Ask "What decision does this dashboard help you make?" If answer is "none," the dashboard is decorative.

---

## Step 2: Classify each metric

For each metric, evaluate:

### Is it actionable?
- **Lagging indicator**: Measures outcome after the fact (revenue, churn, NPS)
  - Useful for: tracking performance, board reporting
  - Problem: Too slow to drive daily decisions
- **Leading indicator**: Measures input that predicts outcomes (signups, engagement, activation rate)
  - Useful for: spotting issues early, steering the business
  - Better for: operational dashboards
- **Vanity metric**: Looks impressive but doesn't drive decisions (total registered users, pageviews without context)
  - Problem: Can go up while business health declines
  - Fix: Replace with ratio or cohort-based metric

### Is it meaningful?
- **Context-free**: "10K signups this week" — is that good?
- **Contextualized**: "10K signups, +15% WoW, -5% vs target" — now actionable
- **Segmented**: Does aggregate hide important variation? (power users vs casuals, B2B vs B2C)

### Is it honest?
- **Misleading aggregate**: Average revenue per user when 90% pay nothing and 10% pay a lot (use median or segmented view)
- **Incomplete picture**: Showing GMV without refund rate or cancellation rate
- **Gamed**: Metric that can be improved by actions that hurt the business (maximizing clicks by clickbait)

---

## Step 3: Evaluate dashboard structure

### Does it answer the critical questions?
- **Health**: Is the business healthy right now?
- **Trajectory**: Are we improving or declining?
- **Drivers**: What's causing the change?
- **Action**: What should we do differently?

### Red flags:
- **Too many metrics**: >10 KPIs on one dashboard → lack of focus
- **No trend lines**: Only current value, no comparison (vs last period, vs target, vs forecast)
- **No drill-down**: Can't segment or filter to investigate anomalies
- **Conflicting signals**: Two metrics that should correlate don't (investigate why)

---

## Step 4: Classify health per metric

| Metric | Classification | Status | Issue | Recommendation |
|--------|----------------|--------|-------|----------------|
| [Metric name] | Lagging / Leading / Vanity | 🟢 / 🟡 / 🔴 | [Problem if any] | [How to fix] |

**Classification**:
- 🟢 **GREEN (Healthy)**: Actionable, contextualized, honest. This metric is useful as-is.
- 🟡 **YELLOW (Gaps)**: Mostly useful but missing context, segmentation, or leading indicators to pair with it.
- 🔴 **RED (Broken)**: Vanity metric, misleading aggregate, or irrelevant to decision-making. Replace or remove.

---

## Output

```markdown
# KPI Review: [Dashboard/Metric Set Name]

## Purpose
**What decision does this dashboard inform?**
[Specific decision or goal]

**Audience**: [Who uses this]

**Cadence**: [How often reviewed]

---

## Overall Assessment: [🟢 / 🟡 / 🔴]

**Summary**:
[1-2 sentences on overall dashboard health]

**Key issues**:
- [Most critical problem]
- [Second issue]

---

## Metric-by-Metric Review

### [Metric 1 Name]: [🟢 / 🟡 / 🔴]

**Current definition**: [How it's calculated]

**Classification**: [Lagging / Leading / Vanity]

**Issue** (if not GREEN):
- [What's wrong with this metric]

**Recommendation**:
- [Specific fix: add context, segment, replace with ratio, pair with leading indicator]

**Example**:
- Before: "Total users: 1.2M"
- After: "Active users (last 30d): 450K (-3% MoM, +12% YoY)"

---

### [Metric 2 Name]: [🟢 / 🟡 / 🔴]

[Repeat structure]

---

## Missing Metrics

**Leading indicators not currently tracked**:
- [Metric that predicts outcomes]: [Why it matters]
- [Input metric]: [How it drives lagging KPIs]

**Segmentation gaps**:
- [Dimension to add]: [What it would reveal]

**Example**:
- Currently tracking: Total GMV
- Missing: GMV by traffic source, GMV by new vs returning, GMV per vertical (flights/hotels/packages)
- Why it matters: Can't diagnose where growth is coming from or where to invest

---

## Dashboard Structure

**Health**: [Does it show if business is healthy?]
- ✅ / ❌ Current state clear
- ✅ / ❌ Trend vs target visible
- ✅ / ❌ Alert threshold defined

**Trajectory**: [Does it show direction?]
- ✅ / ❌ WoW/MoM/YoY comparison
- ✅ / ❌ Forecast or target line
- ✅ / ❌ Leading indicators that predict lagging

**Drivers**: [Can you diagnose causes?]
- ✅ / ❌ Segmentation available
- ✅ / ❌ Drill-down to underlying data
- ✅ / ❌ Related metrics grouped

**Red flags**:
- [Issue 1: e.g., "14 metrics on one page — too noisy"]
- [Issue 2: e.g., "No comparison to target — can't tell if 10K signups is good"]

---

## Priority Fixes

### 1. [Highest priority fix]
**Why**: [Impact on decision quality]
**How**: [Specific change to make]
**Effort**: [Low / Medium / High]

### 2. [Second priority]
**Why**: [Impact]
**How**: [Specific change]
**Effort**: [Low / Medium / High]

### 3. [Third priority]
**Why**: [Impact]
**How**: [Specific change]
**Effort**: [Low / Medium / High]

---

## Recommended Metric Set

**If rebuilding from scratch**, focus on these:

**Health (Lagging)**:
1. [Core outcome metric] — [Why]
2. [Secondary outcome] — [Why]

**Drivers (Leading)**:
1. [Input metric that predicts outcome] — [Why]
2. [Activity metric] — [Why]

**Segments** (apply to all above):
- By [dimension]: [What it reveals]
- By [dimension]: [What it reveals]

**Context** (show for all metrics):
- Current value
- Trend (WoW, MoM, YoY)
- vs Target
- vs Forecast (if applicable)
```

---

## Escalation / Edge cases

**RED flag immediately if**:
- **No comparison context**: Metrics shown without trend, target, or comparison (can't tell if good or bad)
- **Vanity metrics dominating**: Dashboard full of cumulative totals or raw counts that don't inform decisions
- **Misleading aggregates**: Averages hiding bimodal distributions, or totals hiding negative segments
- **Metric gaming**: Team has found ways to improve metric that hurt actual business (e.g., goosing signups with low-quality traffic that never converts)

**Request clarification when**:
- Metric definitions are ambiguous (MAU = active how? Monthly login? Or monthly transaction?)
- Conflicting metrics (conversion up, revenue down — is one calculated wrong?)
- Audience unclear (exec dashboard with ops-level detail, or vice versa)

**Common dashboard anti-patterns**:
- **"Everything dashboard"**: 20+ metrics with no hierarchy or focus
- **"Vanity wall"**: Big numbers that look impressive but don't drive action
- **"No trend lines"**: Only shows current state, no historical context
- **"No segmentation"**: Aggregate only, can't drill into drivers
- **"Death by detail"**: Too granular, can't see the forest for the trees

**Ross/Wego context**:
- North Star for Wego: GMV (Gross Merchandise Value) — total booking value
- Key drivers: traffic (unique users), conversion rate, AOV (average order value)
- MENA specifics: break out by market (UAE, Saudi, Egypt — very different behaviors)
- Seasonality: Ramadan (low travel), Eid (high), summer (Saudi families travel), school holidays
- Flight vs hotel metrics behave differently (flight higher AOV, lower conversion; hotel opposite)
