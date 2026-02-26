# /deck — Slide Deck Builder

**Purpose**: Build a decision-quality slide deck. MBB narrative architecture, slide-by-slide scaffolding, and output via Google Slides, PPTX, or structured text.

**When to use**: Any multi-slide deliverable — board updates, IC memos, strategy reviews, exec briefings, external pitches.

**Skill dependency**: `deck-craft` (narrative logic, chart selection, output formats)

---

## Phase 0: Intake

Before building, establish:

```
1. TOPIC: What is this deck about?
2. AUDIENCE: Who is in the room / reading this?
   → Board / IC / SLT / CEO / External / Exec briefing
3. DECISION: What do you need them to do after seeing this?
   → "Approve X" / "Align on Y" / "Decide between A and B"
4. FORMAT: Google Slides / PPTX / Structured text
5. LENGTH: Full deck (15–25 slides) / Short brief (5–8 slides) / One-pager (3–5 slides)
6. RAW MATERIAL: Paste any context — data, memos, prior analysis, talking points
7. DEADLINE: When does this need to be ready?
```

If the user hasn't provided answers to 1–3, ask. These are not optional. Do not build a deck without knowing the decision it's serving.

---

## Phase 1: Narrative Architecture

Map the deck's governing structure before building slides.

### Step 1.1 — Write the governing thought
> *"After this deck, [audience] will [decision/action] because [core argument]."*

If you can't write this in one sentence, the thinking isn't ready. Surface this to the user explicitly.

### Step 1.2 — Determine deck type
Select the appropriate structure from `deck-craft`:

| Audience signal | Deck type |
|---|---|
| Board of Directors | Board update deck |
| Investment / capital committee | IC deck |
| CEO / SLT strategy review | Strategy review deck |
| Time-poor exec, one decision | Exec briefing / one-pager |
| External (investors, partners, press) | Pitch deck |

### Step 1.3 — Apply SCR spine
Map the deck's argument to Situation → Complication → Resolution:

```
SITUATION: [What is currently true and agreed]
COMPLICATION: [What has changed / what the tension is / why this deck exists]
RESOLUTION: [What to do about it — the recommendation]
```

---

## Phase 2: Slide Outline

Generate a numbered slide list. Each entry:
- Slide number
- Title (assertion, not label)
- Slide type (context / insight / decision / options / recommendation / appendix)
- Body summary (1–2 lines on what the body will show)
- Chart type (if applicable)

**Output format**:
```
SLIDE [N] — [Assertion title]
Type: [slide type]
Body: [What the evidence/content will show]
Chart: [Chart type if applicable — what it shows]
```

Present the outline to the user. **Confirm before proceeding to Phase 3.** Outlines are cheaper to change than built slides.

Ask:
- Does the horizontal logic work? (Can they read titles only and follow the argument?)
- Any slides missing? Any that should be cut?
- Any data they have that should be incorporated?

---

## Phase 3: Content Scaffolding

Build each slide in full. For each:

```
SLIDE [N]: [Assertion title]
───────────────────────────────────
Type: [type]

Body:
• [Bullet 1 — complete thought, parallel construction]
• [Bullet 2]
• [Bullet 3]

Chart: [Type] — [What it shows — make the data point explicit]
Data: [Source / numbers if available, or flag as "TO FILL"]

Footnote: [Source, date, methodology note — always present for data slides]

So what: [One sentence — what a reader takes away from this slide]
Proof test: [Does the body make the title inevitable? Yes / No — explain if No]
───────────────────────────────────
```

Apply quality checks from `deck-craft`:
- [ ] Horizontal logic: titles tell the full story
- [ ] Vertical logic: each body proves its title
- [ ] "So what" per slide is explicit
- [ ] No slide without a clear audience action
- [ ] Deck ends with a specific, dated ask

---

## Phase 4: Output

### Option A — Google Slides (preferred for Wego internal)
Use the `gog` skill to build the deck programmatically.

**Protocol**:
1. Confirm outline is approved
2. Create a new Google Slides deck (title: "[Topic] — [Date]")
3. Build slides sequentially: title slide → body slides → appendix
4. Apply consistent formatting: one accent color, clean sans-serif font, no decoration
5. Share with ross@wego.com as editor
6. Return the Slides URL

**Slide creation checklist per slide**:
- Slide title = the assertion (not the topic)
- Body text ≤ 5 bullets, or one chart with annotation
- Charts: label inline (not just legend), annotate the key data point
- Footnote: source + date on all data slides

### Option B — PPTX
Use for: external sharing with bankers, corp dev, investors who prefer PPT.

**Protocol**:
1. Generate structured text scaffold (Phase 3 output)
2. Spawn coding agent to build PPTX via python-pptx
3. Save to `~/clawd/outputs/decks/[topic]-[date].pptx`
4. Confirm file path and offer to copy to Desktop or send via Slack

### Option C — Structured text (no tool access / review first)
Output the full Phase 3 scaffold as formatted text. User reviews before production.

Useful for: async review, content validation before investing in production.

---

## Deck-type specific supplements

### Board update: additional rules
- Exec summary slide is non-negotiable (one slide: status color, 3 KPIs vs. plan, one ask)
- Status colors (G/Y/R) must reflect reality — board has seen the numbers
- "Decisions needed" slides: one decision per slide, options explicit, recommendation stated
- No slide that requires the presenter to explain what the audience should take from it

### IC deck: additional rules
- Recommendation and ask go on slide 1 or 2 — no building suspense
- Unit economics slide must include sensitivity table (what has to be true for this to work?)
- Risk register is mandatory: list failure modes, not just upside scenarios
- Financial model: base/bear/bull, key assumptions surfaced, not buried in appendix

### Strategy review: additional rules
- The strategic question must be written as a decision statement (not a topic)
- Options slide must include "do nothing" — with honest consequences
- Implications slide: what changes if we do this (org, product, capital, timeline)
- End with a decision and milestone, not just a conclusion

### Pitch deck: additional rules
- Hook slide must earn attention in 15 seconds
- Traction: real numbers only. No "X million addressable users" that you haven't touched.
- Team: why *this* team, not just who
- Ask must be specific: amount, use of funds, or specific next step requested

---

## Anti-patterns (self-check before delivering)

- ❌ Titles that are labels, not assertions ("Market Overview")
- ❌ Body that doesn't prove the title
- ❌ Recommendation buried after 10 slides of context
- ❌ "It could be argued that..." — take a view
- ❌ Missing source/date on data charts
- ❌ Deck ends without a specific ask
- ❌ More than 5 bullets on a body slide
- ❌ 3D charts, drop shadows, clipart, or WordArt of any kind
- ❌ Deck delivered without confirming the outline first (Phase 2 gate)
