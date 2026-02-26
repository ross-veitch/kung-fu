# /ai-trajectory — AI Capability & Impact Trajectory

**Purpose**: Map the AI capability trajectory, identify where we are on the S-curve, and derive sector-specific strategic implications for a 3–10 year horizon.

**When to use**: AI strategy development, assessing AI product defensibility, understanding when AI disrupts a specific workflow or sector, investment thesis on AI.

---

## Phase 1: Where we are on the AI S-curve (2024–2025 baseline)

**Capability state**:
- Frontier models (GPT-4 class, Claude 3.5+): capable of complex reasoning, code, analysis, creative work — at or near human-expert level for many knowledge tasks
- Multimodal: vision, audio, document understanding mainstream; video generation improving rapidly
- Agents: early deployment of autonomous multi-step task execution; reliability limits deployment at scale
- Embodied AI: early stage; robotics still behind software; physical world integration 3–7 years out
- Reasoning: chain-of-thought, o1-class reasoning models showing strong performance on complex problems

**Cost curve**: inference costs falling ~10× every 18–24 months. GPT-4 class capabilities cost ~$0.01 per 1K tokens in 2024 vs ~$0.10 in 2023. Trend: frontier capability becomes commodity within 2–3 years of release.

**Open-source gap**: Llama 3, Mistral class models closing gap with frontier. For many production use cases (code, analysis, structured tasks), open-source is already competitive.

---

## Phase 2: Capability trajectory (3/5/10 year horizon)

For each horizon, assess state of:

**3 years (2027–2028)**:
- Agent reliability: substantially improved; multi-agent systems common in production
- Cost: frontier-class capabilities at < $0.001/1K tokens
- Multimodal: real-time video and audio generation at high quality; near-real-time interaction
- Reasoning: reliable complex reasoning across domains
- Implication: most knowledge work *augmented*; some knowledge work *replaced* at routine tasks

**5 years (2029–2030)**:
- Autonomous agents handling end-to-end workflows (coding, research, customer service, content production, data analysis) with minimal oversight
- Cost: near-zero for commodity tasks
- Robotics: early physical world tasks (warehouse, logistics) at industrial scale
- Scientific acceleration: AI-accelerated drug discovery and materials science producing real results
- Implication: significant workforce restructuring in knowledge sector begins; companies built on AI-automatable services face disruption

**10 years (2033–2035)**:
- Highly uncertain; regime change possible (AGI, new paradigms, regulatory shocks)
- If current trajectory continues: AI as pervasive infrastructure; competitive advantage shifts entirely to data, distribution, and trust
- Physical world AI (robotics, autonomous systems) at significant scale
- Biology × AI convergence: personalised medicine, engineered biological systems, longevity interventions

---

## Phase 3: The commoditization curve

The strategic question isn't "is AI capable of X?" — it's "when does AI capability at X become freely available to all competitors?"

Commoditization timeline by task type:
- **Already commodity (2024)**: text generation, summarisation, translation, basic code, image generation
- **Commoditizing now**: complex reasoning, multimodal analysis, code review, structured data extraction
- **3–5 years**: reliable autonomous task agents, real-time voice interaction, complex research synthesis
- **5–10 years**: physical world tasks, creative work at professional level, scientific research assistance

**Strategic implication**: any product feature based on a currently-commoditizing capability needs a non-AI moat (data, distribution, switching costs, trust) or it will face margin compression.

---

## Phase 4: Sector-specific disruption timing

Rate disruption intensity and timing for key sectors:

| Sector | Disruption intensity | Peak disruption window |
|---|---|---|
| Knowledge work (legal, consulting, finance) | 🔴 Very high | 2025–2028 (already started) |
| Software development | 🔴 Very high | 2024–2027 |
| Customer service | 🟠 High | 2024–2026 |
| OTA / travel discovery | 🟠 High | 2025–2028 |
| Healthcare diagnosis | 🟠 High | 2026–2030 |
| Creative work (writing, design, video) | 🟡 Medium-High | 2025–2030 |
| Physical labour (manufacturing, logistics) | 🟡 Medium | 2027–2033 |
| Education | 🟡 Medium | 2025–2030 |
| Leadership / judgment work | 🟢 Low | 2030+ (if ever) |

---

## Phase 5: Second-order effects of the AI trajectory

What changes *because* AI is on this trajectory?

1. **Talent market**: junior knowledge worker roles compress; premium on AI-native skills explodes; education system misaligned
2. **Software pricing**: AI automates software development → supply of software increases → SaaS pricing faces deflationary pressure
3. **Search and discovery**: AI agents as intermediaries replace Google/OTA discovery layer for some use cases
4. **Trust as infrastructure**: as AI-generated content floods every channel, trust becomes the scarce resource
5. **Regulatory catch-up**: EU AI Act pattern spreads; sector-specific regulation of autonomous AI systems
6. **New bottlenecks**: as AI removes intellectual bottlenecks, physical bottlenecks (energy, hardware, real-world deployment) become the constraints

---

## Output format

```
SECTOR: [company / industry]
HORIZON: [3/5/10yr]

WHERE WE ARE (S-curve position): [assessment]

CAPABILITY TRAJECTORY:
  3yr: [key capability changes]
  5yr: [key capability changes]  
  10yr: [range of possible states]

COMMODITIZATION EXPOSURE (sector-specific):
  [feature / workflow] → commoditizes in [timeframe] → implication: [action needed]

SECOND-ORDER EFFECTS:
  [top 3–4 non-obvious implications of the AI trajectory]

STRATEGIC IMPLICATIONS:
  [what this means for the specific company]

BREAKPOINTS (what would change this view):
  - [condition 1]
  - [condition 2]

12–24 MONTH ACTIONS:
  1. ...

SIGNALS TO MONITOR:
  [early indicators of trajectory acceleration / deceleration]
```
