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
| [invariants.md](invariants.md) | Cross-cutting constraints (`INV1…INV11`) stated once | …always. Every architecture/design decision must honour these. |
| [glossary.md](glossary.md) | Ubiquitous language — one canonical term per concept | …always. Use these terms in code, schemas, docs. |
| [actors.md](actors.md) | Actor types (`IND, TM, MGR, PROT, PIC, EXT`) & personas | …reasoning about permissions, multi-tenancy, or whose POV a need is. |
| [capability-map.md](capability-map.md) | The 67 UCs clustered into 15 capabilities (`CAP1…CAP15`) | …shaping modules/services or scoping a feature area. |
| [subdomains-and-context-map.md](subdomains-and-context-map.md) | Core/Supporting/Generic + DDD context relationships | …deciding where to concentrate design effort and how contexts integrate. |
| [uc-index.md](uc-index.md) | Traceability spine: every UC → actor · capability · invariants · normalized intent | …you need to trace a requirement back to a UC, or forward from a UC. |

## Suggested load order by task

- **Whole-system architecture:** invariants → glossary → capability-map → subdomains-and-context-map → actors.
- **Requirements for one capability:** invariants → glossary → that `CAP` section → its UC rows in uc-index → the cited UCs in the vision.
- **Where to invest design effort:** subdomains-and-context-map (Core-differentiating first, keystone is CAP7 Memory).
- **Reasoning about permissions / tenancy:** actors → invariants (INV10, INV11) → the context-map relationships.
- **Reviewing coverage / traceability:** uc-index (it links everything).

## How this was built & its limits

- **Derived, not authored.** Every claim traces to ≥1 UC. No new requirements
  invented; nothing dropped — all 67 UCs appear in uc-index.md with a primary
  capability and an actor, and every `INV` is cited by ≥1 UC.
- **Compression is bounded.** The only shortening is the *normalized intent*
  one-liner per UC in the index, which factors repeated invariant boilerplate out
  to `INV` references. The rich original sentence stays in the vision.
- **A UC can touch several capabilities.** Filed under one *primary*; notable
  secondaries are in the index's **Also** column. Cross-cutting needs are
  invariants, not capabilities.
- **No parking lot.** The vision carries no `## Beyond the vision` / `BV` items, so
  there is no `parking-lot.md` (S8 did not apply).
- **Judgment calls are flagged in each file** — the invariant set, the clusters,
  primary/secondary assignments, subdomain classes, and context-map relationship
  types are *readings* of the vision, marked as overridable.
- **Out of scope:** priority/phasing (vision omits it by design; the
  Core/Supporting/Generic class is the only soft ordering) and a machine-readable
  (YAML/JSON) layer — add only when a real consumer needs them. Tactical DDD, tech,
  and MVP scoping are deferred to the phase this bundle feeds (the altitude fence).

Method and rationale: see the bundled `strategies.md` in the
`create-vision-companion` skill.
