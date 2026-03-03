# /hypothesis-test — Test a specific hypothesis with evidence

**Purpose**: Take a stated hypothesis and systematically gather evidence for and against it, arriving at a defensible verdict with explicit confidence level.

**When to use**: When someone has a belief, assumption, or thesis that needs to be validated or challenged with structured evidence rather than gut feeling.

---

## Phase 1: Frame the hypothesis

A testable hypothesis must be:
- **Specific**: "Wego's conversion rate is declining because of mobile load time" not "something is wrong with conversion"
- **Falsifiable**: There must be evidence that could prove it wrong
- **Bounded**: Clear scope — what is included, what is not

Restate the hypothesis in the format:
> **H: [Specific claim] because [proposed mechanism]**

Then identify:
- **What evidence would confirm this?** (If we find X, the hypothesis is supported)
- **What evidence would refute this?** (If we find Y, the hypothesis is wrong)
- **What is the null hypothesis?** (The default state if the hypothesis is not supported)

---

## Phase 2: Gather evidence — both sides

This is the critical discipline: search for evidence **against** the hypothesis as actively as evidence **for** it. Confirmation bias is the default human mode. Fight it.

### Evidence for (confirming)
Search for:
- Data that supports the claimed relationship
- Expert opinions that align
- Case studies or precedents that show the same pattern
- Logical arguments that support the mechanism

### Evidence against (disconfirming)
Search for:
- Alternative explanations for the same observation
- Data that contradicts the claim
- Expert opinions that disagree
- Cases where the proposed mechanism did not produce the expected outcome

### Evidence quality assessment
For each piece of evidence, note:
- **Source quality**: Primary data > analyst report > opinion piece
- **Relevance**: Does this directly address the hypothesis, or is it tangential?
- **Recency**: Is this current enough to be applicable?
- **Independence**: Is this an independent data point, or does it derive from the same source as other evidence?

---

## Phase 3: Weigh the evidence

Create an evidence ledger:

```
HYPOTHESIS: [Statement]

EVIDENCE FOR:
1. [Evidence] — Source: [X] — Quality: [High/Med/Low] — Weight: [Strong/Moderate/Weak]
2. [Evidence] — Source: [X] — Quality: [High/Med/Low] — Weight: [Strong/Moderate/Weak]
3. ...

EVIDENCE AGAINST:
1. [Evidence] — Source: [X] — Quality: [High/Med/Low] — Weight: [Strong/Moderate/Weak]
2. [Evidence] — Source: [X] — Quality: [High/Med/Low] — Weight: [Strong/Moderate/Weak]
3. ...

ALTERNATIVE EXPLANATIONS:
1. [Alternative hypothesis] — Evidence supporting it: [X]
2. ...
```

### Weighing rules
- One high-quality disconfirming data point outweighs multiple low-quality confirming opinions
- If all confirming evidence comes from the same source or incentive structure, discount it heavily
- If disconfirming evidence exists but is from a weaker source, note it but do not dismiss it

---

## Phase 4: Render the verdict

Based on the evidence ledger, reach a conclusion:

### Verdict categories
- **Supported** (>80% confidence): Strong evidence for, weak evidence against, no credible alternative explanations
- **Likely** (60–80%): Balance of evidence favors the hypothesis, but some uncertainty remains
- **Inconclusive** (40–60%): Evidence is genuinely mixed; more data needed. Specify exactly what data.
- **Unlikely** (20–40%): Balance of evidence is against the hypothesis
- **Refuted** (<20%): Strong evidence against, or a better alternative explanation exists

### What would change the verdict?
Always state: "This verdict would change to [X] if [specific new evidence] emerged." This is the hallmark of honest analysis.

---

## Phase 5: Recommend next steps

Based on the verdict:

- **Supported**: Proceed as if true. Recommend specific actions.
- **Likely**: Proceed cautiously. Identify the key uncertainty and propose how to resolve it.
- **Inconclusive**: Do not act yet. Specify the research needed to break the deadlock — and estimate the cost and time.
- **Unlikely/Refuted**: Abandon the hypothesis. Propose the alternative explanation that best fits the evidence.

---

## Output format

```
Hypothesis Test: [Title]
Date: [Date]

Hypothesis: [H stated clearly]
Null hypothesis: [Default if H is not supported]

Evidence summary:
- For: [X pieces, strongest: brief description]
- Against: [Y pieces, strongest: brief description]
- Alternative explanations: [List]

Verdict: [Supported / Likely / Inconclusive / Unlikely / Refuted]
Confidence: [X%]

Key reasoning: [2–3 sentences explaining why]

Would change if: [Specific evidence that would flip the verdict]

Recommendation: [Specific next step]
```
