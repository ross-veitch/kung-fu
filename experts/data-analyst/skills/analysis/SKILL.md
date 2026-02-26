---
name: data-analysis-fundamentals
description: >
  Core analytical frameworks for turning data into decisions.
  Use when: analysing data, interpreting metrics, building reports, assessing KPIs,
  running exploratory analysis, evaluating a dataset, what does this data tell us.
---

# Data Analysis Fundamentals

## The question before the query

Before writing any SQL or opening any spreadsheet: **what decision will this analysis inform?**

The most common failure in data analysis is producing an answer to the wrong question. Clarify:
1. What decision needs to be made?
2. What would change about the decision if the number were different?
3. What is the minimum analysis needed to inform that decision?

If the analysis wouldn't change the decision, it shouldn't be done.

## Exploratory vs confirmatory analysis

**Exploratory**: You don't know what you're looking for. Goal is to find patterns, anomalies, and hypotheses. Output: a list of things worth investigating. Don't draw conclusions from exploratory work.

**Confirmatory**: You have a hypothesis. Goal is to test it with appropriate rigour. Output: a specific claim with a confidence level. Requires defining the test before looking at the data.

Most "data analysis" in practice blurs these two. When they are confused — when you explore the data, find a pattern, and then present it as a tested hypothesis — you get spurious results and false confidence.

## The metric hierarchy

Not all metrics are equal. Know the difference:
- **Input metrics**: things you control (headcount, ad spend, feature launches)
- **Output metrics**: business outcomes (revenue, MAU, retention)
- **Leading indicators**: early signals that predict outputs (sign-up rate → paid conversion)
- **Lagging indicators**: results that confirm outputs (NPS, LTV realised)

Good analysis connects inputs to outputs through leading indicators. "We increased ad spend by 20% and saw MAU grow by 8%" is incomplete without the funnel in between.

## Metric traps to avoid

**Vanity metrics**: look good, don't predict outcomes. Page views without conversion. App downloads without DAU. Followers without engagement.

**Aggregation masking**: averages hide distributions. Average order value of $50 may mean "mostly $30-40 orders with a few $200 outliers" or "fairly consistent $45-55". Different business. Look at distributions, not just means.

**Confounding**: correlation without causation. Revenue went up the same month you launched a feature. Did the feature cause it? Control for time, seasonality, and simultaneous changes before claiming causation.

**Survivorship bias**: analysing only the customers/products/cohorts that "made it" systematically overestimates performance. Include the full population.

## Statistical intuition

You don't need to know advanced statistics to do good analysis. You do need to know:

- **Sample size matters**: a 20% conversion rate from 10 users means nothing. From 10,000 users, it means something.
- **Statistical significance ≠ practical significance**: a change can be reliably detectable but too small to matter.
- **Confidence intervals**: every estimate has a range. "The conversion rate is 4.2%±0.8%" is more honest than "the conversion rate is 4.2%".
- **A/B testing basics**: random assignment, control vs treatment, pre-register your metric before running the test.

## Output principles

- Lead with the conclusion. The data is in the appendix.
- Use round numbers unless precision is the point.
- Label everything: what is this number? What time period? What source? What confidence level?
- Show the distribution, not just the mean.
- Make the uncertainty visible. "Estimated" and "projected" are different from "reported".

See `references/` for: chart selection guide, common statistical tests, SQL query patterns, Python analysis templates.
