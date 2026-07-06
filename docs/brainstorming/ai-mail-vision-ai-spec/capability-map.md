# Capability map

The 115 use-cases clustered into **22 capabilities**. Each UC has **one primary**
capability (here); notable secondary touches are noted per capability and carried
per-UC in [uc-index.md](uc-index.md). Cross-cutting needs are **invariants**, not
capabilities — see [invariants.md](invariants.md).

> Coverage: all 115 UCs (UC1–UC115) are assigned a primary capability below, exactly
> once. Terms in *italics* are defined in [glossary.md](glossary.md). The
> `Serves: V#` line on each capability is a **Phase-6 placeholder** — the
> press-release promises are back-filled from [vision-index.md](vision-index.md); a
> capability that ends up serving no `V#` is candidate gold-plating, flagged there.

---

### CAP1 — Triage, Briefing & the Honest Done
Decide what actually needs the user and what does not; surface the handful that
matter in a *Briefing*, set the rest aside as *No-action* (never spam-deleted), and
carry that all the way to a genuine, *earned* end-of-day the user can see is true —
including a warm re-entry after a long absence, telling the one real first-contact
from the mass pitch at the door, reading a group-chat firehose down to the message
that's really for the user, and making sure the genuinely warm message isn't lost in
the pile. The user can always read everything themselves.
- **UCs:** UC1, UC11, UC12, UC13, UC60, UC88, UC89, UC91, UC112
- **Secondary touches:** UC60→CAP9 (doorkeeper vs threat); UC89, UC91→CAP5;
  UC112→CAP11 (group chat is a channel)
- **Serves:** V1, V3, V5, V17, V46 (shares V2 with CAP2, V15 re-entry with CAP5)
- **Key entities:** *Briefing*, *No-action*, *Message*, *Thread*, *Open item*
- **Leans on:** INV3, INV7, INV13

### CAP2 — Organize, File & Declutter
Sort mail into sensible places (*Filing*), notice and offer to tidy *duplicates*, and
shrink the firehose at the source by offering to unsubscribe — always showing what it
wants to cut or merge and waiting for the *Approval*, never pruning silently.
- **UCs:** UC7, UC38, UC53
- **Secondary touches:** UC38→CAP2 only; UC53→CAP7 (duplicate *Contact*)
- **Serves:** V2 (noise shrunk at source; shares V2 with CAP1)
- **Key entities:** *Filing*, *Email*, *Document*, *Held-aside*, *Proposed action*
- **Leans on:** INV1, INV2, INV3

### CAP3 — Search & Retrieval
Ask in plain words and get back a fact, a buried *Thread*, a filed *Document* traced
to its mail, or a connected picture of a topic — across this week's pile, years of
*Archive*, connected *Chat channels*, the team's *Shared inbox*es, and the company's
shared files.
- **UCs:** UC5, UC17, UC22, UC23, UC51, UC52, UC54, UC55
- **Secondary touches:** UC17→CAP8 (archive value); UC22→CAP7 (story behind a file);
  UC54, UC55→CAP14 (team scope)
- **Serves:** ⚠ **no V#** — no press-release point promises search/retrieval, yet 8
  UCs cluster here. Candidate under-enumeration of the vision (not gold-plating —
  search is foundational). Flagged in [vision-index.md](vision-index.md).
- **Key entities:** *Thread*, *Document*, *Archive*, *Memory*, *Shared inbox*
- **Leans on:** INV11, INV13

### CAP4 — Reply, Compose & Produce
Assemble a *Draft* in the user's voice for the message they'd put off — the dreaded
reply, the legwork-heavy answer, the cold-start intro, the support answer from past
solutions, the warm reply to an audience at scale — in the sender's language; and
produce the finished *Document* the mail is really asking for (contract, invoice,
filled-in form, report), not just the covering note. Everything pending *Approval*.
- **UCs:** UC2, UC9, UC10, UC36, UC42, UC43, UC85, UC92
- **Secondary touches:** UC2→CAP1/CAP13 (prep + approve); UC43→CAP14 (team KB);
  UC42→CAP17 (language access); UC92→CAP1 (surface what to answer)
- **Serves:** V22, V29 (partially V33 — reply in a real person's name, via UC43)
- **Key entities:** *Draft*, *Proposed action*, *Approval*, *Memory*, *Document*
- **Leans on:** INV1, INV9

### CAP5 — Follow-ups & Relationship Care
Notice cooling *Threads*, replies owed to the user (*Waiting-on*), and the user's own
loose ends (*Commitment*); *Nudge* before a relationship or a lead quietly dies; help
the user come across as warm and on top of things — and handle a grieving user's mail
with tenderness rather than nagging chases.
- **UCs:** UC14, UC15, UC33, UC34, UC37, UC61, UC90
- **Secondary touches:** UC34→CAP11/CAP7 (cross-channel person); UC90→CAP1/CAP7
  (stop nudges, know they're gone)
- **Serves:** V11, V15 (grief), V19, V20, V21
- **Key entities:** *Nudge*, *Commitment*, *Waiting-on*, *Relationship*, *Contact*
- **Leans on:** INV1, INV7, INV8

### CAP6 — Deadlines, Obligations & the Silent Watch
Hold the user's standing *Obligations* as live commitments and surface each in time to
act — the due date drawing near, the deadline the world never announces, the lapsing
cover, the adverse auto-renewal window, the obligation lifted out of a casual channel —
whether or not any message ever arrived; understand due dates *from the item itself*;
resurface the right thing at the right moment; and expose the guarded corners as an
inspectable *Watch* the user can see is covered. *(The S3 anchor's core watch.)*
- **UCs:** UC3, UC4, UC6, UC96, UC99, UC100, UC101, UC103, UC104, UC111, UC114
- **Secondary touches:** UC100→CAP16 (delegated authority); UC111→CAP11/CAP1;
  UC104→CAP12 (transparency of the watch)
- **Serves:** V35, V36, V40, V41, V42 (and V3 "nothing lost" via UC3) — the S3 anchor's core
- **Key entities:** *Obligation*, *Watch*, *Open item*, *Portal*, *Message*
- **Leans on:** INV3, INV4, INV13

### CAP7 — Memory, Context & Identity Resolution
Learn from the user's history, hold *Relationship* context across years and sources,
and resolve one *Contact* across all their addresses and apps — so a nudge, a draft,
or an answer is never half-blind.
- **UCs:** UC16, UC62
- **Secondary touches:** UC62→CAP11 (cross-channel unification); underpins CAP4,
  CAP5, CAP9, CAP10
- **Serves:** (no headline V#) — foundational dependency, implied by V11/V27
  (memory) and the day-one premise; expected absence, not gold-plating
- **Key entities:** *Memory*, *Relationship*, *Contact*, *Archive*
- **Leans on:** INV6, INV11

### CAP8 — Archive Onboarding & Taming
Turn the pre-existing pile into an asset: make the wreckage of old mail safe and tidy
(dead stuff *Held-aside*, anything valuable preserved and surfaced rather than
buried), and be useful from day one by learning from everything already there.
- **UCs:** UC18, UC19, UC67
- **Secondary touches:** UC67→CAP7 (seeds Memory); UC19→CAP6 (unclaimed refund /
  still-valid warranty surfaced)
- **Serves:** (no headline V#) — foundational day-one dependency (useful from the
  pre-existing pile); expected absence, not gold-plating
- **Key entities:** *Archive*, *Held-aside*, *Memory*
- **Leans on:** INV2, INV3, INV6

### CAP9 — Fraud, Safety & Provenance Guard
Know the user's *normal* to catch *Threats* a plain filter waves through, slow the
urgent-money traps, prove a message genuinely is from who it claims (and that the
user's own are provably theirs — *Provenance*), guard every channel not just email,
extend protection to a vulnerable relative and draw on the whole crowd's hard-won
experience, explain in plain words why something smells wrong, and catch the user's
own send-mistakes at their hand — never deleting, only *Held-aside*.
- **UCs:** UC28, UC29, UC30, UC31, UC32, UC65, UC75, UC77, UC110
- **Secondary touches:** UC30→CAP16 (delegated watch); UC31→CAP12 (plain-words
  reason); UC75→CAP12 (privacy-preserving crowd); UC110→CAP11 (cross-channel)
- **Serves:** V4, V28 (and V3 "nothing lost" via never-delete UC32)
- **Key entities:** *Threat*, *Held-aside*, *Provenance*, *Proposed action*
- **Leans on:** INV2, INV3, INV4, INV13

### CAP10 — Situational Awareness & Insights
Stand watch over the whole picture and surface what the user never knew to ask; show
where every *Open item* stands and whose court the ball is in; draw one honest view of
everything open with a customer across the mail, the sales system, and the support
desk; and keep a whole personal campaign (a job search) straight.
- **UCs:** UC20, UC58, UC93, UC106
- **Secondary touches:** UC106→CAP15 (system-of-record source); UC93→CAP5/CAP4
  (chase + prep)
- **Serves:** V43 (one customer, one picture; shares V19 "nothing slips" via UC58)
- **Key entities:** *Open item*, *Briefing*, *System of record*, *Waiting-on*
- **Leans on:** INV3, INV10

### CAP11 — Multi-channel Reach, Access & Continuity
Span several *Accounts* and *Chat channels* by choice (keeping the walls), come to the
user inside the inbox they already live in, recognise one conversation no matter how
many doors it came through and route the answer back out the right one, gather every
channel's nags into one calm place, and stay one live picture across every device and
offline.
- **UCs:** UC26, UC27, UC35, UC94, UC95, UC107, UC108, UC109
- **Secondary touches:** UC26, UC35→CAP12 (walls / opt-in); UC107→CAP7 (one
  conversation ≈ one *Contact*)
- **Serves:** V8, V9, V10, V44, V45
- **Key entities:** *Account*, *Chat channel*, *Thread*, *Message*
- **Leans on:** INV7, INV11, INV13, INV14

### CAP12 — Trust, Transparency, Autonomy & Control
The user's controls over the assistant: ownership and privacy of what it learns,
per-*Account* and per-scope *Autonomy level*, teaching it once where it may go ahead
and where it must stop (*Standing instruction*), earning trust step by step, and
showing everything it did and why on demand.
- **UCs:** UC24, UC25, UC41, UC47, UC63
- **Secondary touches:** UC25→CAP11 (per-account walls); UC47→CAP5 (*Action record*
  overlaps enterprise audit CAP18)
- **Serves:** V16, V18 (the human-in-charge control surface)
- **Key entities:** *Autonomy level*, *Standing instruction*, *Memory*, *Approval*
- **Leans on:** INV4, INV6, INV7, INV8, INV10

### CAP13 — Autonomous Multi-step Errands
Carry a whole *Errand* to its finish on the user's behalf — negotiate a meeting time,
chase a quote across rounds, settle with a group, let two assistants trade the details
between them, make the dreaded phone call, act with real money once okayed (pay,
dispute, book), and carry a silent obligation all the way to done — keeping the user
posted and coming back for any real decision or *Approval* before committing.
- **UCs:** UC21, UC64, UC71, UC73, UC78, UC102
- **Secondary touches:** UC73→CAP15 (act in an external system); UC102→CAP6 (the
  silent thing it finishes); UC71→CAP9 (provenance of the other assistant)
- **Serves:** V7, V39 (and V6 "makes the phone call" via UC78)
- **Key entities:** *Errand*, *Proposed action*, *Approval*, *Thread*
- **Leans on:** INV1, INV9

### CAP14 — Team & Shared-Inbox Collaboration & Oversight
Make a *Shared inbox* flow: file each message the team's way (leaving it in the common
pile when unsure), route around who's away, avoid two people doubling up, *Hand-off*
and escalate with full context, pull a colleague in for a moment then drop them back
out, and let the manager set boundaries per person/account and see the team's work —
as work state, never staff surveillance.
- **UCs:** UC44, UC45, UC46, UC49, UC50, UC56, UC57, UC59
- **Secondary touches:** UC44→CAP2 (filing); UC57→CAP12 (autonomy dial); UC59→CAP10
  (aged open items)
- **Serves:** V23, V24, V25, V32, V34 (V32/V34 are INV-shaped — see vision-index flags)
- **Key entities:** *Shared inbox*, *Hand-off*, *Autonomy level*, *Open item*
- **Leans on:** INV1, INV3, INV8, INV10, INV11

### CAP15 — Cross-system Follow-through & System-of-Record Sync
Carry a message through to wherever it needs to live — the appointment onto the
calendar, the promise onto the task list, the *Document* into the filing, the finished
subscription actually cancelled — and keep the *System of record* (CRM, support desk)
up to date so the user never does the data entry twice, with the nod before anything
that commits.
- **UCs:** UC8, UC66, UC115
- **Secondary touches:** UC8→CAP2 (correct filing); UC115→CAP10 (feeds the unified
  picture)
- **Serves:** ⚠ **no V#** — no press-release point names calendar/task/CRM
  write-back (V7's errand names CAP13). Candidate under-enumeration; flagged in
  [vision-index.md](vision-index.md).
- **Key entities:** *Document*, *System of record*, *Account*, *Proposed action*
- **Leans on:** INV1

### CAP16 — Delegation, Stewardship & Handover
Let one assistant act across more than one principal's mail with bounded authority: a
shared household's common admin (private mail still each person's own), stepping into
the inbox of someone who can't manage it (illness, death, formal authority), handing a
whole role over cleanly on leaving, inheriting a warm inbox instead of a cold
graveyard, and separating what's genuinely personal from what's the company's — fairly
to both sides.
- **UCs:** UC68, UC69, UC70, UC72, UC74
- **Secondary touches:** UC72→CAP13 (act on their behalf); UC68, UC70→CAP7 (the
  relationship history handed over)
- **Serves:** V13, V14, V26, V27
- **Key entities:** *Account*, *Relationship*, *Open item*, *Memory*
- **Leans on:** INV6, INV10, INV11, INV12

### CAP17 — Accessible & Conversational Access
Meet users who can't or won't work a conventional inbox: reach the whole mailbox by
speaking or typing in plain language, have a patient helper that speaks plainly and
lets the anxious just ask ("is this one real?"), and *be* the email entirely by voice
and listening for someone who can't see it or work a keyboard.
- **UCs:** UC39, UC40, UC86
- **Secondary touches:** UC39→CAP9 (is-this-real check); UC40, UC86→CAP11 (modality
  is a way in)
- **Serves:** V12
- **Key entities:** *Message*, *Briefing*, *Assistant*
- **Leans on:** INV7, INV13

### CAP18 — Compliance, Legal & Deployment Boundaries
Meet the obligations that fall on an organisation answerable for its mail: a complete,
lasting *Action record* for audit, a data-access request or legal hold answered fully
and defensibly, running entirely within the user's own walls where secrecy or
regulation demands it, and keeping a hold on what leaves — a message that can't be
forwarded, expires, or whose access can be pulled back.
- **UCs:** UC48, UC81, UC82, UC84
- **Secondary touches:** UC48→CAP12 (audit vs personal transparency, both INV5);
  UC84→CAP12 (control over outbound)
- **Serves:** V30, V31 (and V32 audit-of-own-actions via UC48); UC84 outbound
  governance serves no V# — the CAP18 "unclusterable" resister, matching the vision's
  under-specified outbound-governance gap
- **Key entities:** *Action record*, *Document*, *Provenance*
- **Leans on:** INV5, INV10, INV15

### CAP19 — Extensibility & Custom Rules
Bend the assistant to a particular world without waiting for one company to build
everything: switch on an opt-in specialist *Extension* built for a trade, and teach it
custom *Standing instructions* in plain words that it then follows faithfully — the
line always the user's to add to, change, or switch off.
- **UCs:** UC79, UC83
- **Secondary touches:** UC79→CAP12/INV12 (only chosen extensions let in); UC83→CAP12
  (rules compose with autonomy)
- **Serves:** ⚠ **no V#** — no press-release point promises specialist extensions or
  user-taught rules. Candidate under-enumeration; flagged in
  [vision-index.md](vision-index.md).
- **Key entities:** *Extension*, *Standing instruction*
- **Leans on:** INV8, INV12

### CAP20 — Omni-format Capture
Take in and understand more than typed mail — the paper letter photographed, the
scanned document, the bill through an official channel, the voicemail, the video
message, the recorded meeting — and act on it exactly as it would an email, so nothing
gets a free pass because of the form it arrived in.
- **UCs:** UC76, UC87
- **Secondary touches:** UC76→CAP6 (official-channel bill is an obligation);
  UC87→CAP5 (a voicemail promise becomes a tracked commitment)
- **Serves:** V6
- **Key entities:** *Message*, *Document*, *Commitment*
- **Leans on:** INV13

### CAP21 — Portal & Silent-Channel Reach
Reach the silent corners that never send anything: watch a *Portal* on the user's
behalf and surface what sits unread there as if it had arrived, close the gap at the
source (switch a paperless account back to emailing, sign up for the alerts, register
the user's details so demands land where they'll be seen), and let the user grant,
scope, and revoke that access in a click without ever handing over the keys.
- **UCs:** UC97, UC105, UC113
- **Secondary touches:** UC97→CAP6 (the demand becomes an obligation); UC113→CAP12
  (access-grant is a control surface)
- **Serves:** V35 (silent things surfaced, via UC97), V41 (watch you can see, via UC113)
- **Key entities:** *Portal*, *Obligation*, *Watch*, *Account*
- **Leans on:** INV12, INV13

### CAP22 — World-Watch & Entitlements
Watch the world beyond the inbox for what actually affects the user — the *World
event* they had no way to see coming (delay, recall, breach, rate about to jump) — and
make sure the world's silence never costs them what's owed: the *Entitlement* (rebate,
settlement, refund, compensation, switch-window) surfaced with their name on it while
the clock is still open.
- **UCs:** UC80, UC98
- **Secondary touches:** UC98→CAP13 (claiming it is an errand — UC102); UC80→CAP6
  (surfaced onto the watch in time to act)
- **Serves:** V37, V38
- **Key entities:** *World event*, *Entitlement*, *Watch*
- **Leans on:** INV4, INV13

---

## Capability dependency notes

- **CAP7 (Memory/Identity) and CAP3 (Search) are foundational.** Triage, Reply,
  Follow-ups, Safety, Insights, and the cross-channel unification in CAP11 all
  presuppose the learned model and resolved *Contact*; nothing differentiating works
  without it (see day-one UC67, CAP8).
- **The S3 anchor is spread across four capabilities on purpose.** CAP6 (the standing
  *Watch* and deadlines), CAP21 (reaching silent *Portals* / making the world reach
  the user), CAP22 (*World events* and *Entitlements*), and CAP13 (carrying a silent
  obligation to done). They share INV13 (source-agnostic) and INV4 (a watch you can
  see); splitting them keeps distinct mechanisms — hold-a-due-date, reach-a-portal,
  watch-the-world, finish-the-errand — from collapsing into one undifferentiated blob.
- **Everything that sends, commits, files, pays, or claims passes the INV1 gate**,
  concentrated in CAP4, CAP13, CAP15, and CAP2 — these are where *Proposed action* →
  *Approval* lives.
- **CAP11, CAP14, CAP16 carry the boundary constraints**: INV11 isolation (account /
  team / household / pulled-in-colleague walls) and, for CAP14/CAP16/CAP18, INV10
  oversight = work-not-surveillance.
- **CAP12 is the cross-cutting control surface** — closest to the invariants, and
  where the autonomy dial (INV8) and *Standing instructions* that the proactive
  capabilities depend on actually live. **CAP18** is its enterprise/legal sibling
  (audit, legal hold, within-walls, outbound governance).
- **INV13 (source-agnostic) is inherited by nearly every capability**, not owned by
  one — it is why triage (CAP1), safety (CAP9), search (CAP3), and obligation-tracking
  (CAP6) each appear with channel/format variants rather than as email-only clusters.

## UCs that resisted clustering (gap-signals for the vision)

These are flagged, not force-fit — an unclusterable UC is a signal about the vision.

- **UC90 (grief).** Genuinely cross-cutting emotional attunement — touches CAP5
  (relationship), CAP1 (stop nudges), CAP7 (know they're gone), and a
  keepsake-preservation act none of the four fully owns. Filed CAP5; flag for whether
  "sensitive-season attunement" is a latent capability the vision implies (cf. V11,
  V15, V17) but only thinly enumerates.
- **UC84 (recall / expire / no-forward outbound).** No natural home — it is
  message-lifecycle governance, unlike everything else in CAP18. Parked in CAP18 as
  the least-bad fit; a possible signal the vision under-specifies outbound information
  governance.
- **UC111 / UC112 (obligations and asks buried in casual/group channels).** Sit on the
  seam between CAP6/CAP1 (the act — extract an obligation / surface what matters) and
  CAP11 (the channel). Filed by *act*, not channel, per INV13; flag the seam.
- **UC113 (grant/scope/revoke portal access).** Straddles CAP21 (the portal it reaches)
  and CAP12 (access-grant as a user control surface). Filed CAP21.

## Judgment calls (overridable) — lowest-confidence primary assignments

- **UC90 → CAP5** (over CAP1 / CAP7) — see resister note above. *(low)*
- **UC112 → CAP1** (over CAP11) — group-chat handling is triage-of-a-channel; the act
  (surface what's for me) dominates the medium. *(low)*
- **UC111 → CAP6** (over CAP11 / CAP1) — the value is lifting out the *Obligation*, not
  the channel it hid in. *(low)*
- **UC85 folded into CAP4** ("Reply, Compose & Produce") rather than a standalone
  Document-Production capability — producing paperwork and drafting replies are the
  same "assistant writes the artifact" act; V29 makes it prominent, so a split is
  defensible. *(med)*
- **UC106 → CAP10** (over CAP15) — the "one honest picture" *view* dominates over the
  *sync*; UC115 (the write-back) is the CAP15 primary. *(med)*
- **The 4-way split of the S3 anchor (CAP6 / CAP21 / CAP22 / CAP13).** Defensible as
  distinct mechanisms, but a reviewer could collapse CAP21+CAP22 into CAP6 as one
  "silent watch." Kept split because the anchor is the product's heart and the
  mechanisms differ sharply. *(med)*
