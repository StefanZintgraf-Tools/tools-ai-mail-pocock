# Invariants — global constraints

These are the load-bearing constraints the vision re-asserts across many
use-cases. They are stated **once** here; capability and UC descriptions
reference them by ID instead of repeating them. **Every** architecture, design,
and data-model decision must honour all of these — they are not optional and not
per-feature.

> Each invariant lists *representative* asserting UCs, not an exhaustive list —
> in practice most invariants are implied by most UCs. See
> [uc-index.md](uc-index.md) for the per-UC mapping.

| ID | Invariant | What it means for the build | Asserting UCs (representative) |
|----|-----------|-----------------------------|-------------------------------|
| **INV1** | **Human holds the final say.** | Nothing is sent, decided, committed, or deleted without the user's explicit approval. Autonomous actions are proposals until confirmed. There must always be an approval gate before any outward or irreversible effect. | Vision (both); UC2, UC38, UC43, UC53, UC63, UC64, UC66 |
| **INV2** | **Non-destructive by default.** | The assistant never deletes or discards on its own. Suspected junk/scams/duplicates are *set aside* and flagged, never removed; lists are never silently pruned. Every automated disposition is reversible. | UC13, UC19, UC32, UC38, UC53, UC60 |
| **INV3** | **Transparent reasoning.** | Every action and judgement carries a plain-language *why* the user can read. No black-box "blocked"/"filed" without an explanation. | UC31, UC39, UC47 |
| **INV4** | **Complete, durable audit trail.** | Every decision the assistant made is recorded and traceable long after the fact, so any single message can be accounted for. The record is of the *assistant's own actions*. | UC47, UC48 |
| **INV5** | **The user owns what it learns; it is not surveillance.** | Learned data stays the user's (or the company's); it is inspectable, correctable, and revocable, and the user can leave with their mail intact. It works *for* the user/company — never a tool to watch over staff. | Vision (both); UC24, UC48, UC59 |
| **INV6** | **Progressive, user-set autonomy.** | Trust is earned incrementally; the user sets and can move the "leash" (what it may do vs. must ask) per context, in both directions. It learns from corrections. Never a blind leap of faith, never a forced setting. | UC12, UC37, UC41, UC57, UC63 |
| **INV7** | **Respects the user's boundaries.** | Per-account / per-context rules are honoured; nothing leaks across the walls the user defines (a private thread never surfaces in a work briefing). Reach is opt-in, never forced. | UC25, UC26, UC35, UC57 |
| **INV8** | **Acts in a real person's name.** | When it sends or replies on someone's behalf, it goes out as that real person, with a human having approved it — never as an obvious bot. | Vision (business); UC2, UC43 |

## Notes for downstream design

- **INV1 + INV2 together** imply a universal *propose → review → apply* pipeline
  with an undo/restore path for everything the assistant touches.
- **INV3 + INV4** imply every assistant action is a first-class, persisted record
  carrying both a human-readable rationale (INV3) and immutable provenance (INV4)
  — likely the same underlying entity (see *Activity record* in
  [glossary.md](glossary.md)).
- **INV5 + INV7** are the privacy/tenancy backbone: ownership and isolation are
  architectural, not feature-level, concerns.
- **INV6** implies autonomy is a *configurable, per-context policy* with a
  feedback loop, not a global on/off — see CAP12 in
  [capability-map.md](capability-map.md).
