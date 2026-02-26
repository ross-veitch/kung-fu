---
domain: data-visualization
version: 0.1.0
---

# Data Visualization

Choosing the right chart, designing for clarity, and building dashboards that answer the question they were built to answer — not the one that was easy to build.

---

## The primary principle: purpose before chart type

Before choosing a visual form, answer: what is the reader supposed to understand or decide after seeing this? Every design choice should serve that answer.

The most common failure mode: choosing a chart type first (because it looks familiar or impressive) and then trying to make the data fit. The correct order: identify the relationship you want to communicate, then choose the visual form that communicates it most clearly.

---

## Chart selection

| Relationship to show | Best chart types | Avoid |
|----------------------|-----------------|-------|
| Comparison across categories | Bar chart (horizontal for long labels) | Pie chart (terrible for comparison) |
| Change over time | Line chart | Bar chart (for continuous time series) |
| Correlation between two variables | Scatter plot | Line chart (implies sequence) |
| Distribution of a single variable | Histogram, box plot, violin plot | Bar chart |
| Part-to-whole composition | Stacked bar (100%), treemap | 3D pie chart |
| Ranking | Sorted bar chart | Unsorted bar, table |
| Geographic distribution | Choropleth map | Bar chart when geography matters |
| Two metrics together | Dual-axis line chart (use carefully) | Always explain the axis relationship |

**On pie charts**: use only when showing 2–3 categories where the proportions are very different. For anything more nuanced, a sorted bar chart is almost always clearer. Never use 3D pie charts.

**On dual-axis charts**: the reader will assume the two lines are directly comparable. Label both axes clearly. Prefer showing the two metrics separately if the relationship isn't immediately obvious.

---

## Tufte principles

Edward Tufte's *The Visual Display of Quantitative Information* defined the standards for good statistical graphics. Core principles:

1. **Data-ink ratio**: maximise the proportion of ink that carries information. Remove gridlines, borders, backgrounds, and decorative elements that don't convey data. Every pixel that doesn't encode data is visual noise.

2. **Chartjunk**: avoid 3D effects, shadows, gradients, and decorative elements. They distort perception and add no information.

3. **Small multiples**: when comparing many categories over time, use a grid of small charts (all on the same axes) rather than overlaying everything on one chart.

4. **Show the data**: label data points directly when possible, rather than forcing the reader to match colours to a legend. Legends require cognitive work; direct labels remove it.

5. **Tell the truth**: the visual representation of numbers should be proportional to the numbers themselves. A truncated y-axis that starts at 90% to make a 1% difference look dramatic is manipulative.

---

## Cognitive load design

Visualisation is communication. Apply these principles to reduce the effort required to extract the insight:

- **Preattentive attributes**: colour, size, position, and shape are processed instantly (before conscious attention). Use them for the most important distinction. Don't use colour to encode every variable.
- **Working memory limit**: the reader can hold ~3–4 chunks simultaneously. A chart that requires tracking 8 coloured series simultaneously exceeds working memory. Simplify or split.
- **One insight per chart**: resist the urge to show everything in one view. Two clear charts are better than one cluttered chart.
- **Label hierarchy**: the chart title should state the conclusion ("Mobile conversion up 12% QoQ"), not the data description ("Mobile conversion rate by quarter"). The subtitle can explain the methodology.

---

## Dashboard design

A dashboard is a collection of views that work together to answer a specific question or serve a specific decision-making workflow. Dashboard design is product design.

**Common failure modes**:
- Building a data dump disguised as a dashboard — every metric that could be shown, is shown
- No clear primary metric — the reader can't tell what to look at first
- Metrics without context — a number without a benchmark, trend, or target is nearly meaningless
- Filters that break the layout — responsive design for data-heavy UIs is genuinely hard

**Design process**:
1. Define the primary use case: who uses this, for what decision, how often?
2. Identify the 1–3 primary metrics that answer the primary question
3. Build supporting context: trend (over what period?), comparison (vs. what benchmark?), decomposition (which segment is driving this?)
4. Secondary metrics below the fold; data tables available on drill-down
5. Annotations for significant events: a spike in DAU is uninterpretable without knowing you ran a campaign that day

**BI tool patterns**:
- **Looker** (LookML): define metrics as code in a semantic layer; non-technical users query from there. Best for orgs that need consistent metric definitions across teams.
- **Tableau**: strongest for ad-hoc visual exploration; more powerful than Looker for complex visualisations
- **Metabase**: best for smaller teams that want self-serve SQL + simple dashboards without a semantic layer
- **Power BI**: standard in Microsoft-heavy orgs; strong for Excel-native users

---

## Key references

- Tufte, Edward — *The Visual Display of Quantitative Information* — the foundational text
- Cairo, Alberto — *The Functional Art* — data visualization as communication
- Few, Stephen — *Show Me the Numbers* — practical chart design for business
- [Flowing Data](https://flowingdata.com) — Nathan Yau's blog on practical data visualization
- [The Data Visualization Catalogue](https://datavizcatalogue.com) — reference for chart type selection
