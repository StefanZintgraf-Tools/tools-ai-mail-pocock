# AI-Mail Vision — AI-Friendly Companion Set

This folder is a **derived, machine-navigable view** of
[ai-mail-foundation-vision.md](../ai-mail-foundation-vision.md). It exists so a
build-phase agent (architecture, requirements, planning) can consume the vision
without re-deriving its structure each run.

> **The vision is the single source of truth.** These files are derived from it
> and cite back by UC ID (`UC1…UC67`). They never replace or contradict it. If a
> derived file and the vision disagree, the vision wins — fix the derived file.
> Do **not** edit the vision to match these.

## Files

| File | Concern | Load it when… |
|------|---------|---------------|
| [invariants.md](invariants.md) | Cross-cutting constraints (`INV1…`) stated once | …always. Every architecture/design decision must honour these. |
| [glossary.md](glossary.md) | Ubiquitous language — one canonical term per concept | …always. Use these terms in code, schemas, docs. |
| [capability-map.md](capability-map.md) | The 67 UCs clustered into capabilities (`CAP1…`) | …shaping modules/services or scoping a feature area. |
| [actors.md](actors.md) | Actor types & personas | …reasoning about permissions, multi-tenancy, or whose POV a need is. |
| [uc-index.md](uc-index.md) | Traceability spine: every UC → actor · capability · invariants · normalized intent | …you need to trace a requirement back to a UC, or forward from a UC. |

## Suggested load order by task

- **Whole-system architecture:** invariants → glossary → capability-map → actors.
- **Requirements for one capability:** invariants → glossary → that `CAP` section
  of capability-map → its UC rows in uc-index → the cited UCs in the vision.
- **Reviewing coverage / traceability:** uc-index (it links everything).

## How this was built & its limits

- **Derived, not authored.** Every claim traces to ≥1 UC. No new requirements
  were invented; nothing was dropped — all 67 UCs appear in
  [uc-index.md](uc-index.md) with a primary capability and actor.
- **Compression is bounded.** The only shortening is the *normalized intent*
  one-liner per UC in the index, which factors repeated invariant boilerplate out
  to `INV` references. The rich original sentence stays untouched in the vision —
  read it for intent, priority, and emotional stakes.
- **A UC can touch several capabilities.** Each is filed under one *primary*
  capability; notable secondaries are noted. Cross-cutting needs (approval,
  privacy, autonomy…) are invariants, not capabilities.
- **Out of scope for this pilot:** priority/phasing (vision omits it by design)
  and a machine-readable (YAML/JSON) layer — add only when a real consumer needs
  them.

Method and rationale: see the plan at
`skills-plugins/brainstorm-vision/ai-friendly-vision-plan.md`.
