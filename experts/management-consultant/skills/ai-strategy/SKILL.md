---
name: ai-strategy
description: >
  AI product architecture, model economics, data moats, and automation strategy.
  Use when: deciding build vs buy vs API for AI features, designing RAG vs fine-tune 
  architecture, assessing AI defensibility, calculating inference costs, AI-native 
  product strategy, automation ROI, model commoditization risk assessment.
---

# AI Strategy & Architecture

## Model economics (2024–2025 state)

### Cost curves

Foundation model inference costs have fallen 10–100× over 24 months and continue falling. Frontier models (GPT-4 class, Claude 3.5 class) now cost $1–15 per million tokens. Commodity models (GPT-4o-mini, Claude Haiku class) cost $0.10–0.50 per million tokens. Open-source frontier (Llama 3.x, Mistral) approach comparable capability at marginal infrastructure cost.

**Implication for strategy**: Any product whose differentiation rests on "access to a powerful model" has no defensible moat. The model itself is commoditizing. Differentiation must come from above (product, data, UX, integration, distribution) or below (proprietary training data, fine-tuning) the model layer.

### Inference cost design

For production AI products, model cost is operating cost — must be modelled at unit-economics level.

Key variables:
- **Tokens in (context window)**: system prompt + user message + retrieved context + history
- **Tokens out (generation)**: response length
- **Calls per session / per user / per day**: multiply by active user base
- **Model tier selection**: frontier vs commodity vs open-source self-hosted

Rule of thumb for B2C products: target < $0.01 per active user per day to maintain healthy margins. B2B can be 10–100× higher if product value is captured in pricing.

**Latency tradeoffs**: Frontier models (Claude Sonnet, GPT-4o): 2–5s for medium responses. Smaller models (Haiku, GPT-4o-mini): 0.5–2s. Self-hosted open-source (Llama 3.1): 0.3–2s with GPU hardware. UX research: >3–4s response latency significantly degrades perceived quality for interactive features.

---

## Architecture decisions

### RAG vs fine-tuning

**RAG (Retrieval-Augmented Generation)**:
- Use when: knowledge base changes frequently; source attribution needed; hallucination risk is high for compliance/accuracy reasons; not enough labeled data for fine-tuning
- Advantages: fast to iterate; no training cost; updatable in real-time; interpretable (can show retrieved sources)
- Limitations: retrieval quality limits answer quality; chunking strategy significantly affects performance; doesn't help with style/persona/tone
- Cost: moderate (embedding calls + vector store + LLM generation)

**Fine-tuning**:
- Use when: consistent style/format needed; domain vocabulary is specialized; prompt engineering alone not achieving required behavior; high-volume repetitive tasks where smaller-model accuracy is acceptable
- Advantages: smaller model can match larger model for specific task; lower inference cost; lower latency
- Limitations: expensive to update (re-training); overfitting risk; no transparency on what changed; typically 1,000+ labeled examples needed
- Cost: one-time training cost ($100–10,000+) + reduced inference cost after

**Hybrid approach** (common in production): RAG for knowledge access + fine-tuned base model for style/formatting + optional few-shot prompting for consistency.

### Context window economics

Large context windows (128K–1M tokens) have made some RAG use cases redundant for low-frequency queries (load entire document in context). For high-frequency production use: embedding retrieval still cheaper at scale.

**Context window cost example**: Loading 100K tokens per API call at $3/million input tokens = $0.30 per call. Fine for daily reports; expensive for real-time interactive features with thousands of concurrent users.

---

## Data moats

### When data is a real moat

A data advantage is durable when:
1. **Proprietary**: not publicly available; not replicable by training on public data
2. **High volume**: enough to meaningfully shift model capability
3. **Feedback loop**: usage generates more data that improves the model, creating compounding advantage
4. **Labeling advantage**: proprietary behavioral data (clicks, bookings, corrections) as implicit labels

Travel-specific examples:
- Booking.com: billions of historical bookings + search queries → demand forecasting, pricing, ranking
- Amadeus: GDS transaction data → fare prediction, schedule optimization
- Tripadvisor: review corpus → sentiment, entity extraction, recommendation quality

### When data is not a moat

- Publicly available data (Common Crawl, Wikipedia, SEC filings) → anyone can use it
- Small proprietary dataset (< 1M labeled examples) → typically insufficient to dominate a frontier model
- Data without a feedback loop → static advantage that erodes as public data grows
- Synthetic data can often substitute → data moats based on volume alone are weakening

**Implication**: In most B2B verticals, data moats remain real (proprietary behavioral data, labeled domain data). In most B2C products, model quality alone is not defensible — integrate, UX, distribution, and network effects matter more.

---

## AI product defensibility

Rank defensibility by durability:

| Mechanism | Durability | Example |
|---|---|---|
| Proprietary training data + feedback loop | 🟢 High | Booking.com search/ranking |
| Network effects (AI improves with users) | 🟢 High | Waze, Duolingo |
| Switching costs (embedded workflow) | 🟡 Medium | Cursor, GitHub Copilot |
| Distribution + brand trust | 🟡 Medium | OpenAI consumer brand |
| Model quality alone | 🔴 Low | Eroding; anyone can access GPT-4 class |
| Prompt engineering | 🔴 Low | Easily replicated |

**Design principle**: Build AI products that get better with use (feedback loop) or that create workflow lock-in (switching costs). Avoid products whose only moat is "we use a better model."

---

## Automation strategy

### Human-in-loop design

Three automation levels:
1. **AI suggests, human approves** — appropriate for high-stakes or low-volume decisions (legal review, M&A screening, medical diagnosis). Low error cost but low throughput.
2. **AI executes, human audits** — appropriate for medium-volume, moderate-stakes (email triage, content tagging, fraud flagging). High throughput, errors caught at audit.
3. **AI executes autonomously** — appropriate for high-volume, low-stakes, high-reversibility tasks (log classification, image tagging, FAQ response). Maximum throughput, requires calibrated confidence thresholds.

**Escalation design**: Production AI systems need explicit escalation triggers — confidence score below X, high-stakes entity detected, error pattern detected → route to human. Don't build level-3 automation without a level-1/2 fallback path.

### Automation ROI framework

Before automating a process:
1. **Current cost**: human time × fully-loaded cost × volume
2. **AI implementation cost**: build + integration + maintenance
3. **AI operating cost**: inference cost × volume
4. **Error cost**: error rate × consequence per error
5. **ROI**: (1) - (3) - (4) vs (2) amortised

Red flags: automation projects where error cost (4) exceeds savings (1-3), or where maintenance cost exceeds original build cost within 12 months (model drift, data pipeline maintenance).
