# /comp-benchmarking

Benchmark a role or team against market data and recommend comp band adjustments.

---

## When to use

During annual comp reviews, when hiring for a new role with no existing band, when retention risk is flagged (key person underpaid), or when entering a new market and need to set local comp bands.

---

## Steps

### 1. Define scope
- **Role(s)**: Which role(s) to benchmark (title, level, function)
- **Geography**: Which location(s) — comp varies dramatically (SF vs Singapore vs Cairo)
- **Company stage**: Startup (Series A–C), scale-up, public, enterprise — different market
- **Comp philosophy reminder**: What percentile does the company target? (50th, 75th, etc.)

### 2. Gather market data

**Primary sources** (in order of reliability):
1. Radford / Aon survey data (if subscribed — gold standard for tech)
2. Mercer compensation survey (for non-tech or financial services roles)
3. Levels.fyi (free, strong for US tech engineering comp; self-reported but large sample)
4. Pave (if subscribed — modern tech-focused benchmarking)
5. Glassdoor / Payscale (broad, self-reported, directional)
6. LinkedIn Salary Insights (basic but accessible)
7. Competing job postings (check for salary ranges, increasingly required by law)

**Match by role, not title**: Ensure the benchmark role description matches the actual work. A "Senior Engineer" at a 50-person startup and a 50,000-person enterprise are different roles.

### 3. Analyse current positioning

For each role:
- Current base salary, bonus target, equity value (current + unvested)
- Total comp = Base + Target Bonus + Annualized Equity Value
- Compa-ratio = Current base / Band midpoint
- Flag: Below 0.85 (underpaid risk) or Above 1.15 (overpaid / needs promotion to justify)

### 4. Recommend adjustments

**Categories of adjustment**:
- **Market adjustment**: Employee is below band minimum — raise to at least band minimum regardless of performance. This is a fairness correction.
- **Equity refresh**: Unvested equity has declined below target level — issue refresh grant to maintain total comp competitiveness
- **Retention adjustment**: Key person in high-demand role where market has moved — proactive raise to prevent departure
- **No adjustment**: Employee is within band and fairly positioned — no change needed

### 5. Model the cost

Calculate total incremental cost of all recommended adjustments:
- Annual base salary increases (individual and aggregate)
- Equity grant value (dilution impact)
- Budget impact as % of total comp spend

---

## Output format

```
## Comp Benchmarking: [Role/Team]

**Date**: [Date]
**Market**: [Geography]
**Company target**: [Percentile]th percentile

### Market data summary
| Level | 25th | 50th (median) | 75th | 90th | Source |
|-------|------|--------------|------|------|--------|
| [Level] | $[X] | $[X] | $[X] | $[X] | [Source] |

### Current positioning
| Employee | Level | Base | Bonus | Equity | Total | Compa-ratio | Flag |
|----------|-------|------|-------|--------|-------|-------------|------|
| [Name] | [Level] | $[X] | $[X] | $[X] | $[X] | [X.XX] | [✅/⚠️/🔴] |

### Recommended adjustments
| Employee | Type | Current → Proposed | Incremental cost | Rationale |
|----------|------|-------------------|-----------------|-----------|
| [Name] | [Market/Retention/Refresh] | $[X] → $[Y] | $[Z]/yr | [Why] |

### Total cost impact
- Annual base increase: $[X] ([Y]% of comp budget)
- Equity grants: [N] shares / $[X] value
```
