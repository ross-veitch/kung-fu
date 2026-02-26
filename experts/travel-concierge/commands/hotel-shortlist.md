---
name: hotel-shortlist
description: Shortlist hotels for a stay — top 3 with points value, location context, and one non-obvious pick.
argument-hint: "[destination, dates, purpose] [optional: chain preference, budget, loyalty status]"
---

# /hotel-shortlist

Shortlist the best hotel options — not just the usual suspects. Include location context, points vs cash analysis, and one boutique/non-obvious pick.

---

## Step 1: Gather inputs

**Required:**
- Destination and dates
- Purpose: business / leisure / both
- Preferences: location priority (central/quiet/near venue), amenities (gym, pool, lounge, breakfast)

**Optional:**
- Loyalty programme preference or status (Bonvoy, Hyatt, Hilton, IHG, etc.)
- Points budget
- Cash budget
- Suite upgrade certificates available?
- Specific needs (connecting rooms, accessibility, late checkout critical)

**From USER.md:** Hotel loyalty memberships, status levels, upgrade certificates, chain preferences.

---

## Step 2: Evaluate and shortlist

For each candidate property, assess:
- **Location**: Distance to purpose (meetings, attractions, airport), neighbourhood quality, walkability
- **Room quality**: Standard room size and quality at this tier; upgrade likelihood at current status
- **Points value**: Points cost per night vs cash rate → cpp. Suite upgrade cert applicable?
- **Fifth night free**: Available on points? (Marriott, Hyatt both offer this — material for 5+ night stays)
- **Loyalty benefits at current status**: Breakfast, lounge, late checkout, room upgrade

**Selection criteria:**
1. **Best points play** — highest cpp value redemption
2. **Best location** — optimal for this specific trip's purpose
3. **Non-obvious pick** — a boutique, design, or independent property that wouldn't show up in a loyalty search but delivers a better experience

---

## Output

```
## Hotel Shortlist: [Destination, Dates]
**Purpose**: [Business/Leisure] | **Nights**: [N]

---

### 1. [Property name] — ✅ Recommended
**Chain**: [Name] | **Category**: [Tier/Category] | **Location**: [Area]
- 📍 Location context: [What's nearby, distance to key spots]
- 💰 Cash rate: $[X]/night | Points: [X pts/night] | cpp: [X.X¢]
- 🏆 Status benefits: [What your current tier gets you here]
- 🔑 Room recommendation: [Category + why]
- ⬆️ Upgrade likelihood: [High/Medium/Low — based on property size and tier]
- ✅ Why: [1 sentence — why this is the pick]

### 2. [Property name] — 🟡 Strong alternative
[Same format]

### 3. [Property name] — 💎 Non-obvious pick
**Type**: Boutique / Design / Independent
[Same format, with note on why it's worth considering despite not being a major chain]

---

### Points strategy note
[Any relevant: 5th night free calc, transfer bonuses, whether cash is clearly better than points here]
```
