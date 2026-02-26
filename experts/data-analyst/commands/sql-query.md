---
name: sql-query
description: Write, review, or debug a SQL query with performance checks
argument-hint: "[question to answer] [optional: tables/schema] [optional: query to review]"
---

# /sql-query

Write, review, or debug a SQL query. Flag performance risks (missing indexes, cartesian joins, N+1 patterns).

---

## Step 1: Gather inputs

**Required** — prompt for any that are missing:
- Question to answer (what data do you need?)
- Mode: **write** (create new query), **review** (check existing), or **debug** (fix broken query)

**For write mode**:
- Available tables and schema (table names, key columns, relationships)
- Expected result shape (one row? many? aggregated?)
- Performance context (millions of rows? real-time dashboard?)

**For review/debug mode**:
- Existing query
- Problem (slow? wrong results? error message?)
- Database engine (Postgres, MySQL, BigQuery, Snowflake — syntax varies)

**Optional but improves output**:
- Sample data or table sizes (helps assess performance)
- Existing indexes
- Query execution plan (EXPLAIN output)

**From PLAYBOOK.md** (load automatically if present):
- Data warehouse schema documentation
- Standard table naming conventions
- Index definitions

---

## Step 2: Write or review the query

### Write mode: Build query step-by-step

**Start with the question**, break it down:
1. What tables have the data?
2. How do tables relate? (JOIN keys)
3. What filters apply? (WHERE conditions)
4. What aggregation? (GROUP BY, SUM, AVG, etc.)
5. What order? (ORDER BY)

**Example question**: "What's the total GMV per country in Q1 2026?"

**Step-by-step**:
1. Table: `bookings` (has `gmv`, `created_at`)
2. Table: `users` (has `country`)
3. Join: `bookings.user_id = users.id`
4. Filter: `bookings.created_at BETWEEN '2026-01-01' AND '2026-03-31'`
5. Aggregate: `SUM(bookings.gmv)`, group by `users.country`
6. Order: `ORDER BY total_gmv DESC`

---

### Review mode: Check for issues

**Correctness**:
- Does it answer the question?
- Joins correct? (INNER vs LEFT — losing data?)
- Filters correct? (off-by-one on dates?)
- Aggregation correct? (SUM vs AVG, DISTINCT where needed?)

**Performance**:
- Missing indexes? (WHERE, JOIN, GROUP BY columns)
- Cartesian join? (missing JOIN condition)
- N+1 pattern? (subquery in SELECT per row)
- Full table scan on huge table?
- Unnecessary DISTINCT or ORDER BY?

**Readability**:
- Clear aliases
- Comments explaining non-obvious logic
- Formatted (indented, line breaks)

---

## Step 3: Flag performance risks

| Risk | What it is | How to detect | Fix |
|------|------------|---------------|-----|
| **Missing index** | Filter/join on unindexed column → full table scan | `EXPLAIN` shows "Seq Scan" on large table | Add index on that column |
| **Cartesian join** | Missing JOIN condition → N×M rows | Result has way more rows than expected | Add ON clause |
| **N+1 subquery** | Subquery runs once per row in result | Subquery in SELECT list | Rewrite as JOIN or CTE |
| **Inefficient GROUP BY** | Aggregating before filtering | GROUP BY on 1M rows, then filter to 1K | Move filter to WHERE (before aggregation) |
| **Wildcard at start** | `WHERE name LIKE '%abc'` → can't use index | EXPLAIN shows full scan on indexed column | Avoid leading wildcard, or use full-text search |

---

## Step 4: Add comments and structure

**Make query maintainable**:
- Comment non-obvious logic
- Use CTEs (WITH clauses) to break complex query into steps
- Name aggregates clearly (`total_gmv`, not `sum`)
- Format for readability (indent, align)

**Example**:
```sql
-- Q1 2026 GMV by country
-- Excludes cancelled bookings (status = 'confirmed' only)

WITH q1_bookings AS (
  SELECT
    user_id,
    gmv
  FROM bookings
  WHERE created_at >= '2026-01-01'
    AND created_at < '2026-04-01'
    AND status = 'confirmed'
)

SELECT
  u.country,
  SUM(b.gmv) AS total_gmv,
  COUNT(*) AS booking_count
FROM q1_bookings b
JOIN users u ON b.user_id = u.id
GROUP BY u.country
ORDER BY total_gmv DESC
```

---

## Output

### Write Mode

```sql
-- [One-line description of what this query returns]
-- [Any important caveats or filters]

-- CTE or subquery name (if applicable)
WITH [step_name] AS (
  SELECT
    [column],
    [column]
  FROM [table]
  WHERE [condition]
)

-- Main query
SELECT
  [column] AS [clear_alias],
  [aggregate_function] AS [clear_name]
FROM [table_or_cte] [alias]
[JOIN [table] [alias] ON [key] = [key]]
WHERE [condition]
  AND [condition]
GROUP BY [column]
HAVING [post-aggregation filter]
ORDER BY [column] [ASC/DESC]
LIMIT [N]
```

**Expected result**:
- Rows: [approximate count]
- Columns: [list]
- One row per: [entity — e.g., "one row per country"]

**Performance notes**:
- Indexes needed: [column list]
- Estimated execution time: [<1s / few seconds / minutes]
- If slow: [optimization suggestion]

---

### Review Mode

```markdown
# SQL Query Review

## Query
```sql
[The query being reviewed]
```

---

## Correctness: [✅ / ⚠️ / ❌]

**Does it answer the question?**
[YES / NO — with explanation]

**Issues**:
- [Issue 1: e.g., "INNER JOIN loses users with no bookings — should be LEFT JOIN"]
- [Issue 2: e.g., "Date filter is inclusive of end date — should use < not <="]

**Fix**:
```sql
[Corrected version if needed]
```

---

## Performance: [🟢 / 🟡 / 🔴]

| Issue | Severity | Line | Problem | Fix |
|-------|----------|------|---------|-----|
| [e.g., Missing index] | 🔴 | WHERE clause | Full scan on `bookings.created_at` | `CREATE INDEX idx_bookings_created_at ON bookings(created_at)` |
| [e.g., Cartesian join] | 🔴 | JOIN line 12 | No ON condition — N×M rows | Add `ON b.user_id = u.id` |
| [e.g., N+1 subquery] | 🟡 | SELECT line 5 | Subquery runs per row | Rewrite as LEFT JOIN |

**Performance classification**:
- 🟢 **GREEN**: Efficient, will run fast at scale
- 🟡 **YELLOW**: Works but could be optimized (acceptable for one-off analysis)
- 🔴 **RED**: Will be very slow or fail on production data (must fix before running)

**Estimated execution time**:
- Current: [X seconds/minutes at scale]
- Optimized: [Y seconds]

---

## Readability: [✅ / ⚠️]

**Issues**:
- [e.g., "No comments — unclear why we filter status = 'confirmed'"]
- [e.g., "Inconsistent table aliases (b vs booking)"]
- [e.g., "Complex logic could be broken into CTE for clarity"]

**Suggestion**:
[Refactored version with comments and CTEs if helpful]

---

## Recommended Changes

### Priority 1 (Must fix):
- [Change 1]

### Priority 2 (Should fix):
- [Change 2]

### Priority 3 (Nice to have):
- [Change 3]
```

---

### Debug Mode

```markdown
# SQL Query Debug

## Problem
**Symptom**: [Slow / wrong results / error message]

**Error** (if applicable):
```
[Full error message]
```

---

## Root Cause
**Issue**: [What's causing the problem]

**Evidence**:
- [EXPLAIN output showing full scan]
- [Query returning wrong row count]
- [Error points to line X]

---

## Fix
```sql
-- Fixed query with comments explaining the change

[Corrected SQL]
```

**What changed**:
- [Specific fix 1]
- [Specific fix 2]

**Why this fixes it**:
[Explanation]

---

## Verification
- [ ] Query runs without error
- [ ] Returns expected row count
- [ ] Results match business logic
- [ ] Performance acceptable (<5s for dashboard query)
```

---

## Escalation / Edge cases

**RED flag immediately if**:
- **Cartesian join**: Missing JOIN condition on large tables → will hang or OOM
- **No WHERE on huge table**: Full scan of 100M+ row table → query will time out
- **UPDATE/DELETE without WHERE**: Data loss risk → STOP, never run
- **Nested subqueries in SELECT**: N×M performance disaster on large data

**Request EXPLAIN output when**:
- Query is slow but reason unclear
- Table sizes unknown (can't assess performance impact)
- Competing hypotheses about bottleneck

**Performance thresholds**:
- Dashboard query: must run in <5s (ideally <1s)
- One-off analysis: <60s acceptable
- Batch job: minutes OK, but should still be optimized

**Common mistakes**:
- **Wrong JOIN type**: INNER when you need LEFT (or vice versa) → data loss or duplication
- **Off-by-one on dates**: `WHERE date < '2026-01-01'` excludes the 1st (use `< '2026-01-02'` or `<= '2026-01-01'`)
- **Timezone confusion**: `created_at` is UTC but filter assumes local time
- **Implicit ordering**: `LIMIT 10` without `ORDER BY` → non-deterministic results
- **Aggregating NULL**: `SUM(nullable_column)` skips nulls, `COUNT(nullable_column)` skips nulls, but `COUNT(*)` counts all rows

**Database-specific quirks**:
- **PostgreSQL**: Case-sensitive string comparison by default
- **MySQL**: Case-insensitive by default
- **BigQuery**: `TIMESTAMP` vs `DATETIME` vs `DATE` — easy to mix up
- **Snowflake**: Semicolon at end of CTEs (not standard SQL)

**Ross/Wego context**:
- `bookings` table is huge (100M+ rows) → always filter on `created_at` first
- `gmv` is in USD cents (integer) → divide by 100 for dollars
- `status` ENUM: `pending`, `confirmed`, `cancelled`, `failed` — only `confirmed` counts toward GMV
- MENA markets: `users.country` is ISO 3166-1 alpha-2 (AE, SA, EG, etc.)
- Seasonality: always compare YoY, not MoM (Ramadan/Eid shift dates)
- Indexes: `bookings(created_at)`, `bookings(user_id)`, `users(country)` already exist
