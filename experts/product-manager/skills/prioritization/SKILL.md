# Prioritisation

How to decide what to build next — frameworks, tradeoffs, and the discipline of saying no.

---

## Why prioritisation matters

The defining skill of a product manager. You will always have more ideas than capacity. The quality of your product is determined not by what you build, but by what you choose *not* to build. Every "yes" is an implicit "no" to everything else that could have used those resources.

---

## RICE scoring

The most widely used quantitative prioritisation framework (created at Intercom).

```
RICE Score = (Reach × Impact × Confidence) / Effort
```

| Factor | Definition | Scale |
|--------|-----------|-------|
| **Reach** | How many users will this affect per quarter? | Estimated number (e.g., 10,000 users/quarter) |
| **Impact** | How much will it move the target metric per user? | 3 = massive, 2 = high, 1 = medium, 0.5 = low, 0.25 = minimal |
| **Confidence** | How sure are we of reach and impact estimates? | 100% = high, 80% = medium, 50% = low |
| **Effort** | Person-months of work | Estimated (e.g., 2 person-months) |

**Strengths**: Forces explicit estimation of impact and effort. Calibrates enthusiasm with evidence. Good for comparing features within a single team.

**Weaknesses**: Garbage in, garbage out — if estimates are wrong, scores are meaningless. Doesn't account for strategic alignment or sequencing dependencies. Can feel mechanical.

**Best practice**: Use RICE to create a first-pass ranking, then apply strategic judgment on top. RICE is a conversation starter, not the final answer.

---

## MoSCoW method

Simple categorical prioritisation: Must have / Should have / Could have / Won't have (this time).

**Best for**: Release scoping, MVP definition, sprint planning where you need to draw a clear line between "in" and "out."

**Key discipline**: "Won't have" must have items in it. If everything is "Must have," the framework hasn't done its job.

---

## Kano model

Classifies features by how they affect user satisfaction:

| Category | Absent | Present | Example |
|----------|--------|---------|---------|
| **Must-be** (basic) | Dissatisfied | Neutral | Search works, pages load, payment processes |
| **Performance** (linear) | Less satisfied | More satisfied | Faster search results, more filters, better prices |
| **Attractive** (delight) | Neutral | Delighted | Personalised recommendations, surprise upgrades |
| **Indifferent** | Neutral | Neutral | Feature nobody asked for or uses |
| **Reverse** | Satisfied | Dissatisfied | Unwanted complexity, intrusive notifications |

**The insight**: Must-be features don't delight anyone — but missing them causes fury. Attractive features don't cause dissatisfaction if missing — but they create differentiation. Most feature backlogs are dominated by Performance features, which means everyone is building the same things.

---

## Opportunity Solution Trees (Teresa Torres)

A visual model linking desired outcomes to opportunities to solutions:

```
Desired Outcome (metric to move)
├── Opportunity 1 (user need/pain point discovered in research)
│   ├── Solution A
│   ├── Solution B
│   └── Experiment to validate
├── Opportunity 2
│   ├── Solution C
│   └── Solution D
└── Opportunity 3
    └── Solution E
```

**Why this works**: It separates the *problem* (opportunity) from the *solution*. Most backlogs jump straight to solutions. OST forces you to ask: which user need are we addressing? Are there better ways to address it?

---

## Strategic vs tactical balance

Not all work is equal. A healthy roadmap balances:

- **Strategic bets** (30–40%): New capabilities that change competitive positioning. High uncertainty, high upside. These are the investments in future differentiation.
- **Incremental improvements** (30–40%): Optimising existing features based on data. Lower risk, predictable impact. This is where most teams spend most of their time.
- **Tech debt / infrastructure** (15–20%): Reliability, performance, scalability, developer productivity. Not user-visible but essential for velocity.
- **Quick wins** (5–10%): Low-effort, clear-value items. Morale boosters, customer requests, easy improvements.

Teams that only do incremental improvements become feature factories. Teams that only do strategic bets ship nothing. The balance matters.

---

## Saying no

The hardest part. Frameworks for saying no without damaging relationships:

1. **"Not now, here's why"**: Explain what you're prioritising instead and the rationale. Make the tradeoff visible.
2. **"Help me understand the impact"**: Ask the requester to quantify the opportunity. Often they can't — which resolves the discussion.
3. **"Let's test the assumption first"**: Propose a lightweight experiment instead of a full build. This respects the idea while managing investment.
4. **"Here's where it sits in the backlog"**: Transparency about relative priority. Sometimes people accept low priority better than outright rejection.

**The queue is not a plan.** A backlog of 500 items with no ruthless pruning is not prioritisation — it's procrastination. Regularly archive items that haven't been touched in 2+ quarters.
