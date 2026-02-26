---
name: visa-check
description: Check visa and entry requirements for a trip — destinations + transit points, processing time, documentation, and action deadlines.
argument-hint: "[nationality, destination(s), transit points, travel dates]"
---

# /visa-check

Check every entry and transit requirement for a trip. The goal is zero surprises at the airport.

---

## Step 1: Gather inputs

**Required:**
- Passport nationality (and any secondary passports)
- Destination country/countries
- Transit countries (if connecting flights)
- Travel dates (processing times are relative to departure)

**Optional:**
- APEC ABTC holder? (Streamlines entry to 21 APEC economies)
- Global Entry / TSA PreCheck / equivalent?
- Frequent flyer status (some airlines offer fast-track immigration)
- Purpose of visit (tourist vs business — some countries distinguish)

**From USER.md:** Passport nationality, ABTC status, known visa-free destinations.

---

## Step 2: Check each entry point

For each country (destination AND transit):

| Check | What to verify |
|---|---|
| Entry type | Visa-free / eVisa / Visa on arrival / Visa required in advance |
| Duration | How long can you stay? |
| Processing time | Standard and expedited (for advance visas) |
| Documentation | Passport validity (6 months from entry?), blank pages, return ticket, hotel booking |
| Transit rules | TWOV (Transit Without Visa) available? Conditions? Airside vs landside? |
| COVID/health | Any remaining vaccination or testing requirements (mostly gone, but check) |
| Special | Any unusual requirements (invitation letter, bank statement, biometrics appointment) |

---

## Step 3: Build action timeline

Work backwards from departure date. Flag anything requiring action >2 weeks out.

---

## Output

```
## Visa & Entry Check: [Trip summary]
**Nationality**: [Passport(s)] | **Travel dates**: [Dates]

---

### Entry requirements

| Country | Purpose | Entry type | Duration | Passport validity | Status |
|---|---|---|---|---|---|
| [Destination] | [Tourist/Business] | Visa-free / eVisa / Required | [X days] | [Requirement] | ✅ Clear / ⚠️ Action needed |
| [Transit] | Transit | TWOV / Transit visa | [X hours] | [Requirement] | ✅ Clear / ⚠️ Action needed |

---

### ⚠️ Actions required (in deadline order)

| Action | Deadline | Processing time | Notes |
|---|---|---|---|
| [e.g., Apply for eVisa to India] | [Date — X days before travel] | [Standard: X days, Express: Y days] | [Link to application, requirements] |

---

### 📋 Documentation checklist
- [ ] Passport valid ≥6 months from [entry date]: [✅ / ❌ — expires [date]]
- [ ] Blank pages available: [✅ / ❌]
- [ ] Return/onward ticket: [Required for entry to [country]]
- [ ] Hotel booking confirmation: [Required for [country]]
- [ ] ABTC: [Applicable? Y/N — covers entry to [destination]?]

---

### Transit notes
[Any specific transit considerations — e.g., "Dubai connection: UAE nationals visa-free; TWOV available for [nationality] with onward ticket within 24h. Lounge access: Emirates Business lounge terminal 3."]
```

---

## Escalation

**Flag immediately if:**
- Passport expires within 6 months of any entry date (many countries will deny boarding)
- Visa processing time exceeds available time before departure (expedite or change plans)
- Transit country requires a visa that wasn't planned for (common: US transit, China transit, Schengen transit)
- Any destination has recently changed entry requirements (check IATA Timatic for authoritative, real-time data)

**Always verify against IATA Timatic** (the system airlines use for boarding verification) for final confirmation. Country embassy websites are authoritative but often outdated.
