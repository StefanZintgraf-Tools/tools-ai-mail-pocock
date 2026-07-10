# Whole-bundle critic report — Phase 10 (pass 1)

**Verdict: CLEAN** — 1 cross-phase defect found and fixed in place; 0 blocking
residuals. Remaining items are pre-existing, already-logged low-confidence
judgment calls for the human's single end-review, not new cross-phase compounding.

Audit scope: the entire finished set (`README`, `invariants`, `glossary`,
`actors`, `capability-map`, `subdomains-and-context-map`, `vision-index`,
`uc-index`, `deferred-inputs`) against the frozen vision, for compounding the
per-phase critics could not see. The vision was not touched.

---

## 1. Cross-phase compounding

### FIXED — stray `UC13` survived in the Phase-5 file after the Phase-7 fix
The Phase-7 critic (decisions.md **row 29**) caught that `UC13` (the low-stakes
*No-action* corner — IND · CAP1 · INV2, vision L170) had been wrongly listed among
the **delegated-authority** use-cases, and removed it from `actors.md` (PROT/DLG
rep lists + the DLG split note) and `invariants.md` (INV12 asserting list). The
same stray `UC13` also sat in **`subdomains-and-context-map.md`** — the
**Delegate/guardian (DLG) ↔ Protected party (PROT)** Customer/Supplier
context-map row — and was **missed** by the Phase-7 pass because that row is a
Phase-5 artifact the Phase-7 critic did not re-audit. The intended reference is
**V13** ("watch over a vulnerable relative"), which already appears in that
relationship elsewhere; the correct delegated-authority UCs are UC30 / UC72 /
UC100.

**Fix:** changed the row's UC citation from `UC13, UC30, UC72, UC100` →
`UC30, UC72, UC100`. The row still cites ≥1 UC (mechanical gate intact), and now
agrees with `actors.md` (PROT: UC30/UC72/UC100; DLG: UC72/UC100), `invariants.md`
(INV12 asserting list), and `uc-index.md` (UC13 → IND · CAP1 · INV2). This closes
the last propagation site of the row-29 error.

*No other cross-phase reading was found to mis-propagate.* Verified specifically:
- **Serves-line back-fill (Phase 6 into Phase 4)** — every `V#`'s primary CAP in
  `vision-index.md` appears on that capability's `Serves:` line in
  `capability-map.md` (all 46 checked); the V7/UC102 → V39 reconciliation
  (decision 26) and the V34 CAP12→CAP14 reconciliation (decision 25) are
  consistent in both files.
- **Actor splits (Phase 3) into later files** — the IND→{IND, ORG, STAFF, MGR, TM,
  DLG, PROT, HH, PIC, EXT, SYS} splits leave no capability or context-map row with
  an impossible/absent owner; DLG/PROT, PIC, SYS boundaries reconcile across
  actors ↔ subdomains ↔ uc-index rep lists.
- **Glossary clustering (Phase 2) into capability clustering (Phase 4)** — keeping
  Obligation / World event / Entitlement distinct (and Commitment / Waiting-on /
  Obligation distinct) is what lets CAP6 / CAP21 / CAP22 stay split as the four
  S3-anchor mechanisms; no collapsed term forced a mis-cluster.

## 2. Single language across the whole bundle
**Clean.** Canonical terms are used consistently everywhere. Spot-checked the
load-bearing ones — Obligation, World event, Entitlement, Watch, Errand,
Provenance, Held-aside, No-action, Open item, Commitment, Waiting-on, System of
record, Portal — across capability-map / subdomains / vision-index / uc-index. No
synonym silently re-introduced downstream; provider names (WhatsApp, Telegram,
Gmail/IMAP) are vision-sourced integration counterparties, not new domain terms.

## 3. Altitude held everywhere
**Clean.** Grep for tactical-DDD / tech / phasing terms (Aggregate, Repository,
adapter, microservice, Postgres/Kafka, REST/GraphQL, consistency model, MVP,
sprint, milestone) returns only **disclaimers** ("no Aggregates, Entities, ports,
consistency models… no MVP/phasing") and vision-sourced provider names. The
strategic-design vocabulary in `subdomains-and-context-map.md` (Partnership,
Shared Kernel, Customer/Supplier, Conformist, ACL, Open Host, Published Language,
Separate Ways) is the sanctioned Phase-5 fixed vocabulary. Generic-inside-a-cap
callouts (OCR/ASR, connectors, audit/e-discovery mechanics) are strategic
"buy-don't-build" subdomain classification, not tactical design. The `S#` ladder
is consistently framed as a boundary/altitude axis, never a build order, in every
file that touches it (README, vision-index, uc-index).

## 4. Promises reconciled, not edited
**Clean.** The unrealized/thin-promise flags (**V32** INV10-only, **V33** thin /
near-unrealized, **V34** near-duplicate of V18) and the unpromised-capability
flags (**CAP3**, **CAP15**, **CAP19** no-`V#`; **CAP7**, **CAP8** expected
foundational absence) are surfaced identically in both `capability-map.md` and
`vision-index.md`, and cross-referenced from `subdomains-and-context-map.md`. None
is reconciled by touching the vision. The vision remains byte-identical (the
bundle only added derived files).

## 5. Independently loadable
**Clean.** Each consumable doc restates its purpose, cites its dependencies by
stable ID, and resolves with glossary + invariants loaded alongside. Internal
cross-links are consistent; the README load-order table matches the files present.

---

## Residuals for the human (pre-existing, already logged — not new defects)
These are the human's single-end-review judgment calls; the bundle is internally
consistent on each, so none is a cross-phase inconsistency to fix here.

- **decisions.md row 27 — UC111 native rung.** Classified native **S2**
  (casual-channel arrival) while its Phase-4 primary is **CAP6**, an S3-anchor
  capability ("the value is lifting out the Obligation, not the channel", row 15).
  Both `uc-index.md` and `vision-index.md` agree on S2, so the bundle is
  self-consistent; the S2-vs-S3 reading itself is the open call. *(medium)*
  **→ [Phase 12, 2026-07-09: RESOLVED — accepted-by-human as native S3.** Row 27
  confirmed in Phase 11; UC111 reclassified S2→S3 across `uc-index.md` and
  `vision-index.md` to match its S3-anchor primary CAP6. This residual is CLOSED;
  the tally is now 91/10/14. See the Phase-12 reconcile section at the foot of this
  file.]
- **decisions.md row 32 — BV5 fork-this-file mechanism left unrouted.** Declared a
  note on the out-of-scope sibling vision rather than a scoping input; BV5's
  substantive facets are INV-homed (INV1/INV9). *(low)*
- The remaining low-confidence rows (SYS-as-actor #8, the 4-way S3-anchor split
  #18, Core-tier split #20, CAP16-Supporting #21, A2A boundary #22, etc.) are
  single-phase readings the per-phase critics already surfaced; none compounds
  across phases.

*critic-report.md written. One clear fix applied (subdomains DLG↔PROT row).*

---

## Pass 2 — independent confirming audit

**Verdict: CLEAN** — 0 new defects; 0 blocking residuals. The pass-1 fix is verified
good and introduced no new break. Remaining items are the same pre-existing,
already-logged judgment calls for the human's single end review.

Fresh independent re-audit of the entire finished set against the frozen vision. The
vision remains byte-identical (only derived files added).

### Pass-1 fix verified — DLG↔PROT / UC13 reconciles across the bundle
The stray `UC13` is gone from `subdomains-and-context-map.md`'s **DLG↔PROT
Customer/Supplier** row, which now cites `UC30, UC72, UC100`. Confirmed this
reconciles everywhere the reference lives:
- `actors.md` — **PROT** rep list `UC30, UC72, UC100`; **DLG** rep list `UC72, UC100`;
  the DLG split-rationale note cites `UC72, UC100`. No stray `UC13`.
- `invariants.md` — **INV12** asserting list `V13; UC30, UC72, UC100, UC113`. No `UC13`.
- `uc-index.md` — `UC13` still filed correctly as **IND · CAP1 · INV2** (L170,
  low-stakes No-action corner); present in the CAP1 reverse-index row.
- `capability-map.md` — `UC13` sits under **CAP1**, not under any delegated-authority
  cluster.
- All three cited UCs (UC30 IND→PROT, UC72 DLG→PROT, UC100 DLG→PROT) are genuinely the
  delegated-authority boundary; `vision-index.md` V13 → `UC30, UC72` agrees.

### No other stray / out-of-range references
- **No UC citation exceeds UC115** anywhere in the bundle (swept `UC116+`; zero hits).
- **No out-of-range `V` / `INV` / `CAP` / `S`** references: all `V` ≤ V46 (all 46
  present, no gaps), `INV` ≤ INV15, `CAP` ≤ CAP22, scope ladder S1–S3. The lone
  `S6` (vision-index.md L128) is a strategy-section citation, not a scope rung — the
  ladder is correctly S1–S3.
- **Scope-rung tallies reconcile** — uc-index native-S2 (11) and native-S3 (13) lists
  are identical to vision-index's, and the S1/S2/S3 = 91/11/13 = 115 split matches.
  **[Phase 12: superseded — this pass-2 figure predates Phase 11. Post-Phase-11 the
  tally is S1 91 / S2 10 / S3 14 = 115, with UC111 moved to native S3 (row 27
  confirmed). See the Phase-12 reconcile section.]**
- **Reverse-index counts sum to 115**; every UC has exactly one primary CAP.

### Bundle-wide judgment checks — all clean (re-confirmed independently)
- **Cross-phase compounding** — none beyond the now-closed UC13 propagation. Serves-line
  back-fill, actor splits, and glossary→capability clustering all reconcile.
- **Single language** — canonical glossary terms used consistently downstream; no synonym
  re-introduced.
- **Altitude** — strategic only; the sanctioned Phase-5 DDD vocabulary and "Generic
  lives inside" callouts are classification, not tactical design. No tech/MVP/phasing leak.
- **Promises reconciled, not edited** — V32/V33/V34 thin-promise and CAP3/CAP15/CAP19
  (+ expected CAP7/CAP8) unpromised-capability flags are surfaced identically in
  capability-map and vision-index; vision untouched.
- **Independently loadable** — each consumable doc restates purpose, cites deps by stable
  ID, and README load-order matches the files present.

### Residuals for the human
Unchanged from pass 1 — the same pre-existing, already-logged single-phase judgment
calls (decisions.md rows 27, 32; SYS-as-actor, 4-way S3-anchor split, Core-tier split,
CAP16-Supporting, A2A boundary, etc.). None is a cross-phase inconsistency; nothing new
surfaced. No fix applied this pass.
**[Phase 12: all of these rows are now `confirmed` — Phase 11 is complete (all 50
decisions.md rows confirmed). Dispositions in the Phase-12 reconcile section.]**

---

# Scoped Vision-diff re-run — Phase 10 whole-bundle critic (pass 1)

**Verdict: CLEAN** — 1 cross-phase straggler found and fixed in place; 0 blocking
residuals; 0 new human-judgment residuals to append. Another critic pass is **not
warranted** (the fix is localized prose; every ID-level relationship already
reconciles).

Audit scope: the entire finished set re-audited against the **current 18-modified-UC
vision** (the canonical vision for this run). What this re-run changed: 18 UC wordings
modified; nothing added/removed/renumbered; S/V/BV byte-identical; 5 intra-cluster
merges via the stub convention (UC4→UC3, UC21→UC64, UC29→UC28, UC82→UC48, UC101→UC96);
cross-file deltas UC28+INV1 and UC64+CAP15 secondary; UC99/UC111 "commitment"→
"obligation". Per-phase re-derivation logged as decisions.md rows 33–50. The vision was
**not** touched.

## FIXED — CAP6 intent still read "as live commitments" (Commitment→Obligation shift)
`capability-map.md`'s **CAP6 — Deadlines, Obligations & the Silent Watch** intent line
read *"Hold the user's standing Obligations as **live commitments**…"* — the exact
phrasing the vision's **UC96** changed away from this run (*"live commitments"* →
*"live obligations"*, decisions.md rows 39, 48). Two compounding problems the per-phase
critics could not see from their own artifact:
1. **Single-language collision.** "commitments" maps to canonical **Commitment** =
   the *user's own* promise (glossary L80); using it to describe *Obligations*
   (world-imposed due things) is the precise term-blur the Phase-2 glossary decision
   (D4/row 39) reserves against.
2. **Stale vs. the current vision.** UC96's own text now says "as live obligations,"
   and the **uc-index UC96 one-liner already reads "as live obligations"** — so the
   capability-map CAP6 intent was the lone straggler that the wording shift did not
   reach.

**Fix:** CAP6 intent now reads *"Hold the user's standing Obligations as **live
obligations**…"*. No ID, membership, `Serves:`, or class change — CAP6 keeps its
11-UC membership (incl. stubs UC4, UC101), Core—differentiating class, and V# set.
This is a clear fix (unambiguous vision-wording + glossary alignment), so it is applied
in place and recorded here; **no decisions.md row added.**

## Merge integrity — all five targets cover their stub's promise, nothing invented
- **UC4→UC3** (CAP6): UC3's widened one-liner ("deadlines/obligations inferred from the
  email itself, no manual due dates") carries UC4's automatic due-date inference. ✓
- **UC21→UC64** (CAP13): UC64's "set up a call … committing the slot" carries UC21's
  scheduling negotiation; UC64 correctly gained the **CAP15** secondary UC21 used to
  carry (uc-index Also = CAP4, CAP15; capability-map CAP13 secondary "UC64→CAP15"). ✓
- **UC29→UC28** (CAP9): UC28's one-liner now names "boss-impersonation and pay-now/wire
  pressure — warn before any money moves," and correctly gained **INV1** (uc-index +
  invariants INV1 asserting list). ✓
- **UC82→UC48** (CAP18): UC48's "answers a legal hold or data-access request" carries
  UC82. ✓
- **UC101→UC96** (CAP6): UC96's "VAT filing, licence, inspection" carries UC101's
  small-business standing legal obligations; UC101 correctly retained as native **S3**
  via the enumerated exception list. ✓

No merge reshaped a cluster boundary, a Core/Supporting tag, or a promise's coverage.

## Stub convention applied uniformly; no double-counting; coverage whole
- **Kept as pointer rows** (ID + actor + primary CAP + native rung; one-liner = "Merged
  into UCx"; INV = "see UCx") in uc-index for all five; UC21's stray CAP4/CAP15
  secondaries cleared. ✓
- **Kept in CAP `UCs:` lines and reverse-index counts** — CAP6 = 11 (UC4, UC101),
  CAP9 = 9 (UC29), CAP13 = 6 (UC21), CAP18 = 4 (UC82); reverse-index total **115**,
  each UC exactly one primary. ✓
- **Dropped from V# realizing lists** — swept vision-index: no stub survives in any
  "Realized by" list (V4/V7/V28/V30/V36 all cite the target only); UC101's sole
  appearance is the native-S3 exception list, which is correct. ✓
- **Dropped from redundant actor/INV rep-lists** — no stub {UC4, UC21, UC29, UC82,
  UC101} remains in actors.md, invariants.md, or subdomains rows (rows 35, 41, 43). ✓
- Scope-rung tally reconciles across uc-index and vision-index (S1/S2/S3 = 91/11/13 =
  115). UC111 stays native S2 in both (the S2-vs-S3 reading is the open call, row 27).
  **[Phase 12: superseded — row 27 resolved to S3 in Phase 11. Current tally is
  S1 91 / S2 10 / S3 14 = 115; UC111 is native S3 in both files. See the Phase-12
  reconcile section.]**

## Other bundle-wide checks — clean
- **Altitude** — the re-run introduced no tactical DDD/tech/MVP/phasing language; the
  edits are wording refinements and stub pointers only.
- **Promises reconciled, not edited** — the thin/unrealized-promise (V32/V33/V34) and
  unpromised-capability (CAP3/CAP15/CAP19; expected CAP7/CAP8) flags are unchanged and
  surfaced identically in capability-map and vision-index. Vision byte-identical.
- **Independently loadable** — unaffected by the re-run.

### Residuals for the human (this re-run)
No **new** human-judgment residual surfaced by the whole-bundle pass. The re-run's
per-phase judgment calls are already logged as decisions.md rows 33–50 (unconfirmed),
alongside the pre-existing rows 1–32, for the single Phase-11 review. Nothing appended
here.

## Scoped Vision-diff re-run — Phase 10 whole-bundle critic (pass 2, confirming)

**Verdict: CLEAN** — 0 new defects; 0 edits applied; 0 new residuals. Pass-3 **not
warranted.** Independent re-scan from disk of the whole finished set against the frozen
vision; the pass-1 CAP6 fix is verified correct and complete.

### Pass-1 CAP6 fix verified good
`capability-map.md` CAP6 intent (L81) now reads *"Hold the user's standing *Obligations*
as **live obligations**…"* — matching the frozen vision UC96 (L559: "hold my standing
obligations as live obligations") and the uc-index UC96 one-liner (L112, "as live
obligations"). The straggler is gone; no ID/membership/`Serves:`/class changed (CAP6
still 11 UCs incl. stubs UC4/UC101, Core—differentiating).

### Commitment≠Obligation collision — swept the whole bundle, none remain
Every surviving occurrence of "commitment(s)" is legitimate, and falls in one of three
sanctioned uses:
- **Canonical Commitment = the user's OWN promise** — glossary L80 (the term def);
  CAP5 intent + Key entities (L70/L77, "the user's own loose ends"); uc-index UC37
  ("loose ends (Commitments)"); CAP20 UC87→CAP5 ("a voicemail promise becomes a tracked
  commitment"); subdomains L35 ("the user's own *Commitments*"). All the user's promises.
- **Generic English (not the domain term)** — INV1 "money and legal commitments never
  move" (vision-sourced gate wording); glossary Errand "before any real commitment";
  invariants L10 altitude-fence "platform commitment".
- **Change-history meta-notes** — glossary L91 ("it earlier read 'live commitments'");
  critic-report + decisions log rows. Documentary, not live description.
No place describes a world-imposed **Obligation** as a "commitment." Collision closed.

### Cross-phase checks re-confirmed
- **Merge integrity** — all five targets cover their stub (UC4→UC3, UC21→UC64,
  UC29→UC28, UC82→UC48, UC101→UC96); UC28+INV1 and UC64+CAP15 propagations intact; no
  stub survives in a V# realizing / actor / INV / subdomains rep-list.
- **Coverage / counts** — all 46 V# present; reverse-index sums to **115**, one primary
  CAP each; S1/S2/S3 = 91/11/13 = 115 reconciles across uc-index and vision-index.
  **[Phase 12: superseded — post-Phase-11 the split is 91/10/14 = 115 (UC111 → S3).]**
- **Stub convention** — uniform pointer rows ("Merged into UCx" / "see UCx"); UC101
  correctly retained in the native-S3 exception list (uc-index L168).
- **Altitude** — no tactical DDD/tech/MVP/phasing leak; the re-run added only wording
  refinements and stub pointers.

Nothing still compounds across artifacts. No edit applied this pass.

---

# Phase 12 — critic reconcile (2026-07-09)

**Verdict: CLEAN.** Phase 11 is complete — **all 50 `decisions.md` rows read
`confirmed`** (zero rows left at low/medium/high). This pass re-ran the whole-bundle
critic machinery over the reconciled set, updated every prior finding with its
disposition, fixed the stale UC111-S2 lines above, and re-verified the full Phase-9
mechanical gate set. **No new human-judgment residual surfaced** — nothing appended
to `decisions.md`; no loop back to Phase 11 required. Critic passes run this reconcile: **2**
(pass 1 applied the stale-line fixes + disposition annotations; pass 2 was a clean
confirming re-scan). The vision was **not** touched.

## Disposition of every prior finding / residual

| Prior finding / residual | Disposition |
| --- | --- |
| Pass-1 cross-phase fix — stray `UC13` in the subdomains DLG↔PROT row (row 29) | **FIXED** — still holds; row now cites `UC30, UC72, UC100`, reconciled across actors / invariants / uc-index / capability-map. |
| Vision-diff fix — CAP6 intent "as live commitments" → "as live obligations" | **FIXED** — still holds; no Obligation is described as a "commitment" anywhere (glossary-collision closed). |
| decisions.md **row 27** — UC111 native S2-vs-S3 | **RESOLVED / accepted-by-human as S3.** Reclassified S2→S3 in `uc-index.md` (row + S2/S3 tallies + `91+10+14=115` checksum) and `vision-index.md` (native-rung exception lists). Stale S2 lines in the Phase-10 passes above superseded in place. |
| decisions.md **row 1** — INV5 cross-cutting | **accepted-by-human, note sharpened.** INV5 build-note now records the *assistant's own* actions/decisions, not surveillance of human/staff (cf. INV10); UC48 the representative demand. Coherent with INV10 seam. |
| decisions.md **row 20** — two-tier Core split | **accepted-by-human, reworded.** `subdomains-and-context-map.md` tier prose + judgment-call note re-anchored from a "vs a rival AI-mail assistant" comparison to the vision's *own* pillars (Memory, S3 anchor watch, proactivity, trust, know-your-normal); competitive validation flagged as a downstream task. Consistent with the unchanged CAP tags/IDs. |
| decisions.md **row 24** — context-map Conformist+ACL | **accepted-by-human, re-tagged.** All six paired boundaries → pure **ACL**; EXT + A2A kept Conformist; system-of-record write half stays Customer/Supplier; DDD pattern **legend** added. Altitude-clean (strategic-design only); every row still cites ≥1 UC. |
| decisions.md **row 32** — BV5 fork-this-file mechanism | **accepted-by-human as unrouted.** INV9 divergence-seam note extended ("must keep it an explicit boundary, never blurred into the on-behalf-of paths"); BV5 substantive facets remain INV1/INV9-homed. |
| Remaining low/med rows (SYS-as-actor #8, 4-way S3-anchor split #18, CAP16-Supporting #21, A2A #22, Separate-Ways #23, mapping calls, merge-stub rows 33–50, etc.) | **accepted-by-human as-is** (all `confirmed`). None was a cross-phase inconsistency. |

## Whole-bundle critic re-run over the reconciled set — clean

- **Cross-phase compounding** — none. The four Phase-11 edits are self-contained: the
  INV5/INV9 note sharpenings introduce no new term and cite existing INVs; the Core-tier
  reword carries no competitive framing into any other file (README/capability-map
  unaffected); the ACL re-tag's paired-label lived only in subdomains and is fully
  resolved; UC111→S3 realizes no explicit V#, so no `V#` realizing list or coverage
  gap shifted.
- **Single language** — the reworded Core-tier prose and ACL legend use only canonical
  terms + the sanctioned Evans context-mapping vocabulary. No synonym reintroduced.
- **Altitude held** — the ACL re-tags + legend are strategic-design only (no tactical
  DDD / tech / MVP / phasing); the "ACL *implementation* deferred to architecture" note
  keeps the fence.
- **Promises reconciled, not edited** — thin/unrealized (V32/V33/V34) and
  unpromised-capability (CAP3/CAP15/CAP19; expected CAP7/CAP8) flags unchanged and
  surfaced identically in capability-map + vision-index. Vision byte-identical.
- **Independently loadable** — each consumable doc still stands with glossary +
  invariants; the subdomains pattern legend makes that file self-contained on the DDD
  vocabulary.

## Phase-9 mechanical gate set — re-verified after the Phase-11 edits

| Gate | Result |
| --- | --- |
| **Vision byte-unchanged** | **PASS** — this pass added/edited only companion files; the frozen vision was not touched. |
| **Total coverage = 115** — each UC ≥1 primary CAP + ≥1 actor, zero orphans | **PASS** — uc-index UC1–UC115 each carry a scope, actor, and one primary CAP; reverse-index sums to 115. |
| **Parked BV routed** — each to exactly one home | **PASS** — BV1→INV6/INV7, BV2→INV7, BV3→INV15, BV4(a)→INV7 / BV4(b)→deferred-inputs, BV5→INV1/INV9. Zero orphans. |
| **Every V# / S#** — V# → S# + ≥1 realizing UC or flagged gap; each S# on the ladder with anchor + horizon citing the architecture-lens | **PASS** — V1–V46 all mapped; S1–S3 ladder, S3 anchor, horizon row cites `…-architecture-lens.md`, not re-derived. |
| **Invariants cited** — every INV by ≥1 UC, not restated verbatim | **PASS** — INV1–INV15 each carry asserting UCs; UC descriptions reference by ID. |
| **Bidirectional links resolve** | **PASS** — uc-index spot-checks (UC102/UC57/UC97/UC43) trace forward and back. |
| **Re-run check — UC111 native S3 consistent, checksum intact** | **PASS** — UC111 native **S3** in both uc-index (row + S3 list + `91 + 10 + 14 = 115`) and vision-index (native-S3 exception list; absent from native-S2). S2 list = 10, S3 list = 14. |

No mechanical gate fails. Bundle is internally consistent and ready for finalize.

---

# Phase 10 — whole-bundle critic, partial skill-Upgrade audit (2026-07-10)

**Verdict: CLEAN** — 0 mechanical defects; 0 auto-fixes needed; **1 new low-confidence
judgment residual appended to `decisions.md` (D70)**; the bundle is internally consistent
across the Upgrade edits. This pass audits the out-of-band **partial skill-Upgrade**
(hand-applied 2026-07-10, `fix_ucorphan.md` + `fix_sdcmap.md`, skill hash 984bcc7e… →
c47d20a8…) that the Phase-10 critic had **never** run against. The vision was **not**
touched (`git status` confirms `ai-mail-foundation-vision.md` and the architecture-lens
sibling are byte-unchanged). **Not finalized** — Phase 11 (D51–D70) and Phase 12 remain.

Audit scope: the whole finished set re-read from disk against the frozen vision, with
adversarial focus on the three Upgrade shape areas — the unpromised-UC treatment, the
context-map `Relationship` enum, and the appended `decisions.md` rows D51–D69.

## Unpromised-UC treatment — clean, all three surfaces agree
- **28-UC set matches exactly across all three lists.** `uc-index.md` `Scope = —` set,
  `vision-index.md` `## Unpromised UCs` table, and `vision-index.md`'s native-rung
  Unpromised bucket are **identical**: UC4, UC6, UC7, UC9, UC12, UC16, UC18, UC20, UC21,
  UC27, UC29, UC31, UC36, UC39, UC44, UC47, UC53, UC56, UC60, UC62, UC67, UC71, UC77,
  UC82, UC84, UC89, UC92, UC93 (28). No `Scope = —` UC is absent from the table; no table
  UC has a non-`—` scope. Diff clean.
- **Tally sums to 115.** uc-index scope-rung tally **S1 63 + S2 10 + S3 14 + `—` 28 =
  115**; matches the vision-index native-rung rule + exception lists (native-S3 14,
  native-S2 10, Unpromised 28, native-S1 63 catch-all). The pre-Upgrade S1 91 → 63 shift
  = the 28 unpromised UCs pulled out of the S1 catch-all; arithmetic reconciles.
- **Every unpromised entry has a filled "Reason no V# fits"** (all 28 table rows).
- **No unpromised UC actually realizes a V#** — swept all 46 `V#` "Realized by" lists;
  none of the 28 appears in any. The partition is real (87 promised + 28 unpromised).
- **Core-gate rows exact.** The 18 unpromised UCs whose primary CAP is **Core** (per
  `subdomains-and-context-map.md`) each carry a †/decisions row: UC4, UC6, UC9, UC12,
  UC16, UC20, UC21, UC29, UC31, UC36, UC47, UC60, UC62, UC71, UC77, UC89, UC92, UC93 →
  **D51–D68** (order-aligned, verified row-by-row). The 10 Supporting-CAP unpromised UCs
  (UC7, UC18, UC27, UC39, UC44, UC53, UC56, UC67, UC82, UC84) correctly carry **no** row
  (none escalated). Each Core-gate UC's CAP-class tag in the Unpromised table matches both
  its uc-index primary CAP and the subdomain classification.

## Context-map `Relationship` enum — clean, one enum value per cell
- **Every `Relationship` cell is a single enum value** from the fixed vocabulary
  (Partnership / Shared Kernel / Customer/Supplier / Conformist / ACL / Open Host Service
  / Published Language / Separate Ways). No hybrids, no `+`, no free-form qualifier in the
  Relationship cell.
- **The directional split is two rows, not a hybrid** — System-of-record **read** (ACL)
  and **write** (Customer/Supplier) are separate rows citing UC106/115/73; this realizes
  the already-confirmed **D24** (read → ACL, write stays Customer/Supplier), so no new row
  is owed for the split.
- **A2A (UC71) → Conformist** with the latent Published-Language future kept only as a
  translation-cell note; **both Conformist rows read `Translation needed? = No`** — no
  Conformist row pairs with translation. Covered by the new **D69**.
- **Legend added and altitude-clean.** The `### Legend` is Evans strategic-design context-
  mapping vocabulary (Part IV / Ch. 14) — sanctioned Phase-5 vocabulary, kept out of the
  product glossary. No tactical DDD / tech / platform / MVP-phasing leaked in with it.

### RESIDUAL → decisions.md D70 — Extension boundary enum collapse un-surfaced
The Upgrade collapsed the **Product ↔ specialist Extension** boundary from an
`Open Host Service + Published Language` hybrid to a single **Open Host Service** — but,
unlike the structurally-parallel Conformist collapse (which got **D69**), it was left with
**no backing decision row**. The collapse is defensible and higher-confidence than D69
(OHS and Published Language *compose* — OHS is the relationship, PL the contract's form —
rather than being mutually exclusive like Conformist-vs-ACL), so it is **not** a mechanical
error to auto-fix. But it is a bundle-owned strategic-design reading a human must uphold,
so per "surface, don't silently resolve" it is **appended to `decisions.md` as D70 (low)**
for the Phase-11 review, keeping the enum-normalization audit trail complete. No artifact
edited.

## Other bundle-wide judgment checks — clean
- **Cross-phase compounding** — none. The unpromised-UC signal propagates consistently
  from subdomain CAP-class → vision-index Unpromised table → uc-index scope column →
  decisions D51–D68; the context-map enum edits live only in
  `subdomains-and-context-map.md` and its two decisions rows (D69, new D70). No earlier-phase
  reading mis-propagated into the Upgrade edits.
- **Single language** — the Upgrade introduced no synonym; canonical glossary terms and the
  sanctioned Evans vocabulary only. "Customer/Supplier", "ACL", "Open Host Service",
  "Published Language" used consistently against the Legend.
- **Altitude held everywhere** — no tactical pattern, tech/platform, or MVP-phasing leaked
  into any Upgrade edit; the enum values and Legend are strategic design only.
- **Promises reconciled, not edited** — the three S9 coverage signals (unpromised UCs,
  thin/unrealized promises V32/V33/V34, unpromised capabilities CAP3/CAP15/CAP19 + expected
  CAP7/CAP8) are all surfaced across the set; the vision is byte-unchanged.
- **Independently loadable** — each doc still stands alone with glossary + invariants; the
  new Legend makes `subdomains-and-context-map.md` self-contained on the DDD vocabulary.

## Residuals routed this pass
- **decisions.md D70** (Phase 5, **low**) — Extension boundary tagged Open Host Service
  (dropping the co-listed Published Language descriptor from the enum). Cites UC79, UC83;
  INV12; D24, D69.

The Upgrade edits are internally consistent; the only residual is the newly-surfaced D70,
which joins D51–D69 for the single Phase-11 human review. Nothing else compounds across
artifacts. No mechanical fix was required this pass.

---

# Phase 12 — critic reconcile (2026-07-10, skill-Upgrade cycle)

**Verdict: CLEAN.** Phase 11 (D51–D70) is complete — **all 70 `decisions.md` rows read
`confirmed`** (zero rows left at low/medium/high). This reconcile pass re-read the frozen
vision and the entire bundle from disk, recorded the disposition of the Upgrade-cycle rows
D51–D70, and re-ran the full Phase-9 mechanical gate set against the post-Phase-11 state.
**No companion artifacts were edited in Phase 11** (D51–D68 blanket-confirmed as-is; D69
and D70 walked individually and confirmed as-is), so this pass is a verification-and-record
pass — **no artifact fixes were required**. **No new human-judgment residual surfaced** —
nothing appended to `decisions.md`; no loop back to Phase 11. The vision was **not** touched
(`git status` shows `ai-mail-foundation-vision.md` and the architecture-lens sibling
byte-unchanged). This supersedes the head-of-file "50 rows" reconcile (2026-07-09), which
predates the Upgrade cycle; that section remains as history.

## Disposition of the Upgrade-cycle rows (D51–D70)

| Row(s) | Reading | Disposition |
| --- | --- | --- |
| **D51, D57, D58** — merge-stub tombstones (UC4→UC3, UC21→UC64, UC29→UC28) | Unpromised (`Scope = —`) because content + promise moved to the merge target; preserved, not force-fit. | **accepted-by-human as-is** (blanket-confirmed). Reconciles across uc-index `Scope = —` set, vision-index Unpromised table, and the merge-stub pointer rows. |
| **D52, D53, D54, D55, D56, D59–D68** — 15 Core-gate under-promise rows | Each Core-CAP unpromised UC surfaced as a candidate vision under-promise, not gold-plating. | **accepted-by-human as-is** (blanket-confirmed). Each carries a filled "Reason no V# fits"; none realizes a `V#`. |
| **D69** — both Conformist boundaries (EXT correspondent, A2A) → `Translation = No` | Identity/provenance masking (INV9) rewrites *who is speaking*, not a foreign *model* → no ACL; Conformist stands, A2A collapses to single Conformist with the Published-Language future kept as a note. | **accepted-by-human as-is** (walked individually). Decision cell carries the "Phase 11 (2026-07-10): confirmed as-is" note. Both Conformist rows read `Translation needed? = No`; no Conformist row pairs with translation. |
| **D70** — Extension boundary → single `Open Host Service` (Published Language kept as descriptor) | OHS (the relationship) and Published Language (the contract's form) are complementary Evans layers, not rival tags; OHS is the single enum, PL composes in the "Who owns the language" cell. | **accepted-by-human as-is** (walked individually). Decision cell carries the "Phase 11 (2026-07-10): confirmed as-is" note. Extension row is a single OHS enum. |

The Upgrade's three shape changes (unpromised-UC treatment across uc-index + vision-index;
context-map `Relationship` enum normalization in subdomains-and-context-map) are now
**human-adjudicated**, and the two context-map judgment calls (D69, D70) are resolved. No
prior finding still points at a since-edited artifact; the stale UC111-S2 lines in the
Phase-10 passes above stay annotated `[Phase 12: superseded]`, and UC111 still reads **S3**
end-to-end (uc-index row + native-S3 list; vision-index native-S3 exception list) — no
staleness reintroduced.

## Phase-9 mechanical gate set — re-verified against the post-Phase-11 state

| Gate | Result |
| --- | --- |
| **Vision byte-unchanged** | **PASS** — `git status` clean for `ai-mail-foundation-vision.md` + architecture-lens; only companion files present. |
| **Total coverage = 115** — each UC ≥1 primary CAP + ≥1 actor, zero orphans | **PASS** — reverse-index CAP counts sum to 115 (9+3+8+8+7+11+2+3+9+4+8+5+6+8+3+5+3+4+2+2+3+2); every UC1–UC115 carries a scope, actor, one primary CAP. |
| **Promise coverage / Core-gate** — each UC in exactly one state; `Scope = —` set = Unpromised table; tally = 115 | **PASS** — uc-index `Scope = —` set (28) is identical to the vision-index `## Unpromised UCs` table (28) and the native-rung Unpromised bucket (28); tally **63 + 10 + 14 + 28 = 115**. The 18 Core-gate unpromised UCs each carry a D51–D68 row (order-aligned); the 10 Supporting-CAP unpromised UCs correctly carry none; every unpromised entry has a filled "Reason no V# fits"; no unpromised UC appears in any `V#` "Realized by" list. |
| **Every V# / S# present** — V# → S# + ≥1 realizing UC or flagged gap; each S# on the ladder with anchor + horizon citing the architecture-lens | **PASS** — all 46 V# (V1–V46) mapped, none out of range; S1–S3 ladder, S3 anchor, horizon row cites `…-architecture-lens.md` (not re-derived). |
| **Invariants cited** — every INV by ≥1 UC, not restated verbatim | **PASS** — INV1–INV15 each carry ≥1 asserting UC; UC/CAP descriptions reference by ID. |
| **Parked BV routed** — each to exactly one home | **PASS** — BV1→INV6/INV7, BV2→INV7, BV3→INV15, BV4(a)→INV7 / BV4(b)→deferred-inputs, BV5→INV1/INV9. Zero orphans. |
| **Bidirectional links resolve** | **PASS** — uc-index spot-checks (UC102/UC57/UC97/UC43) trace forward and back. |
| **Context-map enum** — every Relationship cell a single enum value; no Conformist row paired with translation; Extension = single OHS | **PASS** — all 16 rows single-enum; both Conformist rows read `Translation = No`; the system-of-record boundary is two directional rows (read → ACL, write → Customer/Supplier), not a hybrid; Extension = single Open Host Service. |

No mechanical gate fails. **No new unconfirmed residual raised.** The bundle is internally
consistent and reconciled to the confirmed state; ready for the orchestrator to finalize.
