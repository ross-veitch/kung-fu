# /engagement-survey

Design an engagement pulse survey and interpret results with action recommendations.

---

## When to use

When running a regular engagement pulse (quarterly recommended), after a significant org change (restructure, leadership change, layoffs), or when retention/morale signals suggest problems.

---

## Steps

### 1. Choose the survey approach

**Full engagement survey** (annually): 30–50 questions, covers all dimensions. Used for comprehensive baseline and trend tracking.

**Pulse survey** (quarterly): 8–15 questions, focused on key dimensions. Fast to complete, higher response rates, better for tracking trends.

**Targeted survey** (ad hoc): 5–10 questions on a specific topic (return-to-office, new tool adoption, post-reorg sentiment).

### 2. Design the questions

**Core dimensions** (Gallup Q12 inspired — the most validated engagement framework):
1. **Role clarity**: "I know what is expected of me at work" (1–5 scale)
2. **Resources**: "I have the tools and resources I need to do my work well"
3. **Strengths**: "I have the opportunity to do what I do best every day"
4. **Recognition**: "In the last 7 days, I have received recognition for good work"
5. **Care**: "My manager genuinely cares about me as a person"
6. **Growth**: "There is someone at work who encourages my development"
7. **Voice**: "My opinions seem to count at work"
8. **Mission**: "The mission of my company makes me feel my job is important"
9. **Quality peers**: "My colleagues are committed to doing quality work"
10. **Connection**: "I have a close friend at work"

**eNPS** (Employee Net Promoter Score): "On a scale of 0–10, how likely are you to recommend [Company] as a place to work?"

**Open-ended** (always include 1–2):
- "What one thing would you change about working here?"
- "What's the best thing about working here?"

### 3. Set up logistics
- **Anonymity**: Must be truly anonymous. Use a survey tool (Culture Amp, Glint, Lattice, Google Forms). If team size < 5, aggregate to avoid identification.
- **Response target**: 70%+ response rate is good. Below 50% suggests trust issues or survey fatigue.
- **Timeline**: Keep open 5–7 business days. Send 2 reminders.
- **Communication**: Tell people why you're running it, what you'll do with results, and when they'll see outcomes.

### 4. Analyse results

**Scoring**:
- eNPS: (% Promoters [9–10]) − (% Detractors [0–6]). Range: −100 to +100. Anything above +10 is decent for tech; +30 is good; +50 is excellent.
- Dimension scores: Average rating per question (1–5 scale). Flag anything below 3.5.

**Segment analysis**:
- By team/department: Where are scores highest and lowest?
- By tenure: Are new hires more engaged than veterans (or vice versa)?
- By level: Are ICs more engaged than managers?
- Trend: Compare to previous survey. Which dimensions improved? Which declined?

**Theme extraction** (open-ended responses):
- Code responses into themes (compensation, management quality, career growth, work-life balance, tools, communication, strategy clarity)
- Count frequency of each theme
- Flag themes with strong negative sentiment

### 5. Create action plan

**Rule**: Never run a survey without acting on results. Running surveys and ignoring them is worse than not surveying at all — it signals that leadership doesn't care.

For each low-scoring dimension or high-frequency theme:
- **Root cause**: Why is this scoring low? (Not just the symptom — the underlying cause)
- **Owner**: Who will address this? (Must be a named person, not "leadership")
- **Action**: Specific intervention (not "improve communication" — *what specifically?*)
- **Timeline**: When will this be done?
- **Measure**: How will you know it worked? (Next survey score, or interim metric)

### 6. Communicate results

Share results transparently within 2 weeks of survey close. Include:
- Overall scores and trends
- Top 3 strengths (celebrate these)
- Top 3 areas for improvement (with action plan)
- Timeline for next survey

---

## Output format

```
## Engagement Survey Results: [Company/Team] — [Date]

**Response rate**: [X]% ([N] of [N] employees)
**eNPS**: [Score] ([Change] vs last survey)

### Dimension scores
| Dimension | Score (1–5) | Trend | Flag |
|-----------|------------|-------|------|
| Role clarity | [X.X] | [↑↓→] | [✅/⚠️/🔴] |
...

### Top themes (open-ended)
1. [Theme] — [N] mentions — [Positive/Negative]
2. [Theme] — [N] mentions
3. [Theme] — [N] mentions

### Action plan
| Issue | Root cause | Owner | Action | Timeline |
|-------|-----------|-------|--------|----------|
| [Issue] | [Cause] | [Name] | [Specific action] | [Date] |

### Communication plan
[When and how results will be shared with the team]
```
