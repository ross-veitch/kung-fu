# Compensation

How to build, benchmark, and manage compensation — base salary, equity, bonuses, and total comp philosophy.

---

## Comp philosophy

Every company needs an explicit comp philosophy. Without one, you'll have inconsistent pay decisions, pay equity issues, and retention problems.

**Key decisions**:
- **Market positioning**: What percentile do you target? 50th (market median), 75th (above market), 90th+ (top of market). Most tech companies target 50th–75th for base, 75th+ for total comp.
- **Pay mix**: What ratio of base : bonus : equity? Sales roles are heavily variable (50/50 OTE). Engineering roles are mostly base + equity with small or no bonus.
- **Geographic differentiation**: Do you pay the same everywhere, or adjust by location? Remote-era debate. Options: location-based (pay local market rates), zone-based (tier 1/2/3 cities), or location-agnostic (same pay everywhere). Most companies use location-based or zone-based.
- **Transparency**: Level of pay transparency. Ranges: from fully opaque (traditional) to published bands by level (Buffer, GitLab model). Trend is toward more transparency, driven by regulation (EU Pay Transparency Directive, US state laws).

---

## Comp bands

Structured salary ranges by level and function. Essential for consistency and defensibility.

**Structure**:
```
Level    Band Min    Midpoint    Band Max    Spread
IC3      $120K       $140K       $160K       ±14%
IC4      $150K       $175K       $200K       ±14%
IC5      $190K       $220K       $250K       ±14%
```

**Band spread**: Typically 20–30% from min to max. Wider bands for senior roles (more variation in experience and impact). Narrower bands for junior roles.

**Compa-ratio**: Individual salary / band midpoint. A compa-ratio of 1.0 = at midpoint. Below 0.85 or above 1.15 typically flags for review.

**When to update bands**: Annually at minimum, benchmarked against market data. Major market shifts (e.g., AI engineer salaries surging) may require mid-year updates for specific roles.

---

## Equity compensation

### Stock options

**ISOs (Incentive Stock Options)**: US-specific, favorable tax treatment for employees if holding period requirements met (1 year from exercise, 2 years from grant). Exercise price = FMV at grant date (based on 409A valuation for private companies).

**NSOs (Non-Qualified Stock Options)**: Taxed as ordinary income on the spread at exercise. Available to employees and non-employees.

**Standard vesting**: 4-year vest with 1-year cliff (25% vests after 12 months, remainder monthly or quarterly). Some companies moving to no-cliff vesting.

### RSUs (Restricted Stock Units)

A promise to deliver shares at a future date, subject to vesting. More common at later-stage and public companies. RSUs have value even if stock price drops (unlike options which can be underwater).

**Double-trigger RSUs** (private companies): Vest on time AND a liquidity event (IPO, acquisition). Protects employees from tax liability on illiquid stock.

### Equity refresh grants

Annual or bi-annual additional grants to retain employees whose initial grant is partially vested. Critical for retention — without refreshes, employees have a "cliff" where their unvested equity drops and departure becomes economically rational.

---

## Merit cycles

**Annual merit increase pool**: Typically 3–5% of total salary budget. Distributed based on performance ratings. High performers get 5–10%, average performers get 2–4%, low performers get 0%.

**Promotion increases**: Separate from merit. Promotions typically carry 10–15% salary increase. Some companies fund promotions from a separate pool to avoid cannibalizing merit budgets.

**Market adjustments**: Also separate from merit. Used when an employee's comp is below the band minimum for their level, or when market rates have shifted significantly. Should not require a promotion or exceptional performance — it's about paying fairly for the role.

---

## Benchmarking sources

| Source | Strengths | Cost |
|--------|-----------|------|
| Radford (Aon) | Gold standard for tech; used by most public tech companies | $$$$ |
| Mercer | Strongest for non-tech, financial services, traditional industries | $$$$ |
| Levels.fyi | Real-time, self-reported; strongest for US tech engineer comp | Free |
| Glassdoor / Payscale | Broad, self-reported; good for non-tech roles | Free / $ |
| Pave | Modern comp benchmarking for startups; integrates with HRIS | $$ |
| Option Impact | Equity benchmarking for private companies | $$$ |

**Benchmarking process**: Match roles (not titles) to survey data. Ensure consistent leveling (your "Senior Engineer" = their "Senior Engineer"). Use 50th or 75th percentile depending on comp philosophy. Update annually.

---

## Pay equity

The legal and ethical requirement that employees doing substantially similar work are paid equitably regardless of gender, race, or other protected characteristics.

**Pay equity audit**: Run annually. Compare compensation by gender, race/ethnicity, and other protected categories within each level and function. Control for legitimate factors (experience, performance rating, location). Flag unexplained gaps >5%.

**Remediation**: If gaps are found, adjust upward (don't decrease anyone's pay). Document the analysis and adjustments. Communicate transparently that the company runs equity audits.
