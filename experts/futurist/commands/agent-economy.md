# /agent-economy — The Agent Economy

**Purpose**: Model the economic and strategic implications of a world where AI agents act autonomously at scale — booking, buying, researching, communicating, and executing tasks on behalf of humans without human oversight of each step.

**When to use**: Understanding how agentic AI reshapes distribution, discovery, and value capture. Especially relevant for OTA, e-commerce, SaaS, and any business where customer acquisition currently runs through search or direct human interaction.

---

## What is the agent economy?

The agent economy emerges when AI models gain:
1. **Tool use** (the ability to take actions: browse, book, pay, communicate)
2. **Persistent memory** (remembers context across sessions)
3. **Reliable multi-step execution** (completes complex workflows without human intervention)
4. **Personal context** (knows the user's preferences, history, constraints)

When these combine, a significant portion of the current "human browses → human decides → human transacts" stack gets automated. The agent does the browsing, comparison, and transaction. The human gets the outcome.

---

## Phase 1: What the agent economy disrupts

Map current human-in-loop steps that agents will automate:

| Current human action | Agent-mediated equivalent | Timeline |
|---|---|---|
| Search → browse OTA → compare flights → book | Agent searches, compares across APIs, books optimally | 2–5 years |
| Research product → read reviews → buy | Agent queries trusted sources, returns ranked options, completes purchase | 2–4 years |
| Identify software tool → trial → purchase | Agent evaluates tools programmatically against requirements, purchases | 3–5 years |
| Draft email → send | Agent drafts, schedules, follows up automatically | 1–2 years (here now) |

---

## Phase 2: Who wins and loses

**Who wins in the agent economy**:
- **API-first businesses**: if your product can be consumed programmatically, agents can use it. Businesses without APIs get skipped.
- **Data-rich, trust-anchored players**: agents need to trust a source to route through it. Brands with strong trust signals (reviews, reliability data, safety track record) become preferred agent destinations.
- **Infrastructure layer**: whoever provides agent memory, tool orchestration, and execution primitives captures the agent stack (Anthropic Claude tool use, OpenAI function calling, LangChain, etc.)
- **Supply-side owners**: if agents need to go somewhere for actual inventory (hotels, seats, products), the underlying supplier relationships retain value.

**Who loses**:
- **Discovery intermediaries**: SEO-dependent, aggregation-dependent businesses that exist to help humans find things. Agents don't need to browse — they query APIs. Google organic search, metasearch, OTAs whose moat is discovery (vs booking infrastructure) face disintermediation risk.
- **High-friction UX businesses**: businesses whose UI/UX is their competitive moat face commoditization when agents bypass the interface entirely.
- **Content farms**: sites optimized for human browsing patterns become irrelevant if agents query structured APIs instead.

---

## Phase 3: The OTA-specific agent economy question

For OTA specifically, the critical strategic question is:

**Does AI-mediated trip planning eliminate the OTA discovery layer, or create a new aggregation opportunity?**

*Disruption scenario*: AI agents access airline and hotel inventory APIs directly → OTAs lose the discovery and comparison function → margins compress to pure payment infrastructure economics.

*Reinvention scenario*: AI agents need trusted, comprehensive inventory aggregators with clean APIs → OTAs that invest in agent-accessible infrastructure become the preferred intermediary for AI agents, not just humans → new distribution layer.

**Which scenario plays out depends on**:
- Whether airlines/hotels open direct APIs to agents at competitive rates (currently they do not)
- Whether OTAs build agent-accessible infrastructure proactively
- The regulatory environment around AI-mediated booking

---

## Phase 4: Strategic optionality in the agent economy

Three strategic positions:
1. **Agent consumer**: build AI agents that consume other people's APIs — lowest investment, fastest time to value, vulnerable to API changes
2. **Agent-accessible supplier**: ensure your product/inventory is accessible via structured APIs that agents can consume — defensive moat
3. **Agent infrastructure**: build the memory, orchestration, or trust layer that agents need to function — highest leverage, highest investment

Most companies should start with (1), build toward (2), evaluate (3) selectively.

---

## Output format

```
SECTOR: [company / industry]

AGENT ECONOMY EXPOSURE:
  [current human step] → [agent-mediated equivalent] → [timeline] → [threat/opportunity]

WINNERS: [who is structurally advantaged]
LOSERS: [who is structurally threatened]

STRATEGIC QUESTION FOR THIS COMPANY:
  [the specific agent economy question most relevant]

THREE STRATEGIC POSITIONS:
  Consumer: [what this looks like for this company]
  Supplier: [what agent-accessible means here — specific APIs/data]
  Infrastructure: [whether there's a realistic play here]

RECOMMENDED POSITION: [with rationale]

BREAKPOINTS:
  [what would accelerate / slow the agent economy transition]

12–24 MONTH ACTIONS:
  1. ...

SIGNALS TO MONITOR:
  [agent adoption metrics, API ecosystem developments, competitive moves]
```
