# Writing Custom Expert Plugins

How to create a expert plugin that injects real domain capability — without touching `SOUL.md`.

---

## The cardinal rule

**A expert plugin adds knowledge. It does not change personality.**

Tone, directness, wit, relationship context — that's in `SOUL.md` and stays there. A expert plugin answers: "what should the agent *know and do differently* in this domain?" Not: "how should the agent sound?"

If you're writing a line like "be more formal and precise" — stop. That's a personality change. Put it in `SOUL.md` if it's permanently true, or just ask the agent to adjust tone for a specific task.

---

## Role pack structure

```
~/clawd/clawd-prj/kung-fu/experts/[expert-name]/
├── EXPERT.md          ← domain expertise + personalised context + SOPs
├── skills/      ← how this practitioner stays current
├── scripts/         ← optional role-specific scripts
└── resources/
    └── INDEX.md     ← curated reference library with usage guidance
```

**Naming convention:** Use the human practitioner title, not the domain name.
"Mandarin Teacher", not "Mandarin". "Health Coach", not "Health".
The name should be something you could put on a business card.

### EXPERT.md
The core of the Expert Plugin. Contains: domain expertise, personalised context (specific
to Ross), SOPs for the 5–7 most common scenarios, skill pointers, data sources,
and constraints.

### skills/
How a practitioner in this domain stays current. Journals, blogs, newsletters,
podcasts, Twitter/X accounts, subreddits, YouTube channels, tools to watch.
Feeds automated digests and active research tasks when the role is active.

### resources/INDEX.md
The role's bookshelf. Canonical reference materials: e-books, papers, quick-reference
docs, guides. `INDEX.md` lists what's available and when to use each item.
Files are loaded lazily — read `INDEX.md` on role load; pull individual resources
when the task calls for them. Ross populates this over time by uploading files.

`EXPERT.md` sections:

```markdown
# [Role Name]

## Domain expertise

What the agent should know and assume when this role is active. 
Key concepts, frameworks, terminology, context. Be specific — 
"VO2Max 43, RHR 55, MaxHR 177" is useful. "You know about running" is not.

## Skills to activate

Which installed OpenClaw skills to use preferentially in this domain.
Reference skills by name and note when to use each.
Example: "For training load data: use Garmin API via scripts/garmin-fetch.sh"

## SOPs (Standard Operating Procedures)

Step-by-step procedures for recurring scenarios in this domain.
These are the playbooks — what to do when X happens.

## Data sources

Preferred files, APIs, channels, or services for this domain.
Example: "~/clawd/data/oura-*.json for biometric data"
         "Slack channel C0AGAUJL9L2 (#clawd-prj-training) for training updates"

## Domain vocabulary

Terminology to use fluently without explanation in this domain.

## Constraints

What to always check, always flag, or refuse to skip in this domain.
Domain-specific safety rails.
```

---

## Worked example: Health Coach

Here's the fitness-performance-coach expert plugin, written correctly:

```markdown
# Health Coach Role

## Domain expertise

Training context: Norwegian 4×4 VO2Max method, 7-week programme targeting JPMorgan 
Chase Corporate Challenge 5K (April 10).

Key metrics: VO2Max baseline 43, RHR 55, MaxHR 177, Lactate Threshold 156bpm.
Heart rate zones: Z1 <106 | Z2 106–123 | Z3 124–141 | Z4 142–158 | Z5 159+

Oura readiness interpretation:
- ≥80: high-intensity work supported (4×4 intervals)
- 60–79: moderate intensity (tempo, steady-state)
- <60: easy or rest only

HRV interpretation: use 7-day trend, not single-day value. A day below average 
is not significant. Three consecutive days below average signals accumulated load.

Key training sessions:
- 4×4 intervals: 4 min Z4/Z5 × 4 reps, 3 min passive recovery. Requires readiness ≥75.
- Tempo: 20–30 min Z3. Requires readiness ≥65.
- Easy run: 30–45 min Z1/Z2. Any readiness.
- Rest/active recovery: readiness <60 or 3+ consecutive hard sessions.

## Skills to activate

- `oura` data: read from ~/clawd/data/oura-*.json (updated by MacroDroid trigger)
- `garmin` data: fetch via ~/clawd/scripts/garmin-fetch.sh for training load history
- Post readiness check-ins to Slack channel C0AGAUJL9L2 (#clawd-prj-training)

## SOPs

### Daily readiness check-in

1. Read today's Oura data: HRV, readiness score, sleep score, RHR, body temp deviation
2. Check Garmin for yesterday's training load (TSS, time in each zone)
3. Cross-reference: identify the pattern (fatigue? recovery? illness?)
4. Determine session recommendation: Rest / Easy / Moderate / Hard
5. Post to #clawd-prj-training using this format:

   🟢/🟡/🔴 [status]
   
   Recommendation: [Rest | Easy | Moderate | Hard]
   Session: [type], [duration], [HR zone target]
   Rationale: [one sentence]
   
   Signals: HRV [X] (trend: ↑/→/↓), Readiness [X], Sleep [X], RHR [X]

### Weekly load review (Sundays)

1. Sum TSS for the week from Garmin data
2. Compare to previous week (track progression, flag spikes >10%)
3. Check training plan position (which week of the 7-week programme)
4. Post weekly summary to #clawd-prj-training

## Data sources

- `~/clawd/data/oura-*.json` — Oura ring exports (readiness, HRV, sleep, temp)
- `~/clawd/data/garmin-*.json` — Garmin activity data
- `~/clawd/clawd-prj/training/TRAINING_PLAN.md` — 7-week plan schedule
- Slack C0AGAUJL9L2 (#clawd-prj-training) — where to post

## Domain vocabulary

TSS (Training Stress Score), CTL (Chronic Training Load), ATL (Acute Training Load),
HRV (Heart Rate Variability), VO2Max, LT (Lactate Threshold), Z1–Z5 (heart rate zones),
4×4 intervals, Norwegian method, tempo run, recovery run, taper.

## Constraints

- Always use the 7-day HRV trend, not single-day value
- If Oura data is unavailable, default to rest — don't guess
- Flag if 3+ consecutive readiness scores below 65 (systemic issue, not normal variation)
- Never recommend a hard session if readiness <70 regardless of plan schedule
- Never provide medical interpretations — flag unusual biometric patterns and recommend
  professional review
```

---

## Common mistakes

**Writing personality, not knowledge:**  
❌ `"You are a world-class fitness performance coach who cares deeply about evidence-based training"`  
✅ `"Always use 7-day HRV trend, not single-day value. Explain the pattern before the recommendation."`

**Vague skills references:**  
❌ `"Use fitness data sources"`  
✅ `"Oura data: ~/clawd/data/oura-*.json | Garmin: ~/clawd/scripts/garmin-fetch.sh"`

**Missing SOPs:**  
The most common omission. SOPs are what turn a knowledge pack into a genuinely useful role — they're the "what to actually do" when a scenario comes up. Don't skip them.

**Reproducing SOUL.md content:**  
If you're writing about how to talk to Ross, what tone to use, or how to structure responses generically — stop. That's already in `SOUL.md`.

**Too long:**  
Role packs over ~1,500 tokens add meaningful cost with diminishing returns. If you're writing more than 5–6 sections, ask whether some of it belongs in the task prompt or a dedicated SOP file instead.

---

## Testing your expert plugin

```bash
# Install the expert plugin
cp -r my-role/ ~/clawd/clawd-prj/kung-fu/experts/

# Load it in the current session
~/clawd/scripts/load-expert.sh my-role

# Give the agent a representative task
# Does it know the domain-specific context?
# Does it follow the SOPs?
# Does it still sound like itself (not a different personality)?

# Unload when done
~/clawd/scripts/load-expert.sh --unload
```

A role that doesn't produce measurably better domain-specific output on representative tasks isn't earning its token cost. And a role that changes the agent's personality has been written wrong.

---

## File naming

```
~/clawd/clawd-prj/kung-fu/experts/
├── fitness-performance-coach/   EXPERT.md
├── research-analyst/      EXPERT.md
├── executive-assistant/   EXPERT.md
├── travel-planner/        EXPERT.md
└── [domain]/              EXPERT.md
```

For custom variants: `fitness-performance-coach-race-prep/`, `research-analyst-mena/`, etc.

---

## Contributing

See [CONTRIBUTING.md](../../CONTRIBUTING.md). A good contributed expert plugin includes:
1. The `EXPERT.md` file
2. A description of the domain it covers
3. An example: what the agent produces with vs without the role loaded (same task)
4. The delta — what specifically improved and why
