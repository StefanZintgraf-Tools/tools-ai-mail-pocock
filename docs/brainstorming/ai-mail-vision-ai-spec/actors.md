# Actors & personas

Whose point of view each use-case is told from. Codes appear in the **Actor**
column of [uc-index.md](uc-index.md). **Actors** are distinct *relationships to
the product* (they drive permissions, isolation, tenancy); **personas** are
flavours of an actor (they drive UX and tone, not architecture).

## Actor types

| Code | Actor | Description (relationship to the product) | Representative UCs |
|------|-------|-------------------------------------------|--------------------|
| **IND** | Individual user | Sole owner of one or more personal/work Accounts; full control. The default actor — most UCs are told from here. | UC1–UC42 (most), UC51–UC53, UC58, UC61–UC67 |
| **TM** | Team member | One of several people working a Shared inbox; handles or is assigned shared mail, can re-assign, signals presence. | UC43–UC46, UC49, UC50, UC54, UC55 |
| **MGR** | Manager / accountable owner | Answerable for a team's mail; sets autonomy levels & boundaries for the team and sees the oversight view (bounded by **INV10** — work, not surveillance). | UC48, UC57, UC59 |
| **PROT** | Protected party | A less-tech-savvy relative whose inbox an IND watches over *with consent* — delegated, scoped third-party access (e.g. watch-and-flag, not send). | UC30 |
| **PIC** | Pulled-in collaborator | A colleague granted *ephemeral, scoped* access to one Thread for a moment, then dropped back out. | UC56 |
| **EXT** | External correspondent | Customers, suppliers, leads, strangers the assistant deals with *on the user's behalf*; **no account, no access**. Shapes doorkeeper / scam / reply behaviour. | UC15, UC21, UC43, UC60, UC64 |

> **Paired role:** the *guardian* who watches over a **PROT** inbox is simply an
> **IND** extending their reach — no separate actor. The new relationship the
> product must model is the protected inbox and its consent/scope, not the guardian.

## Personas (mostly flavours of IND)

- **The overwhelmed** — never caught up; inbox lives rent-free. (UC1, UC11)
- **The life-admin juggler** — bills, kids' school, renewals, parcels. (UC3, UC4)
- **The anxious / tech-wary** — email is stressful, screens intimidate, afraid to get it wrong. (UC39, UC40)
- **The control-wary** — won't hand the wheel to an AI; needs to stay in charge and see the reasoning. (UC2, UC12, UC24, UC41)
- **The relationship-keeper** — wants to be warm; never miss a birthday or thank-you. (UC14, UC33)
- **The solo professional** — leads, clients, invoices, money-traps; an IND wearing a business hat. (UC15, UC20, UC60)
- **The multilingual correspondent** — mail spans several languages. (UC42)
- **The new hire** — a flavour of **TM** the manager keeps on a short leash (draft-but-never-send). (UC57; onboarded per the business press release)

## Notes for downstream design

- **Primary tenancy fault line: IND (single-user) vs. TM/MGR (team/shared).** This
  is the big context boundary — named in
  [subdomains-and-context-map.md](subdomains-and-context-map.md).
- **Two non-standard access patterns** need explicit consent + scope + revocation
  models, not plain team membership: **PROT** (delegated, standing) and **PIC**
  (ephemeral, single-thread).
- **INV10** fences MGR: the oversight view exposes work state, never staff behaviour.
- **INV11** fences IND-with-multiple-Accounts: personal/work isolation by default.
- **EXT** has no access; how they perceive the user is governed by **INV9**
  (acts-in-real-name).

> **Judgment calls (overridable):** the "accountable for audit" role (UC48) is
> folded into **MGR** rather than a separate compliance actor; **new hire** and
> **specialist** (UC50) are treated as flavours/states of **TM**, not their own codes.
