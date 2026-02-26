---
name: lesson
description: Structure a Mandarin learning session on a specific topic or grammar point — 3-phase: input, explanation, practice.
argument-hint: "[topic or grammar point] [optional: learner level, learning style preference]"
---

# /lesson

A focused learning session on one topic or grammar point. Comprehensible input first, explicit explanation second, production practice third.

---

## Step 1: Define the session

**Clarify (if not provided):**
- Topic or grammar point (e.g., "measure words", "BA construction", "expressing time", "business small talk")
- Learner level (HSK equivalent or self-described)
- Session length (default: 20–30 minutes of focused study)
- Simplified or Traditional characters?

**From USER.md:** Current level, active learning goals, known gaps.

---

## Step 2: Structure the three-phase lesson

### Phase 1: Input exposure (40% of session)
Introduce the target language through examples before explaining rules. The brain acquires patterns from exposure; explanation helps consolidate, not initiate.

- 3–5 example sentences showing the target pattern in natural context
- All sentences: Chinese characters + pinyin + English
- Tone marks throughout (never omit even when they seem obvious — tone fossilisation starts early)
- Audio note: indicate where the learner should find/play native audio if possible

### Phase 2: Explicit explanation (30% of session)
Now explain the rule or concept with precision.
- Core rule in plain English (maximum 3 sentences)
- How it differs from the English equivalent (or why there's no equivalent)
- Common errors — what learners typically get wrong
- Exceptions or nuances (only what matters at this level; don't overload)

### Phase 3: Production practice (30% of session)
Active production consolidates passive understanding.
- 3 fill-in exercises (low pressure, structured)
- 1 translation task (English → Chinese using the target pattern)
- 1 open production prompt (describe something / answer a question using the pattern)

---

## Output

```
## Lesson: [Topic/Grammar Point]
**Level**: HSK X | **Time**: ~X minutes | **Characters**: Simplified/Traditional

---

### Phase 1: Input examples

[1] 我把书放在桌子上了。
    Wǒ bǎ shū fàng zài zhuōzi shàng le.
    I put the book on the table.

[2] [Example 2 with characters / pinyin / translation]

[3-5 more examples — varied contexts, increasing complexity]

---

### Phase 2: The rule

**In plain English**: [Maximum 3 sentences explaining the core pattern]

**How it differs from English**: [Specific contrast]

**Common errors**:
- ❌ [Wrong version] → ✅ [Correct version] | [Why]
- ❌ [Wrong version] → ✅ [Correct version]

**Nuance at this level**: [One key nuance worth knowing; skip advanced complications]

---

### Phase 3: Practice

**Fill in the blank** (use the target pattern):

1. 我 ___ 钱包 ___ 包里了。(bǎ / fàng) → ____________
2. [Exercise 2]
3. [Exercise 3]

**Translate into Chinese** (using today's pattern):
"She moved the chairs into the meeting room."
→ ____________

**Speak / write freely**:
Describe what you did this morning using [pattern]. 2–3 sentences minimum.
→ [Your answer]

---

### SRS sentence (add to Anki)
Front: 她把电脑放在桌子上了。(Tā bǎ diànnǎo fàng zài zhuōzi shàng le.)
Back: She put the laptop on the table. | Pattern: bǎ = pre-verbal object marker
```

---

## Escalation / edge cases

If the learner attempts the practice and produces errors: correct with explanation (don't just give the right answer), classify the error type (tone / character / grammar / word order), and generate one additional reinforcement example targeting that specific error.
