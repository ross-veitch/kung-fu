---
name: debug
description: Systematic debugging workflow from symptom to root cause
argument-hint: "[symptom description] [logs/errors] [optional: system context]"
---

# /debug

Systematic debugging workflow: reproduce → isolate → hypothesize → test.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Symptom: what's broken? What's the user-visible problem?
- When did it start? (timestamp, deployment, event)
- Error messages, logs, stack traces

**Optional but improves output**:
- Steps to reproduce
- Frequency (always, intermittent, rate-dependent)
- Affected scope (all users, specific cohort, one user)
- Recent changes (deploys, config changes, dependency updates)
- System context (language, framework, infrastructure)
- Monitoring data (metrics, traces, dashboards)

**If reproduction steps unavailable**: Flag that debugging will be slower without reliable reproduction.

---

## Step 2: Reproduce

**Goal**: Confirm the symptom and establish a reliable way to trigger it.

- Follow reproduction steps if available
- If not: build minimal repro from symptom description
- Verify: can you reproduce on-demand? Or only sometimes?
- Document exact conditions (input data, environment, timing)

**Intermittent issues**: capture as much data as possible when it occurs (logs, metrics, traces). Look for patterns (time-based, load-based, race condition).

---

## Step 3: Isolate

**Goal**: Narrow down where the problem is.

**Binary search approach**:
- Which component/service is failing?
- Which code path is involved?
- Which function/line is the source?

**Techniques**:
- Add logging at boundaries (entry, exit, error paths)
- Check assumptions (is input what you expect? is state correct?)
- Bisect recent changes (git bisect if after a deploy)
- Compare working vs broken (different environments, users, data)

**Common patterns**:
- **Null/undefined**: missing validation, uninitialized state
- **Timeout**: slow query, network issue, deadlock
- **5XX error**: uncaught exception, resource exhaustion
- **Wrong result**: logic error, stale cache, race condition
- **Memory leak**: unclosed resources, circular references

---

## Step 4: Hypothesize

**Goal**: Form testable hypotheses about the root cause.

For each hypothesis:
- What evidence supports it?
- What evidence contradicts it?
- What would confirm it?

**Example hypotheses**:
- "Race condition: two requests modifying same record simultaneously"
  - Evidence: intermittent, more frequent under load
  - Test: serialize access, see if issue disappears
- "Cache invalidation bug: stale data served after update"
  - Evidence: fresh data in DB, old data in API response
  - Test: clear cache, verify correct data returned
- "Database connection pool exhausted"
  - Evidence: timeouts under load, connection count metrics spiking
  - Test: increase pool size, monitor if issue scales

**Rank by likelihood** (most likely first).

---

## Step 5: Test hypothesis

**Goal**: Confirm or rule out each hypothesis.

- Start with most likely hypothesis
- Design experiment to test it
- Run experiment, gather evidence
- If confirmed: move to fix. If ruled out: next hypothesis.

**Don't skip this step**: jumping to a fix without confirmation often leads to fixing the wrong thing.

---

## Step 6: Fix and verify

**Goal**: Implement fix and confirm the symptom is gone.

- Implement minimal fix that addresses root cause
- Test fix in isolation (unit test, local env)
- Verify fix resolves original symptom (run repro steps)
- Check for side effects (did fix break something else?)
- Deploy to production (staging first if available)
- Monitor: is the symptom gone? Any new errors?

**Verification checklist**:
- ✅ Original symptom no longer reproducible
- ✅ No new errors introduced
- ✅ Metrics returned to normal (latency, error rate)
- ✅ Root cause addressed (not just symptom masked)

---

## Output

```markdown
# Debug Report: [Brief symptom description]

## Symptom
**What's broken**: [User-visible problem]

**When**: [Started at timestamp / after event]

**Scope**: [All users / specific cohort / one user]

**Frequency**: [Always / intermittent / load-dependent]

---

## Reproduction
**Steps**:
1. [Step 1]
2. [Step 2]
3. [Observe: symptom occurs]

**Reliability**: [Always reproducible / 50% of the time / rare]

---

## Isolation
**Affected component**: [Service/module name]

**Affected code path**: [File:line or function name]

**Evidence**:
- [Log entry showing failure point]
- [Metric indicating bottleneck]
- [Stack trace or error message]

---

## Root Cause
**Hypothesis confirmed**: [What's actually causing the bug]

**Evidence**:
- [What confirmed this hypothesis]
- [What ruled out other hypotheses]

**Why it happened**:
- [Immediate cause: code defect, config error, etc.]
- [Contributing factors: missing validation, race condition, etc.]

---

## Fix
**Change made**: [Description of the fix]

**Code/config diff** (if applicable):
```
[Minimal diff showing the fix]
```

**Why this fixes it**: [Explanation]

---

## Verification
✅ Symptom no longer reproducible
✅ No new errors introduced
✅ Metrics back to normal
✅ Root cause addressed

**Monitoring**:
- [What to watch post-deploy]
- [When to consider this resolved]

---

## Follow-up
**Preventive measures**:
- [Test to add]
- [Monitoring to improve]
- [Documentation to update]

**Related issues** (if any): [Links to similar bugs or tech debt]
```

---

## Escalation / Edge cases

**Escalate immediately if**:
- **Data corruption**: user data lost, incorrect, or exposed
- **Security incident**: credentials leaked, unauthorized access, injection attack
- **System-wide outage**: multiple services down, cannot recover
- **Race condition in core path**: payments, bookings, user auth (high business impact)

**Request help when**:
- Unable to reproduce after multiple attempts (might need production access or more data)
- Root cause involves unfamiliar subsystem (database internals, infrastructure, third-party service)
- Issue spans multiple systems (distributed tracing needed)

**Systemic issues** (not just a one-off bug):
- Same bug in multiple places (DRY violation)
- Entire category of inputs not handled (missing validation layer)
- Architecture smell (cascading failures, tight coupling)
- **Flag as**: "This bug indicates a larger problem: [describe systemic issue]"

**When to stop debugging**:
- Spending >2 hours without progress → get another set of eyes
- Symptom disappeared and can't reproduce → document findings, set up monitoring, move on (but stay alert)
- Fix is not worth the effort → document workaround, prioritize properly

**Ross/Wego context**:
- Customer-impacting bugs (booking failures, payment issues) → highest priority
- MENA-specific issues (Arabic display, payment gateways, local holidays) → context matters
- Cross-border complexity (currency, regulations, flight inventory) → isolate which market
