---
name: assess-level
description: Structured level assessment across speaking, listening, reading, and writing — produces a learner profile with recommended next steps per skill.
argument-hint: "[learner background and self-assessment] [optional: sample writing or translation for review]"
---

# /assess-level

Establish a realistic baseline across all four skills — not a single composite score, but a per-skill profile, because they develop at very different rates.

---

## Step 1: Gather inputs

**Background questions (ask if not provided):**
- How long have you been studying Mandarin?
- What methods have you used (class, app, tutor, immersion, self-study)?
- What are your goals (travel, business, heritage language, fluency)?
- Simplified or Traditional characters (or both)?
- Can you provide: a short writing sample, a self-recording of speech, or attempt to translate a passage?

**From USER.md:** Learner history, prior formal study, specific goals already configured.

---

## Step 2: Assess each skill separately

**Speaking (output production):**
- Ask the learner to describe their daily routine, a recent trip, or their work — in Mandarin
- Assess: tones (correct? consistent? breaks down at speed?), vocabulary range, grammar structure (topic-comment? BA? complements?), fluency vs accuracy tradeoff
- Common markers: Can they string 3+ sentences without reverting to English? Do tones hold under connected speech?

**Listening (comprehension):**
- Play/paste a short native-speed clip (news, conversation) and ask for a summary
- Assess: comprehension of standard Mandarin (Putonghua), tolerance for speed and connected speech, recovery when unfamiliar word appears
- Common markers: Dependent on slow, clear speech = early intermediate; can follow native conversation = advanced

**Reading:**
- Provide a short authentic text (news headline + first paragraph, WeChat post)
- Assess: character recognition speed, ability to derive meaning from context when one character is unknown, traditional vs simplified recognition
- Common markers: <500 characters = beginner; 1000–2000 = functional; 3000+ = comfortable reader

**Writing:**
- Ask for a short written piece (3–5 sentences about themselves, or translate a simple English paragraph)
- Assess: character accuracy (not just pinyin), grammar correctness, register appropriateness

---

## Step 3: Map to HSK (reference, not goal)

| Level | Speaking | Listening | Reading | Writing |
|---|---|---|---|---|
| HSK 1–2 | Basic phrases, heavy tone errors | Slow/simple only | <500 chars | Pinyin dependent |
| HSK 3–4 | Conversational on familiar topics | Follows clear speech | ~1200 chars | Simple sentences |
| HSK 5–6 | Extended discussion, fewer tone errors | Follows native-ish speech | ~2500 chars | Structured paragraphs |
| HSK 7–9 | Near-native | Full native comprehension | Academic/formal texts | Extended composition |

---

## Output

```
## Learner Profile — [Name / Date]

### Skill levels

| Skill | Current level | Key strengths | Key gaps |
|---|---|---|---|
| Speaking | HSK X equivalent | [specific] | [specific] |
| Listening | HSK X equivalent | [specific] | [specific] |
| Reading | HSK X equivalent | [specific] | [specific] |
| Writing | HSK X equivalent | [specific] | [specific] |

---

### Priority focus areas (in order)

1. **[Skill] — [specific issue]**
   - Why: [why this is the highest leverage gap]
   - How: [specific method — e.g., "daily shadowing 15min with HSK 4 audio"]
   - Milestone: [what improvement looks like in 4–6 weeks]

2. **[Skill] — [specific issue]**
   [Same structure]

---

### Recommended learning approach

- **Primary method**: [e.g., comprehensible input via graded readers + shadowing]
- **Daily practice**: [specific routine — duration, activity type]
- **SRS deck focus**: [HSK level, topic, or grammar point for Anki]
- **Content recommendation**: [specific resource matching current level]

---

### What to NOT focus on right now
[1 item — e.g., "Don't prioritise character writing until reading recognition is stronger"]
```
