# Build status — ai-mail vision AI-spec companion

status: finalized
debug: off
built-with-hash: 984bcc7e2d412fea8d1de078f3268927af002e27
vision: ../ai-mail-foundation-vision.md
architecture-lens sibling: ../ai-mail-foundation-vision-architecture-lens.md
vision-manifest: vision-manifest.md (per-ID fingerprint of the vision @ tag `temp1-reference`)

## Run kind

Upgrade re-run (2026-07-06). Prior bundle (Jun 29) had no `_status.md` and no
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
