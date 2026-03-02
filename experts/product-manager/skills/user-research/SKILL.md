---
name: user-research
description: Customer interview techniques (Mom Test), usability testing, survey design, synthesis methods, and distinguishing stated preferences from revealed behavior.
---

# User Research

## The Mom Test (Interview Fundamentals)

You can't ask your mom if your idea is good — she loves you and will lie. The same applies to users. Rules:

1. **Talk about their life, not your idea** — ask about their last booking, not whether they'd use your feature
2. **Ask about specifics in the past, not hypotheticals about the future** — "What did you do?" not "What would you do?"
3. **Talk less, listen more** — if you're talking >30% of the time, you're pitching, not learning

**Avoid**: "Would you use this?" / "How much would you pay?" / "Do you like this idea?" — all invite polite lies.

**Ask instead**: "Tell me about the last time you [had this problem]" / "What did you do to solve it?" / "How much time/money did that cost?" / "Have you tried other solutions? What happened?"

**Five Whys**: when a user states a preference, keep asking "why" until you hit the root cause. "I want faster search" → "I'm booking last-minute" → "I wait because prices might drop" → the real job is *price confidence*, not speed.

---

## Usability Testing

Observe users attempt tasks with your product. Reveals where they get stuck, confused, or frustrated.

**Run it**: 5-8 users per round. Give task scenarios (not instructions): "You're planning a weekend trip to Bangkok. Find a hotel for 2 nights." Ask them to think aloud. Do not help — if they can't figure it out, the design failed, not the user. Ask follow-up after each task.

**Measure**: task success rate, time on task, error rate, post-task satisfaction (1-5).

**Red flags**: "Where do I...?" (navigation problem), clicking non-interactive elements (misleading affordances), task abandonment (too much friction).

---

## Surveys

Use to quantify patterns you've already found in qualitative research — never to discover new insights.

**Good questions**: single-choice, Likert scale (1-5), behavioral questions about past actions.

**Bad questions**: leading ("Don't you think X is better?"), double-barreled ("rate price and quality"), vague ("do you book often?"), hypothetical ("would you pay $10?").

**Best practices**: max 10 questions; test on 5 people before broad distribution; include progress bar.

| Use surveys when | Use interviews when |
|---|---|
| Quantifying a known pattern | Discovering unknown problems |
| Validating a specific hypothesis | Understanding "why" behind behavior |
| Need statistical significance | Need to understand emotional/social context |

---

## Stated vs Revealed Preference

Users are poor predictors of their own behavior. Trust behavior over words.

- "I'd definitely pay for this" → they don't convert on launch day
- "Price is most important" → they choose the premium option for convenience
- "I care about privacy" → they accept invasive permissions without reading them

**Surface revealed preferences through**: A/B tests (what they click), cohort analysis (what behaviors predict retention), funnel analysis (where they actually drop off), session recordings (what they actually interact with).

---

## Research Synthesis

Raw data is not useful. Insights are. Each insight has three parts:

1. **Observation** (data): "7 of 8 users abandoned at the payment step; 5 mentioned feeling unsafe entering card details"
2. **Inference** (interpretation): "This is a trust problem, not a usability problem"
3. **Implication** (recommendation): "Add trust signals (security badges, reviews, money-back guarantee) to payment page"

**Affinity mapping**: write each observation on a sticky note → group into themes → name each theme → prioritise by frequency + severity.

**Research summary format**:
```
## Research Goal
## Method (who, how many, what we did)
## Key Insights (3-5 max)
   [Headline]: [Evidence] → [Implication]
## Recommended Actions
## Raw data / appendix link
```

**Sample sizes**: interviews = 5-10 per segment (stop at saturation); usability = 5-8 per iteration; surveys = 100+ for statistical significance.

**Common pitfalls**: confirmation bias (actively seek disconfirming evidence); sampling bias (include churned users, not just power users); analysis paralysis (define decision criteria upfront: "if we learn X, we'll do Y").
