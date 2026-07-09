# Build status — ai-mail vision AI-spec companion

status: finalized
debug: off
built-with-hash: 984bcc7e2d412fea8d1de078f3268927af002e27
# ^ intentionally NOT re-stamped this pass — the skill-Upgrade sub-mode was DEFERRED
#   (Vision-diff scoped re-run only). Current skill hash still drifts (c985a30b… ≠ 984bcc7e…),
#   so this bundle still carries the pre-Upgrade skill shape; a future Upgrade re-run re-stamps it.
vision: ../ai-mail-foundation-vision.md
architecture-lens sibling: ../ai-mail-foundation-vision-architecture-lens.md
vision-manifest: vision-manifest.md (per-ID fingerprint of the vision @ tag `temp1-reference`)

## Run kind

**Vision-diff (scoped) review re-run (2026-07-07, in progress).** `_status.md` was
`finalized`; user explicitly re-opened for a scoped vision-diff pass, **deferring the
skill-Upgrade sub-mode** (skill hash drifted c985a30b… ≠ 984bcc7e… but the user chose to
scope only to changed vision items this pass). Phase 0 manifest diff vs `temp1-reference`
confirmed the changeset: **18 UCs modified, nothing added/removed/renumbered, S/V/BV
byte-identical** — UC3, UC4, UC15, UC21, UC28, UC29, UC48, UC50, UC58, UC59, UC64, UC68,
UC82, UC88, UC96, UC99, UC101, UC111. Method reproduced 169/169 non-UC + 97 unchanged UC
hashes on first try; git-diff cross-check agrees. Several changed UCs are merge stubs
(UC4→UC3, UC21→UC64, UC29→UC28, UC82→UC48, UC101→UC96) → their closure re-opens cluster
siblings. Re-derive only the changed UCs' closure under the spine; keep untouched artifacts;
global Phase 9 gate + Phase 10 critic; **full** Phase 11 review of all 29 open rows (D4/D5/D7
stand); Phase 12 fresh manifest + re-finalize.

### Vision-diff re-run progress (2026-07-07)

Scoped builder+critic loops COMPLETE, all critics clean:
- [x] P1 invariants — UC28 gains INV1; INV1/INV5 stub-lists tidied; UC28/INV3 declined (row 34). Rows 33–35.
- [x] P2 glossary — stale UC96 "commitment" citation rewritten; no term add/drop; D4 verdict intact. Row 39.
- [x] P3 actors — no actor add/drop; ORG/EXT rep-lists + 2 UC82 prose cites tidied. Rows 40–41.
- [x] P4 capability-map — CAP6/9/13/18 stable; UC64→CAP15 secondary added (med, row 37); count 115. Rows 36–38.
- [x] P5 subdomains — byte-unchanged; tiers stable; no stub in relationships. Rows 42–43.
- [x] P6 vision-index — V4/V7/V28/V30/V36 drop stubs; every V still ≥1 UC (no gap). Rows 44–46.
- [x] P7 uc-index spine — 17 rows re-derived; 115/zero-orphan; INV1 & CAP15 reflected; UC68/CAP6 declined (low, row 50). Rows 47–50.
- decisions.md now 50 rows (orig 1–32 + re-run 33–50). Open for Phase 11: 29 pre-existing open (D4/D5/D7 confirmed) + 18 new = **47 rows** to confirm (+ any Phase 10 residuals).
- [x] Phase 9 global mechanical gate — GREEN, all 8 gates, zero fixes, no blocker.
- [x] Phase 10 whole-bundle critic — CLEAN. Pass 1 fixed 1 straggler (CAP6 intent "live commitments"→"live obligations"); pass 2 clean, no edit. critic-report.md updated. No new residuals.

### ✅ Phase 11 COMPLETE (2026-07-09) — all 47 open rows adjudicated → Phase 12 next

**PHASE 11 DONE.** All 50 decisions.md rows now read `confirmed` (exit gate met: zero
low/medium/high remaining, verified by grep). The 17 high rows were batch-confirmed as-is on
the human's explicit blanket adjudication (mechanical merge-stub bookkeeping). **Next up:
Phase 12 — re-spawn whole-bundle critic to reconcile the Phase-11 edits, then finalize.**

Row 45 (V7's realizing list narrows to UC64/73 after
UC21→UC64 merge, D26 intact) confirmed as-is. Row 37 (UC64→CAP15 secondary on CAP13 line,
post-merge bookkeeping) confirmed as-is. Row 31 (UC30 carries INV10 in uc-index, reconciled to
invariants.md) confirmed as-is. Row 27 (UC111 native rung)
confirmed WITH an edit — human chose **S3** (aligns with the row-15 CAP6/S3 primary); edit
sub-agent reclassified native S2→S3 in `uc-index.md` (UC111 row + S2/S3 tallies + checksum:
S1 91 + S2 10 + S3 14 = 115) and `vision-index.md` (native-rung exception lists). UC111 now S3
end-to-end. Row 26 (UC102 out of V7, stays native-S3) confirmed as-is. Row 25 (V34 primary
CAP) confirmed as-is (CAP14) after a counter-question — HITL for team inboxes is guaranteed by
INV1 (cites V34 + UC63) independent of the CAP12/CAP14 clustering, and INV8 can never repeal
INV1's money/legal gate. No sub-agents in flight between rows.

**Done — all 12 low-confidence rows CONFIRMED** (3, 8, 13, 14, 15, 21, 22, 23, 28, 32, 34, 50)
plus **ALL 17 medium rows CONFIRMED** (1, 2, 6, 9, 10, 11, 16, 17, 18, 19, 20, 24, 25, 26, 27, 31, 37, 45) (rows 6, 16, 19, 25, 31, 37, 45 confirmed
as-is after counter-question discussion; **rows 20, 24 and 27 confirmed WITH an edit**, see below). Directed
edits so far touched three files:
- **Row 32:** confirmed unrouted, WITH a strengthening edit to `invariants.md`: INV9's
  divergence-seam note now reads "must keep it an explicit boundary, never blurred into the
  on-behalf-of paths"; INV1's relaxable-layer build note was already present (L21), left as-is.
- **Row 1:** confirmed INV5 cross-cutting, WITH a wording sharpening to `invariants.md`: INV5's
  build-note now states it records the *assistant's own* actions/decisions, not surveillance of
  the human/staff (cf. INV10), and UC48 is the representative demand while the invariant rides
  under every assistant action path. INV5 statement + citations unchanged.
- **Row 20:** confirmed the two-tier Core split, WITH a rationale re-anchor edit to
  `subdomains-and-context-map.md`: the "Core — differentiating" basis reworded from a
  "vs a rival AI-mail assistant" competitive comparison (no competitive research was done) to the
  vision's *own* declared pillars/anchor (Memory, S3 anchor watch, proactivity, trust,
  know-your-normal); a note now flags competitive validation as a downstream task. Both the
  tier-definition prose and the embedded judgment-call note changed; all CAP tags/IDs byte-stable.
- **Row 24:** confirmed the context-map re-tag, WITH a directed edit to
  `subdomains-and-context-map.md` (via edit sub-agent): all six contradictory **Conformist + ACL**
  boundary tags resolved to pure **ACL** (external mail provider, chat providers, system-of-record
  *read* half, silent portal, world-events feed, omni-format sources — each wraps a foreign payload
  into our own model); EXT kept **Conformist** (identity-only translation, INV9); A2A untouched
  (row 22, confirmed). A DDD **pattern legend** was added for independent loadability. Row 24 cites
  broadened to all six boundaries. Skill defect captured in
  `create-vision-companion/fix_sdcmap.md` (deferred fix — do NOT fix mid-run).
- **Consequence for Phase 12:** FOUR companion files were edited during Phase 11 → the Phase-12
  whole-bundle critic MUST reconcile all of them: `invariants.md` (INV9 + INV5),
  `subdomains-and-context-map.md`, `uc-index.md`, and `vision-index.md`.
  `subdomains-and-context-map.md` carries **two** Phase-11 edits: the row-20 Core-tier rationale
  reword **and** the row-24 context-map re-tag (six ACL resolutions + EXT-kept-Conformist) plus the
  new pattern legend. `uc-index.md` + `vision-index.md` carry the **row-27 UC111 native S2→S3
  reclassification** (UC111 row, S2/S3 tallies + 91+10+14=115 checksum, native-rung exception lists).
  Re-check: INV9's asserting-list/consumers, INV5's build-note vs INV10 seam, the reworded Core-tier
  rationale/judgment-call note vs the unchanged CAP tags, that the ACL re-tags + legend stay
  altitude-clean (strategic only) with every context-map row still citing ≥1 UC, and that UC111 reads
  native S3 consistently across uc-index + vision-index with counts intact.
- **Stale reference for Phase 12 to reconcile:** `critic-report.md` (L91, L228) still records UC111
  as native S2 and calls the S2-vs-S3 reading "the open call, row 27" — now resolved to S3. The
  Phase-12 critic must update those lines to reflect the confirmed S3 disposition.

**Still open — 0 rows.** All 50 confirmed. Phase 11 exit gate met (verified by grep: zero
low/medium/high in decisions.md; 50 `confirmed`).

### ⏸️ PAUSED before Phase 12 (2026-07-09) — user will run Phase 12 in a FRESH session

Phase 11 is DONE and on disk. **No sub-agents in flight** — the Phase-12 whole-bundle critic
was never spawned (user paused before it launched). Clean checkpoint. The ONLY remaining work
is Phase 12 (critic reconcile → finalize).

**To resume Phase 12 in a fresh session:** re-invoke `create-vision-companion`, point at this
bundle. Phase 0 sees `status: in-progress`, next phase = 12. Then read
[rubrics-9-12.md](../../../.claude/skills/create-vision-companion/rubrics-9-12.md) §Phase 12 and:

1. **Re-spawn the whole-bundle critic** (fresh sub-agent, Phase-10 machinery) to update
   `critic-report.md` and reconcile the **four Phase-11-edited files**:
   - `invariants.md` — INV9 divergence-seam note + INV5 build-note-vs-INV10 seam (rows 32, 1)
   - `subdomains-and-context-map.md` — row-20 Core-tier rationale reword **and** row-24 six-ACL
     re-tag + EXT-kept-Conformist + new pattern legend
   - `uc-index.md` + `vision-index.md` — row-27 UC111 native **S2→S3** (row + S2/S3 tallies +
     91+10+14=115 checksum + native-rung exception lists)
   Plus fix the **stale `critic-report.md` UC111-S2 references (L91, L228)** → confirmed S3.
2. **Re-run the Phase-9 mechanical gates** (coverage 115, bidirectional links, INV-cited,
   parked-items routed, every V#/S# present, vision byte-unchanged; + UC111 native S3 consistent).
3. If the critic surfaces a **NEW** human-judgment residual → append to `decisions.md`
   (unconfirmed) and **loop back to Phase 11** for that one row; do NOT self-confirm it.
4. If clean → **finalize:** flip `status: finalized`, record date + what this pass changed,
   re-stamp `built-with-hash`, and **overwrite `vision-manifest.md`** with a fresh per-ID
   fingerprint of the NOW-CURRENT vision (the 18 changed UCs). NOTE: skill Upgrade sub-mode
   stays DEFERRED (hash still drifts c985a30b… ≠ 984bcc7e…) — a separate future re-run.

**Phase 11 history (COMPLETE 2026-07-09):** all 47 open rows walked one-at-a-time in confidence
order (12 low → 17 medium → 17 high); D4/D5/D7 already confirmed and left standing. Directed
edits during the review: rows 1, 32 → `invariants.md`; rows 20, 24 → `subdomains-and-context-map.md`;
row 27 → `uc-index.md` + `vision-index.md` (UC111 S2→S3). All other rows confirmed as-is; the 17
high rows batch-confirmed on the user's explicit blanket adjudication. See the "Consequence for
Phase 12" block above for the full reconciliation checklist.

### To resume in a fresh session
Re-invoke the `create-vision-companion` skill (read its SKILL.md → Phase 0 detects this bundle,
sees `status: in-progress`, resumes). Point it at this bundle and say: **Phase 11 is complete —
run Phase 12** (re-spawn the whole-bundle critic to reconcile the four Phase-11-edited files +
the stale critic-report.md UC111-S2 reference, re-run the mechanical gates, then finalize). Full
Phase-12 checklist is in the "PAUSED before Phase 12" block above.

---

Prior run — Upgrade re-run (2026-07-06). Prior bundle (Jun 29) had no `_status.md` and no
`built-with-hash`, predating both mechanisms. Skill drifted since (added
`vision-index.md`, `deferred-inputs.md`, review artifacts, new ID layers) AND the
vision content moved (commits "Extend vision" / "made vision sharper" / "enhanced
ai-mail vision scope"). Therefore all phases 1–8 re-run against the *current*
frozen vision; still-correct artifacts kept, stale ones replaced; missing files created.

## Vision inventory (Phase 0 setup sub-agent fills)

- ID schemes present: **S#** = 3 (S1–S3; S3 carries `*(anchor)*`, S1/S2 have no per-rung anchor or horizon marker — the single horizon is the shared `Beyond the horizon` sibling-vision note). **V#** = 46 (V1–V46, no gaps/dups; S1 holds 30 [V1–5,7,9–17,19–33], S2 holds 6 [V6,8,43–46], S3 holds 10 [V18,34–42]). **UC#** = 115 (UC1–UC115, contiguous, no gaps or duplicate numbers). **BV#** = 5 (BV1–BV5). (INV/CAP layers reserved by later phases — not created here.)
- Coverage targets: all 115 UCs (100%) must land in uc-index; each of the 46 V# must trace to ≥1 UC or be flagged a coverage gap; each of the 3 S# must appear on the ladder with anchor + horizon.
- Hard blocker: NONE. Vision is finalized (filename not `*.wip`, reads as a frozen artifact); no irreconcilable self-contradiction; mechanical gate is structurally meetable.

## Phase checklist

- [x] Phase 0 — setup & blocker check (no blocker; 3 S#, 46 V#, 115 UC#, 5 BV#)
- [x] Phase 1 — invariants.md (15 INVs; critic passed, 1 fix; 3 residuals logged)
- [x] Phase 2 — glossary.md (38 terms; critic passed, 2 fixes; 4 residuals)
- [x] Phase 3 — actors.md (11 actor types, 16 personas; critic +HH, 2 fixes; rows 8–11)
- [x] Phase 4 — capability-map.md (22 CAPs; coverage clean 115/115; rows 12–18)
- [x] Phase 5 — subdomains-and-context-map.md (12C/10S/0G; 15 rels; 2 altitude fixes; rows 19–24)
- [x] Phase 6 — vision-index.md (46 V# mapped; Serves back-fill done; 2 fixes; rows 25–28)
- [x] Phase 7 — uc-index.md (115 rows; coverage+links clean; UC13/V13 fixed at source; rows 29–31)
- [x] Phase 8 — deferred-inputs.md (5 BVs homed once; BV4 GTM routed; row 32)
- [x] Phase 9 — README.md + mechanical gate pass (GREEN, all 6 gates; vision byte-unchanged)
- [x] Phase 10 — whole-bundle critic CLEAN (both passes)
- [x] Phase 11 — decisions.md human review COMPLETE (2026-07-09): all 50 rows `confirmed`. Directed edits: rows 1, 32→invariants.md; rows 20, 24→subdomains-and-context-map.md; row 27→uc-index.md + vision-index.md. 17 high rows batch-confirmed.
- [x] Phase 12 — COMPLETE (2026-07-09): whole-bundle critic reconciled the 4 Phase-11-edited files + fixed stale critic-report.md UC111-S2 refs (verdict CLEAN, no new residuals, 2 passes); Phase-9 mechanical gates all GREEN (UC111 native-S3 checksum 91+10+14=115); vision-manifest.md re-baselined; status flipped to `finalized`.

## Open threads

- **RESOLVED (2026-07-09).** The formerly-incomplete Phase 11 human review is now COMPLETE — all
  50 decisions.md rows walked one-at-a-time and set to `confirmed` (the 47 open rows this pass +
  the 3 pre-confirmed D4/D5/D7). Nothing open.

## Open low-confidence decisions

0 open — all 50 rows `confirmed`.

## Run log

- 2026-07-06 — Upgrade re-run built phases 0–10; whole-bundle critic clean, mechanical gates
  green; held at the Phase 11 human-review gate.
- 2026-07-07 — Retroactive finalize to seed the re-run machinery: wrote `vision-manifest.md`
  (per-ID fingerprint of the vision @ git tag `temp1-reference` = commit c7ce833, the frozen
  vision this bundle was derived from) and stamped `built-with-hash`. Status flipped to
  `finalized` so the next skill invocation is treated as a re-run, not an in-progress resume.
  Phase 11 human review left incomplete (see Open threads).
- 2026-07-09 — **Vision-diff (scoped) re-run FINALIZED.** Phase 11 completed (all 50 decisions
  `confirmed`; directed edits rows 1,32→invariants.md, rows 20,24→subdomains-and-context-map.md,
  row 27→uc-index.md+vision-index.md UC111 S2→S3). Phase 12 whole-bundle critic reconciled those
  four files + fixed stale critic-report.md UC111-S2 refs → CLEAN, no new residuals. Phase-9
  mechanical gates re-run GREEN (coverage 115, bidirectional links, INV-cited, BV routed, every
  V#/S# present, vision content-unchanged; UC111 native-S3 checksum 91+10+14=115). What this pass
  changed vs the prior finalize: the 18 re-derived UCs' closure across the spine, the four
  Phase-11 human edits, and a re-baselined `vision-manifest.md`.
  - **vision-manifest.md re-baselined** to fingerprint the now-current working-tree vision. Human
    chose to KEEP an intentional whole-section re-spacing (a blank line inserted between every UC
    list item, whitespace-only, zero content change). So vs the `temp1-reference` manifest, 107 UC
    hashes differ = 18 genuine content edits + 89 whitespace-only re-spacing; S#/V#/BV# byte-identical.
    Next re-run's Phase 0 diffs against THIS baseline.
  - **built-with-hash intentionally NOT re-stamped** — skill-Upgrade sub-mode stays DEFERRED; a
    future Upgrade re-run (current skill hash c985a30b… ≠ 984bcc7e…) is still on the table.

## Next run (what Phase 0 will detect)

`status: finalized` → this is now a **re-run**. Phase 0's two drift checks:

- **Vision drift (manifest):** the working vision has moved since `temp1-reference` —
  **18 UCs modified, nothing added/removed/renumbered**: UC3, UC4, UC15, UC21, UC28, UC29,
  UC48, UC50, UC58, UC59, UC64, UC68, UC82, UC88, UC96, UC99, UC101, UC111. S/V/BV all
  byte-identical. A handful of IDs → the economical path is a **Vision-diff (scoped) re-run**.
- **Skill drift (hash):** current skill fingerprint c985a30b… ≠ build-time 984bcc7e… → the
  skill also drifted since this bundle was built, so an Upgrade sub-mode is also on the table.
  The Phase 0 fork lets the human pick; Vision-diff is the sub-mode that matches the ask.
