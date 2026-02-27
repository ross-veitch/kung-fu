# /experiment-design

Design a rigorous A/B test with sample size, success criteria, and holdout methodology.

---

## When to use

When you need to validate a hypothesis with a controlled experiment before committing resources to a full rollout. Use before any significant change to pricing, UX, messaging, or growth mechanics.

---

## Steps

### 1. Define the hypothesis
Write a falsifiable hypothesis in this format:
> **If** [change], **then** [metric] will [direction] by [magnitude], **because** [reasoning].

Example: *If we change the CTA from "Search" to "Find deals," then search-to-booking conversion will increase by 5%, because action-oriented copy reduces friction.*

Bad hypotheses: vague ("improve the experience"), unmeasurable ("users will like it more"), too many variables at once.

### 2. Choose the primary metric
One primary metric (the decision metric). May include 1–2 guardrail metrics (metrics that must not degrade).

- **Primary**: The metric you expect to move. Must be directly influenced by the change.
- **Guardrails**: Metrics you expect to stay flat. Revenue per user, page load time, support ticket volume.

### 3. Calculate sample size
Use a sample size calculator (Evan Miller's, Optimizely's, or built-in to your testing platform).

Inputs needed:
- **Baseline conversion rate**: Current value of the primary metric
- **Minimum Detectable Effect (MDE)**: Smallest improvement worth detecting (e.g., 5% relative lift)
- **Statistical significance**: Usually 95% (α = 0.05)
- **Statistical power**: Usually 80% (β = 0.20)

If sample size requires 4+ weeks of traffic, consider: is the MDE realistic? Can you increase traffic to the test? Should you use a less sensitive test?

### 4. Design the test
- **Control**: Current experience (no change)
- **Variant(s)**: The change(s) being tested. Start with one variant. Multi-variant tests require significantly more sample size.
- **Randomisation**: Users randomly assigned (not sessions — same user should always see the same variant)
- **Holdout**: Optional but recommended — a small % (5–10%) that never sees any test variant. Used for long-term impact measurement.

### 5. Set the run time
Minimum: 1 full week (to capture day-of-week effects). Calculate based on sample size requirements. Never peek at results before the planned end date (peeking inflates false positive rate). If you must peek, use sequential testing methods (Bayesian or alpha-spending).

### 6. Define the decision framework
Before launching, agree on what happens:
- **If significant positive**: Ship variant to 100%
- **If significant negative**: Kill variant, analyse why
- **If inconclusive**: Either extend (if close to significance) or kill (if nowhere near). Don't run forever hoping for significance.

### 7. Analyse and document
After the test concludes:
- Primary metric result with confidence interval
- Guardrail metrics
- Segment analysis (did the effect vary by platform, market, new vs returning users?)
- Learning captured — what did we learn regardless of the result?

---

## Output format

```
## Experiment: [Name]

**Hypothesis**: If [change], then [metric] will [direction] by [magnitude], because [reasoning].

**Primary metric**: [metric] (baseline: [value])
**Guardrail metrics**: [metrics]
**MDE**: [X]% relative lift
**Sample size needed**: [N] per variant
**Estimated run time**: [X] days at current traffic
**Variants**: Control + [description of variant(s)]
**Randomisation unit**: User
**Holdout**: [Yes/No, %]

**Decision framework**:
- Win: Ship if p < 0.05 and lift ≥ MDE
- Lose: Kill if p < 0.05 negative
- Inconclusive: [Extend / Kill / Re-test with different variant]
```
