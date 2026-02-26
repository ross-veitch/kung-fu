---
name: spec-write
description: Write a technical specification with concrete examples
argument-hint: "[feature or system to specify] [optional: context]"
---

# /spec-write

Write a technical specification with concrete examples throughout. Abstract specs produce abstract implementations.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- What are we building? (feature, system, API, integration)
- Why are we building it? (problem statement, user need, business goal)
- Who is the user? (end user, internal team, external API consumer)

**Optional but improves output**:
- Existing system context (if this extends/modifies something)
- Constraints (timeline, tech stack, compliance requirements)
- Success metrics (how do we know it works?)
- Known alternatives considered

**From PLAYBOOK.md** (load automatically if present):
- Org standards (API conventions, auth patterns, logging format)
- Tech stack defaults
- Deployment patterns

**If problem statement is vague**: Flag it immediately. "We need a dashboard" is not a problem statement. "Sales team cannot see daily GMV without manual SQL queries" is.

---

## Step 2: Define scope clearly

**In scope**:
- [Specific capability 1]
- [Specific capability 2]
- [Specific capability 3]

**Out of scope** (explicitly):
- [Related feature that's NOT included]
- [Future extension that can wait]
- [Adjacent problem that's separate]

**Why scope matters**: Prevents scope creep and keeps spec focused. If something is out of scope, document WHY (not needed yet, separate concern, technical blocker).

---

## Step 3: Describe the solution with examples

### Problem Statement
[1-2 paragraphs: what's broken or missing? Who's affected? What's the impact?]

**Example scenario**:
[Concrete example of the problem happening. Use real names, real data shapes, real numbers.]

---

### Proposed Solution
[High-level approach. How does this solve the problem?]

**Alternatives considered**:
1. **[Alternative 1]**: [Why not this?]
2. **[Alternative 2]**: [Why not this?]
3. **[Chosen approach]**: [Why this one?]

---

### API / Interface Design

**Use concrete examples**. Show exactly what the API call looks like.

#### Endpoint: `POST /api/v1/bookings`

**Request**:
```json
{
  "user_id": "user_abc123",
  "flight": {
    "origin": "DXB",
    "destination": "SIN",
    "departure": "2026-03-15T08:30:00Z",
    "arrival": "2026-03-15T20:45:00Z",
    "carrier": "EK",
    "flight_number": "354",
    "booking_class": "Y"
  },
  "passengers": [
    {
      "first_name": "Ross",
      "last_name": "Veitch",
      "dob": "1985-06-15",
      "passport": "X1234567"
    }
  ],
  "payment": {
    "method": "card",
    "token": "tok_visa_4242"
  }
}
```

**Response (success)**:
```json
{
  "booking_id": "bkg_xyz789",
  "status": "confirmed",
  "confirmation_code": "ABCDEF",
  "total_price": {
    "amount": 1250.00,
    "currency": "USD"
  },
  "created_at": "2026-02-26T14:30:00Z"
}
```

**Response (error)**:
```json
{
  "error": {
    "code": "payment_failed",
    "message": "Payment declined by issuer",
    "details": {
      "decline_code": "insufficient_funds"
    }
  }
}
```

---

### Data Model

**Show the schema**. Use concrete types.

#### `bookings` table

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| `id` | UUID | Primary key | Booking ID |
| `user_id` | UUID | Foreign key → users | Who made the booking |
| `status` | ENUM | `pending`, `confirmed`, `cancelled` | Booking state |
| `confirmation_code` | VARCHAR(6) | Unique, indexed | PNR code |
| `flight_data` | JSONB | Not null | Flight details (denormalized for historical record) |
| `total_price_cents` | INTEGER | Not null | Price in smallest currency unit |
| `currency` | CHAR(3) | Not null, default 'USD' | ISO 4217 currency code |
| `created_at` | TIMESTAMP | Not null, default NOW() | When booking was created |
| `updated_at` | TIMESTAMP | Not null, auto-update | Last modification |

**Indexes**:
- `idx_bookings_user_id` on `user_id` (lookup by user)
- `idx_bookings_confirmation_code` on `confirmation_code` (lookup by PNR)
- `idx_bookings_created_at` on `created_at DESC` (recent bookings list)

---

### Error Handling

**List error scenarios and responses**.

| Scenario | HTTP Status | Error Code | User Message |
|----------|-------------|------------|--------------|
| Invalid user_id | 400 | `invalid_user` | "User not found" |
| Flight sold out | 409 | `flight_unavailable` | "This flight is no longer available" |
| Payment declined | 402 | `payment_failed` | "Payment could not be processed. Please try a different card." |
| System timeout | 504 | `timeout` | "Request timed out. Your booking may still be processing." |

**Retry logic**: Payment failures are retryable (idempotent via `idempotency_key`). Timeouts should NOT auto-retry (risk double-booking).

---

### Security Considerations

**What could go wrong?**

- **Auth**: Require valid JWT token with `bookings:create` scope
- **Authorization**: Users can only create bookings for themselves (check `user_id` matches token subject)
- **Rate limiting**: 10 booking attempts per user per minute (prevent abuse)
- **PCI compliance**: Never log full card numbers or CVV
- **Input validation**: Sanitize all inputs (SQL injection, XSS in passenger names)
- **Idempotency**: Accept `Idempotency-Key` header to prevent duplicate bookings

---

### Observability

**Metrics**:
- `bookings_created_total` (counter, labels: status, currency)
- `booking_creation_duration_seconds` (histogram)
- `payment_failures_total` (counter, labels: decline_reason)

**Logs** (structured JSON):
- Log every booking attempt (user_id, flight, timestamp)
- Log every payment attempt and result
- Log errors with full context (but redact sensitive fields)

**Traces**:
- Span: `create_booking` (root)
  - Span: `validate_flight_availability`
  - Span: `process_payment`
  - Span: `create_booking_record`

**Alerts**:
- Payment failure rate >10% for 5 minutes → page on-call
- Booking creation latency p95 >5 seconds → ticket
- Flight availability service down → page immediately

---

### Open Questions

**Document what you DON'T know yet**:

- [ ] What happens if payment succeeds but flight booking fails? (Refund logic)
- [ ] How long should we hold a booking in `pending` state before cancelling?
- [ ] Do we support multi-city bookings in v1, or single segment only?
- [ ] Which payment gateways are we integrating? (Stripe, PayPal, local MENA gateways?)

**Resolution needed by**: [Date or milestone]

---

## Output

```markdown
# Technical Spec: [Feature/System Name]

## Problem Statement
[What's broken or missing? Who's affected? Impact?]

**Example scenario**:
[Concrete example using real data]

---

## Solution

**Approach**: [High-level description]

**Alternatives considered**:
1. [Option A]: [Why not]
2. [Option B]: [Why not]
3. **[Chosen]**: [Why this]

---

## API Design

### `[HTTP METHOD] /[endpoint]`

**Request**:
```json
{[concrete example request]}
```

**Response (success)**:
```json
{[concrete example response]}
```

**Response (error)**:
```json
{[concrete error response]}
```

[Repeat for each endpoint]

---

## Data Model

### `[table_name]` table

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| [col] | [type] | [constraints] | [description] |

**Indexes**:
- [Index definition and why]

[Repeat for each table]

---

## Error Handling

| Scenario | Status | Code | Message |
|----------|--------|------|---------|
| [error] | [4xx/5xx] | [code] | [user-facing message] |

**Retry logic**: [What's safe to retry?]

---

## Security

- **Auth**: [How is user authenticated?]
- **Authorization**: [What permissions required?]
- **Rate limiting**: [Limits and scope]
- **Data protection**: [PII handling, encryption]
- **Input validation**: [What's sanitized and how]

---

## Observability

**Metrics**:
- `[metric_name]` ([type], [labels]): [what it measures]

**Logs** (key events):
- [What gets logged]

**Traces** (span structure):
- [Parent span] → [child spans]

**Alerts**:
- [Condition] → [Action]

---

## Out of Scope

- [Feature or concern explicitly NOT included]
- [Future extension]

**Why**: [Reason it's deferred or separate]

---

## Open Questions

- [ ] [Question requiring resolution]
- [ ] [Question requiring resolution]

**Need answers by**: [Date/milestone]

---

## Success Metrics

**How do we know this works?**
- [Metric 1]: [Target value]
- [Metric 2]: [Target value]

**How do we know users like it?**
- [Feedback mechanism]
```

---

## Escalation / Edge cases

**Reject spec if**:
- Problem statement is vague or missing ("build a dashboard" is not a problem)
- No concrete examples (all abstract descriptions)
- Security considerations missing for sensitive data (payments, PII, auth)
- No error handling defined (only happy path)
- No observability plan (can't debug in production)

**Request clarification when**:
- Multiple interpretations possible (ambiguous requirements)
- Conflicts between stated goals (fast vs correct, simple vs flexible)
- Dependencies on other teams not documented

**Note to implementer**:
- This spec is a starting point, not gospel. Reality will surface edge cases.
- Update this doc as you learn. Specs are living documents.
- If you find something missing or wrong: fix the spec first, then code.

**Ross/Wego context**:
- Customer-facing features: explicitly document Arabic/RTL support if relevant
- Payment flows: MENA payment gateways (Telr, PayFort, local cards) often have different failure modes than Stripe
- Flight data: inventory can change mid-booking — always assume stale data, design for it
- Compliance: IATA, local regulations (Saudi data residency, UAE consumer protection)
