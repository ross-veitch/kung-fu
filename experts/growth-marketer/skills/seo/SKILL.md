# SEO

Search engine optimisation — how to earn organic traffic through technical excellence, content authority, and link acquisition.

---

## How search works (the fundamentals)

Google's goal is to surface the best answer for a query. Three pillars determine ranking:

1. **Crawlability and indexation** — can Google find, render, and understand your pages?
2. **Relevance** — does your content match search intent (informational, navigational, commercial, transactional)?
3. **Authority** — does your site have credibility signals (backlinks, E-E-A-T) that indicate trustworthiness?

Great SEO addresses all three simultaneously.

---

## Technical SEO

The foundation. Without this, great content can't rank.

**Core Web Vitals**: LCP (Largest Contentful Paint < 2.5s), INP (Interaction to Next Paint < 200ms, replaced FID in 2024), CLS (Cumulative Layout Shift < 0.1). Failing Core Web Vitals is a ranking signal.

**Crawl budget**: Large sites (100K+ URLs) need to manage how many pages Google crawls. Block thin content, canonicalise duplicates, keep internal link structure clean.

**Indexation hygiene**: `robots.txt` and `noindex` directives. Google Search Console → Coverage report is the canonical view of indexation status. Errors, excluded pages, and warnings all need investigation.

**Structured data**: Schema.org markup (JSON-LD preferred). Flight, hotel, product, FAQ, and review schema can generate rich results in SERP — materially improving CTR.

**Rendering**: JavaScript-rendered sites need special attention. Google can render JS but with delay. Critical content should be in initial HTML (SSR or SSG for next.js, nuxt.js). Test with `fetch as Google` in Search Console.

---

## Keyword research

The discipline of understanding what queries your audience uses, in what volume, with what intent, and at what competitive difficulty.

**Search intent** is the most important variable:
- **Informational** (how do I…?) → content; blog posts; guides
- **Commercial** (best X for Y) → comparison pages, category pages
- **Transactional** (buy X, X price) → product/service pages
- **Navigational** (brand queries) → your brand defends these

**Tools**: Semrush Keyword Magic Tool, Ahrefs Keywords Explorer, Google Search Console (existing keywords driving traffic), Google's Autocomplete and "People also ask" (real intent signals).

**Difficulty vs opportunity**: Not all volume is equal. A keyword with 10K monthly searches but KD 80 is harder to win than 2K searches with KD 30. Match ambition to domain authority (DA).

---

## Content strategy

Content is how you match user intent at scale.

**Content types for SEO**: pillar pages (broad topic + high volume), cluster pages (specific sub-topics linking to pillar), programmatic SEO (templated pages at scale — e.g., "Flights from X to Y"), blog/editorial (informational queries), landing pages (transactional).

**E-E-A-T** (Experience, Expertise, Authoritativeness, Trustworthiness): Google's quality rater guidance. For YMYL (Your Money, Your Life) topics — finance, health, travel — E-E-A-T signals matter significantly. First-hand experience, author credentials, and citations to authoritative sources all help.

**Programmatic SEO**: Creating templates that generate thousands of unique pages from a database (e.g., hotel pages by city, flight prices by O&D). High upside, high risk if thin. Must have enough unique content per page to provide genuine value.

---

## Link building

Backlinks are the hardest and most valuable SEO lever. Authority links from relevant, trusted domains transfer PageRank.

**Approaches that work**: Digital PR (data-driven stories that earn press coverage with links), content partnerships, original research/surveys (journalists cite original data), broken link building, resource page link building, HARO (Help a Reporter Out).

**Approaches that don't scale cleanly**: Guest posting (over-saturated), directory submissions (low value), paid links (policy violation).

**Link quality signals**: Domain rating/authority (Ahrefs DR, Moz DA), relevance (a travel site linking to a travel site is stronger than a generic blog), anchor text diversity (exact match over-optimisation is a flag), editorial context (in-content links > footer/sidebar).

---

## Measurement

**Google Search Console**: The ground truth for SEO. Impressions, clicks, average position, CTR by query and page. Core Web Vitals report. Coverage report. This is the first place to check — not third-party tools.

**Key metrics**: Organic sessions, organic-attributed conversions, keyword rankings (tracked in Semrush/Ahrefs), page-level traffic, Share of Voice (SOV — % of available clicks your site earns for target keywords), crawl errors, index coverage.

**SEO A/B testing**: SEOTesting.com, Google's own experiments (limited), or manual before/after tests. Statistical significance is harder in SEO than paid (no true control group) — use time-based tests with traffic splits or domain sections.

---

## References

- [Google Search Central documentation](https://developers.google.com/search) — the canonical reference; Google's own documentation on how search works
- [Moz Beginner's Guide to SEO](https://moz.com/beginners-guide-to-seo) — the definitive structured introduction
- [Ahrefs Blog](https://ahrefs.com/blog) — the best practitioner SEO content, consistently evidence-based
- [Google Search Quality Rater Guidelines](https://guidelines.raterhub.com/searchqualityevaluatorguidelines.pdf) — how Google's human raters assess quality; understanding this informs E-E-A-T strategy
