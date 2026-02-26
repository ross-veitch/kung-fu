# Staying Current

How expert plugins keep their knowledge up to date — automatically.

---

## The problem

A static expert plugin knows what it knew when it was written. A management consultant built in February 2026 has no idea what happened in March. A fitness coach trained on 2024 research doesn't know about the 2025 VO2 max study that changed how coaches think about Zone 2.

Most AI tools have a knowledge cutoff. This system doesn't.

---

## The learning loop

Each expert with a learning loop runs on a weekly cron job:

```
Weekly cron
    ↓
staying-current.mjs reads the SOURCES block in EXPERT.md
    ↓
Fetches content from each source (X/Twitter, Reddit, YouTube, podcasts, arXiv, web)
    ↓
Claude synthesises: what's new this week? what changed? what should this expert now know?
    ↓
Findings written to experts/[name]/CHANGELOG.md
    ↓
CHANGELOG.md is loaded alongside EXPERT.md on next session — expert has the new knowledge
```

Cost: ~$0.05–$0.15 per expert per week (standard depth, 5 sources).

---

## Defining sources: the `<!-- SOURCES -->` block

Each learning-enabled expert has a `<!-- SOURCES -->` block at the bottom of `EXPERT.md`. This is the list of live inputs the learning loop monitors:

```markdown
<!-- SOURCES
- name: Benedict Evans         | url: https://www.ben-evans.com      | type: web       | category: Tech analysis
- name: Stratechery            | url: https://stratechery.com         | type: newsletter | category: Tech strategy
- name: Karpathy               | handle: @karpathy                    | type: twitter    | category: AI/ML
- name: cs.AI papers           | categories: cs.AI,cs.LG              | type: arxiv      | category: Research
- name: Lex Fridman Podcast    | show: Lex Fridman Podcast            | type: podcast    | category: Long-form
- name: r/MachineLearning      | subreddit: MachineLearning           | type: reddit     | category: Community
- name: Skift                  | url: https://skift.com               | type: web        | category: Travel
-->
```

---

## Source types

### X / Twitter — `type: twitter`
The highest-signal real-time source for most domains. Each expert should have a curated list of ~10–20 domain-specific accounts.

```
- name: Andy Galpin    | handle: @DrAndyGalpin    | type: twitter | category: Performance science
- name: Peter Attia    | handle: @PeterAttiaMD    | type: twitter | category: Longevity
```

Implemented via Bird CLI (uses your X account) + Grok API (xAI) for X search.

**Expert → suggested follows:**
| Expert | Key accounts |
|--------|-------------|
| `futurist` | @benedictevans, @azeem, @emollick, @balajis, @karpathy |
| `management-consultant` | @stratechery, @packyM, @hamiltonhelmer, @pmarca |
| `fitness-performance-coach` | @DrAndyGalpin, @PeterAttiaMD, @foundmyfitness |
| `longevity-human-optimization-physician` | @PeterAttiaMD, @davidasinclair, @foundmyfitness |
| `software-engineer` | @karpathy, @simonw, @kelseyhightower, @dhh |
| `news-editor` | @benyt, @mathewi, @joshuabenton, @omarabbosh |

---

### Reddit — `type: reddit`
Community discussions, practitioner debates, real-world use cases. Often surfaces what practitioners actually think vs what papers say.

```
- name: r/AdvancedRunning    | subreddit: AdvancedRunning    | type: reddit | category: Training
- name: r/longevity          | subreddit: longevity          | type: reddit | category: Healthspan
```

**Expert → key subreddits:**
| Expert | Subreddits |
|--------|-----------|
| `software-engineer` | r/MachineLearning, r/LocalLLaMA, r/programming |
| `fitness-performance-coach` | r/AdvancedRunning, r/triathlon, r/tacticalbarbell |
| `longevity-human-optimization-physician` | r/longevity, r/Biohackers, r/medicine |
| `futurist` | r/Futurology, r/singularity, r/artificial |
| `financial-analyst` | r/SecurityAnalysis, r/ValueInvesting, r/investing |

---

### YouTube — `type: youtube`
Conference talks, expert lectures, long-form domain discussions. Transcripts are pulled automatically (no video download needed) and summarised.

```
- name: Andrew Huberman Lab    | channel: @hubermanlab    | type: youtube | category: Performance
- name: Y Combinator           | channel: @ycombinator    | type: youtube | category: Startups
```

Implementation: `yt-dlp --write-auto-sub` to pull VTT captions → strip timestamps → feed to Claude.

---

### Podcasts — `type: podcast`
Long-form thinking from domain practitioners. Transcripts via Taddy API (free tier, 500 req/month).

```
- name: The Drive (Attia)      | show: The Peter Attia Drive    | type: podcast | category: Longevity
- name: Acquired                | show: Acquired                  | type: podcast | category: Business
```

**Expert → key podcasts:**
| Expert | Shows |
|--------|------|
| `fitness-performance-coach` | Huberman Lab, The Drive, Found My Fitness |
| `longevity-human-optimization-physician` | The Drive, Found My Fitness, Lifespan with Sinclair |
| `management-consultant` | Acquired, Invest Like the Best, Business Breakdowns |
| `futurist` | Lex Fridman, 80,000 Hours, Future of Life Institute |
| `software-engineer` | Machine Learning Street Talk, The TWIML AI Podcast |

---

### arXiv — `type: arxiv`
Academic papers. Free API, no auth required. Relevant for experts grounded in research.

```
- name: AI/ML papers    | categories: cs.AI,cs.LG    | type: arxiv | category: Research
- name: Longevity       | categories: q-bio.PE        | type: arxiv | category: Biology
```

Key categories: `cs.AI`, `cs.LG` (ML), `cs.CL` (NLP), `q-bio` (biology), `econ.GN`, `stat.AP`

---

### Newsletters / Web — `type: newsletter` or `type: web`
Long-form analysis, domain-specific publications, conference proceedings.

```
- name: Ben Evans      | url: https://www.ben-evans.com      | type: web        | category: Tech
- name: Stratechery    | url: https://stratechery.com         | type: newsletter | category: Strategy
- name: Skift          | url: https://skift.com               | type: web        | category: Travel
```

---

## Running the learning loop

```bash
# Standard weekly update (5 sources, ~$0.08)
node ~/clawd/scripts/staying-current.mjs futurist

# Light update (3 sources, ~$0.04)
node ~/clawd/scripts/staying-current.mjs futurist --depth light

# Deep update (8 sources, ~$0.15)
node ~/clawd/scripts/staying-current.mjs futurist --depth deep

# Dry run — see what would happen without fetching
node ~/clawd/scripts/staying-current.mjs futurist --dry-run

# Run all experts with configured sources
bash ~/clawd/scripts/staying-current-all.sh
```

---

## Where the learning goes: CHANGELOG.md

The learning loop writes structured entries to `experts/[name]/CHANGELOG.md`:

```markdown
## 2026-03-03 — Weekly update (5 sources, ~$0.08)

### What changed
- Andrew Huberman published new research on nasal breathing during Zone 2 — significant
  update to the interval breathing guidance in skills/training-programming/
- New arXiv paper: "Lactate threshold revisited" — contradicts 85% MaxHR rule for LT2 estimate
- r/AdvancedRunning: strong consensus emerging that 80/20 rule needs updating for masters athletes

### Skill updates recommended
- `skills/training-programming/README.md`: update LT2 estimation section
- `skills/recovery/README.md`: add nasal breathing protocol

### Sources this run
- @DrAndyGalpin (Twitter): 23 posts scanned
- Huberman Lab (YouTube): 2 new episodes, transcripts fetched
- r/AdvancedRunning (Reddit): top 15 posts this week
- arXiv q-bio: 4 new papers
- The Drive podcast: 1 new episode transcript
```

The CHANGELOG is auto-loaded when the expert is active — the agent has access to recent learnings without manual intervention.

---

## Which experts have learning loops

| Expert | Sources configured | Weekly cron |
|--------|-------------------|-------------|
| `news-editor` | ✅ | Mon 7am SGT |
| `futurist` | ✅ | Mon 7:30am SGT |
| `management-consultant` | ✅ | Tue 7am SGT |
| `fitness-performance-coach` | ✅ | Tue 7:30am SGT |
| `longevity-human-optimization-physician` | ✅ | Tue 8am SGT |
| Others | ❌ (static) | — |

To add a learning loop to any expert: add a `<!-- SOURCES -->` block to its `EXPERT.md` and create a weekly cron that runs `staying-current.mjs <expert-name>`.

---

## Adding a new source

1. Open the expert's `EXPERT.md`
2. Find the `<!-- SOURCES -->` block at the bottom
3. Add a line in the standard format:
   ```
   - name: Source Name    | handle/url/subreddit: VALUE    | type: TYPE    | category: CATEGORY
   ```
4. Run `staying-current.mjs <expert-name> --dry-run` to verify it's picked up
5. Next scheduled run will include the new source

Valid types: `twitter`, `reddit`, `youtube`, `podcast`, `arxiv`, `newsletter`, `web`

---

## Technical details

Full source capability design and implementation notes: [`docs/staying-current-sources.md`](../staying-current-sources.md)
