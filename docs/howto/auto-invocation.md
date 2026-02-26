# Auto-Invocation

How the agent automatically loads expert plugins when a session topic clearly warrants domain expertise — without requiring the user to manually `/expert load`.

---

## When it applies

Auto-invocation only fires in **non-channel-bound sessions** (DMs, general channels, ad-hoc threads). Channel-bound experts (see [channel-routing.md](channel-routing.md)) already handle automatic loading for their assigned channels — don't double-load.

On every new session or new thread, the agent assesses the opening message topic and applies the logic below.

---

## Confidence tiers

### 🟢 >80% confident — auto-load, announce briefly, proceed

The topic is clearly within one (or more) expert domains. Load the expert(s) and get on with it. One-line announcement at the top of the reply — not a question, not a request for confirmation.

**Announcement format:**
> *[Expert loaded: fitness-performance-coach — handling this as a training and biometrics question.]*

Then proceed with the full expert-informed response. User can override with `/expert off` if they want the general agent.

**Signals that push confidence >80%:**
- Topic maps cleanly to a single domain (training data → fitness-coach; contract review → lawyer; lab results → longevity-physician)
- The user's intent suggests structured expert output is wanted (not just a quick factual answer)
- Domain-specific vocabulary or context in the opening message
- The question would be answered materially better with the expert's SOPs and frameworks

### 🟡 50–80% confident — auto-load, announce softly

The topic is likely in a domain but there's genuine ambiguity (cross-domain, could go multiple ways, or the question is simple enough that expert depth may be overkill). Still load the expert — but signal that it was a judgment call.

**Announcement format:**
> *[Looks like [domain] territory — loaded [expert]. `/expert off` if you'd rather keep it general.]*

Then proceed. The user gets the better answer either way, and can redirect without friction.

**Signals in the 50–80% range:**
- Topic touches a domain but the question is simple or conversational
- Could reasonably be handled without specialist depth
- Multiple domains plausible, but one is clearly primary (see multi-domain below)

### ⚪ <50% — proceed without expert

Topic is general, conversational, cross-cutting, or doesn't benefit meaningfully from specialist framing. No announcement, no prompt — just respond.

---

## Multi-domain topics

If a topic maps to two domains at ≥50% confidence each, **load both**.

The system supports multi-expert sessions natively. Both EXPERT.md files are injected; the experts collaborate. SOUL.md remains the base — both experts are additive.

**Examples:**
- Strategy question with financial modelling → management-consultant + financial-analyst
- Health protocol involving training load → longevity-physician + fitness-performance-coach
- Contract for a software platform → lawyer + software-engineer

**Announcement format (multi):**
> *[Loaded: management-consultant + financial-analyst — this looks like a strategy + financial modelling question.]*

There's no hard cap on the number of experts, but loading 3+ is a signal the topic is too broad to benefit from specialist depth. If 3+ domains are genuinely relevant, proceed without experts and keep it general — or ask the user to narrow scope first.

---

## What NOT to auto-invoke for

Don't auto-load an expert for:
- Simple factual questions (what time is it in Dubai, what's the weather)
- Memory and scheduling tasks (calendar, reminders)
- Conversational messages (follow-ups, small talk, feedback on something)
- Questions where the user is clearly exploring or thinking out loud, not asking for structured output

The bar is: *"Would this response be materially better with the expert active?"* If the honest answer is marginal, don't load.

---

## Overrides

| Command | Effect |
|---|---|
| `/expert off` | Unload all active experts; return to base SOUL.md |
| `/expert [name]` | Explicit load — always wins over auto-invocation judgment |
| Channel binding | Overrides auto-invocation; channel expert is always loaded in bound channels |

---

## Adding to AGENTS.md

This logic is wired into `AGENTS.md` under Expert Plugin Routing. The doc you're reading explains the reasoning; AGENTS.md has the operational rule the agent follows.
