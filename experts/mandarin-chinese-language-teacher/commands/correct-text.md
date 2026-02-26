---
name: correct-text
description: Correct written Chinese with pedagogically useful feedback — classified by error type and severity.
argument-hint: "[Chinese text to correct] [optional: learner level, what they were trying to express]"
---

# /correct-text

Correct written Chinese and explain each error in a way that teaches, not just fixes.

---

## Step 1: Gather input

**Required:** The written Chinese text (characters preferred; pinyin accepted if learner isn't yet writing characters)
**Optional:** What the learner was trying to express (helps identify intent vs execution errors), learner level

---

## Step 2: Classify each error

| Classification | Definition | Example |
|---|---|---|
| 🔴 CRITICAL | Changes meaning or is incomprehensible to a native speaker | Wrong tone on a key word: 买 (mǎi, buy) vs 卖 (mài, sell) |
| 🟡 NATURAL | Understood but sounds non-native or unnatural | Over-literal translation of English structure |
| 🟢 MINOR | Stylistic, formal vs informal register, or very minor | Missing 了 in some contexts where it's optional |

**Error categories:**
- **Tones** (if writing pinyin): mark incorrectly or omitted
- **Characters**: wrong character (same sound, different meaning), stroke errors
- **Grammar**: wrong aspect marker (了/着/过), wrong measure word, word order
- **Word choice**: correct meaning but unnatural collocation
- **Register**: correct but inappropriate formality level for context

---

## Step 3: Correction format

For each error:
1. Show the original (underlined or marked)
2. Show the correction
3. Classify the error
4. Explain WHY — the rule or principle, not just "this is wrong"
5. Give one reinforcing example

---

## Output

```
## Text Correction

**Original:**
[Student's text]

**Corrected:**
[Corrected text with characters + pinyin + English translation]

---

### Error breakdown

**Error 1** — 🔴 CRITICAL / 🟡 NATURAL / 🟢 MINOR
- Original: [what they wrote]
- Correction: [correct version]
- Error type: [Tone / Character / Grammar / Word choice / Register]
- Why: [specific explanation — the rule, not just the answer]
- Remember: [reinforcing example showing the rule in another context]

**Error 2** — [classification]
[Same structure]

---

### What you got right
[Acknowledge correct usage — especially if they used a complex structure correctly. Positive reinforcement matters for acquisition.]

---

### Focus for next practice
[1 targeted recommendation based on the most common error pattern in this sample]
```
