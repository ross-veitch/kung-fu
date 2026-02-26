---
name: deck-craft
description: >
  MBB-level slide deck production: narrative architecture, slide structure, chart selection,
  and output via Google Slides or PPTX. Use when: building board decks, strategy reviews,
  IC presentations, investor updates, exec briefings, or any multi-slide deliverable that
  needs to move people to a decision.
---

# Deck Craft

The gap between a good strategy and a bad deck is a career-ending gap. This skill closes it.

---

## The fundamental rule

**Every deck is a decision machine.** It exists to move a specific audience from their current state to a specific decision or action. If you can't state what decision the deck is pushing, the deck isn't ready to be built.

Before a single slide is created:
> *"After seeing this deck, [audience] will [decide / approve / align on / understand] [specific thing]."*

If that sentence is vague, the deck will be vague.

---

## Narrative architecture

### The Pyramid Principle (Minto)

Structure: **conclusion first, then evidence.**

Most people write the way they think — data, analysis, therefore conclusion. Executives read in reverse — they want the conclusion, and will ask for evidence if they're skeptical. Build for how they read, not how you thought.

```
GOVERNING THOUGHT (the one thing the deck argues)
├── Key line 1 (first supporting argument)
│   ├── Supporting slide 1a
│   └── Supporting slide 1b
├── Key line 2 (second supporting argument)
│   ├── Supporting slide 2a
│   └── Supporting slide 2b
└── Key line 3 (third supporting argument)
    ├── Supporting slide 3a
    └── Supporting slide 3b
```

**The SCR spine** (Situation → Complication → Resolution):

- **Situation**: What is currently true and agreed. Shared context. Brief.
- **Complication**: What has changed, what tension exists, what the problem is. This is the drama — why this deck needs to exist.
- **Resolution**: What to do about it. The recommendation.

Every major section should have its own micro-SCR. The deck as a whole has a macro-SCR.

---

## Horizontal and vertical logic

### Horizontal logic (the "slide-read test")

Read only the slide titles, in sequence. They should tell the full story. A reader who only skims titles should understand the argument. If they don't, the titles are labels, not assertions.

**Labels (bad)**:
> "Market Overview" → "Competitive Landscape" → "Financial Projections" → "Recommendation"

**Assertions (good)**:
> "The OTA market is growing but margin pools are compressing" → "Competitors are splitting into full-stack platforms vs. niche specialists" → "At current trajectory, our EBITDA margin drops 4pp by 2027" → "Vertical integration into accommodation supply is the highest-NPV response"

The test: your boss should be able to read the deck at 2x speed by reading only slide titles. Build accordingly.

### Vertical logic (the "proof test")

Each slide must **prove** its title. The body of the slide — the chart, the data, the bullets — should make the title **inevitable**. If a reader could look at the body and arrive at a different title, the slide has failed.

**Title**: "Our mobile retention is structurally below category benchmarks"
- ✅ Chart showing D30 retention at 18% vs. OTA category median of 31%
- ❌ A table of features our app has vs. competitors

**Rule**: if the body doesn't make the title obvious, either fix the body or fix the title.

---

## Slide archetypes

### Context-setting slides
**Purpose**: establish shared ground. Don't spend too long here.
**Format**: 2–3 bullets max, or a single chart. Audience already knows most of this.
**Anti-pattern**: 3 context slides before getting to the problem. Cut to 1.

### Insight slides
**Purpose**: present a finding that changes how the audience thinks.
**Format**: data/chart with a direct title that states the implication (not the metric).
**Example title**: "Each 10pp drop in D7 retention costs us $4.2M ARR at current CAC" — not "Retention vs. Revenue Sensitivity"

### Decision slides
**Purpose**: present a decision that needs to be made.
**Format**: explicit framing — what's being decided, by whom, by when, with what constraints.
**Must include**: recommended option stated clearly — not "Option A or B might be considered"

### Options slides
**Purpose**: lay out the choice space fairly before recommending.
**Format**: comparison table or structured pro/con by criterion. 2–4 options max. More is analysis paralysis.
**Rule**: include at least one "do nothing" option. Make it look like what it is — a choice, with consequences.

### Recommendation slides
**Purpose**: land the answer.
**Format**: conclusion stated in the title, 3–5 supporting bullets, one clear ask.
**Anti-pattern**: burying the recommendation halfway down the slide after caveats.

### Appendix slides
**Purpose**: pre-answer questions; provide depth for skeptics.
**Format**: same quality as body slides — not a data dump.
**Label**: "Appendix A: [Topic]" — make them navigable.

---

## Chart selection logic

Match the chart to what the data is saying, not to what looks most impressive.

| What you're showing | Chart type | Notes |
|---|---|---|
| Comparison across categories | Horizontal bar | Sort descending. Label values. |
| Trend over time | Line | One primary metric; secondary as lighter line. |
| Composition / waterfall | Waterfall chart | Classic for bridge analysis (revenue → EBITDA) |
| Part-of-whole | Stacked bar or pie | Pie only if 2–3 segments; otherwise bar |
| Correlation / scatter | Scatter plot | Label outliers. Add trend line if meaningful. |
| Distribution | Histogram or box plot | Use when spread matters as much as mean |
| Funnel / conversion | Funnel chart or bar with conversion % labels | |
| Geographic | Map with intensity shading | Don't use 3D |
| Before/after | Side-by-side bar or arrow chart | Make the delta the hero |
| Qualitative assessment matrix | 2×2 or heat map | Label axes clearly; don't crowd with >8 items |

**Universal chart rules**:
- Title the chart with the *insight*, not the *metric*
- Remove all chart junk (gridlines, legends that can be inline-labeled, 3D effects, decorative icons)
- One primary message per chart — if it takes >5 seconds to understand, split it
- Annotate the key data point — circle it, callout box, or highlight bar
- Units, sources, and dates on every data chart (bottom footnote is fine)

---

## Deck types and structures

### Board update deck
**Audience**: Board of Directors
**Objective**: Get decisions; surface risks; no surprises
**Structure**:
1. Title + agenda (15s to orient)
2. Exec summary (one slide — situation, key metrics, one ask)
3. Performance vs. plan (KPIs with traffic light status)
4. Strategic update (2–3 slides on the key theme this quarter)
5. Risks and mitigations
6. Decisions needed (each decision on its own slide)
7. Appendix: detailed financials, supporting analysis

**Compression target**: 12–16 slides body. Appendix as long as needed.
**Tone**: confident, precise, no surprises. Board has seen the data — tell them what it means.

### IC / Investment Committee deck
**Audience**: Capital allocators; skeptics by job description
**Objective**: Approval of capital allocation or investment decision
**Structure**:
1. Recommendation and ask (upfront — no build-up)
2. Opportunity / problem statement
3. Solution and why we're the right ones to execute
4. Market sizing (TAM/SAM/SOM with honest methodology)
5. Unit economics (with sensitivity table)
6. Competitive landscape (honest assessment of threats)
7. Financial model (base/bear/bull; key assumptions explicit)
8. Risk register (failure modes + mitigations)
9. Decision and milestones
10. Appendix: detailed model, comparable transactions, team bios

**Compression target**: 15–20 slides body.
**Tone**: rigorous, precise, downside-aware. IC is paid to find the holes — surface them yourself first.

### Strategy review deck
**Audience**: Senior leadership team or CEO
**Objective**: Alignment on strategic direction; approval to proceed
**Structure**:
1. The strategic question (one slide — make the decision explicit)
2. Current state assessment (where we are, what's working, what isn't)
3. External landscape (market, competition, macro — only what changes the answer)
4. Strategic options (2–4 real alternatives, including "do nothing")
5. Recommendation with rationale
6. Implications (org, product, capital, timeline)
7. Risks and mitigations
8. Decision and next steps
9. Appendix: supporting analysis

**Compression target**: 15–20 slides body.
**Tone**: intellectually honest. Leadership can smell hedging — take a view.

### Exec briefing / one-pager as deck
**Audience**: Time-poor executive who needs to decide in 10 minutes
**Objective**: Single decision; aligned action
**Structure**: 3–5 slides max
1. The ask (literally: "I need you to [approve / decide / unblock] X by [date]")
2. Why now (what's changed; what's at risk if delayed)
3. Options + recommendation
4. Appendix if challenged

**Compression target**: 3–5 body slides. No longer.
**Tone**: direct. Respect the time. No deck-building theatre.

### External / pitch deck
**Audience**: External stakeholders (partners, investors, press, potential hires)
**Objective**: Create desire; generate action
**Structure**: story arc matters more than issue tree
1. Hook (provocative insight or market observation)
2. Problem (pain, with evidence)
3. Solution (your approach)
4. Market (size, trajectory, why now)
5. Product (what you've built; demo if possible)
6. Traction (proof points; keep it honest)
7. Business model (how you make money)
8. Competition (your differentiation, honestly stated)
9. Team
10. Ask (specific: amount, use of funds, or next step)

**Compression target**: 10–15 slides.
**Tone**: confident, compelling, not salesy. The best pitches feel like conversations.

---

## MBB craft standards

### The title-body-footnote architecture
- **Title**: the insight or assertion (not the topic)
- **Body**: the evidence that makes the title inevitable (one chart, or 3–5 tight bullets)
- **Footnote**: source, date, methodology note — always present for data slides

### Annotation discipline
- Don't annotate everything — annotate the one thing that matters most
- Callout boxes: use sparingly, only when a specific data point is the hero
- Color: use one accent color for "the point." Make it unmistakable. Don't color for decoration.

### Bullet discipline
- Max 5 bullets per slide. Ideally 3.
- Each bullet = one point, stated as a complete thought (not a topic label)
- Parallel construction: if bullet 1 is a verb phrase, all bullets are verb phrases
- No sub-bullets on body slides (they belong in appendix or supporting slides)

### Slide count discipline
- Every slide must earn its place. "Nice to have" is not a reason to include.
- The question: "what does the audience *do differently* because of this slide?" If the answer is nothing, cut it.
- An 8-slide deck that moves people is better than a 40-slide deck that exhausts them.

### The "so what" test
For every slide: can you state the "so what" in one sentence? If not, the thinking isn't done. Do not make slides that require the presenter to explain what the audience should take away — the slide should say it.

---

## Output formats

### Google Slides (preferred for Wego internal)
- Use `gog` skill to create programmatically
- Template: request title/subtitle master + content master + chart master from Ross or use blank with consistent font/color
- Output: share URL with ross@wego.com as editor
- Typical turnaround: structure in text first → confirm outline → build slides

### PowerPoint / PPTX
- Use when sharing with external parties (bankers, corp dev, investors, board members who prefer PPT)
- Build as structured markdown outline first → export to PPTX via python-pptx script or coding agent
- Wego default: Google Slides first, PPTX export if requested

### Structured text output (when tool access isn't available)
Format:
```
SLIDE [N]: [Title]
Type: [insight / context / decision / options / recommendation / appendix]
Body:
- [Bullet 1]
- [Bullet 2]
- [Bullet 3]
Chart: [Chart type] — [What it shows] — [Source]
Footnote: [Source/date/methodology]
```

---

## Common failure modes

| Failure | Symptom | Fix |
|---|---|---|
| Data dump | Every number you found is on the slide | One message per slide; appendix the rest |
| Label titles | "Market Overview" not "Market is growing but margin pools are compressing" | Rewrite every title as an assertion |
| Vertical logic failure | Chart doesn't prove the title | Fix the chart, or fix the title |
| Horizontal logic failure | Reading titles doesn't tell the story | Restructure; each title must flow to the next |
| Recommendation buried | Conclusion is in slide 14 of 15 | SCR structure: conclusion first |
| Over-caveated | "It could be argued that..." | Take a view. State it. Own it. |
| Appendix as data dump | Appendix is unnavigable | Label, structure, and title appendix slides exactly as you would body slides |
| Missing ask | Deck ends with "any questions?" | Every deck ends with a specific, dated ask |
