# Historical Analogies for Structural Change

*Documented transition patterns for recognising structural shifts by analogy*

---

## Why analogies matter

The future is not literally like the past — but structural mechanisms recur. The same dynamics of network effects, incumbent entrenchment, standards battles, infrastructure overbuild, and creative destruction play out across different industries and eras. A skilled futurist maintains a library of high-resolution historical analogies and knows when to apply them — and when the analogy breaks down.

The test of a good analogy: does it identify the *mechanism* you're studying, or does it merely describe surface resemblance? "AI is like the internet" is surface resemblance. "AI is like electrification because in both cases the general-purpose technology requires reengineering of business processes before productivity shows up, and the productivity gains lag the technology deployment by 15–20 years" is mechanistic.

---

## The Analogies Library

### 1. The Railroad Mania (UK, 1840s–1850s)

**What happened**: UK railroad construction triggered a speculative bubble (the Railway Mania of 1845–47), widespread overbuild, multiple bankruptcies — and then decades of genuinely transformative infrastructure that reshaped the economy.

**Key pattern**: General-purpose infrastructure is underestimated on timescale and overestimated on short-term financial returns. The infrastructure that survives the bubble becomes the foundation of the next economic paradigm. The investors who funded the bubble mostly lost money. The industries that used the infrastructure — manufacturing, agriculture, retail — captured the value.

**Mechanism**: 
- Phase 1: Technology demonstrated (Stephenson's Rocket, 1829) → speculative excitement
- Phase 2: Capital flood → overbuild → most competitors unviable → consolidation
- Phase 3: Surviving infrastructure enables new economic activity at scale → productivity surge
- Phase 4: Value captured by *users* of infrastructure (retailers, manufacturers), not infrastructure builders

**Current analogy**: AI infrastructure (data centres, GPU clusters, foundation model training). The companies building GPUs and training compute are potentially in the Phase 2 overbuild dynamic. The value will accrue to companies that use AI infrastructure to transform their workflows — not necessarily to the infrastructure builders.

**Breaks at**: The railroad was physical infrastructure with high switching costs. AI models can be copied (weight copying, distillation). The analogy weakens on durability of infrastructure moats.

---

### 2. Electrification of Factories (US, 1880s–1920s)

**What happened**: The steam engine had powered factories via centralised mechanical power transmission (belts, shafts, pulleys). Electrification enabled individual electric motors at each workstation. But productivity didn't surge for 30 years — until factory floor layouts were redesigned around the new technology rather than shoehorning electricity into steam-era physical arrangements.

**Key pattern**: General-purpose technology adoption lags productivity impact because organisations adopt the technology without redesigning the *processes* that the technology makes possible. The full productivity gain arrives when processes are rebuilt from scratch for the new capability.

**The Paul David insight** (economic historian): the "productivity paradox" — why computers showed up everywhere in the 1970s–80s but measured productivity didn't rise until the 1990s. Same mechanism as electrification. The 1990s surge arrived when organisations finally redesigned workflows around digital tools.

**Current analogy**: AI in knowledge work. The first wave (2022–2025) is "AI-assisted" — humans doing the same processes, slightly faster, with AI as a co-pilot. The productivity surge comes when knowledge work processes are redesigned from scratch for AI: not "edit this document with AI help" but "AI generates a draft from structured inputs, human curates output, feedback loop iterates." The companies that redesign processes (not just add AI tools) will capture the productivity gains. This is probably a 5–10 year transition, not 1–2 years.

**Breaks at**: Knowledge work is more diverse and harder to standardise than factory floor layouts. Some cognitive tasks may be genuinely irreducible to restructured processes.

---

### 3. The Internet's Arrival in Publishing and Music (1995–2015)

**What happened**: Digital distribution eliminated scarcity in content. Physical distribution (bookstores, record stores, newspaper printing) was the profit centre of the media industry. When distribution became free, the incumbent profit centre collapsed. The platforms (iTunes, Spotify, Amazon, Google News) captured value at the aggregation layer, not the content layer.

**Key pattern**: When a technology eliminates the cost of distribution, the profit migrates *up* to aggregation/curation (who controls discovery) and *down* to authentic uniqueness (stars/brands that survive commoditisation). The middle — reliable but not unique content, distributed through physical channels — gets wiped out.

**Two-step destruction**:
1. Distribution economics collapse (music labels, newspaper printing)
2. Aggregators capture the new discovery layer (iTunes/Spotify, Google News, Amazon)
3. Residual value concentrates in authenticity/uniqueness at the top (Beyoncé, The New York Times) and new forms of direct creator relationship (Substack, Patreon, touring)

**Current analogy — for Wego specifically**: AI may do to travel metasearch what Google did to travel agencies in 2010–2015. When AI handles trip discovery and booking execution, the travel metasearch layer (price comparison, link aggregation) may face a similar distribution collapse to what newspapers experienced. The survival playbook from media: move toward unique local data (MENA inventory no one else has), direct relationships (loyalty, mobile app, WhatsApp), and/or become the aggregation layer for AI agents (be the API that agents call, not the UI that humans browse).

**Breaks at**: Travel is transactional and high-stakes in a way that content consumption is not. Trust, payment security, and customer service complexity are real differentiation factors that pure search never was. The collapse won't be as sudden as music.

---

### 4. Containerisation (1960s–1980s)

**What happened**: Malcolm McLean's container shipping (first voyage 1956) required decades to become dominant because adoption required simultaneous investment in ships, ports, cranes, trucks, and trains — all at once. The network effect only kicked in when the ecosystem was complete.

**Key pattern**: Infrastructure transitions with strong ecosystem dependencies are much slower than the underlying technology implies. The container itself was a simple steel box — the delay was the ecosystem build-out: ports that could handle containers, roads built to container dimensions, trucks with the right trailer dimensions, global shipping lanes reorganised.

**Mechanism**: "Ecosystem lock-in to new standard" transitions require simultaneous adoption across the full supply chain. Any node that doesn't adopt creates a bottleneck that prevents others from capturing the benefit.

**Current analogy**: AI agent ecosystems in enterprise software. The value of AI agents depends on: all the enterprise systems having APIs agents can call, clear authentication and authorisation patterns, reliable billing for agent-triggered transactions, legal clarity on AI agent accountability. These ecosystem dependencies mean enterprise AI agent adoption will be slower than the underlying AI capability improvement would suggest. 2024–2030 is likely still the ecosystem-build phase; genuine agent-native enterprise workflows are a late-2020s/early-2030s story.

**For Wego/NDC**: The same pattern explains why NDC adoption has been slower than the technology alone would imply. NDC requires airlines, GDS, OTAs, corporate booking tools, and expense systems to all adopt the standard simultaneously. The ecosystem dependency is the bottleneck, not the technology.

---

### 5. The Carlota Perez Techno-Economic Paradigm (meta-pattern)

**What it is**: The historian Carlota Perez documented that every major technology paradigm (industrial revolution, steam + railways, steel + electricity + heavy engineering, automobiles + oil + mass production, information + telecom) follows the same S-curve with four phases:

- **Installation period**: New technology introduced; capital floods in; financial speculation drives overbuild; infrastructure is built but productive deployment is incomplete
- **Turning point** (usually a crash): Speculative bubble bursts; financial capital recedes; productive capital takes over
- **Deployment period**: Productive deployment of the built infrastructure; genuine productivity and welfare gains; a "golden age" of the paradigm
- **Maturity**: Paradigm exhausted; returns diminish; conditions for the next paradigm begin

**Key insight**: We are living through an installation period for AI right now. The venture capital flood, GPU overbuild, multiple model company formation — this is textbook Carlota Perez installation phase. The productive deployment phase (genuinely AI-transformed workflows, sectors, and institutions) is still ahead. The transition between installation and deployment is typically marked by a significant financial correction (not necessarily a crash, but a devaluation of speculative bets).

**Timing implication**: If the AI paradigm follows typical Perez patterns, the genuine "golden age" of AI-transformed productivity is 5–15 years away — not imminent. The next 2–3 years will see continued excitement and overbuild; the deployment phase comes after the speculative froth is reduced.

**Breaks at**: Perez's model was developed from 200 years of industrial history. AI may be faster (software scales faster than physical infrastructure) or the paradigm may fragment (multiple competing AI trajectories rather than one dominant paradigm). The model is a useful framing, not a precise prediction.

---

### 6. The Cable/Telecom Overbuild (late 1990s)

**What happened**: Telecom companies raised hundreds of billions in debt to build fiber optic capacity for "the bandwidth demand of the internet." Most went bankrupt (Global Crossing, WorldCom, 360networks). The fiber they built sat dark for years — then enabled the 2010s internet economy (Netflix, YouTube, cloud computing) at near-zero marginal cost because the infrastructure was already amortised into bankruptcy.

**Key pattern**: Infrastructure overbuilds during boom phases create stranded assets — but those stranded assets later enable the next wave of innovation at much lower cost than if the infrastructure had been built rationally. The "dark fiber" paradox: the irrationally exuberant builders lose; the late users of cheap stranded infrastructure win.

**Current analogy**: If AI infrastructure (data centres, GPU clusters) is being overbuilt, the companies that rent stranded AI compute in 2026–2028 at distressed prices may be better positioned than the companies building the compute today. The hyperscalers (Microsoft, Google, Amazon) are hedging by being both builders and buyers — but pure-play AI infrastructure companies face the classic boom-overbuild-collapse dynamic.

---

### 7. The Mobile Disruption of Desktop Web (2007–2015)

**What happened**: iPhone (2007) launched a new platform that desktop-era companies initially dismissed as a small screen with limited capability. By 2015, mobile was the primary internet surface. Companies that redesigned for mobile-first (Instagram, Uber, WhatsApp) captured the shift; desktop-era companies that added "mobile version" as an afterthought lost.

**Key pattern**: Platform transitions are not additive (desktop + mobile = more) but substitutive in ways incumbents underestimate. The new platform rewards native design (built for the new paradigm) over adaptation (desktop logic squeezed into mobile form). The companies that benefit most are the ones that treat the new platform as the primary canvas, not the secondary one.

**Current analogy**: AI-native design. Products that are "AI-assisted" (existing product + AI layer) will lose to products that are "AI-native" (workflows designed from scratch for a world where AI does the heavy lifting). For Wego: the question is not "how do we add AI to the existing metasearch product?" but "what would Wego look like if it were designed from scratch today, knowing that AI can handle discovery, comparison, and booking execution?"

---

## How to Apply an Analogy

**Step 1: Name the mechanism**
Don't say "this is like X". Say "this has the same mechanism as X because [specific causal chain]."

**Step 2: Identify where the analogy holds**
What is structurally similar? Be specific about which dynamics transfer.

**Step 3: Identify where the analogy breaks**
Every analogy breaks somewhere. Name the break conditions explicitly — they are often where the most interesting insight lives. The things that are NOT like the historical case are as analytically valuable as the things that are.

**Step 4: Extract the timing implication**
Historical analogies are not predictions, but they give distributional priors on timing. "Electrification took 30 years to show up in productivity" is a data point, not a forecast — but it should shift your probability distribution.

**Step 5: Identify who captures value**
In almost every paradigm transition, the value capture pattern shifts dramatically. Builders of infrastructure ≠ users of infrastructure ≠ aggregators ≠ content/product creators. The analogy should point to who is likely to capture value in the current transition.
