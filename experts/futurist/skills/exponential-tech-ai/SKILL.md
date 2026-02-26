---
name: exponential-tech-ai
description: >
  Exponential technology trajectories, S-curves, AI capability forecasting, compute 
  and cost curves, convergence dynamics, and technology paradigm shifts.
  Use when: analyzing AI capability timelines, technology adoption curves, 
  cost curve projections, Moore's law equivalents, AI × technology convergences, 
  technology investment timing.
---

# Exponential Technologies & AI

## The S-curve discipline

Technologies don't grow linearly. They follow S-curves: slow start (technology working but too expensive or unreliable), inflection (cost/performance crosses a threshold, rapid adoption), plateau (saturation or next-generation replacement).

**Strategic implication of S-curves**:
- Early on the S-curve: technology is experimental; right time to invest in capability; wrong time to bet the business on scale
- At the inflection: technology is becoming viable; highest leverage investment window; wrong time to wait
- At the plateau: technology is infrastructure; commodity; competitive advantage has moved to the application layer

**The strategic error**: most companies invest at the plateau (when the technology is obvious) rather than at the inflection (when it requires judgment). By the plateau, the investment premium is priced in.

---

## AI-specific S-curves (2024 state)

### Language model capability
Current position: **late inflection / early plateau** for current paradigm
- GPT-3 class (2020): demonstrated capability, too expensive for broad deployment
- GPT-4 class (2023): crossed deployment threshold; human-expert performance on many knowledge tasks
- 2024–2026: current paradigm matures; capability improvements more incremental; cost continues falling
- Next S-curve: reasoning models (o1 class), multimodal depth, agentic reliability — early inflection

**Cost curve** (GPT-4 class equivalent performance):
- 2023: ~$0.10/1K tokens (frontier)
- 2024: ~$0.01/1K tokens (frontier), ~$0.001 (smaller frontier models)
- 2025–2026: ~$0.001/1K tokens (frontier), effectively free for commodity tasks
- Implication: any product whose moat is "access to GPT-4 class capability" is commoditizing now

### Compute (GPU/TPU)
- H100-class hardware (2023): $30–40K per unit; limited supply; 9-month lead times
- Supply normalizing 2024–2025; new entrants (custom silicon from hyperscalers) adding capacity
- Next generation (Blackwell, etc.): substantially more efficient; training costs falling
- Long-run: compute becomes cheap, abundant, and geopolitically contested simultaneously

### Inference efficiency
- Quantization, distillation, and architecture improvements enabling same capability at 10-100× lower compute
- Open-source models (Llama 3.1 405B) approaching frontier quality at near-zero inference cost
- On-device inference (phones, edge): becoming viable for Llama 3.2 class in 2024

---

## Moore's law equivalents across technologies

Technology cost curves operating at exponential rates:

| Technology | Halving period | Current state | Implication |
|---|---|---|---|
| Compute (GPU/TPU) | ~2 years | Mid-curve | Foundation model training will be 10× cheaper in 4 years |
| Solar energy | ~3 years (cost/watt) | Late-curve | Solar already cheapest electricity generation in most markets |
| Battery storage | ~4–5 years | Mid-curve | Grid storage economics cross viability threshold 2025–2030 |
| DNA sequencing | ~3 years | Late-curve | Whole genome sequencing < $100; near $10 in 5 years |
| Protein structure prediction | Discontinuous (AlphaFold) | Post-inflection | Drug discovery acceleration already underway |

**The convergence thesis**: when multiple cost curves cross viability thresholds simultaneously, compound effects emerge. AI × biology is the most powerful current convergence (AI enables biology research, biology insights shape AI architecture).

---

## Technology adoption curves (empirical)

Diffusion of innovations (Rogers): Innovators (2.5%) → Early adopters (13.5%) → Early majority (34%) → Late majority (34%) → Laggards (16%).

**For enterprise technology**: enterprise adoption lags consumer by 3–7 years typically. Consumer AI adoption is 2022–2025; enterprise AI normalisation is 2025–2030.

**Adoption accelerants**:
- Network effects (more users = more value = faster adoption)
- Cost crossing a threshold (price drop makes ROI obvious)
- Regulatory mandate (forces adoption)
- Workforce generational shift (digital natives become decision-makers)

**Adoption decelerants**:
- Switching costs from incumbent technology
- Regulatory prohibition or uncertainty
- Trust deficit (especially for high-stakes decisions)
- Infrastructure dependency (electrification required grid buildout; AI requires data centre buildout)

---

## AI paradigm risks (things that could slow the trajectory)

**Energy constraint**: frontier AI training and inference are extremely compute-intensive. Data centre energy demand growing ~30% annually. If energy supply growth can't keep pace:
- Training runs for frontier models become more expensive, not less
- Competitive advantage shifts to efficiency (architecture, distillation) vs scale
- Geography matters: countries with cheap clean energy gain structural compute advantage

**Regulatory ceiling**: EU AI Act, US EO on AI, China's generative AI regulations create compliance overhead. High-risk applications (medical, legal, autonomous systems) face registration, testing, and liability requirements that slow deployment (not necessarily a bad thing for incumbents who can absorb compliance costs).

**Architectural ceiling**: scaling laws may have diminishing returns. If the next S-curve requires a fundamentally different architecture (not just more compute), the current leaders may not be the next leaders.

**Trust failure**: if a high-profile AI system failure causes significant harm, regulatory and consumer trust backlash could impose a deployment pause. Precedent: Therac-25 radiation therapy computer (1985–1987) delayed medical computing adoption significantly.
