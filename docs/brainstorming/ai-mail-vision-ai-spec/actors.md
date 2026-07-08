# Actors & personas

Whose point of view each use-case is told from, and — more load-bearing — the
distinct *relationships to the product* that draw the tenancy, ownership, and
authority boundaries the build must model. Codes appear in the **Actor** column of
[uc-index.md](uc-index.md).

- **Actor types** are genuine **permission / authority / tenancy boundaries** — who
  owns a domain, who may act within it, and how far. They drive isolation and
  access control, and they are what make [invariants.md](invariants.md)'s boundary
  rules (INV10, INV11, INV12) *expressible*.
- **Personas** are UX flavours of an actor — the busy exec, the sole trader, the
  overwhelmed employee. They shape tone and surface, **not** architecture, and carry
  no permission logic. Listed separately below.

## Actor types

The set has three layers: **principals** who own or co-own a domain (IND, ORG,
PROT, HH), **roles within the employer tenant** (STAFF, MGR, TM), and
**scoped-access relationships** onto someone else's domain or an outside boundary
(DLG, PIC, EXT, SYS).

### Principals — own a domain

| Code     | Actor                                  | Relationship to the product (the boundary it draws)                                                                                                                                                                                                                                                                                                                 | Makes expressible                                                                                                                                                                  | Representative UCs                                                                           |
| -------- | -------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- |
| **IND**  | Individual principal                   | Owns their own personal domain — one or more personal Accounts and (as a sole trader) their own business mail; full, unshared control. The default actor; most UCs are told from here.                                                                                                                                                                              | INV11 (personal↔personal Account isolation), INV6/INV7 (ownership, additive), INV1 (own approval gate)                                                                             | UC1–UC42 (most), UC51–UC53, UC58, UC61–UC67, UC84, UC86, UC88–UC99, UC102–UC104, UC109–UC114 |
| **ORG**  | Organisation / employer tenant         | The company as a **distinct principal** — owns the company's Accounts, Memory, systems of record, and the Action record; the assistant works *for it*. The tenant boundary staff operate inside; the owner of what a leaver must leave behind. Introduced by the enterprise/B2B reach.                                                                              | **INV10** (serves the company, never staff surveillance), INV5 (auditable record), INV15 (within-walls), INV11 (company mail is the firm's, separable from staff personal on exit) | V26, V32; UC48, UC79, UC81                                                                   |
| **PROT** | Delegating principal / protected party | A person on whose behalf authority is exercised because they can't (fully) manage their own mail — a watched-over relative, someone slipping into illness, a deceased's estate, or anyone who has formally conferred authority. Their inbox is a *separate domain* acted in under consent/scope, never absorbed into the delegate's.                                | **INV12** (the conferred authority bounds what may be done for them), INV11 (their domain stays isolated from the delegate's own)                                                  | V13; UC30, UC72, UC100                                                                       |
| **HH**   | Household co-principal                 | One of two-or-more people sharing a **single assistant over a common personal domain** — the household's shared admin (bills, kids' school, renewals) handled between them, while each keeps their own private Account isolated and controls what is shared. A shared-domain tenancy pattern distinct from IND (sole owner) and from ORG (an employer, not a peer). | **INV11** (household-shared ↔ private isolation; joined only by opt-in), INV1 (each co-principal still gates their own)                                                            | V14; UC74                                                                                    |

### Roles within the employer tenant (ORG)

| Code      | Actor                          | Relationship to the product (the boundary it draws)                                                                                                                                                                                                                                                            | Makes expressible                                                                                                              | Representative UCs                                            |
| --------- | ------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------- |
| **STAFF** | Staff member under an employer | Works an **employer-owned** work Account: their authority is *granted by the ORG*, not owned outright, and their personal correspondence is separable from the employer's on exit. This is the staff-vs-employer boundary the enterprise scope introduces — distinct from IND, who owns their domain outright. | **INV11** (fair personal↔employer separation on exit/handover), INV8 (autonomy the manager grants them)                        | UC49, UC50, UC54, UC55, UC68, UC69, UC70, UC106, UC107, UC115 |
| **MGR**   | Manager / accountable owner    | A STAFF member vested with **authority to set the boundary for others** — autonomy levels per person and per account — and to see the team oversight view; also the one answerable for audit and legal demands.                                                                                                | **INV10** (oversight shows work state, never staff behaviour), INV8 (sets others' autonomy), INV5 (accountable for the record) | UC48, UC57, UC59                                              |
| **TM**    | Team member on a shared inbox  | One of several people working a **Shared inbox**: handles or is assigned shared mail, can re-assign, signals presence, gets work routed when a colleague is away. A collaboration permission pattern distinct from plain STAFF (which needn't share an inbox).                                                 | INV11 (shared-vs-private separation), INV3 (leave in the common pile when unsure)                                              | UC43–UC46, UC49, UC50, UC54, UC55, UC107                      |

### Scoped access onto another domain or an outside boundary

| Code    | Actor                       | Relationship to the product (the boundary it draws)                                                                                                                                                                                                                                                                                                                                        | Makes expressible                                                                                                                                                    | Representative UCs                        |
| ------- | --------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------- |
| **DLG** | Delegate / authorised agent | The person **exercising** delegated or guardianship authority over a PROT's domain — the guardian, executor, attorney, or watching relative — acting *strictly within the authority actually conferred*. Split out from IND (the old bundle folded the guardian into IND); the enterprise/delegated-authority scope makes the conferred-authority ceiling a real least-privilege boundary. | **INV12** (never wanders beyond the conferred authority), INV1 (still gated within that authority), INV11 (the delegate's own mail stays separate from the PROT's)   | UC72, UC100                               |
| **PIC** | Pulled-in collaborator      | A colleague granted **ephemeral, single-Thread** access — brought up to speed on only what they need, then dropped back out. A momentary scoped grant, not team membership.                                                                                                                                                                                                                | INV11 (sees only this Thread, isolation restored on exit), INV12 (scoped, revocable reach)                                                                           | UC56                                      |
| **EXT** | External counterparty       | Customers, suppliers, leads, strangers, and their own assistants that the product deals with *on the user's behalf* — **no Account, no access**. Shapes doorkeeper, scam, reply, and assistant-to-assistant behaviour; how they perceive the user is governed by INV9.                                                                                                                     | **INV9** (every reply goes out in the real person's name), INV12 (they get no reach into the user's domain)                                                          | UC15, UC43, UC60, UC64, UC71, UC92, UC108 |
| **SYS** | Outside system / portal     | A non-human external boundary the assistant **reaches into** under an explicit, revocable grant — a silent Portal, a system of record (CRM / sales pipeline / support desk), a world-events feed. Not a point-of-view actor; included because the enterprise reach makes it a first-class access/integration boundary the tenancy model must bound.                                        | **INV12** (only what the user opened, revocable in a click, no ambient reach), INV1 (any committing write-back stays gated), INV4 (the watch over it is inspectable) | UC80, UC97, UC105, UC106, UC113, UC115    |

> **Paired roles.** The *guardian/executor* (**DLG**) and the *protected/delegating
> party* (**PROT**) are two ends of one delegated-authority relationship — kept as
> two codes because the authority ceiling (INV12) and the domain isolation (INV11)
> bind the two ends differently. Likewise **ORG** (the tenant that owns the domain)
> and **STAFF/MGR/TM** (who act within it) are two ends of the employer relationship.

## Personas (UX flavours — no permission logic)

Flavours of **IND** unless noted; names only.

- The overwhelmed
- The life-admin juggler
- The anxious / tech-wary
- The control-wary
- The relationship-keeper
- The sole trader / solo professional *(IND wearing a business hat)*
- The multilingual correspondent
- The grieving *(hard-season IND)*
- The returning-from-absence *(hard-season IND)*
- The job-seeker
- The creator with an audience
- The accessibility-first user *(reaches mail entirely by voice/assistive means)*
- The busy exec *(flavour of MGR/STAFF)*
- The overwhelmed employee / customer-facing agent *(flavour of STAFF)*
- The new hire *(flavour of STAFF, newly onboarded)* — the "short leash" is an
  Autonomy level (INV8) an MGR sets on this STAFF, not a persona trait
- The specialist / escalation target *(flavour of STAFF)*

## Notes for downstream design

- **Two primary tenancy fault lines.** (1) **IND (owns their own domain) vs. ORG
  (the employer owns the domain the STAFF work in)** — the personal-vs-employer
  boundary, the big enterprise context split, fenced by **INV11** and **INV10**.
  (2) **A principal's own domain vs. a domain acted in under conferred authority**
  (PROT ↔ DLG) — fenced by **INV12**. Both are named in
  [subdomains-and-context-map.md](subdomains-and-context-map.md).
- **Three non-standard access patterns** need explicit consent + scope + revocation
  models, not plain membership: **DLG/PROT** (delegated, standing, authority-bounded),
  **PIC** (ephemeral, single-Thread), and **SYS** (granted reach into portals /
  systems of record). All three are INV12 territory.
- **INV10 fences ORG/MGR:** oversight views expose work state and the assistant's own
  actions, never staff behaviour — the record is an account of the *assistant*, not a
  way to watch employees (UC48, UC59).
- **INV11 fences IND-with-multiple-Accounts** (personal↔work isolation by default),
  **the STAFF exit** (personal correspondence separable from the employer's,
  fairly to both sides — UC69), **and the HH shared domain** (household-shared
  separable from each co-principal's private mail — UC74).
- **EXT has no access;** how they perceive the user is governed entirely by **INV9**
  (acts-in-real-name), including when an EXT's own assistant negotiates with ours (UC71).

> **Judgment calls (overridable; candidates for decisions.md):**
> 
> - **SYS as an actor vs. a context-map boundary.** An outside system/portal has no
>   point of view, so it strains the "whose POV" reading of an actor. Included here
>   because the enterprise reach makes it a first-class *access/tenancy boundary*
>   (INV12) — but it could instead live purely in
>   [subdomains-and-context-map.md](subdomains-and-context-map.md) as an integration
>   boundary. **Confidence: low.** Cites UC97, UC106, UC113, UC115.
> - **STAFF split from IND / ORG introduced as its own actor.** The prior bundle had
>   a single IND owning "personal/work Accounts" and no employer tenant. The current
>   enterprise scope (V26 the mail is the firm's; INV11 exit separation; INV10) makes
>   the employer a distinct principal and the staff member a distinct
>   grant-bounded role — so IND is narrowed to *own-domain* owners and STAFF/ORG are
>   added. **Confidence: medium.** Cites V26, V32; UC68, UC69, UC70.
> - **DLG split out from IND.** The old bundle folded the guardian into IND ("an IND
>   extending their reach"); the sharpened delegated-authority scope (UC72 formal
>   authority, UC100, INV12) makes the conferred-authority ceiling a real
>   least-privilege boundary, so the acting delegate is now its own code. **Confidence:
>   medium.** Cites V13; UC72, UC100.
> - **STAFF / MGR / TM kept as three codes** rather than one "employee" actor with
>   attributes — they carry genuinely different permissions (MGR sets others' policy
>   and sees oversight; TM has shared-inbox mechanics; STAFF is plain). **Confidence:
>   medium.** Cites UC57, UC59, UC43–UC46.
> - **The "accountable for audit/legal" role** (UC48) is folded into **MGR**
>   rather than a separate compliance actor; **new hire** and **specialist** (UC50)
>   remain flavours/states of **STAFF**, not their own codes. **Confidence: medium.**
