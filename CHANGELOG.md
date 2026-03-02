# Changelog

All notable changes to Kung Fu are documented here.
Format follows [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

---

## [Unreleased]

## [0.3.0] — 2026-03-02

### Added
- 21 `clawd-exp-*` Slack channels, one per expert, with automatic expert binding via channel routing
- Intro post in each channel listing skills, commands, and GitHub link
- `uninstall.sh` — clean removal of symlinks and config overlay

### Changed
- `PROJECT.md` stripped of internal operational details for public readability
- All `rossveitch/kung-fu` → `ross-veitch/kung-fu` references corrected across 6 files
- Old expert name references (`health coach`, `travel planner`) updated in docs

### Fixed
- `CONTRIBUTING.md` dev setup rewrote stale `cp` instructions → `install.sh` workflow
- Stale CLI flags (`--list`, `--preview`, `--unload`) removed from CONTRIBUTING.md
- Personal email addresses and internal Slack channel IDs genericised in docs

---

## [0.2.0] — 2026-02-27

### Added
- 7 thin experts expanded to full standard: growth-marketer, investment-banker, mena-market-specialist, people-partner, pricing-revenue-manager, product-manager, travel-industry-analyst
- 14 new SKILL.md files (2 per expanded expert)
- 12+ new command files across expanded experts
- `commands/onboard.md` for all 21 experts
- `install.sh` — one-command setup with symlinks and config overlay
- `docs/howto/updating.md` — how to pull new experts and bug fixes
- First-use detection in `load-expert.sh` — FIRST-USE NOTICE when USER.md/PLAYBOOK.md missing
- Learning loop cron jobs for news-editor, futurist, fitness-performance-coach

### Changed
- `load-expert.sh list` now shows name + description from plugin.json
- Symlink path resolution fixed in `load-expert.sh` and `spawn-with-expert.sh`
- `~/clawd/scripts/` copies replaced with symlinks to repo

### Fixed
- `docs/getting-started.md` — removed redundant step, renumbered 1–7
- `docs/reference/load-expert.md` — full rewrite documenting actual behaviour
- `docs/architecture.md` — broken relative link; "copied" → "symlink" in scripts section
- All 21 internal doc links verified

---

## [0.1.0] — 2026-02-24

### Added
- Initial expert plugin system with 14 experts
- `load-expert.sh` — multi-expert loading, first-use detection, config overlay support
- `load-plugin.sh` — on-demand plugin content loading
- `spawn-with-expert.sh` — expert injection for sub-agents and cron jobs
- `staying-current.mjs` — weekly learning loop
- Three-layer cascade: EXPERT.md → PLAYBOOK.md → USER.md
- `~~` placeholder system for personalisation during onboarding
- Vendor submodules: Anthropic knowledge-work-plugins, claude-plugins-official
- Full documentation suite: architecture, howto guides, reference docs
- management-consultant and futurist experts created from scratch

---

[Unreleased]: https://github.com/ross-veitch/kung-fu/compare/v0.3.0...HEAD
[0.3.0]: https://github.com/ross-veitch/kung-fu/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/ross-veitch/kung-fu/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/ross-veitch/kung-fu/releases/tag/v0.1.0
