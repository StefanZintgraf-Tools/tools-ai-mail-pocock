# Vision index — the press-release layer, traced

Derived from the `## Vision scope` and `## Vision points` sections of
[ai-mail-foundation-vision.md](../ai-mail-foundation-vision.md). Two layers the flat
UC list doesn't carry: the **scope ladder** (how far the product's ambition climbs,
and where it deliberately stops) and the **vision points** (the press-release
promises each cluster of UCs must keep). The altitude-up sibling of
[uc-index.md](uc-index.md): where that traces *requirements*, this traces *promises*
and marks the scope boundary.

> Scope terms used here — **scope item** (`S#`, a rung of ambition), **anchor** (the
> top in-scope rung), **horizon** (the rung deliberately excluded), **sibling vision**
> (the fork that would live beyond the horizon) — describe the vision's *boundary*,
> not the product's domain; they are **not** glossary terms.
> The `S#` ladder is a **boundary/altitude** axis, **not** a priority or build order.
> Reading `S1 → S3` as phases is altitude leakage (§2a).

## Scope ladder

| S# | Rung (plain) | In scope? | Capabilities native here | Representative UCs |
|----|--------------|-----------|--------------------------|--------------------|
| S1 | Handle your **email inbox** — important things done/scheduled, noise quieted, nothing lost, nothing sent/paid/deleted without your say-so | yes | CAP1–CAP5, CAP7–CAP10, CAP12–CAP19 | UC1, UC2, UC11, UC28, UC43, UC57, UC68 … |
| S2 | Handle **every message on any channel** — email, chat, paper, voice, video, under one roof or walled apart | yes | CAP11, CAP20 | UC35, UC76, UC87, UC106, UC107, UC109, UC112 |
| S3 | Keep you on top of **everything that asks something of you**, sent or not — the silent obligation, the world event, surfaced in time · **anchor** | yes | CAP6, CAP21, CAP22 | UC96, UC97, UC98, UC102, UC103, UC104 |
| — | *Horizon:* an agent acting on **its own** goals and account — an autonomous communication assistant | **no** | — | — |

*Horizon / sibling vision:* the vision anchors at **S3** and records **one shared
horizon note** (not an anchor+horizon per rung): a deliberate *sibling vision* — an
autonomous assistant acting on its own goals — surfaced across three candidate rungs
(chief-of-staff on your goals; a decentred interaction layer; an agent with its own
persona), each stripping a different load-bearing invariant (which is why the anchor
rests at S3). The build phase treats this as a **generalization one-way door** — see
[ai-mail-foundation-vision-architecture-lens.md](../ai-mail-foundation-vision-architecture-lens.md)
(the sibling handoff) and parking-lot **BV5** (human-in-charge as a relaxable policy
layer, the exact seam the two products diverge on). It is **not** re-derived here.

## Vision points → realization

Each press-release point mapped to the scope item it sits under, the UCs that realize
it, its primary capability, and a coverage check. Numbering is *arrival* order in the
source; grouping is by scope.

### S1 — Your email inbox

| V# | S# | Promise | Realized by (UCs) | Primary CAP | Coverage |
|----|----|---------|-------------------|-------------|----------|
| V1 | S1 | Important things handled or scheduled — stop carrying email in your head | UC1, UC11, UC88 | CAP1 | ok |
| V2 | S1 | Noise shrinks itself instead of piling up | UC13, UC38 | CAP1 | ok *(CAP1 set-aside + CAP2 shrink-at-source)* |
| V3 | S1 | Nothing you needed gets silently lost | UC3, UC19, UC32 | CAP1 | ok *(INV3; cross-cutting — no single clean home)* |
| V4 | S1 | Costly fakes and scams caught before they cost you | UC28, UC29, UC75, UC110 | CAP9 | ok |
| V5 | S1 | Reads everything, does the legwork, taps you only when it matters | UC1, UC10, UC11 | CAP1 | ok |
| V7 | S1 | Carries a whole errand to the finish — money only on explicit say-so | UC21, UC64, UC73 | CAP13 | ok *(UC102's silent-obligation finish realizes V39 (S3), not this S1 errand — keeps UC102 native-S3)* |
| V9 | S1 | Spans all your inboxes under one roof, or walled apart, as you choose | UC25, UC26 | CAP11 | ok |
| V10 | S1 | Comes offline with you, one live picture across every device | UC94, UC95 | CAP11 | ok |
| V11 | S1 | Makes you warmer to people — not just less behind on them | UC14, UC33, UC34 | CAP5 | ok |
| V12 | S1 | Reach it however you like — speak or type, in any language | UC40, UC42, UC86 | CAP17 | ok |
| V13 | S1 | Watch over a vulnerable relative's inbox, or step in with proper authority | UC30, UC72 | CAP16 | ok *(CAP9 watch + CAP16 authority)* |
| V14 | S1 | Shared life, shared assistant — household admin handled, private mail your own | UC74 | CAP16 | ok |
| V15 | S1 | Handles a hard season gently — a loss, a long absence, a fresh start | UC90, UC91 | CAP5 | ok *(CAP5 grief + CAP1 re-entry)* |
| V16 | S1 | What it learns stays yours alone, earns trust step by step | UC24, UC41 | CAP12 | ok |
| V17 | S1 | Gets you to a real, honest end of the day | UC88 | CAP1 | ok |
| V19 | S1 | Client requests answered — nothing slips | UC15, UC58 | CAP5 | ok |
| V20 | S1 | Promising leads never cool off forgotten | UC15 | CAP5 | ok |
| V21 | S1 | Promised follow-ups actually go out | UC37, UC61 | CAP5 | ok |
| V22 | S1 | Repeat support questions answered fast, from how you solved them before | UC43 | CAP4 | ok |
| V23 | S1 | Shared inbox keeps flowing when someone's away — no two answers to one customer | UC45, UC46 | CAP14 | ok |
| V24 | S1 | Every conversation handed over already understood, not a cold "fwd:" | UC49, UC50 | CAP14 | ok |
| V25 | S1 | Managers see the whole picture and set how far the assistant may go, per person/account | UC57, UC59 | CAP14 | ok |
| V26 | S1 | Years of email stay the company's — not gone when someone leaves | UC68, UC69 | CAP16 | ok |
| V27 | S1 | New hires brought up to speed; a leaver hands over cleanly, personal separated fairly | UC68, UC69, UC70 | CAP16 | ok |
| V28 | S1 | Money traps caught and questioned — forged invoice, changed bank details, urgent wire | UC28, UC29 | CAP9 | ok |
| V29 | S1 | Produces the paperwork itself — contract, invoice, filled-in form | UC85 | CAP4 | ok |
| V30 | S1 | A complete, lasting record of the assistant's own decisions — audit, legal hold, DSAR | UC48, UC82 | CAP18 | ok |
| V31 | S1 | Can run entirely within your own walls | UC81 | CAP18 | ok |
| V32 | S1 | Works *for* the company, never spying on staff | UC48, UC59 | CAP14 | ⚠ invariant-promise — INV10; no dedicated UC, leans on UC48/UC59 |
| V33 | S1 | Every reply goes out in a real person's name | UC43 *(partial)* | CAP4 | ⚠ **thin / near-unrealized** — no dedicated UC; leans on UC43 + INV1 |

### S2 — Every message on any channel

| V# | S# | Promise | Realized by (UCs) | Primary CAP | Coverage |
|----|----|---------|-------------------|-------------|----------|
| V6 | S2 | Takes in more than email — paper, voicemail, video, recorded meeting — and makes the phone call | UC76, UC87, UC78 | CAP20 | ok *(CAP20 capture + CAP13 the call)* |
| V8 | S2 | Spans your chat apps too, by choice — WhatsApp, Telegram, and the rest | UC35, UC51 | CAP11 | ok |
| V43 | S2 | One customer, one picture — across mail, sales system, support desk | UC106 | CAP10 | ok |
| V44 | S2 | The channel goes invisible — one conversation, answer back out the right door | UC107, UC108 | CAP11 | ok |
| V45 | S2 | The badges go quiet — one calm place gathers whatever actually wants you | UC109 | CAP11 | ok |
| V46 | S2 | The group-chat firehose read for you — the one message really for you surfaces | UC112 | CAP1 | ok |

### S3 — Everything that asks something of you *(anchor)*

| V# | S# | Promise | Realized by (UCs) | Primary CAP | Coverage |
|----|----|---------|-------------------|-------------|----------|
| V18 | S3 | Nothing sent, decided, paid, or deleted without your nod — you're always in charge | UC2, UC63, UC65, UC73, UC102 | CAP12 | ok *(INV1; realized via every gated UC)* |
| V34 | S3 | Nothing sent, decided, paid, or deleted on its own — your people stay in charge | UC57, UC63 | CAP14 | ⚠ invariant-promise — INV1 at team scope; near-duplicate of V18 (personal, CAP12), lands on CAP14 as the team control/oversight surface; leans on shared UCs |
| V35 | S3 | One place that finally sees *everything* asking of you — sent or silently come due | UC76, UC96, UC97, UC103 | CAP6 | ok |
| V36 | S3 | The deadline no one will ever remind you of, surfaced in time | UC96, UC99, UC101 | CAP6 | ok |
| V37 | S3 | The world watched on your behalf — delay, recall, breach, rate about to jump | UC80 | CAP22 | ok |
| V38 | S3 | What's already yours, claimed in time — rebate, settlement, refund, compensation | UC98 | CAP22 | ok |
| V39 | S3 | Carries the silent thing all the way to done — your say-so before it acts | UC102 | CAP13 | ok |
| V40 | S3 | The dread of the unseen lifted — "no news" finally means "nothing's wrong" | UC103 | CAP6 | ok |
| V41 | S3 | A watch you can actually see — guarded corners shown, each catch proving itself | UC104, UC113 | CAP6 | ok *(INV4)* |
| V42 | S3 | The fine print built to profit from your silence, quietly defused | UC99, UC102 | CAP6 | ok |

**All 46 vision points mapped** (V1–V46; V6 and V8 are the two out-of-run S2 points).

## UC → native rung (`S#`) — for Phase 7's uc-index

Each UC's **native rung** is the **lowest `S#`** among the vision points it realizes
(S1 < S2 < S3). Phase 7's `uc-index.md` carries this as a scope column. Rule + the two
exception lists below fully determine all 115 UCs.

- **Native S3** (serve only S3 promises — the silent watch, world-watch, portals; no
  S1/S2 promise): **UC80, UC96, UC97, UC98, UC99, UC100, UC101, UC102, UC103, UC104,
  UC105, UC113, UC114.**
- **Native S2** (serve a channel/format promise but no S1 email promise): **UC35,
  UC51, UC76, UC78, UC87, UC106, UC107, UC108, UC109, UC111, UC112.**
- **Native S1** — **all remaining UCs** (UC1–UC95 and UC110, UC115 not listed above).
  These realize at least one S1 press-release promise; the silent-watch/channel UCs
  that *extend* an S1 promise (e.g. UC110 cross-channel scam → V4) stay S1 by the
  lowest-rung rule.

> Note the ladder is **boundary/altitude**, not phasing: a UC's native rung says which
> tier of ambition it *belongs to*, not when it gets built.

## Notes / judgment calls

**Unrealized / thin promises** (surfaced for the human — never silently reconciled by
editing the vision, S6):

- **V33** ("every reply goes out in a real person's name") — **no dedicated UC.**
  Leans on UC43 ("a person still approving every send") + INV1. Candidate *unrealized
  promise*: either add a UC for outbound attribution/accountability, or accept it as a
  pure restatement of INV1.
- **V32** ("works *for* the company, never spying on staff") — invariant-promise
  (INV10, oversight = work-not-surveillance). No dedicated UC; realized only as the
  *shape* of UC48 (audit of the assistant's own actions) + UC59 (work-state view).
- **V34** ("your people stay in charge") — INV1 at team scope; **near-duplicate of
  V18** (personal scope). Both realized only via the gated UCs, not a UC of their own.
  Phase-0 flag confirmed.

**Unpromised capabilities** (a `CAP` no `V#` names — candidate gold-plating *or* a
vision under-enumeration; the fix is the human's):

- **CAP3 (Search & Retrieval)** — **no vision point promises it**, yet it carries 8
  UCs (UC5, UC17, UC22, UC23, UC51, UC52, UC54, UC55) and is called *foundational*.
  Most likely reading: the press release **under-promises search**, not that CAP3 is
  gold-plating. Strongest coverage signal in the bundle — flag for the human.
- **CAP15 (Cross-system Follow-through / SoR sync)** — no `V#` (UC8, UC66, UC115). The
  errand promise V7 is adjacent but names CAP13, not the calendar/task/CRM write-back.
- **CAP19 (Extensibility & Custom Rules)** — no `V#` (UC79, UC83). No press-release
  point promises specialist extensions or user-taught rules.
- **CAP7 (Memory/Identity) and CAP8 (Archive taming)** — no headline `V#`, but both
  are declared *foundational dependencies* (see capability-map dependency notes), so
  their absence from the press release is **expected**, not gold-plating. Implied by
  V11/V27 (memory) and the day-one premise.

**Lowest-confidence mapping calls** (candidates for `decisions.md`):

- **V3 → CAP1** (over CAP9/CAP8) — "nothing lost" is a cross-cutting INV3 promise with
  no single clean capability home. *(low)*
- **V2 → CAP1** (over CAP2) — "noise shrinks itself" spans set-aside (CAP1 No-action)
  and shrink-at-source (CAP2 unsubscribe). *(low)*
- **V13 → CAP16** (over CAP9) — "watch a relative's inbox / step in with authority"
  splits watch (CAP9, UC30) from stewardship (CAP16, UC72). *(low-med)*
- **V15 → CAP5** (over CAP1) — "a hard season" splits grief (CAP5, UC90) from long-
  absence re-entry (CAP1, UC91). *(med)*
- **V32 / V34 as invariant-promises** — whether an INV-only promise with no dedicated
  UC counts as "realized." *(med)*
