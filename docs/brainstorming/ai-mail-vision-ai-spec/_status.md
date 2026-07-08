# Build status — ai-mail vision AI-spec companion

status: in-progress
debug: off
built-with-hash: 984bcc7e2d412fea8d1de078f3268927af002e27
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

### ⏸️ RESUME HERE — Phase 11 full human review (PAUSED mid-review; 12 of 47 adjudicated)

Paused 2026-07-08 at the user's request for a fresh session. No sub-agents in flight.

**Done — all 12 low-confidence rows CONFIRMED** (3, 8, 13, 14, 15, 21, 22, 23, 28, 32, 34, 50).
All upheld the builder's reading; the only directed change was on **row 32**:
- Row 32 confirmed unrouted, WITH a strengthening edit applied by a sub-agent to
  `invariants.md`: INV9's divergence-seam note now reads "must keep it an explicit boundary,
  never blurred into the on-behalf-of paths"; INV1's relaxable-layer build note was already
  present (L21), so it was left as-is. Row 32's decisions.md cell records this.
- **Consequence for Phase 12:** `invariants.md` was edited during Phase 11 → the Phase-12
  whole-bundle critic MUST reconcile it (and re-check INV9's asserting-list/consumers).

**Still open — 35 rows to confirm:**
- **18 medium** (next up): 1, 2, 6, 9, 10, 11, 16, 17, 18, 19, 20, 24, 25, 26, 27, 31, 37, 45.
  Watch the interacting pair **15 + 27**: row 15 already CONFIRMED UC111 primary = CAP6/S3;
  if the user wants UC111 S3 end-to-end, row 27 (native rung S2) must be aligned to S3
  (edit vision-index.md + uc-index.md via sub-agent) when it comes up.
- **17 high** (bulk, mostly mechanical merge-stub conventions): 12, 29, 30, 33, 35, 36, 38,
  39, 40, 41, 42, 43, 44, 46, 47, 48, 49.

**To resume:** re-invoke create-vision-companion, point at this bundle, say "continue the
Vision-diff re-run at Phase 11 — resume the human review, 12/47 done, start at the 18 medium
rows." Confirm each row's Confidence cell → `confirmed` as you go. After all 47 → Phase 12
(re-spawn whole-bundle critic to reconcile the invariants.md edit, then finalize).

All builder/critic work (Phases 0–10) for this Vision-diff re-run is DONE and on disk;
no sub-agents in flight. The ONLY remaining work is the human review + Phase 12 finalize.

- **Scope:** walk ALL 47 open rows in `decisions.md`, one at a time, per the user's directive
  (a FULL review, not just changeset-reopened rows). Rows **D4, D5, D7 (rows 4,5,7) are already
  `confirmed` and STAND** — do not reopen. Every other row (1,2,3,6,8–50) must reach `confirmed`
  before Phase 12 (which requires every row confirmed).
- **Confidence split of the 47:** 12 low (3,8,13,14,15,21,22,23,28,32,34,50), 18 medium
  (1,2,6,9,10,11,16,17,18,19,20,24,25,26,27,31,37,45), 17 high (12,29,30 + re-run conventions
  33,35,36,38,39,40,41,42,43,44,46,47,48,49). Recommended cadence: batch by confidence,
  low-confidence first; high-confidence rows are mostly the mechanical merge-stub conventions
  (bulk-confirmable). Update `_status.md` + set each row's Confidence cell to `confirmed` after
  each adjudication so the review itself stays resumable.
- **Live judgment calls worth the human's eye:** rows **34** (UC28 not given INV3) and **50**
  (UC68 not given CAP6) are the only NEW calls the merge created; **13** (UC90→CAP5 resister),
  **21** (CAP16 Supporting vs Core). **Interacting pair: rows 15 + 27** — UC111's primary is
  CAP6/S3 (row 15) but its native rung was set S2 (row 27); if the user wants UC111 S3 end-to-end,
  align row 27 to S3 (edit vision-index.md + uc-index.md via a sub-agent).
- **How to apply any directed change:** per the skill, the orchestrator does NOT edit artifacts
  itself — spawn a sub-agent to apply a cut/merge/reword to the affected companion file and reflect
  it back into the row.
- **After all 47 confirmed → Phase 12:** re-spawn whole-bundle critic to reconcile any Phase-11
  edits (loop back to 11 if it surfaces a new residual), then finalize: flip `status: finalized`,
  record date + what this pass changed, re-stamp `built-with-hash`, and **overwrite
  `vision-manifest.md`** with a fresh per-ID fingerprint of the NOW-CURRENT vision (the 18 changed
  UCs) so the next re-run diffs against this state. NOTE: the skill Upgrade sub-mode was
  deliberately DEFERRED this pass (skill hash still drifts c985a30b… ≠ 984bcc7e…) — that is a
  separate future re-run, not part of finalizing this one.

### To resume in a fresh session
Re-invoke the `create-vision-companion` skill (read its SKILL.md → Phase 0 detects this bundle,
sees `status: in-progress`, resumes). Point it at this bundle and say: continue the Vision-diff
re-run at Phase 11 — full human review of all 47 open decisions.md rows.

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
- [~] Phase 11 — decisions.md human review INCOMPLETE (3/32 confirmed: D4, D5, D7; 29 still `open`, see caveat below)
- [x] Phase 12 — finalize (retroactive, 2026-07-07): built-with-hash stamped, vision-manifest.md written

## Open threads

- **Phase 11 human review is incomplete.** 3 of 32 rows are `confirmed` (D4, D5, D7); the
  other 29 remain `open` — the build was finalized retroactively to enable the vision-diff
  re-run machinery, not because the human adjudicated the readings. The Phase 11 leg of the
  vision-diff re-run below (and the Phase 12 finalize gate, which requires every row
  confirmed) should still walk the 29 open rows. Vision-diff mode only auto-reopens rows the
  changeset touches, so direct the re-run to finish the full review.

## Open low-confidence decisions

29 open of 32 (D4, D5, D7 confirmed)

## Run log

- 2026-07-06 — Upgrade re-run built phases 0–10; whole-bundle critic clean, mechanical gates
  green; held at the Phase 11 human-review gate.
- 2026-07-07 — Retroactive finalize to seed the re-run machinery: wrote `vision-manifest.md`
  (per-ID fingerprint of the vision @ git tag `temp1-reference` = commit c7ce833, the frozen
  vision this bundle was derived from) and stamped `built-with-hash`. Status flipped to
  `finalized` so the next skill invocation is treated as a re-run, not an in-progress resume.
  Phase 11 human review left incomplete (see Open threads).

## Next run (what Phase 0 will detect)

`status: finalized` → this is now a **re-run**. Phase 0's two drift checks:

- **Vision drift (manifest):** the working vision has moved since `temp1-reference` —
  **18 UCs modified, nothing added/removed/renumbered**: UC3, UC4, UC15, UC21, UC28, UC29,
  UC48, UC50, UC58, UC59, UC64, UC68, UC82, UC88, UC96, UC99, UC101, UC111. S/V/BV all
  byte-identical. A handful of IDs → the economical path is a **Vision-diff (scoped) re-run**.
- **Skill drift (hash):** current skill fingerprint c985a30b… ≠ build-time 984bcc7e… → the
  skill also drifted since this bundle was built, so an Upgrade sub-mode is also on the table.
  The Phase 0 fork lets the human pick; Vision-diff is the sub-mode that matches the ask.
