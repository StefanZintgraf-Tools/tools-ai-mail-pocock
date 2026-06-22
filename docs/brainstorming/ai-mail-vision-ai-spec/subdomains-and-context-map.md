# Subdomains & context map

Two pieces of **strategic-design** structure layered on the
[capability map](capability-map.md). This is the *strategic* layer only — **no
tactical patterns** (Aggregates, Entities, ports, consistency models); those
belong to the architecture phase this bundle feeds.

## Subdomain classification

Each capability tagged **Core** (the differentiating reason the product exists —
concentrate design effort), **Supporting** (needed, not differentiating — keep
simple), or **Generic** (a solved problem — prefer buy/adopt). This is a derived
*attention/investment* ordering, **not** MVP scoping; the vision stays
priority-free.

Core is split into two tiers: **Core-differentiating** (where the novel domain
modelling lives) and **Core-surface** (Core in importance, but table-stakes for
any AI-mail tool — they are great only *because* of Memory, not because the
mechanism is original).

| Capability | Class | Rationale | UCs |
|------------|-------|-----------|-----|
| CAP7 — Memory & Context | **Core — differentiating (keystone)** | The foundational differentiator; every proactive capability rides on it. Invest here first. | UC16, UC62, UC67 |
| CAP5 — Follow-ups & Relationship Care | **Core — differentiating** | Proactive relationship-tending — the "does the legwork, taps you only when it matters" signature. | UC14, UC15, UC33, UC34, UC37, UC61 |
| CAP6 — Deadlines & Resurfacing | **Core — differentiating** | Deriving obligations *from the mail itself* — proactive intelligence, not a reminder field. | UC3, UC4, UC6 |
| CAP9 — Fraud & Safety Guard | **Core — differentiating** | Know-your-normal scam detection a plain filter can't match; a headline promise. | UC28, UC29, UC30, UC31, UC32, UC65 |
| CAP10 — Situational Awareness & Insights | **Core — differentiating** | Surfacing what the user never knew to ask — proactive whole-picture watch. | UC20, UC58 |
| CAP13 — Autonomous Multi-step Handling | **Core — differentiating** | Carrying a negotiation to its finish — a signature differentiator. | UC21, UC64 |
| CAP12 — Trust, Transparency & Control | **Core — differentiating** (Generic plumbing inside) | The progressive-trust model is a stated pillar; the audit-log/permission *mechanics* underneath are Generic. | UC24, UC25, UC41, UC47, UC48, UC63 |
| CAP1 — Triage & Daily Briefing | **Core — surface** (Memory-elevated) | The primary surface and headline value, but expected of any AI-mail tool; elevated *by* Memory rather than novel alone. | UC1, UC11, UC12, UC13, UC60 |
| CAP3 — Search & Retrieval | **Core — surface** (Memory-elevated) | Cross-everything, memory-backed retrieval differentiates; plain keyword search would be Generic. | UC5, UC17, UC22, UC23, UC51, UC52, UC54, UC55 |
| CAP4 — Reply & Compose | **Core — surface** (Memory-elevated) | Drafting in the user's *voice* from Memory; generic draft-a-reply is table stakes. | UC2, UC9, UC10, UC36, UC42, UC43 |
| CAP2 — Organize & Declutter | **Supporting** | Valuable hygiene; not the differentiator. | UC7, UC38, UC53 |
| CAP8 — Archive Taming | **Supporting** | High-value but rides on Memory/Search; largely one-off. | UC18, UC19 |
| CAP11 — Reach & Access | **Supporting** (NL interface partly Generic) | Enabler; multi-account/channel reach + a plain-language interface. | UC26, UC27, UC35, UC39, UC40 |
| CAP14 — Team Collaboration & Oversight | **Supporting** | Extends the core intelligence to teams; rides on Memory/Triage. | UC44, UC45, UC46, UC49, UC50, UC56, UC57, UC59 |
| CAP15 — Cross-system Follow-through | **Supporting** (Generic integration plumbing) | The *deciding* is core-adjacent; the calendar/task/doc-store connectors are Generic. | UC8, UC66 |

**Investment ordering that falls out:** Memory (CAP7) first → the
Core-differentiating proactive cluster (CAP5, CAP6, CAP9, CAP10, CAP13) and the
trust pillar (CAP12) → the Core-surface caps (CAP1, CAP3, CAP4) → Supporting caps
and Generic plumbing last.

## Context-map relationships

Each actor/external boundary named with DDD's vocabulary — **Partnership, Shared
Kernel, Customer/Supplier, Conformist, Anticorruption Layer (ACL), Open Host
Service, Published Language, Separate Ways** — with who owns the language and
whether translation is needed.

| Boundary | Relationship | Who owns the language | Translation needed? | UCs |
|----------|--------------|-----------------------|---------------------|-----|
| Personal (IND) ↔ Team (TM/MGR) | **Shared Kernel** | Shared core model (Message/Thread/Contact/Memory); Team *extends* it | Low — same model; *data* isolated per INV11, model shared | UC26, UC44, UC45, UC46, UC54, UC57, UC59 |
| Product ↔ External mail provider | **Conformist + ACL** | Provider (Gmail/Graph/IMAP) | Yes — wrap provider payloads → clean Message/Thread model | UC26, UC27 |
| Product ↔ Chat providers | **Conformist + ACL** | Each provider (WhatsApp/Telegram/…) | Yes — per-provider connector → unified Message | UC34, UC35, UC51 |
| Product ↔ Cross-system targets (calendar / tasks / doc store / files) | **Conformist + ACL** | External systems | Yes — per-integration adapter | UC8, UC55, UC66 |
| MGR ↔ team work-state (oversight) | **Published Language** (curated projection) | Team context publishes a *sanitized* work-state view | Yes — raw actions → work-state, stripping anything that would be staff-surveillance (**INV10**) | UC48, UC59 |
| Guardian (IND) ↔ Protected party (PROT) | **Customer/Supplier** (consent-gated) | Protected mailbox owns its data; guardian is downstream with consent | Yes — permission/scope translation (watch-and-flag, not act) | UC30 |
| Team ↔ Pulled-in collaborator (PIC) | **ACL / scoped view** | Team context owns the thread; PIC gets a minimal projection | Yes — redact to "only what they need," revoke on exit | UC56 |
| Product ↔ External correspondent (EXT) | **Conformist** (ordinary email semantics) | Standard mail world | Yes — assistant identity translated *away*; EXT sees only the human (**INV9**) | UC15, UC43, UC60, UC64 |

## Notes

- **The single keystone Core is CAP7 (Memory)** — nothing differentiating works
  without it (see day-one UC67). It is the first place to concentrate modelling.
- **The MGR-oversight boundary is the one most likely to be got wrong downstream.**
  The allowed view ("is the work healthy?") and the forbidden view ("is this person
  slacking?") are computed from *identical* raw data, so INV10 is not enforced by a
  permission check — it is a **deliberate translation that discards the
  surveillance-enabling detail by design**. Analogy: the manager sees a *Kanban
  board* (cards in columns — "waiting on customer", "overdue", "with the team"), never
  a *stopwatch* on each person. The Published Language is the board's vocabulary; the
  projection is what computes it while dropping per-person timing/behaviour.
- **Two non-standard access boundaries** (PROT consent-gated, PIC scoped/ephemeral)
  are real context relationships, not plain permissions — they carry explicit
  translation/redaction duties.

> **Judgment calls (overridable):** subdomain classes and the two-tier Core split
> are a *reading* of the vision — what counts as "differentiating" depends on the
> competitive frame (vs. a plain mail client almost everything is Core; vs. another
> AI-mail assistant the differentiators narrow to Memory, proactivity, trust, and
> know-your-normal safety). The context-map relationship *types* are likewise
> proposals for the architecture phase to confirm.
