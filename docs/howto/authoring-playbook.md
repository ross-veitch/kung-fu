# Authoring a PLAYBOOK.md

How to write the organisation-level config layer for an Expert Plugin.

> **Tip**: You don't need to write `PLAYBOOK.md` by hand. Run `/onboard` after loading an expert and the agent will ask you the right questions and write the file automatically. This guide is for those who want to write or edit it directly.

---

## What PLAYBOOK.md is

`PLAYBOOK.md` is the file where generic expert knowledge becomes specific to your organisation. It answers: "given this expert's knowledge, how do we actually run things here?"

It lives in your private config overlay (`~/clawd/kung-fu-config/experts/[name]/PLAYBOOK.md`) — never in the shared repo. It's loaded silently on every session where that expert is active.

Think of it as briefing a new consultant before they start work: "here's our company, here's how we operate, here's what you need to know about us before you do anything."

---

## What goes in it

| Category | Examples |
|----------|---------|
| **Company context** | Company name, description, industry, size, key markets |
| **Tools** | CRM (Salesforce? HubSpot?), project management (JIRA? Linear?), comms (Slack? Teams?) |
| **Communication defaults** | Tone with board vs team, how to format summaries, preferred output length |
| **Standards and positions** | Risk tolerance, standard contract positions, approval thresholds |
| **What to avoid** | Things that don't apply to your context, common mistakes, off-limits topics |
| **Key people** | Names and roles of people the expert will need to reference |
| **Recurring context** | Company OKRs, current priorities, active projects the expert should know about |

---

## What does NOT go in it

- Personal preferences (→ `USER.md`)
- Personal account credentials (→ `USER.md`)
- Generic domain knowledge (→ `EXPERT.md`)
- Personality and tone (→ `SOUL.md`)

---

## Template

```markdown
# [Expert Name] — [Company Name] Playbook

## Company context
- **Company:** [Name] — [one-line description]
- **Industry:** [sector]
- **Stage/size:** [e.g. Series C, 500 employees]
- **Key markets:** [e.g. MENA, Southeast Asia]

## Tools we use
- **Calendar/email:** [e.g. Google Workspace]
- **Project management:** [e.g. JIRA at jira.company.com]
- **CRM:** [e.g. Salesforce]
- **Documents:** [e.g. Google Drive, Confluence]
- **Communication:** [e.g. Slack — workspace company.slack.com]

## Communication standards
- [e.g. Briefings to the CEO: max 1 page, bullet format, decisions upfront]
- [e.g. External emails: formal tone, signed off by sender's full name and title]
- [e.g. Slack updates: concise, action items bolded, tagged owner]

## Standards and defaults
- [e.g. Reporting currency: USD]
- [e.g. Financial model base case: conservative assumptions]
- [e.g. All contracts reviewed by outside counsel before signing above $50K]

## What to avoid
- [e.g. Don't recommend tools that require Windows — team is all Mac/Linux]
- [e.g. Don't reference competitors by name in external documents]

## Key people to know
- **[Role]:** [Name] — [brief context]
- **[Role]:** [Name] — [brief context]

## Current priorities (update as needed)
- [e.g. Q1 2026: expand into Saudi Arabia — all strategy work should consider this]
- [e.g. Fundraising: Series D process underway — sensitivity around financials]
```

---

## Wego-specific example (Executive Assistant)

```markdown
# Executive Assistant — Wego Playbook

## Company context
- **Company:** Wego — MENA-focused travel marketplace (flights, hotels, deals)
- **Products:** Wego consumer (B2C), WegoPro (B2B travel management), WegoBeds (B2B hotel distribution)
- **Size:** ~526 employees
- **Key markets:** Saudi Arabia, UAE, Egypt + broader MENA

## Tools
- **Calendar/email:** Google Workspace (your-email@company.com)
- **Project management:** JIRA (wegomushi.atlassian.net)
- **CRM:** [tbc]
- **Docs:** Google Drive (share with your-email@company.com)
- **Comms:** Slack

## Communication style
- Ross's preference: brief and direct. Get to the point first.
- Board materials: executive summary + key decisions up front, data in appendix
- External: formal but not stiff

## Defaults
- Timezone: Asia/Singapore (primary), Asia/Dubai (secondary)
- Flights: home airport SIN; preferred airlines Singapore Airlines, Emirates
- Calendar: block focus time mornings where possible

## What to avoid
- Don't schedule meetings before 9am SGT or after 6pm SGT without checking first
- Don't CC anyone on emails without an explicit ask
```

---

## When to create one

Create a `PLAYBOOK.md` the first time you use an expert in a context where org-specific defaults matter. You don't need one to start using an expert — the expert will work without it. But any time you find yourself repeatedly giving the same context ("we use Google Workspace", "report in USD", "our main market is MENA"), that context belongs in `PLAYBOOK.md`.

---

## Review on first use

When you use an expert that has a `PLAYBOOK.md` for the first time, your agent will show you the full content and ask you to approve or edit it before proceeding. This is a one-time check. After approval, it loads silently on every subsequent session.

Reset the review flag if you update `PLAYBOOK.md` significantly:
```bash
# Reset review status (agent will show PLAYBOOK on next use)
node -e "
const fs = require('fs');
const f = process.env.HOME + '/clawd/kung-fu-config/data/playbook-reviewed.json';
const d = JSON.parse(fs.readFileSync(f, 'utf8'));
delete d['executive-assistant'];  // replace with your expert name
fs.writeFileSync(f, JSON.stringify(d, null, 2));
"
```

---

## Keeping it current

PLAYBOOK.md is a living document. Update it when:
- Org tools change (new CRM, new project management tool)
- Priorities shift (new market, fundraising, restructuring)
- Key people change roles
- You notice the expert making the same wrong assumption repeatedly

Small updates, often. The alternative is a stale PLAYBOOK that subtly misdirects every session.
