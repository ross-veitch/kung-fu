# System Design

How to design software systems that are scalable, reliable, maintainable, and appropriately simple. Covers architecture patterns, tradeoffs, and the process of going from requirements to a defensible design.

---

## The design process

### 1. Clarify requirements
Before drawing any boxes, nail down:
- **Functional requirements**: What must the system do? (CRUD operations, specific workflows, integrations)
- **Non-functional requirements**: Scale, latency, availability, consistency, durability, security
- **Constraints**: Budget, team size, existing tech stack, regulatory requirements
- **Scope boundary**: What's explicitly out of scope?

Common mistake: jumping to architecture without understanding whether you need to handle 100 users or 100 million.

### 2. Estimate scale
Back-of-envelope math matters. Orders of magnitude:
- **DAU × actions per user** → requests per second
- **RPS × average payload size** → bandwidth
- **Requests × retention period** → storage
- **Peak / average ratio** → provisioning buffer (typically 2–5x)

A system handling 1K RPS vs 100K RPS vs 10M RPS requires fundamentally different architectures. Know which world you're in.

### 3. Define the API / contract first
Before internal design, define the external contract:
- REST endpoints (or GraphQL schema / gRPC definitions)
- Request/response shapes
- Error responses and codes
- Auth model (JWT, API keys, OAuth)

This anchors the design and reveals what state the system needs to manage.

---

## Architecture patterns

### Monolith
Single deployable unit. The right default for:
- Teams under ~10 engineers
- Early product (requirements still changing fast)
- Internal tooling or low-traffic services

**Don't** start with microservices if you haven't identified natural service boundaries. Distributed monoliths are worse than both.

### Microservices
Multiple independently deployable services communicating over network. Justified when:
- Different components have genuinely different scaling requirements
- Different teams need independent deploy cycles
- Services have clear ownership boundaries

**Cost**: significantly more operational complexity (service discovery, distributed tracing, network latency, eventual consistency). Only worth it at sufficient scale and team size.

### Event-driven architecture
Services communicate via events (Kafka, Kinesis, SQS/SNS, Pub/Sub) rather than synchronous API calls.

**When it fits**:
- High write throughput that consumers don't need immediately (audit logs, analytics, notifications)
- Decoupling producers from consumers (producer doesn't know or care about downstream consumers)
- Fan-out (one event triggers multiple independent processes)

**Tradeoffs**: harder to debug (events are async, ordering isn't guaranteed by default), eventual consistency is the norm, DLQ (dead letter queue) management required.

---

## Data tier design

### Database selection framework
| Need | Reach for |
|------|-----------|
| Relational data, ACID transactions | PostgreSQL (first choice for most apps) |
| High write throughput, time-series | InfluxDB, TimescaleDB, Cassandra |
| Full-text search | Elasticsearch, OpenSearch |
| Caching / session state | Redis |
| Document / flexible schema | MongoDB (but question whether you actually need flexibility) |
| Graph relationships | Neo4j |
| Analytical / OLAP | BigQuery, Snowflake, ClickHouse |

Start with PostgreSQL. Add specialised stores only when PostgreSQL demonstrably can't meet requirements.

### Caching strategy
- **Cache-aside (lazy)**: App checks cache first; on miss, reads from DB and populates cache. Simplest pattern.
- **Write-through**: Write to cache and DB simultaneously. Stronger consistency.
- **TTL vs invalidation**: TTL is simpler; invalidation is more accurate but harder to get right.
- **What to cache**: expensive DB queries, computed results, session data, static assets (CDN)
- **What not to cache**: data that changes frequently and must always be current (bank balances, inventory counts)

---

## Reliability

### The key numbers
- **Availability**: 99.9% = 8.7h downtime/year; 99.99% = 52min; 99.999% = 5min
- **RTO** (Recovery Time Objective): How quickly must you recover after failure?
- **RPO** (Recovery Point Objective): How much data loss is acceptable?

### Patterns
- **Circuit breaker**: Stop calling a failing downstream dependency; fail fast and recover gracefully
- **Retry with backoff**: Exponential backoff + jitter on transient failures. Never retry indefinitely.
- **Bulkhead**: Isolate failures so one component's failure doesn't cascade to others
- **Health checks**: Liveness (is the process alive?) vs Readiness (is it ready to serve traffic?)
- **Graceful degradation**: Core functionality works even when non-core services are down

---

## Key design tradeoffs

### CAP theorem (simplified for practice)
In the presence of network partitions (which happen), choose between:
- **CP** (Consistency + Partition tolerance): May become unavailable during partition. Every read gets the latest write or an error. (Zookeeper, HBase, ETCD)
- **AP** (Availability + Partition tolerance): Always responds, but may return stale data. (DynamoDB, Cassandra, CouchDB)

Most web applications need availability more than strict consistency — design for eventual consistency where possible, use strong consistency where it genuinely matters (financial transactions, inventory allocation).

### Synchronous vs asynchronous
Synchronous (REST/gRPC): simpler to reason about, immediate response, tight coupling.
Asynchronous (queues/events): better fault isolation, more resilient, harder to debug.

Use sync for user-facing read operations. Consider async for writes that don't need an immediate result (order placed → notification → inventory update → analytics).

---

## Production readiness checklist

Before a service is production-ready:
- [ ] Structured logging (JSON, with correlation IDs for tracing)
- [ ] Metrics instrumentation (request rate, error rate, latency p50/p95/p99)
- [ ] Distributed tracing (OpenTelemetry → Jaeger or Datadog)
- [ ] Health check endpoints (/health/live and /health/ready)
- [ ] Graceful shutdown (drain in-flight requests, close DB connections)
- [ ] Circuit breakers on all external calls
- [ ] Secrets management (never in code or env vars in plaintext — use Vault, AWS Secrets Manager, GCP Secret Manager)
- [ ] Rate limiting on public endpoints
- [ ] Database migrations are backwards-compatible (expand/contract pattern)
- [ ] Load tested to 2–3x expected peak
- [ ] Runbook written: what are the failure modes and how do you respond?
