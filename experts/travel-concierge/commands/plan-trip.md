---
name: plan-trip
description: End-to-end trip planning — routing, flights, hotels, ground transport, points strategy, and pre-trip checklist.
argument-hint: "[destination, dates, purpose] [optional: class preference, points to use, constraints]"
---

# /plan-trip

Plan a complete trip from brief to confirmed itinerary. Route for quality of experience, not just price.

---

## Step 1: Gather inputs

**Required — prompt for any missing:**
- Origin and destination(s)
- Dates (fixed or flexible, and by how much)
- Purpose: business / leisure / both
- Priority: time (fastest routing), comfort (best cabin/lounge experience), points (maximise redemption value), or cost

**Optional but improves output:**
- Class preference: economy / premium economy / business / first
- Available points balances (KrisFlyer, Skywards, Bonvoy, Hyatt, Amex MR, etc.)
- Loyalty status (airline tier, hotel tier)
- Hotel preferences (chain, location area, room type)
- Special requirements (visa, dietary, accessibility)

**From USER.md / PLAYBOOK.md:**
- Home base (default: Singapore)
- Preferred airlines and alliances
- Loyalty programme memberships and status
- Hotel preferences and status
- Known visa status for common destinations

---

## Step 2: Route the flights

**Consider multiple routing options:**
- Direct (if available and reasonable)
- One-stop via preferred hub (SIN/DXB for Star/EK)
- Award routing — sometimes different metal or routing gives dramatically better availability
- Time vs comfort tradeoff (red-eye vs daytime, connection time, equipment)

**For each routing option, evaluate:**
| Factor | Check |
|---|---|
| Total journey time | Including connections |
| Connection quality | Minimum connection time, lounge access, airside transfer |
| Equipment | Wide-body vs narrow-body, lie-flat availability |
| Award availability | Saver vs standard, partner vs operating carrier |
| Cash cost | If not using points |

---

## Step 3: Hotel selection

**Present top 3 options:**
- Best points redemption (cpp value > 1.5¢ for meaningful recommendations)
- Best location for this trip's purpose
- Best overall value (may be cash if points value is poor)

For each: name, location context, room category recommendation, points cost vs cash cost, loyalty benefits at current status.

---

## Step 4: Ground logistics and pre-trip

**Ground transport:** Airport transfers, inter-city transport, car rental if needed
**Visa and entry:** Requirements for each destination and transit point
**Lounge access:** Which lounges are accessible at each airport (priority pass, airline status, card)
**Pre-trip actions:** Ordered by deadline — visa apps, seat selection, hotel requests, travel insurance

---

## Output

```
## Trip Plan: [Origin] → [Destination(s)]
**Dates**: [Travel dates] | **Purpose**: [Business/Leisure] | **Priority**: [Time/Comfort/Points/Cost]

---

### ✈️ Recommended routing

**Option A (recommended):** [Route — airline — class — equipment]
- Departure: [Date, time, airport] → Arrival: [Date, time, airport]
- Duration: [Total including connection]
- Points cost: [X miles + $Y taxes] via [programme] | Cash: $[amount]
- Value: [cpp if award redemption]
- Notes: [Lounge access, connection, equipment highlights]

**Option B (alternative):** [Same format]

---

### 🏨 Hotel

| Property | Location | Room type | Points | Cash | Status benefits |
|---|---|---|---|---|---|
| [Name] | [Area context] | [Category] | [X pts/night] | [$X/night] | [Suite upgrade eligible? Breakfast? Late checkout?] |

**Recommendation:** [Which and why]

---

### 🚗 Ground logistics
- Airport transfer: [recommendation]
- Inter-city: [if applicable]

### 🛂 Entry requirements
- [Destination]: [Visa status — free/eVisa/required, processing time]
- [Transit point]: [Transit visa needed? TWOV?]

### 📋 Pre-trip checklist
| Action | Deadline | Status |
|---|---|---|
| [Visa application] | [Date] | ☐ |
| [Seat selection] | [ASAP] | ☐ |
| [Hotel loyalty number added] | [Before arrival] | ☐ |
| [Lounge access confirmed] | [Day of] | ☐ |
```
