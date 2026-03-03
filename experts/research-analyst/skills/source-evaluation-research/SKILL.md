---
name: source-evaluation-research
description: Systematic framework for evaluating the reliability, bias, and evidentiary weight of research sources
---

# Source Evaluation for Research

The quality of research output is bounded by the quality of its inputs. Source evaluation is the discipline of systematically assessing whether a piece of information is reliable, what biases it carries, and how much evidentiary weight to assign it. This is not about finding "unbiased" sources — none exist — but about understanding each source's incentive structure, methodology, and limitations well enough to triangulate toward truth.

## The source hierarchy

Not all sources carry equal weight. Rank by proximity to the underlying reality:

### Tier 1: Primary sources (highest weight)
- **Raw data**: Government statistics, company filings (10-K, 10-Q, annual reports), patent filings, court records, census data
- **Original documents**: Contracts, legislation, regulatory filings, meeting minutes, internal memos (when available)
- **Direct observation**: Firsthand accounts from participants, field research, interviews with principals
- **Peer-reviewed research**: Studies published in journals with rigorous peer review (Nature, Science, The Lancet, JAMA, field-specific top journals)

**Weight**: High. These are closest to the source of truth. Still subject to error, fraud, and selection bias — but they are the best available.

### Tier 2: Analytical secondary sources (moderate weight)
- **Analyst reports**: Sell-side research (Goldman, Morgan Stanley) — useful for data aggregation, but incentivized toward positive coverage of companies they bank
- **Think tank reports**: Brookings, RAND, McKinsey Global Institute — generally rigorous but reflect the institution's ideological priors
- **Investigative journalism**: Long-form reporting from outlets with strong editorial standards (FT, WSJ, NYT, The Economist) — high effort, usually well-sourced, but reflect editorial perspective
- **Industry reports**: Gartner, IDC, Statista — useful for market sizing, but methodologies vary in rigor

**Weight**: Moderate. These add analysis and context but are one step removed from primary data. Always check: what primary sources are they drawing from?

### Tier 3: Interpretive and aggregated sources (low-moderate weight)
- **News reporting**: Wire services (Reuters, AP) for facts; newspapers for context; TV/radio for speed but lower accuracy
- **Newsletters and blogs**: Stratechery, Benedict Evans — can be excellent but represent one analyst's view, not institutional rigor
- **Wikipedia**: Good starting point for orientation; unreliable for anything recent, controversial, or niche. Always check the citations, not the article.
- **Social media**: X, Reddit, LinkedIn — useful for real-time signals and community sentiment, but unverified by default

**Weight**: Low-moderate. Use for orientation and leads, not for conclusions. Always trace claims back to primary sources.

### Tier 4: Sources to treat with extreme caution
- **Press releases**: Written by the entity being covered, with clear promotional intent
- **Sponsored content / advertorials**: Paid placement disguised as journalism
- **Anonymous sources without corroboration**: Single anonymous source = a lead, not a fact
- **Prediction markets and polls**: Useful signals but reflect crowd sentiment, not truth
- **AI-generated summaries**: Can hallucinate, lack source verification, and reflect training data biases

**Weight**: Very low unless corroborated by Tier 1–2 sources.

## The CRAAP test (adapted for professional research)

For every source, evaluate across five dimensions:

### Currency
- **When was this published?** Information decays. A 2019 market sizing report is likely wrong post-COVID.
- **Has the situation changed since publication?** Regulations, market conditions, technology — all move fast.
- **Rule of thumb**: For fast-moving topics (tech, markets), >12 months old = verify. For structural topics (geopolitics, demographics), 3–5 years may be fine.

### Relevance
- **Does this source address the specific question?** A general industry report is not evidence for a specific company claim.
- **Is the geographic and temporal scope correct?** US market data is not evidence for MENA market conditions.
- **Is the level of analysis appropriate?** A macro report does not answer a micro question.

### Authority
- **Who is the author or institution?** What is their domain expertise?
- **What are their credentials?** Academic appointment, industry experience, track record of accuracy?
- **Are they cited by other credible sources?** Citation by experts is a signal (not proof) of authority.
- **What institution published this?** Institutional reputation matters — a report from the BIS carries more weight than a report from an unknown consultancy.

### Accuracy
- **Are claims supported by evidence?** Look for citations, data, methodology descriptions.
- **Can claims be verified against other sources?** If a statistic appears in only one source, treat with caution.
- **Is the methodology transparent?** For research papers: sample size, selection criteria, statistical methods, limitations disclosed? For reports: data collection method, sample, margin of error?
- **Are there obvious errors?** Factual mistakes, logical fallacies, or cherry-picked data undermine the entire source.

### Purpose (the most underrated dimension)
- **Why was this created?** Inform, persuade, sell, entertain, or comply with regulation?
- **Who funded it?** Industry-funded research tends to favor industry conclusions (tobacco, pharma, tech — documented pattern).
- **What would the author gain from this being believed?** Follow the incentives. A VC-funded report on a market they invest in is not neutral.
- **What is the publication's business model?** Ad-supported media needs clicks (sensationalism incentive). Subscription media needs trust (accuracy incentive). Free reports often serve as marketing.

## Bias identification framework

Every source has bias. The goal is to identify it, not avoid it.

### Types of bias to check for

**Selection bias**: The source only looks at data that supports its conclusion. Example: a report on "remote work productivity" that surveys only companies that chose to go remote (self-selection).

**Survivorship bias**: The source only examines successes, ignoring failures. Example: "What successful startups have in common" — never asking what failed startups also had in common.

**Confirmation bias**: The author started with a conclusion and found evidence to support it. Look for: cherry-picked timeframes, selective quoting, absence of counterarguments.

**Anchoring bias**: The source anchors on a dramatic number that sets expectations. Example: "The AI market will be $15 trillion by 2030" — anchoring on the largest possible estimate without examining assumptions.

**Geographic/cultural bias**: Western-centric research applied to non-Western contexts. MENA, Southeast Asia, and sub-Saharan Africa are chronically under-researched in English-language sources.

**Recency bias**: Overweighting recent events or data. The last quarter does not define a trend.

### How to mitigate bias

1. **Triangulate**: Use 3+ sources with different incentive structures. If a government report, an industry analysis, and an academic paper agree, confidence is high.
2. **Read the critics**: For any claim, search for rebuttals. If no credible rebuttals exist, the claim is stronger. If rebuttals exist, assess their quality.
3. **Check the funding**: If a study was funded by an interested party, look for independent replication.
4. **Adjust for known priors**: The Economist leans free-market; FT leans establishment; tech blogs lean techno-optimist. Knowing the lean helps you adjust.
5. **Be suspicious of precision**: "The market is worth $4.7 billion" from a consultancy is a model output, not a fact. Treat it as an estimate, not a measurement.

## Evaluating academic research specifically

Academic papers require additional scrutiny:

### Red flags
- **Small sample size**: n < 30 for quantitative studies is often underpowered
- **P-hacking**: p = 0.049 (just barely significant) without pre-registration is suspicious
- **No replication**: A single study, unreplicated, is a hypothesis — not a finding
- **Predatory journals**: Check the journal. Is it in reputable indexes (Scopus, Web of Science)? Or is it a pay-to-publish mill?
- **Conflict of interest**: Check the disclosure section. Industry funding does not invalidate, but it adjusts weight.

### Green flags
- **Pre-registered study**: Hypothesis and methods committed before data collection
- **Large sample**: Adequate statistical power
- **Replicated findings**: Multiple independent studies reach similar conclusions
- **Published in top-tier journal**: Nature, Science, field-specific top journals (JAMA for medicine, AER for economics, etc.)
- **Transparent methodology**: Data and code available for review

## Practical source evaluation workflow

When encountering a new source during research:

1. **30-second check**: Who wrote it? When? Where published? Any obvious red flags?
2. **If passes**: Read and extract claims. Note each claim's evidence basis.
3. **Cross-reference**: Can the key claims be verified in at least one other credible source?
4. **Classify**: Assign a confidence level (High / Medium / Low / Reject)
5. **Document**: Record the source, your confidence assessment, and any caveats in your research notes

This takes 2–5 minutes per source. It prevents bad information from contaminating your analysis.

## The meta-skill: Calibrated confidence

The ultimate goal of source evaluation is **calibrated confidence** — knowing how much to trust each piece of information, and communicating that calibration to the reader.

Use explicit language:
- "Confirmed by multiple primary sources" (high confidence)
- "Reported by [credible outlet], not yet independently verified" (moderate)
- "According to [single source with known bias]" (low — flagged)
- "Widely cited but methodology is questionable" (moderate claim, low confidence in precision)

Never present low-confidence information as high-confidence fact. The reader depends on your judgment about what to trust.
