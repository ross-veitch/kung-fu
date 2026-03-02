# Contributing

Contributions welcome — especially new expert plugins, real-world usage examples, and integration patterns.

---

## What we need most

1. **New expert plugins** — specialist domains not yet covered
2. **Integration examples** — cron job configs, sub-agent patterns, role composition
3. **Documentation improvements** — clearer explanations, caught errors, better examples
4. **Bug fixes** — issues with `load-expert.sh` on different platforms or OpenClaw versions

---

## Before you open a PR

### For new expert plugins

A good expert plugin PR includes:
- [ ] The expert directory at `experts/[expert-name]/` with `EXPERT.md`, `skills/`, `commands/` (including `commands/onboard.md`), and `.plugin/plugin.json`
- [ ] An entry in `docs/experts/index.md`
- [ ] A worked example: same task, output without expert vs with expert plugin loaded, and the delta
- [ ] No personality content in `EXPERT.md` — that belongs in `SOUL.md`
- [ ] Tested across at least 5 representative tasks

Expert authoring guide: [docs/howto/authoring-experts.md](docs/howto/authoring-experts.md)

**What we won't merge:**
- Expert Plugins that override personality or communication style (that's `SOUL.md`)
- Expert Plugins without meaningful SOPs — domain context alone isn't enough
- `EXPERT.md` files over ~2,000 tokens without moving content to `skills/` (deep knowledge belongs in skill files, not the core EXPERT.md)
- Expert Plugins that only work for one person's very specific setup and can't generalise

### For script changes

- Test on macOS (primary platform) and Linux if you can
- Don't break backwards compatibility without a clear migration note
- Keep scripts readable — add comments where logic isn't obvious

### For documentation

- Use present tense, active voice
- Examples > explanations
- If you caught something wrong, say what the correct behaviour is

---

## Development setup

```bash
# Fork the repo on GitHub, then clone your fork into the clawd workspace
cd ~/clawd
git clone --recurse-submodules https://github.com/YOUR-USERNAME/kung-fu clawd-prj/kung-fu

# Run the installer (creates symlinks, config overlay, channel routing example)
bash clawd-prj/kung-fu/install.sh

# To pull upstream improvements into your fork later:
cd clawd-prj/kung-fu
git remote add upstream https://github.com/ross-veitch/kung-fu
git fetch upstream && git merge upstream/main
# Test your expert
bash ~/clawd/scripts/load-expert.sh list
bash ~/clawd/scripts/load-expert.sh fitness-performance-coach
bash ~/clawd/scripts/load-expert.sh off
```

---

## The core constraint

**Expert Plugins extend capability. They do not change identity.**

Every line of `EXPERT.md` should answer: "what should the agent know or do differently in this domain?" Not: "how should the agent sound or relate to the user?"

If you're writing personality, tone, or communication style instructions — stop. Those belong in `SOUL.md`.

---

## Code style

Shell scripts:
- `set -euo pipefail` at the top
- Quote all variables
- `die()` function for errors
- Descriptive variable names
- Inline comments on non-obvious logic

---

## Licence

By contributing, you agree that your contributions are licensed under the MIT licence.
