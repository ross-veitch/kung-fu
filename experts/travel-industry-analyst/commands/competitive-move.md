---
name: competitive-move
description: Analyse a competitor's strategic move and its implications for the market, with recommended response options
argument-hint: "[competitor name] [what they did]"
---

# /competitive-move

Analyse a competitor's strategic move and its implications. Output: what it means for the market, how incumbents should respond, opportunity or threat classification, and recommended response options.

---

## Step 1: Describe the move

**Competitor**: [Name]  
**Move**: [What they launched/changed/acquired]  
**Timing**: [When]

---

## Step 2: Assess implications

**For the market**: [Does this shift competitive dynamics? Create new segment? Threaten incumbents?]

**For incumbents**: [Who wins? Who loses? What customer segments are affected?]

---

## Step 3: Classify

**Opportunity**: This creates a new opening (e.g., competitor exits a segment)  
**Threat**: This weakens our position (e.g., competitor undercuts pricing)  
**Neutral**: Unlikely to materially impact market

---

## Step 4: Response options

**Option A**: Match (copy the move)  
**Option B**: Counter (different approach to same problem)  
**Option C**: Ignore (not material enough to respond)

**Recommendation**: [Option] because [rationale]

---

## Output Example

```markdown
# Competitive Move Analysis: [Competitor launches NDC-only fares]

**Competitor**: Lufthansa  
**Move**: Surcharge on GDS bookings, discount on NDC bookings  
**Timing**: Q1 2024

## Implications

**For market**: Accelerates NDC adoption (OTAs forced to integrate NDC or lose Lufthansa content)  
**For OTAs**: Threat (must invest in NDC tech or accept higher costs)

## Classification

**THREAT** to legacy OTAs who haven't invested in NDC

## Response Options

**Option A**: Fast-track NDC integration (6-month project)  
**Option B**: Negotiate with Lufthansa to waive surcharge (unlikely to succeed)  
**Option C**: De-emphasize Lufthansa in search results (loses revenue)

**Recommendation**: Option A (NDC integration) — NDC is inevitable, Lufthansa accelerates the timeline
```
