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
- [ ] The role directory at `experts/[role-name]/` with `EXPERT.md` (and optionally `scripts/`)
- [ ] An entry in `docs/roles/index.md`
- [ ] A worked example: same task, output without role vs with role, and the delta
- [ ] No personality content in `EXPERT.md` — that belongs in `SOUL.md`
- [ ] Tested across at least 5 representative tasks

Role authoring guide: [docs/howto/custom-roles.md](docs/howto/custom-roles.md)

**What we won't merge:**
- Role packs that override personality or communication style (that's `SOUL.md`)
- Role packs without meaningful SOPs — domain context alone isn't enough
- Role packs over ~1,500 tokens without strong justification
- Roles that only work for one person's very specific setup and can't generalise

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
# Fork and clone
git clone https://github.com/your-fork/kung-fu
cd kung-fu

# Install expert plugins to your workspace
cp -r experts/* ~/clawd/experts/

# Install scripts
cp scripts/load-expert.sh ~/clawd/scripts/
chmod +x ~/clawd/scripts/load-expert.sh

# Test a role
~/clawd/scripts/load-expert.sh --list
~/clawd/scripts/load-expert.sh --preview fitness-performance-coach
~/clawd/scripts/load-expert.sh fitness-performance-coach
~/clawd/scripts/load-expert.sh --unload
```

---

## The core constraint

**Role packs extend capability. They do not change identity.**

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
