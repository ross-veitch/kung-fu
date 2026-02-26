---
name: code-review
description: Structured code review with severity-based feedback
argument-hint: "[code or file path] [context about what it does]"
---

# /code-review

Perform a structured code review organized by severity and domain.

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Code to review (inline, file path, or PR link)
- Context: what does this code do? What problem does it solve?

**Optional but improves output**:
- PR description or commit message
- Language/framework version
- Known constraints or requirements
- Related files or dependencies

**If code context is unavailable**: Infer purpose from code structure, comments, and naming. Flag assumptions made.

---

## Step 2: Review across domains

Check each area systematically:

**Correctness**: Does it do what it claims to do?
- Logic errors, off-by-one, null handling
- Edge cases (empty input, max values, unicode)
- Assumptions that might not hold

**Security**:
- Injection vulnerabilities (SQL, command, XSS)
- Authentication/authorization bypasses
- Secrets in code (API keys, passwords, tokens)
- Unsafe deserialization
- CORS/CSRF if web-facing

**Performance**:
- N+1 queries, missing indexes
- Unnecessary loops or allocations
- Blocking I/O in hot paths
- Memory leaks (unclosed resources)

**Error handling**:
- Uncaught exceptions
- Silent failures
- Poor error messages
- Missing validation

**Readability**:
- Naming (clear, consistent, not misleading)
- Comments (why, not what)
- Function length and complexity
- DRY violations

**Testing**:
- Test coverage for happy path + edge cases
- Missing tests for error conditions
- Brittle tests (coupled to implementation)

**Documentation**:
- API contracts documented
- Non-obvious behavior explained
- Setup/usage instructions if needed

---

## Step 3: Classify by severity

Organize findings into tiers:

| Severity | Meaning | Gate |
|----------|---------|------|
| **CRITICAL** | Security vulnerability, data loss risk, or production-breaking bug | Hard block |
| **BLOCKING** | Must fix before merge (correctness, poor error handling, major performance issue) | Block PR |
| **IMPORTANT** | Should fix (readability, maintainability, minor perf) | Request changes |
| **SUGGESTION** | Optional improvement (style, better pattern available) | Nice to have |
| **PRAISE** | Something done particularly well | Reinforce good work |

---

## Output

```markdown
# Code Review

## CRITICAL ⛔
[If any hardcoded credentials, injection vulnerabilities, or obvious security holes — flag immediately]

## BLOCKING 🚫
- **[File:line]** [Issue description]
  - Why: [Specific problem and impact]
  - Fix: [Concrete recommendation]

- **[File:line]** [Issue description]
  - Why: [Specific problem and impact]
  - Fix: [Concrete recommendation]

## IMPORTANT ⚠️
- **[File:line]** [Issue description]
  - Fix: [Recommendation]

## SUGGESTION 💡
- **[File:line]** [Improvement idea]
  - Benefit: [What this would improve]

## PRAISE ✨
- **[File:line]** [What was done well and why]

---

## Summary
- Blocking issues: [N]
- Important issues: [N]
- Overall: [APPROVE / REQUEST CHANGES / BLOCK]
```

---

## Escalation / Edge cases

**Immediately escalate as CRITICAL**:
- Hardcoded credentials (API keys, passwords, tokens) anywhere in code
- SQL injection or command injection vectors
- Authentication bypass or privilege escalation paths
- Data exposure (PII, secrets in logs, responses)

**Flag for security review** (separate from code review):
- Crypto implementation (don't roll your own)
- Authorization logic (complex RBAC, multi-tenancy)
- Payment processing
- File upload handling

**When to request more context**:
- Unclear why certain code exists (no comments, non-obvious purpose)
- Breaking changes without migration path
- Performance characteristics unclear (acceptable for this use case?)

**Don't bikeshed**:
- Style issues covered by linter (unless egregious)
- Personal preference on naming (unless actively misleading)
- Micro-optimizations with no measurable impact
