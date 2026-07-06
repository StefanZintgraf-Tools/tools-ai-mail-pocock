# Deferred inputs — parked items routed downstream

The vision deliberately kept build-phase thinking out of scope and parked it as
`BV` items (`## Beyond the vision (parking lot)`). This file **preserves and
routes** those items so none is lost; it does **not** design from them or promote
any into a capability or an actor (altitude fence). Each routed row is tagged with
the phase that consumes it.

> Cross-cutting `BV` constraints are recorded as invariants — see
> [invariants.md](invariants.md). Everything else lives here.

## Routed items

Only `BV` facets that are **not** already homed in an invariant appear as rows.

| BV | Src | Item | Type | Consumed by |
|----|-----|------|------|-------------|
| BV4 | [L701](../ai-mail-foundation-vision.md#L701) | **Open-source / no-vendor-lock-in as an explicit non-negotiable differentiator vs. managed-service competitors.** Positioning claim, not a build constraint. (BV4's *provider/OS/format-agnostic* facet is already an invariant — INV7 — and is **not** repeated here; only the open-source-as-differentiator facet routes.) | scoping | **scoping (GTM)** |

Rules honoured: every `BV` item lands in exactly one home — an `INV`
(cross-cutting) or one row here. Zero parked orphans. The `Src` link points at the
`BV` item's line in the vision. Route and tag only; no expansion into design.

## BV → home coverage check (no orphans, nothing double-homed lossily)

Full accounting of every parked item, for the mechanical no-orphans gate. `BV`
items whose entire content is a cross-cutting constraint are folded into invariants
and carry **no** row above.

| BV | Facet(s) | Home | Where routed |
|----|----------|------|--------------|
| BV1 | No-lock-in / clean exit / add-on-top-of-any-mail | **INV6** (ownership & clean exit) + **INV7** (additive, never locked out) | invariants.md — fully homed, cross-cutting |
| BV2 | Additive agentic layer/proxy on top of existing infra, not a new client | **INV7** (additive, never locked out) | invariants.md — fully homed, cross-cutting |
| BV3 | Local-first / self-hosted trust foundation; model access swappable (BYO model/key) | **INV15** (runs within the user's own walls) | invariants.md — fully homed, cross-cutting |
| BV4 | (a) provider/OS/format-agnostic | **INV7** | invariants.md — folded, cross-cutting |
| BV4 | (b) open-source-as-differentiator / GTM non-negotiable | **deferred-inputs.md** (row above) | this file — scoping (GTM) |
| BV5 | Human-in-charge as a *relaxable policy layer* + identity seam for the horizon sibling | **INV1** (approval gate — built as isolable, relaxable layer) + **INV9** (identity seam) | invariants.md — fully homed, cross-cutting; the fork-this-file mechanism is a note on the *sibling vision*, not a build input for this one |

- **Orphans:** none. Every `BV1–BV5` lands in exactly one home per facet.
- **Double-homed lossily:** none. BV4 is deliberately *split* across two facets
  (provider-agnostic → INV7; open-source → here) with each facet homed exactly
  once; the split is recorded, not lossy.
- **Designed-from / promoted:** none. No `BV` item was expanded into a capability,
  an actor, or a design.
