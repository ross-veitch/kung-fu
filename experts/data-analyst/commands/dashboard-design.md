

 # /dashboard-design — Design a metrics dashboard for a specific use case

**Purpose**: Create a dashboard specification that surfaces the right metrics, at the right frequency, to the right audience — without overwhelming them with noise.

**When to use**: When a team or stakeholder needs ongoing visibility into performance metrics, but does not yet have a clear view of what to track or how to structure it.

---

## Phase 1: Define the decision context

Dashboards exist to support decisions. Start by identifying what decisions the dashboard will inform:

1. **Who is the primary audience?**
   - Executive team (strategic decisions, high-level trends)
   - Product/marketing managers (tactical adjustments, campaign performance)
   - Operations team (daily execution, anomaly detection)
   - Technical team (system health, data quality)

2. **What decisions will they make using this dashboard?**
   Examples:
   - "Should we increase ad spend in this channel?"
   - "Is this product feature driving retention?"
   - "Do we need to escalate this performance issue?"

3. **How often will they check it?**
   - Real-time (operations, incident response)
   - Daily (marketing, sales)
   - Weekly (product, growth)
   - Monthly (finance, board reporting)

The answer to #3 determines the refresh frequency and the level of aggregation. A daily dashboard should not show monthly trends — it should show today vs. yesterday, with a 7-day rolling average for context.

---

## Phase 2: Identify the North Star and supporting metrics

Every dashboard should have a clear hierarchy:

**1. The North Star metric (top of dashboard, largest visual)**
The single metric that best represents success. Examples:
- Revenue (e-commerce)
- Weekly active users (consumer product)
- Net revenue retention (SaaS)
- Conversion rate (marketplace)

**2. Input metrics (2–4 metrics that drive the North Star)**
These are the levers that, when pulled, move the North Star. Examples for "Revenue":
- Traffic
- Conversion rate
- Average order value

**3. Health metrics (2–3 metrics that indicate system integrity)**
These are not drivers — they are warnings. Examples:
- Error rate
- Load time
- Customer support ticket volume

**Total metrics on the dashboard: 6–8 maximum.** More than that, and it is not a dashboard — it is a data warehouse with charts.

---

## Phase 3: Choose the right visualizations

For each metric, select the visualization that best communicates the pattern:

| Metric type | Best visualization | Rationale |
|-------------|-------------------|-----------|
| Trend over time | **Line chart** | Shows direction and rate of change |
| Comparison between categories | **Horizontal bar chart** | Easy to compare lengths; labels fit naturally |
| Part-to-whole | **Stacked bar** or **treemap** | Never pie charts — humans are bad at comparing angles |
| Distribution | **Histogram** or **box plot** | Shows spread, outliers, and shape |
| Correlation | **Scatter plot** | Shows relationship between two variables |
| Single number | **Big number + sparkline** | Focuses attention; sparkline provides context |

**Visual hierarchy rules:**
- North Star metric: Big number (72pt+), with sparkline showing 30-day trend
- Input metrics: Medium-sized charts (1/4 page each)
- Health metrics: Small, bottom of page, red/yellow/green status indicators

---

## Phase 4: Set thresholds and alerts

A good dashboard surfaces problems automatically — the audience should not have to interpret every chart.

**For each key metric, define:**
1. **Green zone**: Operating normally (no action needed)
2. **Yellow zone**: Warning — worth monitoring (check again tomorrow)
3. **Red zone**: Actionable threshold — something is broken (escalate now)

Example for "Conversion Rate":
- Green: ≥3.0% (on target)
- Yellow: 2.5%–3.0% (below target, monitor)
- Red: <2.5% (investigate immediately)

Use color sparingly. Only highlight what requires attention. Everything else should be gray or neutral.

---

## Phase 5: Design the layout

Structure the dashboard in a Z-pattern (how the eye naturally scans):

```
[ North Star Metric — big number + sparkline ]

[ Input Metric 1 ]    [ Input Metric 2 ]
[ chart ]             [ chart ]

[ Input Metric 3 ]    [ Input Metric 4 ]
[ chart ]             [ chart ]

[ Health Metric 1 ]   [ Health Metric 2 ]   [ Health Metric 3 ]
[ status indicator ]   [ status indicator ]   [ status indicator ]
```

**Key layout principles:**
- Most important thing in top-left
- No scrolling required for the primary view (everything fits on one screen)
- White space is not wasted space — it creates focus
- Consistent sizing and alignment reduce cognitive load

---

## Phase 6: Add context, not clutter

For each chart, provide the minimum context necessary to interpret it:

**Always include:**
- Metric name (clear, non-jargon)
- Current value
- Comparison to prior period (% change, or absolute delta)
- Time range (e.g., "Last 30 days")

**Sometimes include:**
- Target or goal line (when relevant)
- Annotations for known events ("Campaign launched Aug 15")

**Never include:**
- Chart titles that restate the metric name
- Unnecessary gridlines
- Legends when direct labels are possible
- Decimal precision beyond what the data supports

---

## Phase 7: Define the update cadence and ownership

**Refresh frequency:**
- Real-time dashboards (operations): Live or 1-minute refresh
- Daily dashboards (marketing, sales): Updated every morning at 6am
- Weekly dashboards (product, growth): Updated Monday mornings
- Monthly dashboards (finance, board): Updated first business day of the month

**Data ownership:**
- Who owns the data pipeline feeding this dashboard?
- What is the escalation path if data quality degrades?
- Who is responsible for updating thresholds as the business evolves?

**Maintenance:**
Dashboards decay. Metrics that were relevant 6 months ago may not be relevant today. Schedule a quarterly review: which metrics are still driving decisions? Which are ignored? Archive or replace anything that is not being used.

---

## Output format

Deliver:
1. **Dashboard specification document** (1–2 pages):
   - Audience and decision context
   - Metric list (North Star, inputs, health)
   - Visualization type for each metric
   - Threshold definitions (green/yellow/red)
   - Refresh frequency

2. **Wireframe or mockup** (sketch, Figma, or PowerPoint):
   - Layout showing metric placement
   - Example visuals (does not need real data yet)

3. **Data requirements** (for engineering handoff):
   - Data sources for each metric
   - Aggregation logic
   - Filters or segmentation needed

If the tool allows it (Looker, Tableau, Metabase), build a working prototype and iterate with the stakeholder before finalizing.
