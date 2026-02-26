---
name: user-research
description: >
  Customer interview techniques (Mom Test), usability testing, survey design, 
  synthesis methods, and distinguishing stated preferences from revealed behavior. 
  Use when planning user research, conducting interviews, designing surveys, or 
  synthesizing research findings into product decisions.
---

# User Research

## The Mom Test (Customer Interview Fundamentals)

The Mom Test is a discipline for asking questions that reveal truth instead of collecting compliments. Named after the principle: you can't ask your mom if your business idea is good, because she loves you and will lie to make you feel good.

### Three rules of the Mom Test

1. **Talk about their life, not your idea**  
   Bad: "Would you use an app that helps you book travel faster?"  
   Good: "Tell me about the last time you booked a trip. Walk me through it."

2. **Ask about specifics in the past, not generics or opinions about the future**  
   Bad: "Do you usually compare prices before booking?"  
   Good: "When you booked your last hotel, which sites did you check?"

3. **Talk less, listen more**  
   You're not there to pitch. You're there to learn. If you're talking more than 30% of the time, you're doing it wrong.

### Red flag questions (avoid these)

- "Would you use this?" → People will say yes to be polite
- "How much would you pay?" → People underestimate their willingness to pay
- "What features do you want?" → Users are terrible at designing solutions
- "Do you like this idea?" → Compliments are not data

### Green flag questions (ask these)

- "Tell me about the last time you [had this problem]"
- "What did you do to solve it?"
- "What was frustrating about that?"
- "How much time/money did it cost you?"
- "Have you tried other solutions? What happened?"
- "If you could wave a magic wand, what would be different?"

### Digging deeper: The Five Whys

When a user states a problem or preference, ask "why" until you hit the root cause.

**Example**:
- User: "I want faster search results."
- Why? "Because I'm always in a hurry when I'm booking travel."
- Why are you in a hurry? "Because I'm usually booking at the last minute."
- Why are you booking last minute? "Because prices change, so I wait until the last moment to get the best deal."
- Why do you think waiting gets you a better deal? "Because I've seen prices drop before."

**Insight**: The real job-to-be-done isn't "faster search" — it's "confidence that I'm getting the best price." The solution might be price tracking + alerts, not faster search.

---

## Usability Testing

Usability testing is observing users attempt to complete tasks with your product. The goal is to find where they get stuck, confused, or frustrated.

### Running a usability test (step-by-step)

1. **Recruit users** who match your target audience (5-8 users per round is sufficient)
2. **Write task scenarios** (not instructions): "You're planning a weekend trip to Bangkok. Find a hotel for 2 nights." (NOT: "Click on 'Search', then select 'Hotels'")
3. **Ask users to think aloud** as they navigate: "Tell me what you're thinking as you go."
4. **Do not help them** — even if they're struggling. That's the data. If they can't figure it out, your design failed, not the user.
5. **Observe and take notes**: Where do they hesitate? What do they click that doesn't work? What do they expect to happen that doesn't?
6. **Ask follow-up questions after each task**: "What were you expecting when you clicked that?" / "What was confusing about this step?"

### What to measure

- **Task success rate**: % of users who complete the task without help
- **Time on task**: How long it takes to complete
- **Error rate**: How many wrong clicks/steps before success
- **Satisfaction**: Post-task rating (1-5 scale: "How easy was this task?")

### Red flags to watch for

- Users saying "Where do I...?" — navigation/discoverability problem
- Users clicking something that doesn't work — misleading affordances
- Users abandoning the task — too much friction
- Users completing the task but saying it was frustrating — poor UX even if functional

---

## Survey Design (Quantitative Research)

Surveys are cheap to scale but easy to ruin with bad questions. Use surveys to quantify patterns you've already seen in qualitative research — never to discover new insights.

### Good survey questions

**Single-choice**: "How often do you book travel online?" (Daily / Weekly / Monthly / Quarterly / Rarely / Never)

**Scale questions (Likert)**: "How satisfied are you with the booking process?" (1 = Very dissatisfied → 5 = Very satisfied)

**Behavioral questions**: "How many trips have you booked in the last 12 months?" (0 / 1-2 / 3-5 / 6-10 / 10+)

**Open-ended (sparingly)**: "What was the most frustrating part of your last booking experience?" (Free text)

### Bad survey questions (avoid these)

**Leading questions**: "Don't you think our new design is much better?" → Biased toward "yes"

**Double-barreled questions**: "How satisfied are you with the price and quality?" → Which one are they rating?

**Vague questions**: "Do you book travel often?" → What does "often" mean?

**Hypothetical questions**: "Would you pay $10/month for this feature?" → Stated preference ≠ revealed preference

### Survey best practices

- **Keep it short**: 5-10 questions max. Completion rates drop sharply after 10 questions.
- **One question per screen** (for mobile): Makes it feel faster, increases completion.
- **Randomize answer order** (when applicable): Prevents order bias.
- **Include a progress bar**: Reduces abandonment.
- **Test your survey on 5 people before sending it widely**: Catch confusing questions.

### When to use surveys vs interviews

| Situation | Use |
|---|---|
| You want to quantify a known pattern | Survey |
| You want to discover unknown problems | Interviews |
| You need statistically significant data | Survey |
| You need to understand "why" behind behavior | Interviews |
| You have a specific hypothesis to validate | Survey |
| You're exploring problem space | Interviews |

---

## Stated Preference vs Revealed Preference

Users are terrible at predicting their own future behavior. What they say they'll do ≠ what they actually do.

### Stated preference (what users say)

- "I would definitely pay for this."
- "I care a lot about privacy."
- "I would use this every day."
- "Price is the most important factor."

### Revealed preference (what users actually do)

- They don't convert when you launch paid tier
- They agree to invasive permissions to use the app
- They churn after day 3
- They pay premium for convenience

**Rule**: Trust behavior over words. If users say they care about price but book premium options, they're optimizing for something else (convenience, trust, status).

### How to surface revealed preferences

- **A/B testing**: What do users click on?
- **Cohort analysis**: What behaviors predict retention?
- **Funnel analysis**: Where do users actually drop off?
- **Heatmaps/session recordings**: What do users actually interact with?

---

## Research Synthesis (Turning Data Into Insights)

Raw research data is not useful. Insights are. Synthesis is the process of finding patterns, clustering themes, and extracting actionable insights.

### Affinity mapping (for qualitative research)

1. **Write each observation on a sticky note** (physical or digital): "User couldn't find the filter button" / "User said booking process felt too long" / "User abandoned at payment step"
2. **Group similar observations into clusters**: All observations about navigation → "Navigation issues" / All observations about trust → "Trust & credibility"
3. **Name each cluster with a theme**: "Users don't trust recommendations" / "Search results are overwhelming"
4. **Prioritise themes by frequency + severity**: How many users mentioned it? How much does it hurt the experience?

### Insight template

A good insight has three parts:

1. **Observation**: What we saw/heard (data)
2. **Inference**: What it means (interpretation)
3. **Implication**: What we should do (recommendation)

**Example**:
- **Observation**: 7 out of 8 users abandoned the booking flow at the payment step. 5 of them mentioned they "didn't feel safe entering credit card info."
- **Inference**: Users don't trust our site enough to complete payment. This is a trust problem, not a usability problem.
- **Implication**: Add trust signals (security badges, customer reviews, money-back guarantee) to the payment page.

### Research summary format (stakeholder-facing)

```
## Research Goal
What we were trying to learn

## Method
Who we talked to (n=X, [description of users])
What we did (interviews / usability test / survey)

## Key Insights (3-5 insights max)
1. [Insight headline]: [Evidence] → [Implication]
2. [Insight headline]: [Evidence] → [Implication]
3. [Insight headline]: [Evidence] → [Implication]

## Recommended Actions
1. [Action]: [Why] → [Expected impact]
2. [Action]: [Why] → [Expected impact]

## Raw Data / Appendix
[Link to full notes / recordings / transcripts]
```

---

## Sample Sizes for Research

| Research Type | Recommended Sample Size | Why |
|---|---|---|
| Customer interviews | 5-10 per user segment | Diminishing returns after 5-8; patterns emerge quickly |
| Usability testing | 5-8 per iteration | Nielsen found 5 users find 85% of usability problems |
| Survey (quantitative) | 100+ for statistical significance | Depends on confidence level + margin of error |
| A/B test | 1000+ per variant | Depends on baseline conversion rate + effect size |

**Rule**: For qualitative research, stop when you reach saturation (no new insights emerging). For quantitative research, calculate sample size based on statistical power requirements.

---

## Common Research Pitfalls

### 1. Confirmation bias
You only hear what you want to hear. **Mitigation**: Actively look for disconfirming evidence. Ask "What would make me wrong?"

### 2. Sampling bias
You only talk to users who are easy to reach (e.g., power users who respond to surveys). **Mitigation**: Recruit users who match your target segment, including churned users.

### 3. Leading questions
You ask questions that signal the "right" answer. **Mitigation**: Use the Mom Test. Ask about past behavior, not opinions.

### 4. Over-reliance on self-reported data
Users say they'll do X, but behavior shows they do Y. **Mitigation**: Combine surveys with behavioral data (analytics, A/B tests).

### 5. Analysis paralysis
You keep researching instead of making a decision. **Mitigation**: Define decision criteria upfront. "If we learn X, we'll do Y."

---

## When to Do Research (And When to Skip It)

### Do research when:
- You're in problem discovery (don't know what to build)
- You're validating a major investment (don't want to waste eng cycles)
- You're designing a new experience (usability testing catches obvious issues)
- Metrics are moving unexpectedly (need to understand why)

### Skip research when:
- The decision is easily reversible (just ship it and see)
- The cost of being wrong is low (small UI tweak)
- You already have strong behavioral data (analytics show clear pattern)
- Research would take longer than building (for very small features)

**Bias toward action for low-risk decisions. Bias toward research for high-risk, high-cost decisions.**
