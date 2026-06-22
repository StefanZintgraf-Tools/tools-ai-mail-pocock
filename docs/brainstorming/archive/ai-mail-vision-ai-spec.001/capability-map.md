# Capability map

The 67 use-cases clustered into 18 capabilities. Each UC has **one primary**
capability (listed here); notable secondary touches are noted in
[uc-index.md](uc-index.md). Cross-cutting needs (approval, privacy, autonomy…)
are **invariants**, not capabilities — see [invariants.md](invariants.md).

> Coverage: all 67 UCs are assigned a primary capability below. Terms in *italics*
> are defined in [glossary.md](glossary.md).

---

### CAP1 — Ask-anything retrieval
Natural-language search and Q&A across all *channels*, the *document store*, the
*knowledge base*, calendar, *shared inboxes*, and the deep archive — returned as
one connected picture, not scattered fragments.
- **UCs:** UC5, UC17, UC23, UC51, UC52, UC54, UC55
- **Key entities:** Message, Thread, Person, Channel, Document store, Knowledge base
- **Leans on:** INV5, INV7

### CAP2 — Triage, briefing & inbox state
Turns the undifferentiated pile into a short daily *Briefing*, a quiet *Set-aside*
for low-stakes noise, and an honest view of where every *Open thread* stands
(including the manager's whole-team view).
- **UCs:** UC1, UC11, UC13, UC58, UC59
- **Key entities:** Briefing, Set-aside, Open thread
- **Leans on:** INV2, INV5 (UC59 must not surveil staff)

### CAP3 — Drafting in your voice
Prepares *Drafts* in the user's *Voice* — the dreaded reply, the legwork-assembled
answer, the cold intro, the support answer from past mail + *knowledge base* —
each in the correct language, awaiting approval.
- **UCs:** UC2, UC9, UC10, UC36, UC42, UC43
- **Key entities:** Draft, Voice, Knowledge base
- **Leans on:** INV1, INV8

### CAP4 — Proactive watch & nudge
Stands watch and raises a *Nudge*: cooling relationships, slipping leads, *Commitments*
the user owes, replies others owe the user, and patterns/anomalies across the whole
pile.
- **UCs:** UC14, UC15, UC20, UC33, UC37, UC61
- **Key entities:** Nudge, Commitment, Person, Open thread
- **Leans on:** INV1, INV6

### CAP5 — Deadlines & resurfacing
Infers *Commitments* and due dates from the mail itself (no manual entry) and
resurfaces the right thing at the right moment, catching the costly life-admin miss
before it happens.
- **UCs:** UC3, UC4, UC6
- **Key entities:** Commitment, Message
- **Leans on:** INV1

### CAP6 — Fraud & money-trap defense
Knows the user's *normal* (real suppliers, contacts, patterns) to catch *Money-trap
flags* a spam filter misses, slows urgent-money pressure, protects watched-over
relatives, and explains its reasoning.
- **UCs:** UC28, UC29, UC30, UC31, UC32
- **Key entities:** Money-trap flag, Person, Set-aside
- **Leans on:** INV2, INV3

### CAP7 — Filing & document sync
Sorts mail into sensible places, files attachments into the *Document store*, links a
filed document back to its source *Message*, gathers a topic across scattered threads,
and offers to tidy duplicates.
- **UCs:** UC7, UC8, UC22, UC53
- **Key entities:** Document store, Message, Thread
- **Leans on:** INV1, INV2

### CAP8 — Scheduling & negotiation on your behalf
Carries a *Delegated exchange* to a result — set up a call, settle a date, chase a
quote across rounds — surfacing only for decisions and approval.
- **UCs:** UC21, UC64
- **Key entities:** Delegated exchange, Thread, Person
- **Leans on:** INV1, INV6

### CAP9 — Multi-channel reach
Brings the user's chat *Channels* under one assistant **by choice**, with the *walls*
the user sets, so the relationship picture and the calm home base both stay intact.
- **UCs:** UC34, UC35
- **Key entities:** Channel, Person
- **Leans on:** INV7

### CAP10 — Identity & relationship memory
Recognises that many addresses/apps are one *Person*, and maintains *Relationship
memory* across years and sources to keep nudges, drafts, and handoffs fully informed.
- **UCs:** UC16, UC62
- **Key entities:** Person, Relationship memory
- **Leans on:** INV5

### CAP11 — Team & shared inbox
Makes a *Shared inbox* flow: *Assignment/routing* to the right person, *Cover*-aware
routing, collision avoidance, *Handoff* with context, escalation, and the *ad-hoc
Collaborator*.
- **UCs:** UC44, UC45, UC46, UC49, UC50, UC56
- **Key entities:** Shared inbox, Assignment/routing, Handoff, Collaborator, Cover
- **Leans on:** INV1, INV6, INV7

### CAP12 — Autonomy, permissions & boundaries
The user (or manager) sets *Autonomy boundaries* per context — per-account caution,
multi-account *walls*, what it may do vs. must ask — movable in both directions as
trust grows.
- **UCs:** UC25, UC26, UC57, UC63
- **Key entities:** Autonomy boundary, Account
- **Leans on:** INV6, INV7 (UC57 also INV1)

### CAP13 — Transparency, audit & ownership
Shows everything it did and why, keeps a durable *Activity record*, lets the user
start small and earn trust, and guarantees the user owns/inspects/corrects what it
learns and can walk away.
- **UCs:** UC12, UC24, UC41, UC47, UC48
- **Key entities:** Activity record
- **Leans on:** INV3, INV4, INV5, INV6

### CAP14 — Access & reach
How the user reaches the assistant: by speaking or typing in plain language, as a
patient helper for the anxious, and **inside the mail app they already use** rather
than a new place to move into.
- **UCs:** UC27, UC39, UC40
- **Key entities:** Message, Briefing
- **Leans on:** INV3

### CAP15 — Send-time safeguards
A *Send-time check* that intercepts the user's own mistakes at the moment before
sending — reply-all, wrong recipient, missing attachment, changed bank details.
- **UCs:** UC65
- **Key entities:** Send-time check, Money-trap flag
- **Leans on:** INV1

### CAP16 — Act-through across apps
Carries a message through to wherever it needs to live — calendar, task list, *Document
store*, or an actual unsubscribe/cancellation — so email stops being an island, with
the user's nod before committing.
- **UCs:** UC38, UC66
- **Key entities:** Commitment, Document store
- **Leans on:** INV1, INV2

### CAP17 — Onboarding from history
*History backfill*: useful from day one by learning the existing archive, and taming
years of old mail safely (dead stuff aside, anything valuable preserved and surfaced).
- **UCs:** UC18, UC19, UC67
- **Key entities:** History backfill, Set-aside
- **Leans on:** INV2

### CAP18 — Public-inbox doorkeeper
Acts as a *Doorkeeper* for a public inbox: tells the real first-contact worth the
user's time from the generic mass pitch, holding (never deleting) and overridable.
- **UCs:** UC60
- **Key entities:** Doorkeeper, Set-aside, Person
- **Leans on:** INV1, INV2

---

## Capability dependency notes

- **CAP10 (identity) and CAP1 (retrieval)** are foundational — many other
  capabilities silently assume a resolved *Person* and cross-source recall.
- **CAP13 (transparency/audit)** is the surface of INV3/INV4/INV5 and touches
  *every* other capability's actions.
- **Team capabilities (CAP11) + oversight (CAP2 manager view, CAP12 per-member)**
  form the multi-user cluster — the main divergence from the single-user path.
- **CAP3, CAP8, CAP15, CAP16, CAP18** all produce outward effects and therefore
  all pass through the INV1 approval gate.
