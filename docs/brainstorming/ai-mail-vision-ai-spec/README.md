# AI-Mail Vision — AI-Friendly Companion Set

This folder is a **derived, machine-navigable view** of
[ai-mail-foundation-vision.md](../ai-mail-foundation-vision.md). It exists so a
build-phase agent (architecture, requirements, planning) can consume the vision
without re-deriving its structure each run.

> **The vision is the single source of truth.** These files are derived from it
> and cite back by stable ID (`UC`, `V`, `S`, `BV`, `INV`, `CAP`). They never
> replace or contradict it, and they carry **no compression** beyond the single
> sanctioned *normalized intent* one-liner per UC (invariant boilerplate factored
> out to `INV` references). The vision text is **canonical and byte-identical** —
> nothing here edits it. If a derived file and the vision disagree, **the vision
> wins** — fix the derived file. Do **not** edit the vision to match these.

A **sibling** file,
[ai-mail-foundation-vision-architecture-lens.md](../ai-mail-foundation-vision-architecture-lens.md)
(emitted by the `brainstorm-vision` skill), carries the build phase's
one-way-door axes — including the *generalization door* behind this vision's
**horizon** (the autonomous-assistant sibling vision that would strip the
human-in-charge invariants, `BV5`). It is the other half of this handoff:
[vision-index.md](vision-index.md) **cross-references** it at the horizon rather
than duplicating it, and it is **not** re-derived anywhere in this bundle.

## Files

| File | Concern | Load it when… |
|------|---------|---------------|
| [invariants.md](invariants.md) | Cross-cutting constraints (`INV1…INV15`) stated once | …always. Every architecture/design decision must honour these. |
| [glossary.md](glossary.md) | Ubiquitous language — one canonical term per concept | …always. Use these terms in code, schemas, docs. |
| [actors.md](actors.md) | Actor types (tenancy/permission boundaries) & personas | …reasoning about permissions, multi-tenancy, delegated access, or whose POV a need is. |
| [capability-map.md](capability-map.md) | The 115 UCs clustered into 22 capabilities (`CAP1…CAP22`) | …shaping modules/services or scoping a feature area. |
| [subdomains-and-context-map.md](subdomains-and-context-map.md) | Core/Supporting/Generic + DDD context relationships | …deciding where to concentrate design effort and how contexts integrate. |
| [uc-index.md](uc-index.md) | Traceability spine: every UC → scope · actor · capability · invariants · normalized intent | …you need to trace a requirement back to a UC, or forward from a UC. |
| [vision-index.md](vision-index.md) | Press-release spine: scope ladder (`S1…S3`) + each vision point (`V1…V46`) traced to UCs/capabilities | …checking the build still serves the promised vision, or where the scope boundary/horizon sits. |
| [deferred-inputs.md](deferred-inputs.md) | Parked `BV` items routed to the phase that consumes them | …planning architecture or scope and you need the deferred build-phase inputs. |

Meta/review files also live here — `_status.md` (build log), `decisions.md` (the
judgment log), and `critic-report.md` (whole-bundle critic findings). They are
**not** part of the consumable bundle; read them only to audit how it was built.

## Suggested load order by task

- **Whole-system architecture:** invariants → glossary → vision-index (scope boundary) → capability-map → subdomains-and-context-map → actors → deferred-inputs.
- **Requirements for one capability:** invariants → glossary → that `CAP` section in capability-map → its UC rows in uc-index → the cited UCs in the vision.
- **Where to invest design effort:** subdomains-and-context-map (Core — differentiating first; CAP7 Memory is the keystone).
- **Checking the vision is served / where the boundary sits:** vision-index (unrealized-promise & unpromised-capability flags; the horizon and its one-way door).
- **Reasoning about tenancy / permissions / delegated access:** actors → invariants (INV10, INV11, INV12) → subdomains-and-context-map (the boundary relationships).
- **Reviewing coverage / traceability:** uc-index (it links everything, both directions).

## How this was built & its limits

- **Derived, not authored.** Every claim traces to ≥1 UC (or `V`/`S`/`BV`/`INV`).
  No new requirements invented; nothing dropped — all 115 UCs (UC1–UC115) appear
  in uc-index.md, each with a native scope rung, exactly one primary capability,
  and ≥1 actor.
- **Compression is bounded.** The only shortening is the *normalized intent*
  one-liner per UC in the index, which factors repeated invariant boilerplate out
  to `INV` references. The rich original sentence stays in the vision.
- **A UC can touch several capabilities.** Filed under one *primary*; notable
  secondaries are in uc-index.md's **Also** column. Cross-cutting needs are
  invariants, not capabilities.
- **Out of scope:** priority/phasing (the vision omits it by design; the
  subdomain class is the only soft ordering, and the `S#` ladder is a
  boundary/altitude axis, **not** a build order) and a machine-readable
  (YAML/JSON) layer — add only when a real consumer needs them. Tactical DDD,
  tech, and MVP scoping are deferred to the phase this bundle feeds (the altitude
  fence).
- **Judgment calls are surfaced, never silently settled.** Low-confidence
  readings, unrealized promises (a `V#` no UC delivers), and unpromised
  capabilities (a `CAP` no `V#` names) are flagged in-file and in `decisions.md` /
  `critic-report.md` for the human — never reconciled by editing the vision.

Method and rationale: see the bundled `strategies.md` in the
`create-vision-companion` skill.
