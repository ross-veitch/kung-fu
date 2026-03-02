# Staying Current — news-editor

Knowledge log: what was read, insights gained, and improvements made.
Format: [Keep a Changelog](https://keepachangelog.com).

## [2026-02-24] — depth: standard

**Cost**: ~$0.079 (5 Perplexity, 1 Claude)

### Read / Fetched
- **Nieman Lab** `[web]` — https://www.niemanlab.org
- **Columbia Journalism Review** `[web]` — https://www.cjr.org
- **Press Gazette** `[web]` — https://pressgazette.co.uk
- **Poynter** `[web]` — https://www.poynter.org
- **Twitter** `[web]`

### Synthesis
# Staying Current Review — Week of Feb 17–23, 2026

---

## 1. Key Insights

**1. The Washington Post cuts are structurally significant, not just numerically large.**
>300 journalists (~one-third of newsroom), with specific desk closures — sports, books, foreign correspondents. (Press Gazette) This isn't a trim; it's a deliberate narrowing of editorial scope. The foreign correspondent cuts in particular signal a retreat from the global ambition that defined the Bezos-era Post. Worth tracking whether this accelerates a "national politics only" identity for the outlet.

**2. Ars Technica retracted AI-fabricated quotes — in a story *about* AI.** (CJR, Feb 17) This is a specific, concrete editorial failure that updates my priors: the irony isn't just embarrassing, it's diagnostic. Outlets covering AI are not applying proportionally higher verification standards to AI-assisted work on that beat. The meta-lesson for editors: AI beat coverage needs a separate verification protocol, not just the standard one.

**3. The Atlanta Journal-Constitution lost ~50 jobs after print closure, with half from the newsroom.** (Press Gazette) The post-print transition is not a soft landing. Half the newsroom cut is a structural collapse, not a restructure. This is a data point against the "go digital-first and stabilize" narrative.

**4. CJR is explicitly calling out the WSJ by name for downplaying EPA climate policy suppression.** (CJR, Feb 18) This is notable editorial criticism — a major trade publication naming a specific outlet for inadequate coverage of access restrictions. That's a sharper posture than CJR typically takes. Worth watching whether this reflects a broader shift in how trade press holds mainstream outlets accountable under the current administration.

**5. The Independent's new executive editor comes directly from Mail Metro Media's AI director role.** (Press Gazette, Feb 9) Jacqui Merrington's appointment signals that AI operational expertise is now considered a core editorial leadership credential, not a tech-department function. This is a concrete hiring trend to track.

**6. X's search infrastructure is being rewritten by a 30-person team due to AI agent degradation.** (Twitter/X sources) The practical editorial implication: X search as a real-time monitoring tool is currently unreliable in ways that aren't visible to users. Editors using X for breaking news verification or trend detection should treat search results as degraded until this rewrite ships.

**7. Poynter's video verification piece (Feb 18) makes a specific editorial point: no video speaks for itself in the AI/body-cam era.** This isn't new as a principle, but the framing — that AI-edited footage introduces *delays* in verification, not just errors — is a useful operational update. The delay problem means publication pressure compounds the risk.

---

## 2. What's Changing (Early Signals)

**The "edited journalism" value proposition is being explicitly marketed as a differentiator.** L.A. Reported's Substack launch is emphasizing *edited* stories as a selling point. (Nieman Lab) This is a response to the AI slop flood — editing is becoming a brand claim, not just a process. Editors should expect to see this framing more, and should think about whether their mastheads are making this case explicitly to audiences.

**AI spam is degrading social platforms as editorial intelligence tools faster than expected.** X's bot problem is severe enough to require a full search rewrite. This isn't a moderation story — it's an infrastructure story with direct implications for how newsrooms use social listening. The signal-to-noise ratio on X for editorial judgment is structurally worsening, not cyclically.

**Legal threat planning is becoming a standard newsroom competency, not a crisis response.** Poynter's First Amendment planning piece (Feb 9) treats this as routine preparedness, not emergency response. The normalization of this framing — that legal attacks are a predictable operating condition — is a meaningful shift from two years ago.

**Mississippi's intra-state newspaper conflict** (*Mississippi Today* vs. *Free Press* over reporting accuracy, CJR Feb 11) is an undernoticed signal: as local news fragments into multiple competing digital outlets in the same market, inter-outlet accuracy disputes will increase. This is a new editorial ethics terrain — how do you cover a competitor's factual errors in your own market?

---

## 3. Ideas → Skills/Commands

**Update verification protocol command to include AI-beat-specific flag:**
Add a rule: *When editing or publishing stories about AI tools, require a separate source-check on any quoted material, regardless of reporter seniority. Flag AI-assisted drafting on AI-topic stories for mandatory human review of all quotes.* The Ars Technica failure is the concrete justification.

**Add "platform reliability status" as a standing item in daily curation command:**
X search is currently degraded. This should be a variable in the curation process — not assumed stable. Command update: *Before using X search for trend verification, check whether platform infrastructure issues have been reported in the past 30 days.*

**Add a "desk closure tracker" to the media ecosystem monitoring file:**
The WaPo sports/books/foreign closures and AJC post-print cuts are data points in a pattern. A running log of which *specific desks* are being cut industry-wide would be more useful than aggregate job-cut numbers for understanding what kinds of journalism are being systematically defunded.

**Refine the "AI in newsrooms" knowledge file:**
Add distinction between *AI as workflow tool* (Gmail summaries, drafting) vs. *AI as editorial credential* (Merrington's appointment). These have different implications — one is adoption, one is organizational restructuring of who holds editorial authority.

---

## 4. Sources to Add

**Ann Curry / PBS NewsHour Sudan reporting** — Not a source to add permanently, but the Sudan humanitarian crisis coverage gap (CJR, Feb 17) is a reminder to add *a dedicated humanitarian crisis monitor* (e.g., OCHA ReliefWeb or New Humanitarian) to the beat-specific source list. Currently absent.

**Mississippi Today** (mississippitoday.org) — The inter-outlet accuracy dispute flagged by CJR is worth monitoring as a case study in local digital news competition dynamics. Add as a watch source.

**New Humanitarian** (thenewhumanitarian.org) — Directly relevant given the Sudan coverage gap noted in CJR. Fills a specific hole in current source list for undercovered humanitarian stories.

**Ali Breland, The Atlantic** — His beat (online far right, political influence of fringe figures) is directly relevant to editorial decisions about amplification and platform coverage. Add to the "follow" list alongside Ben Smith, Mathew Ingram, Joshua Benton.

---

## 5. Questions Raised

**1. Is the WaPo foreign correspondent cut being replicated elsewhere quietly?** The Post's cuts are visible because of scale. Are mid-tier nationals (USA Today, LA Times, etc.) making similar foreign desk reductions without the same scrutiny? This would represent a systemic retreat from international coverage that isn't being tracked as a trend yet.

**2. What's the actual error rate on AI-assisted stories vs. fully human-reported ones, and does anyone have data?** The Ars Technica retraction is anecdote. Is any outlet or researcher tracking AI-assisted story correction rates systematically? If not, who should be doing this, and why aren't they?

**3. Does the "edited journalism as brand" positioning actually convert to audience retention?** L.A. Reported is making this bet. Is there any evidence from Substack analytics or similar that audiences pay a premium for edited vs. unedited content, or is this a supply-side assumption?

**4. How degraded is X search, specifically, for breaking news use cases?** The 30-person rewrite team suggests serious dysfunction, but the reporting is vague on *which* search queries are most affected. Real-time event monitoring vs. historical search vs. trend detection may be differentially impacted. Worth investigating before the next breaking news event where editors rely on it.

**5. The CJR/WSJ criticism on climate coverage — is this a one-off or a new editorial posture from CJR?** If CJR is moving toward naming specific outlets for coverage failures under the current administration, that changes how to read CJR as a source — it becomes more of an accountability actor and less of a neutral trade observer. Worth watching the next 4–6 weeks of CJR output for pattern.

---

## [2026-03-02] — Manual fetch (Perplexity key unavailable)

**Sources read:** Nieman Lab, Poynter, Columbia Journalism Review (partial), Press Gazette (partial)
**Depth:** standard (5 sources attempted, 3 yielded content)
**Cost:** ~$0.00 (no API calls, web_fetch only)

### Key insights

- **CNN's future uncertain** — Paramount's bid for Warner Bros. Discovery raises editorial independence questions. CEO Mark Thompson urging staff not to "jump to conclusions." Big consolidation play with major implications for cable news. *(Poynter, Feb 27)*
- **WaPo scored a legal win** — Judge blocked DOJ from searching a Post reporter's devices, but government still holds them. Press freedom fight ongoing. *(Poynter, Feb 26)*
- **AI reshaping freelance journalism** — Nieman Lab piece on how AI tools are transforming how freelancers work: faster research, but new pressures on originality and sourcing standards. *(Nieman Lab, Feb)*
- **Passkey/magic link logins gaining traction** — News organizations moving away from passwords; magic links and passcodes improving subscription conversion and reducing churn. *(Nieman Lab, Feb)*
- **Houston Chronicle x creator partnerships** — Publishers experimenting with creator collabs while maintaining editorial standards ("same values, same mission, same ethics"). Template for how legacy outlets can expand reach without compromising brand. *(Nieman Lab, Feb)*
- **Trump's State of the Union coverage** — Media reaction piece noting familiar dynamic: red meat for allies, little persuasion of skeptics. Tariff fact-checking: families paying ~$1,700/year. *(Poynter, Feb 25-26)*

### Improvement notes
- Perplexity API key (`PERPLEXITY_API_KEY`) not set in OpenClaw env — `staying-current.mjs` script will fail until resolved. Add key to `~/.openclaw/openclaw.json` env.vars or system environment.
