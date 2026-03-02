# Updating Project Kung Fu

How to get new experts, bug fixes, and improvements when they're added to the main repo.

---

## The short answer

**Updates are not automatic.** You pull them manually with `git pull`, then run `install.sh` if there are new scripts. Because you installed via symlinks (not copies), script improvements propagate immediately after `git pull` — no reinstall needed for script changes.

---

## How to update

```bash
cd ~/clawd/clawd-prj/kung-fu
git pull --recurse-submodules
bash install.sh   # only needed if new scripts were added; safe to re-run
```

That's it. New experts, updated skills, bug fixes, and new commands are all available immediately.

---

## What happens when new experts are added to the main repo

When a new expert is added to `https://github.com/ross-veitch/kung-fu`:

1. **After `git pull`**: The new expert directory appears at `experts/[new-expert]/`
2. **Immediately available**: `bash ~/clawd/scripts/load-expert.sh list` shows the new expert
3. **No reinstall needed**: `load-expert.sh` is symlinked to the repo, so it always reflects the current state of the repo
4. **No `USER.md` yet**: The first time you load the new expert, you'll get the first-use onboarding prompt

**Key point**: Because scripts are symlinked (not copied), `git pull` is sufficient to pick up all improvements. You don't need to re-run `install.sh` unless the PR adds new scripts to the `scripts/` directory.

---

## Checking your current version

```bash
cd ~/clawd/clawd-prj/kung-fu
git log --oneline -5       # recent commits
git status                 # any local modifications
```

To see what's new since your last pull:
```bash
git fetch origin
git log HEAD..origin/main --oneline
```

---

## Updating vs customising

Your personal config (`USER.md`, `PLAYBOOK.md`, `channel-routing.json`) lives in `~/clawd/kung-fu-config/` — a separate private directory that is **never touched by `git pull`**. Your personalisation is always safe.

If an expert's `EXPERT.md` is updated in the main repo (e.g., better domain knowledge, new onboarding questions), your `USER.md` continues to work — it resolves the same `~~placeholders`. You only need to re-run `/onboard` if the expert's placeholder table changes significantly.

---

## Staying ahead of the main repo

If you've forked `kung-fu` to create your own experts, you can pull upstream improvements:

```bash
# Add the upstream remote (one time)
git remote add upstream https://github.com/ross-veitch/kung-fu

# Pull upstream changes into your fork
git fetch upstream
git merge upstream/main
```

---

## What `install.sh` does on re-run

`install.sh` is safe to re-run at any time. It skips anything already set up:
- If symlinks exist: skips (prints `⏭`)
- If config overlay exists: skips
- If `channel-routing.json` already exists: skips (doesn't overwrite your channel bindings)

Re-run it if you see warnings about broken symlinks, or after a fresh machine setup.

---

## Notification: new experts available

There's no automatic notification when new experts are added. To stay informed:
- **Watch the GitHub repo**: Go to `https://github.com/ross-veitch/kung-fu` → Watch → Custom → check "Releases" and "Commits"
- **Periodic check**: `cd ~/clawd/clawd-prj/kung-fu && git fetch origin && git log HEAD..origin/main --oneline`
- Or ask your agent: *"Check for kung-fu updates"* — the agent will run the above and report what's new
