---
name: biometric-interpretation
description: >
  Wearable data interpretation: HRV, sleep, resting heart rate, readiness scores.
  Use when: reading Garmin/Oura/WHOOP data, what does my readiness score mean,
  interpreting HRV trends, comparing wearables, is my data normal, training load metrics.
---

# Biometric Interpretation

## Wearable platforms: capabilities and limitations

### Oura Ring
**Strengths**: Best-validated sleep staging via PPG (photoplethysmography); HRV measured throughout the night (multiple data points); discrete form factor. Most accurate of the consumer wearables for sleep and HRV.
**Readiness Score** (0–100): combines resting HR, HRV, body temperature, sleep quality, activity balance, and recovery index. Score > 85 = high readiness. 70–84 = moderate. < 70 = low.
**HRV method**: Average of the nocturnal HRV measurements. More stable than single morning readings.
**Limitations**: Daytime activity tracking is less accurate than wrist-based devices; no GPS; no exercise tracking.

### WHOOP
**Strengths**: Continuous 24/7 monitoring; explicit "strain" tracking calibrated to individual; good recovery model. No screen (encourages focus on data, not constant checking).
**Recovery Score**: Green (67–100%), Yellow (34–66%), Red (0–33%). Based on HRV, RHR, sleep performance, respiratory rate.
**Strain**: 0–21 scale measuring cardiovascular load of any activity. Allows daily strain calibration against individual baseline. Key insight: WHOOP's strain model accounts for ALL cardiovascular load throughout the day, not just formal exercise.
**Limitations**: Subscription required; HRV methodology (single morning value) is less stable than Oura's nocturnal average.

### Garmin (Forerunner, Fenix, epix)
**Strengths**: Best GPS accuracy; VO2 max estimation (Firstbeat algorithm — validated against lab testing, ~5% accuracy); Training Load and Training Status models; Body Battery.
**Body Battery** (0–100): energy reserve estimate based on HRV, stress, sleep, and activity. Practical indicator for session intensity decisions.
**Training Status**: Performance Condition, Training Load Focus, VO2 Max trend — sophisticated models for endurance athletes.
**HRV Status**: Available on newer models; 7-day rolling average vs. current measurement, with GREEN/YELLOW/RED classification.
**Limitations**: Sleep staging less accurate than Oura; HRV is single morning measurement.

### Apple Watch
**Strengths**: Ubiquitous; convenient for casual users; good optical HR accuracy during moderate exercise. ECG feature for AFib detection.
**Limitations**: Not optimised for serious athletes; no continuous HRV tracking; sleep tracking rudimentary; requires charging daily (interrupts sleep tracking).

---

## Key metrics and how to read them

### Resting Heart Rate (RHR)

**What it measures**: Baseline cardiovascular fitness and autonomic tone. Lower = generally fitter (elite endurance athletes often 35–45bpm; untrained 60–80bpm).

**How to use it**: Change over time is the signal, not the absolute value.
- Trending down over weeks = improving fitness
- Elevated 5+ bpm above 7-day average for 2–3 days = illness, stress, or overtraining
- Acutely elevated (single night) = often alcohol, poor sleep, or late evening exercise

### Heart Rate Variability (HRV)

See `skills/recovery/` for full HRV methodology. Summary for biometrics context:
- Read as a 7-day trend, not a single value
- Individual baselines vary enormously (20ms to 120ms is a normal range across people)
- Higher is generally better, but direction of change matters more than absolute value

### VO2 Max (estimated)

Garmin's estimate is derived from running pace vs. HR (Firstbeat algorithm). Reasonably accurate (±5%) for consistent runners; less accurate for cyclists without a power meter; inaccurate for beginners with high HR variability.

**Practical ranges** (ml/kg/min):
| Level | Male 40s | Female 40s |
|-------|----------|------------|
| Elite | > 55 | > 50 |
| Very good | 47–55 | 42–50 |
| Good | 41–46 | 36–41 |
| Average | 35–40 | 30–35 |
| Below average | < 35 | < 30 |

The jump from the bottom quintile to the second quintile has the largest mortality benefit of any VO2 max improvement.

### Training Load (Garmin / WHOOP Strain)

**Acute Training Load (ATL)**: 7-day rolling load. "Fitness fatigue" today.
**Chronic Training Load (CTL)**: 42-day rolling load. Long-term fitness baseline.
**Training Stress Balance (TSB)** = CTL - ATL. Positive = fresh. Negative = accumulated fatigue.

Good performance occurs in a TSB range of approximately -10 to +15. Very negative TSB = overtraining risk. Very positive TSB for too long = detraining.

### Respiratory Rate

Available on Oura, WHOOP, Garmin. Useful primarily as an **illness early warning signal**: respiratory rate rising 0.5–1.0 breaths/minute above normal often precedes symptoms of respiratory illness by 1–2 days.

---

## Common misinterpretations

**"My HRV was low today, should I skip training?"**
One data point means nothing. Compare to 7-day average. If HRV is modestly below average (YELLOW), reduce intensity but train. If significantly below (RED) or depressed for 3+ consecutive days (ESCALATE), reassess.

**"My VO2 max number didn't change after months of training"**
Wearable VO2 max estimates lag actual fitness changes by 4–6 weeks because they need consistent data. Also: VO2 max improves slowly in trained athletes. Gains of 1–3 ml/kg/min per year are meaningful at higher fitness levels.

**"WHOOP says my strain was high but it felt easy"**
WHOOP's strain includes ALL cardiovascular load — a stressful workday, lack of sleep, and alcohol all elevate strain score. "High strain, easy feeling" often means chronic cumulative load, not just exercise intensity.

**"My sleep score was 95 but I feel terrible"**
Wearables measure proxies. A high sleep score on a night of poor-quality sleep (multiple wake events the device didn't detect) is possible. Always weight subjective feel alongside objective data.

---

## Reading across devices: cross-platform principles

When a user has multiple wearables (Garmin + Oura is common):
- Use **Oura** for sleep and HRV (more accurate)
- Use **Garmin** for VO2 max, training load, GPS performance metrics
- Use **WHOOP** if cumulative daily strain tracking is the priority
- Do not average HRV across devices — measurement methodologies differ; pick one as the primary and ignore the other

See `references/` for: wearable accuracy comparison table, metric reference ranges by age/sex, HRV baseline-setting protocol, data interpretation flowcharts.
