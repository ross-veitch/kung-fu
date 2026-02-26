# /frame — Problem Structuring

**Purpose**: Convert ambiguous input into a clear decision statement, MECE issue tree, and prioritised hypotheses.

**When to use**: Any time a problem arrives as noise. Before any analysis begins.

---

## Phase 1: Decision clarification

Ask (or infer from context):
1. **What is the actual decision?** Not the problem — the decision. By whom, with what authority?
2. **When does it need to be made?** Affects depth of analysis warranted.
3. **What would a good answer look like?** Crisp, directional, defensible — or detailed and quantified?
4. **What would change the answer?** This names the hypotheses before you structure them.

Output: one-sentence decision statement.
> *"Should [company] [action] given [context], by [date]?"*

---

## Phase 2: Issue tree

Build a MECE decomposition of the decision. Test:
- **Mutually exclusive?** No overlap between branches.
- **Collectively exhaustive?** Together they cover the full decision space.

Typical first-level branches for a strategic decision:
- Market attractiveness (is the opportunity real?)
- Competitive position (can we win?)
- Execution feasibility (can we deliver?)
- Financial viability (does the math work?)
- Strategic fit (does this compound our existing advantages?)

Adapt the tree to the actual decision type. Don't use a generic template without editing it.

---

## Phase 3: Hypothesis design

For each major branch, form 1–2 hypotheses:
- State as a testable assertion, not a question
- Assign: *high / medium / low* impact if true
- Assign: *easy / medium / hard* to validate
- Flag: what data/analysis would confirm or refute it

Rank hypotheses by impact × ease of validation. The top 2–3 are the working hypotheses.

---

## Phase 4: Analysis plan

For each working hypothesis:
- What's the minimum analysis needed to test it?
- What data is available vs what needs to be estimated?
- How long will it take?

Output: named next moves, each < 1 day of work.

---

## Output format

```
DECISION: [one sentence]

ISSUE TREE:
  Branch 1: [label]
    - Sub-branch 1a
    - Sub-branch 1b
  Branch 2: [label]
    ...

WORKING HYPOTHESES (ranked):
  H1: [assertion] | Impact: High | Ease: Medium | Test: [method]
  H2: [assertion] | Impact: High | Ease: Hard   | Test: [method]
  H3: [assertion] | Impact: Medium | Ease: Easy | Test: [method]

NEXT MOVES:
  1. [specific analysis] — [owner/tool] — [by when]
  2. ...
```
