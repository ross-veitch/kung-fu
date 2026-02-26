---
name: exploratory-analysis
description: First-pass analysis on a new dataset or data question.
---

# /exploratory-analysis

Run a structured first pass on any new dataset or data question.

## Steps

1. **Clarify the question**: What decision will this analysis inform? State it explicitly before touching data.
2. **Understand the data**: What is each table/field? What time period? What is the grain (one row = one what)?
3. **Check data quality**: Missing values, duplicates, outliers, definition inconsistencies. Flag before proceeding.
4. **Describe the distribution**: For key metrics — mean, median, p25, p75, p95. Not just averages.
5. **Surface the top 3 findings**: What does this data tell us? Lead with the most decision-relevant insight.
6. **Identify open questions**: What would you need to know to go deeper?

## Output format

- **Finding**: [What the data shows]
- **Confidence**: [High / Medium / Low — based on data quality and sample size]
- **Implication**: [What this means for the decision at hand]
- **Next step**: [If applicable]
