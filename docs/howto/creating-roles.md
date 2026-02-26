# Creating Expert Plugins from Scratch

How to go from a practitioner title and an empty directory to a world-class Expert Plugin.

**The automated approach:** use the `role-creator` skill.
See `~/clawd/skills/role-creator/SKILL.md` for the full workflow.

---

## The goal

A complete Expert Plugin enables the agent to operate at the level of a world-class human
practitioner — or a team of experts — in the same domain. Not a generic summary of
the field. Not a list of keywords. Actual practitioner-grade performance.

---

## The two-axis problem

World-class performance requires both:

**Universal expertise** — what any great practitioner in this domain would know:
frameworks, proven methods, common failure modes, the non-obvious knowledge a novice
wouldn't know to ask for.

**Personalised context** — what a great practitioner working with *Ross specifically*
needs: his current level, goals, learning history, constraints, known weak spots.

Most prompt libraries only get the first. The personalised context is what separates
a role that *feels* right from one that *performs* right.

---

## The 4-phase process

### Phase 1 — Domain Research (~3 min, autonomous)

The agent runs deep research on the practitioner domain:
- Established frameworks and progression models
- Proven methods with evidence behind them
- Common failure modes — what goes wrong, and how experts handle it
- What separates adequate from world-class in this specific role
- Top authorities, canonical resources, tools, and communities

Tools: perplexity (sonar-pro or sonar-deep-research for technical domains)

### Phase 2 — Intake (~10 min of your time, interactive)

Two sets of questions, generated from Phase 1 findings:

**Universal (asked every time):**
1. Current level / starting point
2. Specific goal — what does success look like in 3–6 months?
3. Time available per week
4. What's been tried before, what worked / didn't
5. Hard constraints (schedule, tools, limits)

**Domain-specific (3–5 questions, derived from Phase 1):**
These surface the personalisation that actually changes the SOPs.
A Mandarin Teacher asks about tones. A Health Coach asks about HRV and training history.
A CFO role asks about reporting structure and board dynamics.

Ask conversationally. Probe on anything that would change how the SOPs are written.

### Phase 3 — Generation (~5 min, autonomous)

Synthesise Phase 1 + Phase 2 into the complete bundle:
- `EXPERT.md` — domain expertise + personalised context + SOPs + skill pointers
- `skills/` — populated with specific sources from Phase 1 research
- `resources/INDEX.md` — annotated reference library, gaps flagged

### Phase 4 — Calibration (~10 min, interactive)

Load the role. Run 3 test scenarios representing the most common use cases.
Check: does the output match what a world-class practitioner would actually do?
One iteration of refinements, then lock.

---

## Quality bar

The test: swap in a different person's intake answers. Does anything change?
If not, the personalised context isn't doing its job.

SOPs must be specific. "When Ross is stuck on a tone, a great teacher does X not Y"
is useful. "Help Ross with tones" is noise.

Domain expertise must include the non-obvious. If it reads like a Wikipedia summary,
it hasn't captured how experts actually think.

---

## Reference implementation

See `~/clawd/experts/mandarin-teacher/` — the first reference implementation, built
alongside the role-creator skill. Use it as a template for what a complete Expert Plugin
looks like in practice.

---

## Manual creation

If you want to build a Expert Plugin without the role-creator skill:
1. Use the templates in `~/clawd/skills/role-creator/templates/`
2. Run the same 4 phases manually
3. Don't skip Phase 2 — the intake is the difference between generic and useful

See `custom-roles.md` for manual authoring guidance.
