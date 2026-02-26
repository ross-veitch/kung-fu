---
name: meeting-debrief
description: Post-meeting coaching debrief — analyzes Granola transcript and notes, delivers private feedback to Ross.
---

# /meeting-debrief

Analyse a completed meeting and deliver a private coaching debrief.

## Automated (cron)
Runs daily at 6pm SGT. Picks up all new meetings from the last 7 days.
Script: `~/clawd/scripts/meeting-debrief.mjs`

## Manual triggers

```bash
# Debrief all new meetings from last 7 days
node ~/clawd/scripts/meeting-debrief.mjs

# Look back further
node ~/clawd/scripts/meeting-debrief.mjs --days 30

# Force reprocess a specific meeting by ID
node ~/clawd/scripts/meeting-debrief.mjs --id <granola-meeting-id>

# Preview without posting to Slack
node ~/clawd/scripts/meeting-debrief.mjs --dry-run

# Specific meeting dry run
node ~/clawd/scripts/meeting-debrief.mjs --id <id> --dry-run
```

## What the debrief covers

1. **Meeting in 30 words** — what actually happened / what was decided
2. **Ross's effectiveness** — quality of contributions, questions, decisions, communication
3. **Speaking dynamics** — balance (1:1 = clean per-person; group = Ross vs room)
4. **Attendee observations** — what notes reveal about each person's contribution and engagement
5. **Meeting hygiene** — was it run well? Any structural issues?
6. **One coaching point** — the single most useful thing to take away

## Data sources

| Source | Used for |
|--------|----------|
| `transcript.json` | Speaking time: `microphone` = Ross, `system` = others |
| `document.json` / `notes.md` | Granola AI notes — substance, named attributions |
| `metadata.json` | Attendees, calendar event, duration |

## Speaker attribution notes

- **1:1 meetings**: clean — `microphone` = Ross, `system` = the other person
- **Group meetings**: `microphone` = Ross, `system` = all remote participants combined (no individual IDs). Named attribution relies on Granola AI notes which often name specific people.

## State
Tracks processed meetings at `~/clawd/data/meeting-debrief-state.json`.
Meetings are only reprocessed if `updated_at` changes in Granola.

## Output
Private Slack DM to Ross (D0AB757T8QP). One message per meeting.
Future: individual feedback to attendees when Ross enables delivery mode.
