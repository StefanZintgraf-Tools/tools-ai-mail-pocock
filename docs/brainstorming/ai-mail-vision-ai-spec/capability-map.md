# Capability map

The 67 use-cases clustered into **15 capabilities**. Each UC has **one primary**
capability (here); notable secondary touches are in [uc-index.md](uc-index.md).
Cross-cutting needs are **invariants**, not capabilities — see
[invariants.md](invariants.md).

> Coverage: all 67 UCs are assigned a primary capability below. Terms in *italics*
> are defined in [glossary.md](glossary.md).

---

### CAP1 — Triage & Daily Briefing
Decide what actually needs the user, surface it in a *Briefing*, and set the rest
aside as *No-action* — including telling the one real first-contact apart from the
mass pitch at the door. The user can always read everything themselves.
- **UCs:** UC1, UC11, UC12, UC13, UC60
- **Key entities:** *Briefing*, *No-action*, *Message*, *Thread*
- **Leans on:** INV3, INV7

### CAP2 — Organize & Declutter
Sort mail into sensible places, notice and offer to tidy *duplicates*, and shrink
the firehose at the source by offering to unsubscribe — always showing what it
wants to cut and waiting for the nod.
- **UCs:** UC7, UC38, UC53
- **Key entities:** *Filing*, *Email*, *Document*, *Held-aside*
- **Leans on:** INV1, INV2, INV3

### CAP3 — Search & Retrieval
Ask in plain words and get back a fact, a buried *Thread*, or a connected picture —
across this week's mail, years of *Archive*, connected *Chat channels*, the team's
shared mail, and the company's shared files.
- **UCs:** UC5, UC17, UC22, UC23, UC51, UC52, UC54, UC55
- **Key entities:** *Thread*, *Document*, *Archive*, *Memory*, *Shared inbox*
- **Leans on:** INV11

### CAP4 — Reply & Compose
Assemble a *Draft* in the user's voice for the message they'd put off — the dreaded
reply, the legwork-heavy answer, the cold-start intro, the support answer from past
solutions — in the sender's language, always pending *Approval*.
- **UCs:** UC2, UC9, UC10, UC36, UC42, UC43
- **Key entities:** *Draft*, *Proposed action*, *Approval*, *Memory*
- **Leans on:** INV1, INV9

### CAP5 — Follow-ups & Relationship Care
Notice cooling *Threads*, owed replies (*Waiting-on*), and the user's own loose ends
(*Commitment*); *Nudge* before a relationship or a lead quietly dies, and help the
user come across as warm and on top of things.
- **UCs:** UC14, UC15, UC33, UC34, UC37, UC61
- **Key entities:** *Nudge*, *Commitment*, *Waiting-on*, *Relationship*, *Contact*
- **Leans on:** INV1, INV7

### CAP6 — Deadlines & Resurfacing
Understand obligations and due dates *from the email itself*, catch the costly miss
before it happens, and resurface the right thing (booking, warranty) at the right
moment.
- **UCs:** UC3, UC4, UC6
- **Key entities:** *Commitment*, *Open item*, *Message*
- **Leans on:** INV3

### CAP7 — Memory & Context
Learn from the user's history, hold the *Relationship* context across years and
sources, unify one *Contact* across addresses and apps, and be useful from day one
off the existing *Archive*.
- **UCs:** UC16, UC62, UC67
- **Key entities:** *Memory*, *Relationship*, *Contact*, *Archive*
- **Leans on:** INV6, INV11

### CAP8 — Archive Taming
Make the wreckage of old mail safe and tidy — the genuinely dead set aside
(*Held-aside*), anything still valuable preserved and surfaced rather than buried.
- **UCs:** UC18, UC19
- **Key entities:** *Archive*, *Held-aside*
- **Leans on:** INV2, INV3

### CAP9 — Fraud & Safety Guard
Know the user's *normal* to catch *Threats* a plain filter waves through, slow the
urgent-money traps, extend protection to a *Protected party*, explain in plain words
why something smells wrong, and catch the user's own send-mistakes — never deleting,
only *Held-aside*.
- **UCs:** UC28, UC29, UC30, UC31, UC32, UC65
- **Key entities:** *Threat*, *Held-aside*, *Proposed action*
- **Leans on:** INV2, INV3, INV4

### CAP10 — Situational Awareness & Insights
Stand watch over the whole picture and surface what the user never knew to ask;
show where every *Open item* stands and whose court the ball is in.
- **UCs:** UC20, UC58
- **Key entities:** *Open item*, *Briefing*
- **Leans on:** INV3

### CAP11 — Reach & Access
Span several *Accounts* and *Chat channels* by choice (keeping the walls), come to
the user inside their existing inbox, and let them reach the whole mailbox by
speaking or typing plainly.
- **UCs:** UC26, UC27, UC35, UC39, UC40
- **Key entities:** *Account*, *Chat channel*, *Message*
- **Leans on:** INV7, INV11

### CAP12 — Trust, Transparency & Control
The user's controls over the assistant: ownership/privacy, per-*Account* and
per-scope *Autonomy level*, earning trust step by step, showing everything it did
and why, and the lasting *Action record*.
- **UCs:** UC24, UC25, UC41, UC47, UC48, UC63
- **Key entities:** *Autonomy level*, *Action record*, *Memory*, *Approval*
- **Leans on:** INV4, INV5, INV6, INV7, INV8, INV10

### CAP13 — Autonomous Multi-step Handling
Carry a whole exchange to its finish on the user's behalf — chase a quote across
rounds, settle a time with a group — keeping them posted and coming back for any
real decision or *Approval*.
- **UCs:** UC21, UC64
- **Key entities:** *Proposed action*, *Approval*, *Thread*
- **Leans on:** INV1, INV7, INV9

### CAP14 — Team Collaboration & Oversight
Make a *Shared inbox* flow: file each message the team's way, route around who's
away, avoid two people doubling up, *Hand-off* and escalate with full context, pull
a colleague in (*PIC*) for a moment, and let the manager set boundaries and see the
team's work.
- **UCs:** UC44, UC45, UC46, UC49, UC50, UC56, UC57, UC59
- **Key entities:** *Shared inbox*, *Hand-off*, *Autonomy level*, *Filing*
- **Leans on:** INV1, INV8, INV10, INV11

### CAP15 — Cross-system Follow-through
Carry a message through to wherever it actually needs to live — the appointment onto
the calendar, the promise onto the task list, the *Document* into the filing, the
finished subscription actually cancelled — with the user's nod before committing.
- **UCs:** UC8, UC66
- **Key entities:** *Document*, *Account*, *Proposed action*
- **Leans on:** INV1

---

## Capability dependency notes

- **CAP7 (Memory) and CAP3 (Search) are foundational.** Most other capabilities
  draw on the learned model — Triage, Reply, Follow-ups, Safety, and Insights all
  presuppose Memory; nothing differentiating works without it (see day-one UC67).
- **Everything that sends, commits, or files passes the INV1 gate**, concentrated in
  CAP4, CAP13, and CAP15 — these are where *Proposed action* → *Approval* lives.
- **CAP14 (Team) and CAP11 (Reach) introduce the boundary constraints**: INV11
  isolation (account/team/personal walls) and, for CAP14/CAP12, INV10 oversight =
  work-not-surveillance.
- **CAP12 is the cross-cutting control surface** — it is the capability closest to
  the invariants and is where the autonomy dial (INV8) that all proactive
  capabilities depend on actually lives.

> **Judgment calls (overridable):**
> - **UC44 (team filing)** is filed under **CAP14** (the team semantics dominate),
>   with *Organize* as a secondary — moved here from CAP2 on review.
> - **UC60 (doorkeeper)** → **CAP1** (don't bury the one real lead), secondary CAP9.
> - **UC39 (patient plain-words helper)** → **CAP11** (conversational access for the
>   anxious), secondary CAP9.
> - **UC8 (attachments → document store)** → **CAP15** (the integration is the
>   point), secondary CAP2.
> - 15 capabilities is deliberately on the granular side; CAP10/CAP13/CAP15 are
>   small but distinct (CAP13 is a signature differentiator).
