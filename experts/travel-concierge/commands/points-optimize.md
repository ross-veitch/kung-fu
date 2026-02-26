---
name: points-optimize
description: Optimise award redemption strategy for a specific trip — best programme, route, rate, and opportunity cost.
argument-hint: "[destination, dates, class] [optional: available points balances]"
---

# /points-optimize

Find the best use of available points for a specific trip, with opportunity cost analysis.

---

## Step 1: Gather inputs

**Required:**
- Trip: origin, destination, dates, preferred class
- Available points/miles balances (all programmes)

**Optional:**
- Flexibility on dates (+/- how many days?)
- Flexibility on routing (willing to reposition, use alternative airports?)
- Transferable currency balances (Amex MR, Chase UR, Citi TYP)
- Known sweet spots already identified

**From USER.md:** Points balances, programme memberships, transfer partner preferences, past redemption history.

---

## Step 2: Search award availability across programmes

**Check (in priority order):**
1. Operating carrier's own programme (usually best saver availability)
2. Partner programme with better award chart (e.g., KrisFlyer for Star Alliance vs ANA Mileage Club)
3. Transfer partner availability from flexible currencies

**For each option, calculate cents per point (cpp):**
`cpp = (Cash fare for same class) / (Points required)`

**Benchmark cpp for good value:**
| Programme type | Good | Great | Exceptional |
|---|---|---|---|
| Airline miles | >1.5¢ | >2.0¢ | >3.0¢ |
| Hotel points | >0.8¢ | >1.2¢ | >1.5¢ |
| Flexible currency (MR/UR) | >1.5¢ | >2.0¢ | >2.5¢ |

---

## Step 3: Assess opportunity cost

Don't just ask "is this a good redemption?" — ask "is this the best use of these points?"

- Could these points be worth more on a future trip? (e.g., burning KrisFlyer miles on a short J flight vs saving for a Suites redemption)
- Is the cash fare cheap enough that paying cash + earning miles is better?
- Are there transfer bonuses currently active?

---

## Output

```
## Points Optimization: [Route, Class]
**Dates**: [Travel dates] | **Available balances**: [summary]

---

### Options ranked by value

| # | Programme | Route | Points | Taxes/fees | cpp | Cash comparison | Verdict |
|---|---|---|---|---|---|---|---|
| 1 | [Best option] | [Route] | [X pts] | $[Y] | [X.X¢] | $[cash fare] | ✅ Best value |
| 2 | [Alt] | [Route] | [X pts] | $[Y] | [X.X¢] | $[cash fare] | 🟡 Acceptable |
| 3 | [Cash] | [Route] | — | $[total] | — | — | If points better saved |

---

### Recommended redemption
**Programme**: [Name] | **Cost**: [X miles + $Y] | **Value**: [X.X cpp]
**Why**: [1–2 sentences — why this is the best use of points for this trip]

---

### Opportunity cost note
[Should these points be saved for a higher-value future redemption? Any transfer bonuses active?]

### Transfer needed?
[If transferring from flexible currency: from where, to where, transfer time, any bonus active]
```
