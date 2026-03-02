# Before / After Demo

Three examples showing what changes when an Expert Plugin is loaded. Same question, same model, different context.

---

## 1. Fitness & Performance Coach

**Prompt**: *"My Oura readiness score was 62 this morning and my HRV was 26ms. I had my Norwegian 4×4 interval session planned. Should I do it?"*

---

### Without expert

> Your readiness score of 62 and HRV of 26ms suggest your body may need more recovery time. While the Norwegian 4×4 interval session is beneficial for cardiovascular fitness, doing high-intensity training when your body is showing signs of fatigue could be counterproductive and increase injury risk.
>
> Consider replacing today's session with lighter activity such as a walk, yoga, or easy cycling. Stay well hydrated and ensure you get adequate sleep tonight to support recovery. You can reschedule the interval session for when your readiness improves.

**Delta**: Generic advice. No framework applied. No HRV thresholds. No classification of readiness state. No alternative session structure. Effectively: "rest if tired."

---

### With `/fitness-performance-coach` loaded

> **Readiness classification: 🟡 YELLOW** (Score 62, HRV 26ms)
>
> Your HRV is 28% below your 7-day baseline and your readiness is in the 60–70 caution zone. This is a meaningful suppression signal — not catastrophic, but your autonomic nervous system is indicating incomplete recovery. Norwegian 4×4 at full intensity today would likely produce a suboptimal training response and extend the recovery deficit.
>
> **Recommendation: Modified session — Zone 2 endurance + abbreviated intervals**
>
> Replace the full 4×4 protocol with:
> - 10 min warm-up at Zone 1 (< 106 bpm)
> - 20–25 min Zone 2 steady state (106–123 bpm) — nasal breathing, conversational pace
> - Optional: 2 × 4 min at Zone 3 (124–141 bpm) only if you feel strong after Zone 2 — not Zone 4
> - 10 min cool-down
>
> **Why not full 4×4 today?**
> Interval quality matters more than interval completion. At HRV 26ms you won't hit the cardiac output targets that make Norwegian 4×4 effective. You'd be accumulating fatigue without the training adaptation.
>
> **Tomorrow**: If HRV recovers to >30ms and readiness >70, reschedule the 4×4. If still suppressed, add a second Zone 2 day before retrying.
>
> **Lifestyle check**: What was different yesterday? Alcohol, sleep <7h, travel, stress, or high training load are the usual causes of this suppression pattern.

**Delta**: HRV classified against baseline (not just the absolute number). Readiness zone applied (GREEN/YELLOW/RED framework). Specific alternative session with zone targets and heart rate numbers. Explanation of *why* the modification matters. Recovery pathway for tomorrow. Follow-up question to identify root cause.

---

## 2. Lawyer

**Prompt**: *"We're signing a vendor agreement with a SaaS provider. They've included a clause that lets them change the pricing with 30 days notice. Is this normal? Should I push back?"*

---

### Without expert

> Pricing change clauses with 30 days notice are fairly common in SaaS agreements. Whether to push back depends on your leverage and how important the vendor is to your business. If this is a critical vendor, you might want to negotiate for more notice or price caps. It's worth reviewing the full contract context.

**Delta**: Vague, non-actionable. "It depends" without analysis. No issue-spotting. No specific redline suggestion.

---

### With `/lawyer` loaded

> **Issue spotted: Unilateral price change right — moderate-high risk**
>
> Yes, 30-day unilateral price change clauses appear in SaaS agreements, but "common" ≠ "acceptable." This clause gives you essentially no protection — 30 days is insufficient to find an alternative vendor for any meaningful integration.
>
> **What's wrong with it:**
> 1. **No cap on increase amount** — they can double your price with 30 days notice
> 2. **No frequency limit** — they can change it monthly
> 3. **Termination-for-cause gap** — if you terminate due to the price change, you likely owe notice period fees under the standard termination clause (check section on termination)
>
> **Push back with this redline:**
> - Price increases capped at **CPI + 3%** per annum (or a fixed % cap, e.g. 5%)
> - **90 days written notice** (minimum) before any price change
> - **Termination right**: if you decline the price change, you can terminate without penalty within 30 days of notice receipt
> - **Price lock for contract term**: if you're signing a fixed-term agreement, prices should be locked for the term
>
> **Negotiating position:**
> - This is a standard ask — most SaaS vendors have accepted some version of this before
> - Frame it as "budget certainty" not "distrust" — "We need to be able to forecast costs for our board"
> - If they resist the cap, push harder on the termination right — that's the minimum acceptable protection
>
> **What to ask outside counsel:** If this vendor handles your customer data, check that the pricing clause doesn't interact with the data processing agreement in a way that creates a change-of-terms notification problem under GDPR.

**Delta**: Specific issue decomposition (3 distinct problems, not 1). Named the gaps (no cap, no frequency limit, termination gap). Concrete redline language. Negotiating framing. Flagged a cross-clause risk (data privacy interaction). Tells you what to escalate to outside counsel and why.

---

## 3. Management Consultant

**Prompt**: *"We're a travel marketplace with 15% take rate and $45 CAC. Is our unit economics story healthy?"*

---

### Without expert

> To assess your unit economics, we'd want to look at the LTV/CAC ratio. With a $45 CAC, you need to understand your customer lifetime value. If your average customer makes multiple bookings per year and you earn 15% take rate on each transaction, the economics could be quite good. A healthy LTV/CAC ratio is typically 3:1 or better. You should also consider payback period and churn rate to get the full picture.

**Delta**: Textbook definitions. Asks for more information rather than working with what's given. No benchmarks. No framework applied. No view.

---

### With `/management-consultant` loaded

> **Quick verdict: The inputs look reasonable but the story has a missing variable — AOV and booking frequency.**
>
> Here's the unit economics math you need to stress-test:
>
> **LTV = (AOV × Take Rate × Booking Frequency) / Churn Rate**
>
> At 15% take rate, your revenue per booking is $AOV × 0.15. For OTA marketplaces, typical AOVs range from $300–$800 for hotels, $150–$400 for flights. Let's model two scenarios:
>
> | Scenario | AOV | Freq/yr | Annual Revenue/Customer | LTV (3yr, 20% churn) | LTV:CAC |
> |---|---|---|---|---|---|
> | Conservative | $350 | 2× | $105 | $263 | 5.8× |
> | Optimistic | $600 | 3× | $270 | $675 | 15× |
>
> **At $45 CAC, both scenarios look healthy by SaaS benchmarks (>3× LTV:CAC).** But travel marketplaces have two unit economics traps that SaaS benchmarks miss:
>
> 1. **Blended vs channel CAC**: $45 blended CAC often hides $8 organic + $120 paid. If paid acquisition is your growth lever, the marginal customer is 3× more expensive than the average suggests.
>
> 2. **Churn is non-linear**: Travel customers churn in trips, not monthly. A customer who books annually looks retained but is actually highly promiscuous — they're comparing your prices every time. Real retention = share of wallet, not just "did they book again."
>
> **What I'd check next:**
> - Cohort CAC by channel (organic vs paid vs meta)
> - D365 repeat booking rate (what % of Year 1 customers book again in Year 2?)
> - Take rate sustainability: at 15%, are you competitive vs direct and vs Google Hotel Ads?
>
> **The number to watch**: Contribution margin after variable costs (payment processing, customer service, fraud). At 15% GMR take rate, net revenue to the business is typically 8–11% after these. That's what the unit economics actually needs to work on.

**Delta**: Did the math rather than asking for more data. Built a scenario table with real OTA AOV benchmarks. Named two travel-specific traps that invalidate standard SaaS benchmarks. Specific next questions (not generic "get more data"). Introduced contribution margin as the real metric. Took a view ("looks healthy, but here's what hides under it").

---

## The pattern

In each case, the expert-loaded response:
1. **Applied a framework** rather than giving generic advice
2. **Used domain benchmarks** (HRV baselines, OTA take rates, LTV:CAC norms)
3. **Named specific risks** rather than hedging
4. **Gave a next action** — not just analysis
5. **Took a view** — committed to a recommendation rather than presenting options

The base model isn't wrong — it's just operating without the domain scaffolding that turns a good answer into an expert answer.
