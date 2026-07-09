# Subdomains & context map

Two pieces of **strategic-design** structure layered on the
[capability map](capability-map.md) (CAP1–CAP22) and the actor boundaries in
[actors.md](actors.md). This is the *strategic* layer only — **no tactical
patterns** (Aggregates, Entities, ports, consistency models), no tech/platform,
no MVP/phasing; those belong to the architecture phase this bundle feeds. Every
row cites ≥1 `UC`.

## Subdomain classification

Each capability tagged **Core** (the differentiating reason the product exists —
concentrate design effort), **Supporting** (needed, not differentiating — keep
simple), or **Generic** (a solved commodity — prefer buy/adopt). This is a
derived *attention/investment* ordering — where the product's differentiating
value concentrates — **not** MVP scoping or a build order; the vision stays
priority-free.

Core is read in two tiers: **Core — differentiating** (the caps the vision
*itself* names as its pillars and heart — the Memory keystone, the S3 anchor
watch, proactivity, trust, and know-your-normal safety — where the novel domain
modelling lives and where design effort concentrates first) and **Core —
surface** (the headline caps the vision treats as table stakes — Core in
*importance* and headline value, but differentiating only *because* they ride on
Memory and the source-agnostic watch, not because the mechanism is original). No *whole*
capability lands as Generic — the vision never enumerates auth/storage/OCR as
capabilities; Generic concerns live *inside* several capabilities (see "Where
Generic lives" below).

| Capability                                                  | Class                                                           | Rationale                                                                                                                                                                                                                                                                           | UCs                                                                 |
| ----------------------------------------------------------- | --------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------- |
| CAP7 — Memory, Context & Identity Resolution                | **Core — differentiating (keystone)**                           | The foundational differentiator: the learned model and one-Contact-across-all-sources that every proactive capability rides on. Nothing differentiating works without it. Invest here first.                                                                                        | UC16, UC62                                                          |
| CAP6 — Deadlines, Obligations & the Silent Watch            | **Core — differentiating (S3 anchor)**                          | Holding standing *Obligations* and deriving due dates *from the item itself*, whether or not a message arrived — the anchor's core watch, exposed as an inspectable *Watch*.                                                                                                        | UC3, UC4, UC6, UC96, UC99, UC100, UC101, UC103, UC104, UC111, UC114 |
| CAP21 — Portal & Silent-Channel Reach                       | **Core — differentiating (S3 anchor)**                          | Reaching silent *Portals* that never send anything and closing the gap at the source — a distinct anchor mechanism (reach-a-portal) no plain inbox tool has.                                                                                                                        | UC97, UC105, UC113                                                  |
| CAP22 — World-Watch & Entitlements                          | **Core — differentiating (S3 anchor)**                          | Watching the world for *World events* and surfacing *Entitlements* before the silent clock runs out — the anchor's watch-the-world mechanism.                                                                                                                                       | UC80, UC98                                                          |
| CAP13 — Autonomous Multi-step Errands                       | **Core — differentiating**                                      | Carrying an *Errand* across rounds to its finish — negotiate, chase, call, pay-once-okayed, finish the silent obligation — a signature "does the legwork" differentiator (and the anchor's finish-the-errand mechanism).                                                            | UC21, UC64, UC71, UC73, UC78, UC102                                 |
| CAP5 — Follow-ups & Relationship Care                       | **Core — differentiating**                                      | Noticing cooling *Threads*, *Waiting-on*, and the user's own *Commitments*, and *Nudging* before a relationship or lead dies — the proactive "taps you only when it matters" signature.                                                                                             | UC14, UC15, UC33, UC34, UC37, UC61, UC90                            |
| CAP9 — Fraud, Safety & Provenance Guard                     | **Core — differentiating**                                      | Know-your-*normal* threat detection a plain filter can't match, urgent-money-trap slowing, and *Provenance* both ways — a headline promise, non-destructive by INV2.                                                                                                                | UC28, UC29, UC30, UC31, UC32, UC65, UC75, UC77, UC110               |
| CAP10 — Situational Awareness & Insights                    | **Core — differentiating**                                      | Surfacing what the user never knew to ask and one honest cross-system picture of what's open — proactive whole-picture watch, not a report.                                                                                                                                         | UC20, UC58, UC93, UC106                                             |
| CAP12 — Trust, Transparency, Autonomy & Control             | **Core — differentiating** (Generic plumbing inside)            | The progressive-trust / *Autonomy level* / *Standing instruction* / show-everything model is a stated pillar and the control surface the proactive caps depend on; the permission/log *mechanics* underneath are Generic.                                                           | UC24, UC25, UC41, UC47, UC63                                        |
| CAP1 — Triage, Briefing & the Honest Done                   | **Core — surface** (Memory-elevated)                            | The primary surface and headline value — *Briefing*, *No-action*, the *earned* Done, doorkeeper, group-chat firehose — but expected of any AI-mail tool; differentiating *because* of Memory + INV13, not novel alone.                                                              | UC1, UC11, UC12, UC13, UC60, UC88, UC89, UC91, UC112                |
| CAP3 — Search & Retrieval                                   | **Core — surface** (Memory-elevated)                            | Cross-everything, memory-backed retrieval (mail + *Archive* + chat + shared + files) differentiates; plain keyword search would be Generic.                                                                                                                                         | UC5, UC17, UC22, UC23, UC51, UC52, UC54, UC55                       |
| CAP4 — Reply, Compose & Produce                             | **Core — surface** (Memory-elevated)                            | Drafting in the user's *voice* from Memory and producing the finished *Document* the mail asks for; generic draft-a-reply is table stakes.                                                                                                                                          | UC2, UC9, UC10, UC36, UC42, UC43, UC85, UC92                        |
| CAP2 — Organize, File & Declutter                           | **Supporting**                                                  | Valuable hygiene (*Filing*, dedupe, unsubscribe-at-source), all approval-gated; not the differentiator.                                                                                                                                                                             | UC7, UC38, UC53                                                     |
| CAP8 — Archive Onboarding & Taming                          | **Supporting**                                                  | High-value and the day-one seed for Memory, but rides on Memory/Search and is largely one-off.                                                                                                                                                                                      | UC18, UC19, UC67                                                    |
| CAP11 — Multi-channel Reach, Access & Continuity            | **Supporting** (channel reach + continuity; connectors Generic) | Enabler for INV13 breadth and one-live-picture continuity (INV14); the per-provider connectors underneath are Generic.                                                                                                                                                              | UC26, UC27, UC35, UC94, UC95, UC107, UC108, UC109                   |
| CAP14 — Team & Shared-Inbox Collaboration & Oversight       | **Supporting**                                                  | Extends the core intelligence to a *Shared inbox* and the manager view; rides on Memory/Triage, fenced by INV10/INV11.                                                                                                                                                              | UC44, UC45, UC46, UC49, UC50, UC56, UC57, UC59                      |
| CAP15 — Cross-system Follow-through & System-of-Record Sync | **Supporting** (Generic integration plumbing)                   | The *deciding* what-goes-where is core-adjacent; the calendar/task/doc-store/CRM connectors are Generic, write-backs gated by INV1.                                                                                                                                                 | UC8, UC66, UC115                                                    |
| CAP16 — Delegation, Stewardship & Handover                  | **Supporting**                                                  | Extends the assistant across more than one principal under bounded authority (household, guardianship, role handover) — rides on Memory + the INV12 authority model; the emotional weight is high but the mechanism is an access/relationship extension, not a novel domain engine. | UC68, UC69, UC70, UC72, UC74                                        |
| CAP17 — Accessible & Conversational Access                  | **Supporting** (NL/voice interface partly Generic)              | Meeting users who can't/won't work a conventional inbox is essential reach; the speech/NL interface mechanics are increasingly commodity.                                                                                                                                           | UC39, UC40, UC86                                                    |
| CAP18 — Compliance, Legal & Deployment Boundaries           | **Supporting** (Generic mechanics inside)                       | Enterprise-gating obligations — *Action record* audit, legal hold, within-walls, outbound governance; the retention/e-discovery/deployment *mechanics* are largely commodity, the defensibility is the value.                                                                       | UC48, UC81, UC82, UC84                                              |
| CAP19 — Extensibility & Custom Rules                        | **Supporting**                                                  | The specialist *Extension* platform and plain-words *Standing instructions* broaden reach without one company building everything; a platform enabler, INV12-bounded.                                                                                                               | UC79, UC83                                                          |
| CAP20 — Omni-format Capture                                 | **Supporting** (OCR/transcription Generic)                      | Feeds INV13's no-free-pass breadth (paper, voice, video); the OCR/ASR/transcription mechanics are commodity — the value is routing the result into the same handling.                                                                                                               | UC76, UC87                                                          |

**Where Generic lives (inside the caps above, prefer buy/adopt):** per-provider
mail/chat **connectors** (CAP11, CAP20), calendar/task/doc-store/CRM **connectors**
(CAP15), the permission-store / **audit-log** and retention/e-discovery
**mechanics** (CAP12, CAP18), **OCR/ASR/transcription** (CAP20), and the
**speech/NL** interface plumbing (CAP17, CAP11). These are strategically framed
as commodity: buy or adopt, don't invent.

**Investment ordering that falls out:** Memory (CAP7) first → the anchor watch
(CAP6, CAP21, CAP22) and the differentiating proactive cluster (CAP5, CAP9,
CAP10, CAP13) + the trust pillar (CAP12) → the Core-surface caps (CAP1, CAP3,
CAP4) → Supporting caps, with their Generic sub-components bought/adopted rather
than built.

## Context-map relationships

Each actor/external boundary (from [actors.md](actors.md)) named with DDD's
fixed vocabulary — **Partnership, Shared Kernel, Customer/Supplier, Conformist,
Anticorruption Layer (ACL), Open Host Service, Published Language, Separate
Ways** — with who owns the language and whether translation is needed.

**Pattern legend** (DDD context-mapping vocabulary, Evans, *Domain-Driven
Design* Part IV / Ch. 14) — one line per relationship pattern used as a tag
above:

- **Partnership** — two contexts rise or fall together, coordinating planning and evolving their models jointly.
- **Shared Kernel** — an explicitly shared subset of the model both contexts co-own and change only by mutual consent.
- **Customer/Supplier** — upstream owns the language but commits to the downstream's needs in its planning; downstream negotiates, not dictates.
- **Conformist** — the downstream adopts the upstream's model wholesale, with no translation layer.
- **Anticorruption Layer (ACL)** — the downstream builds a translation layer so the upstream's model never enters its own.
- **Open Host Service** — a context publishes a stable, documented protocol that many consumers integrate against on equal terms.
- **Published Language** — a shared, well-documented interchange language both sides translate to and from.
- **Separate Ways** — the contexts are deliberately left unintegrated, with no model connection between them.

| Boundary                                                          | Relationship                                                      | Who owns the language                                                                                 | Translation needed?                                                                                                        | UCs                                      |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------- |
| Personal (IND) ↔ Team/employer context (ORG · STAFF/MGR/TM)       | **Shared Kernel**                                                 | Shared core model (Message/Thread/Contact/Memory/Open item); the team context *extends* it            | Low — same model; *data* hard-isolated per INV11, model shared                                                             | UC26, UC44, UC45, UC46, UC54, UC57, UC59 |
| STAFF personal correspondence ↔ ORG-owned mail (at exit/handover) | **Separate Ways** (with a fair-separation extraction)             | Each side owns its own sphere; deliberately not mixed                                                 | Yes — a one-time controlled separation splits personal from the firm's, fair to both (INV11)                               | UC68, UC69, UC70                         |
| MGR ↔ team work-state (oversight)                                 | **Published Language** (curated projection)                       | The team context publishes a *sanitized* work-state vocabulary                                        | Yes — raw actions → work-state (a "board", not a "stopwatch"), dropping anything surveillance-enabling (INV10)             | UC48, UC59                               |
| Delegate/guardian (DLG) ↔ Protected party (PROT)                  | **Customer/Supplier** (consent-gated, upstream = PROT)            | The PROT domain owns its data and sets the ceiling; DLG is downstream, bounded by conferred authority | Yes — permission/scope translation; acts only within INV12's granted authority                                             | UC30, UC72, UC100                        |
| Household co-principals (HH ↔ HH)                                 | **Partnership**                                                   | Joint language over the shared admin domain; each keeps a private sphere                              | Low for the shared domain (one model, co-owned); private mail stays isolated (INV11)                                       | UC74                                     |
| Team ↔ Pulled-in collaborator (PIC)                               | **ACL** (scoped, ephemeral projection)                            | The team context owns the Thread; PIC gets a minimal view                                             | Yes — redact to "only what they need," isolation restored / revoked on exit (INV11, INV12)                                 | UC56                                     |
| Product ↔ External correspondent (EXT)                            | **Conformist** (ordinary mail/chat semantics)                     | The standard mail/chat world                                                                          | Yes — the assistant's identity is translated *away*; EXT sees only the real human (INV9)                                   | UC15, UC43, UC60, UC64, UC92, UC108      |
| Product ↔ EXT's *own* assistant (A2A negotiation)                 | **Conformist** today; **Published Language / Partnership** latent | No shared protocol exists yet — falls back to ordinary channels                                       | Yes — until a shared A2A *Published Language* emerges, each side translates to plain mail; provenance still governs (INV9) | UC71                                     |
| Product ↔ External mail provider (Gmail/Graph/IMAP)               | **ACL**                                                           | The provider (its API/payload shapes)                                                                 | Yes — wrap provider payloads → clean Email/Thread model; additive overlay, never migrating (INV7)                          | UC26, UC27, UC94                         |
| Product ↔ Chat providers (SYS)                                    | **ACL**                                                           | Each provider (WhatsApp/Telegram/…)                                                                   | Yes — per-provider connector → unified Message/Chat message                                                                | UC35, UC51, UC107, UC110                 |
| Product ↔ System of record (SYS: CRM / sales / support desk)      | **ACL** to read; **Customer/Supplier** to write                   | The external system owns its schema; we are the downstream customer on write                          | Yes — read into one picture; any committing write-back is translated and gated (INV1)                                      | UC106, UC115, UC73                       |
| Product ↔ Silent Portal (SYS)                                     | **ACL**                                                           | The portal (its login/page structure)                                                                 | Yes — translate a silent obligation into a Message/Obligation "as if it arrived"; granted & revocable (INV12)              | UC97, UC105, UC113                       |
| Product ↔ World-events feed (SYS)                                 | **ACL**                                                           | The external feed/source                                                                              | Yes — translate a raw happening into a *World event* / *Entitlement* on the *Watch* (INV13, INV4)                          | UC80, UC98                               |
| Product ↔ Omni-format sources (paper / voice / video)             | **ACL**                                                           | The inbound artefact's native form                                                                    | Yes — OCR/transcription translate into the same Message/Document model; no free pass by form (INV13)                       | UC76, UC87                               |
| Product ↔ specialist Extension                                    | **Open Host Service + Published Language**                        | The *product* publishes a stable extension language/contract; extensions conform to it                | Yes on the extension's side — it adapts to our published contract; reach bounded by INV12                                  | UC79, UC83                               |

## Notes

- **The single keystone Core is CAP7 (Memory).** Nothing differentiating works
  without it (day-one UC67 seeds it from CAP8); it is the first place to
  concentrate modelling.
- **The S3 anchor is four Core-differentiating caps, not one.** CAP6 (hold-a-due-
  date), CAP21 (reach-a-portal), CAP22 (watch-the-world), CAP13 (finish-the-
  errand) share INV13 + INV4 but are distinct mechanisms — kept split so the
  product's heart doesn't collapse into one undifferentiated "silent watch" blob.
- **The MGR-oversight boundary is the one most likely to be got wrong
  downstream.** The allowed view ("is the work healthy?") and the forbidden view
  ("is this person slacking?") are computed from *identical* raw data, so INV10 is
  not a permission check — it is a **deliberate translation that discards the
  surveillance-enabling detail by design** (a Kanban *board*, never a *stopwatch*).
  The Published Language is the board's vocabulary; the projection is what computes
  it while dropping per-person timing/behaviour.
- **Three non-standard access boundaries carry translation/redaction duties, not
  plain permissions:** DLG/PROT (consent-gated, authority-bounded), PIC
  (ephemeral, single-Thread, revoked on exit), and SYS (granted, revocable reach
  into portals / systems of record / feeds). All three are INV12 territory.
- **SYS is treated here as a set of context-map integration boundaries**, matching
  the actors.md judgment call that SYS strains the "whose POV" reading of an actor
  — it earns its place as a first-class access/integration boundary, not a
  point-of-view.

> **Judgment calls (overridable; candidates for decisions.md):**
> 
> - **No whole capability tagged Generic; Generic lives inside caps.** A reading —
>   the vision enumerates no standalone commodity capability. A reviewer could
>   instead promote CAP18's audit/retention mechanics or CAP20's OCR to a
>   standalone Generic capability. *(med)* Cites UC48, UC76, UC87.
> - **The two-tier Core split (differentiating vs. surface)** rests on the
>   vision's *own* emphasis, not on any competitor evaluation. Against a plain
>   mail client almost everything is Core, so that baseline can't do the sorting;
>   the split instead follows the caps the vision declares as its pillars/heart —
>   Memory, the anchor watch, proactivity, trust, and know-your-normal safety —
>   holding the headline surface caps (CAP1/CAP3/CAP4) as table stakes the vision
>   leans on but never casts as novel. No rival feature set was researched here;
>   actual competitive validation is a downstream task. *(med)* Cites UC16,
>   UC28, UC80, UC97.
> - **CAP16 (Delegation/Stewardship) tagged Supporting, not Core.** Emotionally
>   central to the vision (V13, V15) but reads as an access/relationship extension
>   riding on Memory + the INV12 authority model rather than a novel domain
>   engine. A reviewer could call the delegated-authority model itself Core. *(low)*
>   Cites UC72, UC74.
> - **A2A boundary (UC71) named Conformist-today / Published-Language-latent.** No
>   shared assistant-to-assistant protocol exists; whether this becomes a
>   Partnership or a Published Language is an architecture-phase call. *(low)*
>   Cites UC71.
> - **STAFF-personal ↔ ORG at exit named Separate Ways** (deliberate non-mixing
>   with a fair-separation extraction) rather than Customer/Supplier. The
>   separation event could instead be modelled as a supplier hand-off. *(low)*
>   Cites UC68, UC69, UC70.
> - The context-map relationship *types* are proposals for the architecture phase
>   to confirm; each carries explicit ownership/translation duties downstream.
