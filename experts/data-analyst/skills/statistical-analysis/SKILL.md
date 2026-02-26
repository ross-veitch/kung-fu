---
domain: statistical-analysis
version: 0.1.0
---

# Statistical Analysis

Experimental design, hypothesis testing, and causal inference — the tools that separate data analysts who describe what happened from those who understand why it happened and what to do about it.

---

## Hypothesis testing fundamentals

A hypothesis test answers: "Is the pattern I observe in this sample likely to reflect a real pattern in the population, or is it plausibly just noise?"

**The setup**:
- **Null hypothesis (H₀)**: no real effect; observed difference is due to chance
- **Alternative hypothesis (H₁)**: a real effect exists
- **p-value**: probability of observing data this extreme if H₀ were true. A p-value of 0.03 means: "if there were truly no effect, we'd see results this extreme only 3% of the time by random chance"
- **Significance threshold (α)**: conventionally 0.05, but context-dependent (use 0.01 for high-stakes decisions; 0.10 for exploratory work)

**Critical distinctions**:
- p < α does NOT mean "the effect is large" — it means "the effect is statistically detectable with this sample size"
- A very large sample can make trivially small effects statistically significant
- **Effect size** (Cohen's d, relative risk, odds ratio) is the complement — it tells you whether the effect is *practically* significant
- Always report both: p-value + effect size + confidence interval

**Common errors**:
- **p-hacking**: running multiple tests and only reporting significant ones. Inflate α accordingly if testing multiple hypotheses (Bonferroni correction or FDR)
- **HARKing** (Hypothesising After Results are Known): presenting post-hoc hypotheses as if pre-registered. Pre-register primary hypotheses before analysis
- **Winner's curse**: first observation of an effect is usually an overestimate (regression to the mean); replicate before acting

---

## A/B testing design

An A/B test is a randomised controlled experiment on a product or business metric. The gold standard for causal inference when it can be run.

### Designing a valid test

1. **Define the metric upfront**: one primary metric (the "north star" for this test), 1–2 guardrail metrics (things that must not decrease), and maximum 3 secondary metrics. More creates multiple comparison problems.

2. **Calculate sample size before running**: use a power calculator (e.g., [Evan Miller's calculator](https://www.evanmiller.org/ab-testing/sample-size.html)). Inputs: baseline conversion rate, minimum detectable effect (MDE — the smallest effect worth acting on), desired power (typically 0.8), α. Run the test until the calculated sample size is reached — not until you see a p-value you like.

3. **Check randomisation**: confirm treatment and control groups are balanced on key dimensions (demographics, acquisition channel, device type) before running. SRM (Sample Ratio Mismatch) — if the split isn't close to 50/50, the randomisation is broken.

4. **Holdout period**: run for at least one full business cycle (typically 1 week minimum) to account for day-of-week effects.

### Analysis pitfalls
- **Peeking**: checking results before the planned end date and stopping early if significant. Inflates false positive rate. Use sequential testing methods if early stopping is required.
- **SUTVA violations** (Stable Unit Treatment Value Assumption): users in control and treatment interact in ways that contaminate the result. Network effects make this common in social products.
- **Novelty effects**: users engage more with any change initially. Run tests long enough to see the effect plateau.

---

## Causal inference without experiments

When randomised experiments are impossible (ethical, logistical, or time constraints), these methods provide causal estimates from observational data:

### Difference-in-differences (DiD)
Compare the change in outcomes for a treatment group vs. a control group across a before/after period.

**Parallel trends assumption**: the treatment and control groups would have followed the same trend without the treatment. Test by checking pre-treatment trend parallelism. Violation = invalid DiD.

**Use case**: evaluating a policy change or product rollout that affected a specific set of users.

### Regression discontinuity (RDD)
Exploit a sharp threshold in assignment to treatment — users just above the threshold get treated; users just below don't. Compare outcomes in a narrow band around the threshold.

**Use case**: analysing the effect of a threshold-based feature (e.g., users with >X orders get a loyalty tier; compare users with X-2 vs X+2 orders).

### Instrumental variables (IV)
Find a variable (the "instrument") that is correlated with the treatment assignment but has no direct effect on the outcome except through the treatment.

**Use case**: estimating the causal effect of a feature when self-selection bias is present.

### Propensity score matching
Match treated units to control units with similar observable characteristics, then compare outcomes.

**Limitation**: only controls for observed confounders. If an unobserved variable drives both treatment assignment and outcome, estimates are still biased.

---

## Regression

**Linear regression** is the foundation. Understand what each coefficient means (the marginal effect of one predictor, holding others constant), what R² tells you (variance explained) and what it doesn't (whether the model is correctly specified), and the assumptions (linearity, independence, homoscedasticity, normality of residuals — and when violating each matters).

**Logistic regression**: for binary outcomes (conversion yes/no). Coefficients are log-odds; use marginal effects or predicted probabilities for interpretation.

**Multicollinearity**: if two predictors are highly correlated, coefficient estimates become unstable and hard to interpret. Detect with VIF (variance inflation factor); address by removing one predictor or combining them.

**Overfitting**: a model with too many predictors fits training data well but predicts poorly on new data. Use cross-validation (k-fold) to evaluate generalisation.

---

## Simpson's Paradox and confounding

A trend present in multiple subgroups can disappear or reverse when the subgroups are combined. Classic example: a drug appears effective in overall data but harmful when broken down by severity — because more severe cases (who do worse regardless) were more likely to receive the drug.

**Rule**: never aggregate before stratifying. Always segment your data before drawing conclusions from overall means.

---

## Key tools

- **Python**: `scipy.stats` (statistical tests), `statsmodels` (regression, time-series), `pingouin` (cleaner API for common tests)
- **R**: `lm()`, `glm()`, `lme4` (mixed models), `rdrobust` (RDD), `MatchIt` (PSM)
- **Online calculators**: [Evan Miller A/B calculator](https://www.evanmiller.org/ab-testing/sample-size.html), [Optimizely stats engine documentation](https://www.optimizely.com/optimization-glossary/sequential-testing/)

---

## References

- Gelman & Hill — *Data Analysis Using Regression and Multilevel/Hierarchical Models*
- Angrist & Pischke — *Mostly Harmless Econometrics* (the accessible causal inference textbook)
- Kohavi, Tang & Xu — *Trustworthy Online Controlled Experiments* (O'Reilly) — the A/B testing bible
