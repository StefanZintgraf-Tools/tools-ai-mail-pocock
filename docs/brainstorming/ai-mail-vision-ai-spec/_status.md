# Build status — ai-mail vision AI-spec companion

status: in-progress
debug: off
built-with-hash: (pending — stamped at finalize; skill fingerprint this run = 984bcc7e2d412fea8d1de078f3268927af002e27)
vision: ../ai-mail-foundation-vision.md
architecture-lens sibling: ../ai-mail-foundation-vision-architecture-lens.md

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
- [ ] Phase 10 — whole-bundle critic → human review → finalize

## Open threads

- (none yet)

## Open low-confidence decisions

32 (rows 1–32)

## Next phase to run

Phase 10 — FINALIZE PENDING. Bundle built; both whole-bundle critic passes CLEAN;
all 6 mechanical gates GREEN; vision byte-unchanged. Held at the human-review gate:
user is reading decisions.md (32 rows) + critic-report.md before adjudicating.
On return: either finalize as-is (flip status→finalized, stamp
built-with-hash = 984bcc7e2d412fea8d1de078f3268927af002e27, record re-run date 2026-07-06),
or spawn a final sub-agent to apply the user's row changes first, then finalize.
