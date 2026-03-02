# Project Kung Fu — Expert Plugin System

**Status:** 🟢 Active  
**Repo:** https://github.com/ross-veitch/kung-fu  
**Last Updated:** 2026-03-02

---

## Goal

A modular expert plugin system that layers domain expertise on top of `SOUL.md`, enabling specialist capability on demand — strategy sessions, health, training, legal, data analysis, and more.

## Architecture

```
SOUL.md                     ← permanent base identity, never touched
+ EXPERT.md                 ← domain expertise (publishable, generic)
+ PLAYBOOK.md               ← org-level config (private overlay, not in this repo)
+ USER.md                   ← personal config (private overlay, generated during onboarding)
[on demand]
+ Plugin full content       ← load-plugin.sh <path> when task requires it
```

## Expert Inventory (21 experts)

| Expert | Maturity |
|--------|----------|
| data-analyst | ✅ |
| executive-assistant | ✅ |
| executive-coach | ✅ |
| financial-analyst | ✅ |
| fitness-performance-coach | ✅ Full-standard |
| futurist | ✅ |
| growth-marketer | ✅ Full-standard |
| investment-banker | ✅ Full-standard |
| lawyer | ✅ |
| longevity-human-optimization-physician | ✅ |
| management-consultant | ✅ Full-standard |
| mandarin-chinese-language-teacher | ✅ |
| mena-market-specialist | ✅ Full-standard |
| news-editor | ✅ |
| people-partner | ✅ Full-standard |
| pricing-revenue-manager | ✅ Full-standard |
| product-manager | ✅ Full-standard |
| research-analyst | ✅ |
| software-engineer | ✅ |
| travel-concierge | ✅ |
| travel-industry-analyst | ✅ Full-standard |

## Key Infrastructure

- **`load-expert.sh`** — loads expert manifest (lightweight, lazy skill loading)
- **`load-plugin.sh`** — on-demand full plugin content
- **`spawn-with-expert.sh`** — inject expert into sub-agent or cron job
- **`staying-current.mjs`** — weekly learning loop per expert
- **`channel-routing.json`** — auto-bind experts to Slack channels (private config overlay)

## Vendor Submodules

- `vendor/knowledge-work-plugins/` — Anthropic Cowork plugins
- `vendor/claude-plugins-official/` — Claude Code official plugins

## Key Decisions

- Expert Plugins, not Role Packs — naming convention sets the right mental model
- `EXPERT.md` is generic and publishable; personal/org config lives in the private overlay
- Lazy loading: manifest only by default; full content on demand via `load-plugin.sh`
- `~~placeholders` in EXPERT.md resolved by USER.md after onboarding

## Standing Instructions

Always update `docs/experts/index.md`, `README.md` expert table, and relevant howto docs whenever an expert is added, modified, or channel bindings change.
