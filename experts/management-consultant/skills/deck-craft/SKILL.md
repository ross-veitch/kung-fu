---
name: deck-craft
description: MBB-level slide deck production — narrative architecture, slide structure, chart selection, and output formats.
---

# Deck Craft

**Every deck is a decision machine.** It exists to move a specific audience from their current state to a specific decision or action. Before building: *"After seeing this deck, [audience] will [decide / approve / align on] [specific thing]."* If that sentence is vague, the deck isn't ready.

---

## Narrative architecture

### The SCR spine (Situation → Complication → Resolution)

- **Situation**: what is currently true and agreed. Brief.
- **Complication**: what has changed, what tension exists, what the problem is.
- **Resolution**: what to do about it.

Every major section has its own micro-SCR. The deck as a whole has a macro-SCR.

### Pyramid Principle (Minto)

Conclusion first, then evidence. Executives read in reverse — they want the recommendation and will ask for evidence if they're skeptical. Build for how they read, not how you thought.

---

## Horizontal and vertical logic

**Horizontal logic (slide-read test)**: read only slide titles, in sequence. They should tell the full story. Labels are not assertions.

- ❌ "Market Overview" → "Competitive Landscape" → "Recommendation"
- ✅ "OTA market is growing but margin pools are compressing" → "Competitors are splitting into full-stack vs niche" → "Vertical integration into supply is the highest-NPV response"

**Vertical logic (proof test)**: each slide must *prove* its title. The body should make the title inevitable. If the reader could look at the body and arrive at a different title, the slide has failed.

---

## Chart selection

| What you're showing | Chart type |
|---|---|
| Comparison across categories | Horizontal bar (sort descending) |
| Trend over time | Line |
| Composition / bridge | Waterfall |
| Part-of-whole | Stacked bar (pie only if 2–3 segments) |
| Correlation | Scatter (label outliers, add trend line) |
| Funnel / conversion | Funnel or bar with % labels |
| Qualitative matrix | 2×2 or heat map |

**Universal rules**: title the chart with the *insight*, not the *metric*. One message per chart. Annotate the key data point. Remove chart junk (3D, gridlines, redundant legends). Units, source, and date on every data chart.

---

## Deck types

### Board update
Structure: exec summary → performance vs plan → strategic update → risks → decisions needed → appendix. 12–16 body slides. Tone: confident, precise, no surprises.

### IC / Investment Committee
Structure: recommendation upfront → opportunity → solution → market → unit economics → competitive landscape → financial model → risk register → decision. 15–20 slides. Tone: rigorous, downside-aware. Surface the holes yourself before the IC does.

### Strategy review
Structure: strategic question → current state → external landscape → options → recommendation → implications → risks → next steps. 15–20 slides. Tone: intellectually honest; take a view.

### Exec briefing
Structure: the ask → why now → options + recommendation → appendix. 3–5 slides max. Tone: direct, respect the time.

---

## MBB craft standards

**Title–body–footnote**: title = insight/assertion; body = evidence that makes the title inevitable; footnote = source, date, methodology.

**Bullet discipline**: max 5 bullets per slide, ideally 3. Each bullet = one complete thought. Parallel construction. No sub-bullets on body slides.

**The "so what" test**: for every slide, can you state the takeaway in one sentence? If not, the thinking isn't done.

**Slide count**: every slide must earn its place. An 8-slide deck that moves people is better than a 40-slide deck that exhausts them.

---

## Output formats

- **Google Slides**: preferred for internal decks — build outline first, confirm structure, then build
- **PPTX**: use for external parties (bankers, investors, corp dev) — build as structured text → export
- **Structured text** (when tools unavailable): `SLIDE [N]: [Title] | Body: [bullets] | Chart: [type + what it shows] | Footnote: [source]`

---

## Common failure modes

| Failure | Fix |
|---|---|
| Label titles ("Market Overview") | Rewrite every title as an assertion |
| Vertical logic failure (chart doesn't prove title) | Fix the chart or fix the title |
| Recommendation buried (conclusion in slide 14 of 15) | SCR structure: conclusion first |
| Over-caveated ("it could be argued that...") | Take a view. State it. Own it. |
| Missing ask | Every deck ends with a specific, dated ask |
| Appendix as data dump | Title and structure appendix slides exactly as body slides |
