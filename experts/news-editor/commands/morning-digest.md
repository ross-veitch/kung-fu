---
name: morning-digest
description: Compile and curate a morning news briefing from available sources.
---

# /morning-digest

Compile a curated morning news briefing from the day's stories.

## Steps

1. **Gather from sources**: Pull from configured source list across all beats.
2. **Apply significance filter**: For each story — impact magnitude, novelty, actionability. Include only those scoring ≥ 10/15.
3. **Verify key claims**: Flag any single-source stories explicitly.
4. **Organise by beat**: Group into sections (Geopolitics / MENA / Tech & AI / Aviation & Travel / Business & Markets / Company-relevant).
5. **Order within sections**: Most significant first.
6. **Write headlines**: Headline — Source — Date — Link. No summaries unless the story is complex enough to require context.
7. **Flag urgent items**: Anything that warrants immediate attention beyond the digest.

## Output format

**Section heading**
• Headline — Source — Publication date — [link]
• Headline — Source — Publication date — [link]

*[Repeat for each section]*

**⚠️ Urgent** (if any): [Story that can't wait for daily digest]
