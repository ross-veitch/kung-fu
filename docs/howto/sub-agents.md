# Sub-Agent Integration

Spawning specialist sub-agents with domain knowledge — without changing the main session.

---

## The injection pattern

Sub-agents are isolated sessions. They don't automatically have access to `SOUL.md` or any loaded role context from the main session. Kung Fu's sub-agent pattern solves this by explicitly prepending both:

```
sessions_spawn task:
  [Contents of ~/clawd/SOUL.md]                 ← identity, personality — same agent
  ---
  [Contents of ~/clawd/clawd-prj/kung-fu/experts/fitness-performance-coach/EXPERT.md]  ← domain knowledge
  ---
  [Task instructions]
```

The sub-agent behaves like the same agent with specialist knowledge — not like a different persona. `SOUL.md` is included so the sub-agent has the relationship context, communication style, and identity of the main agent. The expert plugin is included to give it domain depth.

This is different from the soul-switching pattern (where sub-agents get a different personality entirely and lose the main agent's identity).

---

## Basic usage

Ask the agent:

> *"Spawn a health coach sub-agent to analyse my Oura readiness data from this week"*  
> *"Use a research analyst sub-agent to summarise the last 30 days of MENA travel news"*  
> *"Get the travel planner to find the best SIN→DXB routing next Tuesday"*

The agent will:
1. Load `SOUL.md` and the appropriate `EXPERT.md` from `~/clawd/clawd-prj/kung-fu/experts/`
2. Spawn an isolated session via `sessions_spawn` with both prepended to the task
3. Return the result to the current conversation

---

## Manual spawning via script

```bash
# Spawn a sub-agent with soul + role injected
~/clawd/scripts/spawn-with-expert.sh fitness-performance-coach \
  "Analyse the HRV and readiness data in ~/clawd/data/oura-week.json \
   and recommend today's training intensity"

# Research analyst sub-agent
~/clawd/scripts/spawn-with-expert.sh research-analyst \
  "Summarise the top 5 competitive moves by OTA competitors in MENA this week. \
   Sources: scraped-$(date +%Y-%m-%d).json"
```

---

## What the injection looks like

```javascript
const soul = fs.readFileSync(path.join(homedir(), 'clawd/SOUL.md'), 'utf8');
const role = fs.readFileSync(
  path.join(homedir(), 'clawd/experts/fitness-performance-coach/EXPERT.md'), 'utf8'
);

const task = `${soul}\n\n---\n\n${role}\n\n---\n\n${taskInstructions}`;

sessions_spawn({ task, model: 'sonnet', runTimeoutSeconds: 300 });
```

The sub-agent receives the full soul context so it behaves consistently with the main agent.

---

## When to use sub-agents vs main session loading

| Approach | When to use |
|----------|-------------|
| `load-expert.sh` | Extended conversation where you want the whole session in specialist mode |
| Sub-agent | Bounded task — "analyse this", "research that", "plan this trip" |
| Cron job injection | Scheduled recurring tasks |

Sub-agents are preferred for most specialist tasks because:
- Main session context stays clean
- Cheaper (sub-agent context is small and focused)
- Multiple specialists can run concurrently
- Natural scope boundary — the task ends, the specialist context ends

---

## Concurrent sub-agents

Multiple specialists can run simultaneously — fully isolated:

```
Main session (bare SOUL.md)
├── Sub-agent A: SOUL + fitness-performance-coach → training readiness
├── Sub-agent B: SOUL + research-analyst → MENA news digest
└── Sub-agent C: SOUL + executive-assistant → meeting prep brief
```

Results are returned independently. No interference between sessions.

---

## Cost

Sub-agent context is lean: SOUL.md (~500 tokens) + EXPERT.md (~800 tokens) + task. Compare to a main session with full history (50k–200k+ tokens). For bounded tasks, sub-agents are 10–50× cheaper.

Set `runTimeoutSeconds` on long research tasks to bound worst-case cost.

---

## Best practices

**Always include SOUL.md.** If you inject only the expert plugin, the sub-agent has no identity context and may behave inconsistently with the main agent.

**Keep tasks bounded.** "Analyse this week's training data and recommend today's session" is good. "Be my health coach" is not.

**Pass data explicitly.** Sub-agents don't have the main session's context. Reference files by full path or include data directly in the task.

**One role per sub-agent.** Don't stack multiple expert plugins. If a task genuinely needs two domains (e.g. travel planning + finance), either use the main session (which has full context) or chain sub-agents sequentially.
