# Cron Job Integration

How to inject domain capability into scheduled OpenClaw tasks.

---

## The pattern

Cron jobs run as isolated `agentTurn` sessions. They don't read workspace files like `SOUL.md` or `AGENTS.md` — they only have the prompt in the `message` field. For specialist cron jobs, inject both `SOUL.md` and the expert plugin:

```javascript
const soul = fs.readFileSync(path.join(homedir(), 'clawd/SOUL.md'), 'utf8');
const role = fs.readFileSync(
  path.join(homedir(), 'clawd/clawd-prj/kung-fu/experts/research-analyst/EXPERT.md'), 'utf8'
);

const message = `${soul}\n\n---\n\n${role}\n\n---\n\n${taskInstructions}`;
```

`SOUL.md` gives the cron job the agent's identity so it behaves consistently. The expert plugin gives it the domain knowledge to do the task well.

---

## Example: Training readiness check-in

Without role injection:

```
Check Oura readiness score for today. If ≥80, recommend hard session.
If 60–79, recommend moderate. If <60, recommend rest.
Post to #clawd-prj-training.
```

With both SOUL.md + fitness-performance-coach role injected:

```
[SOUL.md — agent identity]

---

[EXPERT.md: fitness-performance-coach — HRV interpretation, zone targets, SOP for readiness check-in]

---

Check today's Oura readiness data (~/clawd/data/oura-<date>.json).
Follow the readiness check-in SOP from the loaded role.
Post to #clawd-prj-training (C0AGAUJL9L2).
```

The expert plugin contains the readiness interpretation framework, the exact output format, and the contextual knowledge (training week position, zone targets, Ross's baseline metrics). The task prompt can be short — the role handles the "how".

---

## Example: MENA news digest

```javascript
const soul = readFileSync(join(homedir(), 'clawd/SOUL.md'), 'utf8');
const role = readFileSync(
  join(homedir(), 'clawd/clawd-prj/kung-fu/experts/research-analyst/EXPERT.md'), 'utf8'
);

const message = `${soul}

---

${role}

---

Generate today's MENA news digest using sources from:
- ~/clawd/data/mena-scraped-${DATE}.json
- ~/clawd/data/mena-rss-${DATE}.json

Follow the news digest SOP in the loaded expert plugin.
Post to #openclaw-news.`;
```

The research analyst role brings source evaluation discipline, the correct digest format, and the list of trusted MENA publications — without repeating all that in the cron message.

---

## Helper function

```javascript
// ~/clawd/scripts/role-inject.js
import { readFileSync } from 'fs';
import { join } from 'path';
import { homedir } from 'os';

export function withRole(roleName, taskMessage) {
  const soulPath = join(homedir(), 'clawd', 'SOUL.md');
  const rolePath = join(homedir(), 'clawd', 'clawd-prj', 'kung-fu', 'experts', roleName, 'EXPERT.md');

  let soul, role;
  
  try {
    soul = readFileSync(soulPath, 'utf8');
  } catch (e) {
    console.warn('SOUL.md not found — running without identity context');
    soul = '';
  }

  try {
    role = readFileSync(rolePath, 'utf8');
  } catch (e) {
    console.warn(`Role '${roleName}' not found at ${rolePath}. Running without role.`);
    return soul ? `${soul}\n\n---\n\n${taskMessage}` : taskMessage;
  }

  return `${soul}\n\n---\n\n${role}\n\n---\n\n${taskMessage}`;
}

// Usage:
// import { withRole } from './role-inject.js';
// const message = withRole('fitness-performance-coach', taskInstructions);
```

---

## Updating an existing cron job

```javascript
// Read role files at update time (not hardcoded — always read at runtime)
const message = withRole('fitness-performance-coach', existingTaskInstructions);

cron({
  action: 'update',
  jobId: 'training-readiness-checkin',
  patch: {
    payload: {
      kind: 'agentTurn',
      message,
      model: 'anthropic/claude-sonnet-4-6'
    }
  }
});
```

**Important:** Always read the role file at runtime (when the cron job runs), not at job creation time. If you hardcode the role content into the job payload, updates to the expert plugin won't take effect until you manually update the job.

The recommended pattern: store just the task instructions in the cron job, and have the job read `SOUL.md` + `EXPERT.md` from disk at the start of each run.

---

## Model selection

Role injection doesn't change model routing — that's still task-driven:

| Task | Role | Model |
|------|------|-------|
| News digest (structured output) | research-analyst | sonnet |
| Training readiness (biometric + decision) | fitness-performance-coach | sonnet |
| Deep competitive analysis | research-analyst | sonnet (opus for synthesis) |
| Script generation | data-engineer | sonnet |
| Calendar/email management | executive-assistant | sonnet |

Shell scripts and tool-free tasks can use DeepSeek. Anything requiring tool calls needs Sonnet.

---

## Caveats

**Token overhead.** Adding `SOUL.md` + `EXPERT.md` to a cron job adds ~1,000–2,000 tokens per run. At Sonnet pricing (~$3/1M input), negligible for most jobs (~$0.003–$0.006/run).

**SOUL.md stability.** If `SOUL.md` changes significantly, cron jobs that read it at runtime will pick up the change automatically. No need to update job payloads.

**Role file updates.** Same — read at runtime, updates propagate automatically.
