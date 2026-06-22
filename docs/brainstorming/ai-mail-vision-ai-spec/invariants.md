# Invariants — global constraints

These are the load-bearing constraints the
[vision](../ai-mail-foundation-vision.md) re-asserts across many use-cases. They
are stated **once** here; capability and UC descriptions reference them by ID
instead of repeating them. **Every** architecture, design, and data-model
decision must honour all of these.

> Each invariant lists *representative* asserting UCs, not an exhaustive list.
> See [uc-index.md](uc-index.md) for the per-UC mapping. Some invariants are also
> asserted directly by the press-release ("PR") blocks, which are canonical too.

## Control & safety

| ID | Invariant | What it means for the build | Asserting UCs (representative) |
|----|-----------|-----------------------------|-------------------------------|
| **INV1** | **Approval gate.** No outbound or consequential action — send, reply, commit, confirm a slot, unsubscribe, merge, file — happens without the user's explicit confirmation. | Everything funnels through a propose → review → apply pipeline; no auto-commit path exists. | UC1, UC2, UC9, UC21, UC37, UC38, UC43, UC53, UC60, UC63, UC64, UC66, UC65 + PR (both) |
| **INV2** | **Non-destructive.** Never deletes or permanently discards a message or file on its own — *even at full confidence*. Suspect or unwanted items are *held aside & flagged*, never removed. | Soft-delete / quarantine only; no hard-delete in any autonomous path. | UC19, UC32, UC38, UC53, UC60 |
| **INV3** | **Safe default under uncertainty.** When unsure, the assistant defers / holds / leaves-as-is rather than guessing — a wrong consequential action (mis-filing, mis-routing) is worse than no action. | Confidence thresholds gate every autonomous action; below the bar → route to a human or leave untouched. | UC44, UC60 |

## Trust & transparency

| ID | Invariant | What it means for the build | Asserting UCs (representative) |
|----|-----------|-----------------------------|-------------------------------|
| **INV4** | **Transparency.** Every action and judgment carries a plain-language reason the user can inspect; never a black box. | Each action emits a human-readable rationale; the UX surfaces it on demand. | UC12, UC31, UC39, UC41, UC47 |
| **INV5** | **Auditable record.** A complete, lasting record of the assistant's *own* actions and decisions is kept and traceable long after the fact. | Append-only action log, retained long-term, queryable down to a single message. | UC47, UC48 |

## User sovereignty (over the user's own domain)

| ID | Invariant | What it means for the build | Asserting UCs (representative) |
|----|-----------|-----------------------------|-------------------------------|
| **INV6** | **Ownership & exit.** What the assistant learns about the user belongs to the user; they can see it, correct it, switch it off, and walk away with their mail intact. | Data export + correction + off-switch are first-class; no lock-in of the learned model. | UC16, UC17, UC24 |
| **INV7** | **Additive, never locked out.** The assistant never makes itself the sole interface to **the user's own mail**, and never locks the user out of it — they can always open and read everything themselves. | The assistant augments the existing mailbox; the underlying mail store stays directly usable without it. | UC12, UC24 |

## Autonomy & identity

| ID | Invariant | What it means for the build | Asserting UCs (representative) |
|----|-----------|-----------------------------|-------------------------------|
| **INV8** | **Progressive, user-set autonomy.** Autonomy starts narrow and widens only as the user (or manager) grants it; how far the assistant may go is configurable per scope and reversible either way. | Per-scope autonomy levels, default conservative, tunable in both directions; the dial is the user's. | UC2, UC25, UC41, UC57, UC63 |
| **INV9** | **Acts in the user's real identity.** When acting **on the user's behalf** (in the user's mailbox), drafts and sends are attributed to the real person — never a hidden or surrogate AI persona — and the user always knows what was said in their name. | Outbound attribution = the human; name-acting actions are surfaced. *(If the assistant ever acts as its own principal, it would do so under its own identity — a different actor, out of current scope.)* | UC43, UC64 + PR (business) |

## Boundaries

| ID | Invariant | What it means for the build | Asserting UCs (representative) |
|----|-----------|-----------------------------|-------------------------------|
| **INV10** | **Serves the principal, not surveillance.** The assistant works for the user / company; its records and oversight views are about the *work and the assistant's own actions*, never a means to monitor staff. | Manager/admin views expose work state, not employee behaviour; design actively against repurposing for surveillance. | UC24, UC30, UC48, UC59 + PR (business) |
| **INV11** | **Context boundaries / no leakage.** Separate spheres — personal vs work, account vs account, a colleague pulled in for a moment — stay isolated unless the user joins them. | Hard isolation boundaries; cross-context surfacing is opt-in, never the default. | UC25, UC26, UC35, UC56 |

## Notes for downstream design

- **INV1 + INV4** together imply a propose → review → apply pipeline where every
  proposal carries an attached rationale.
- **INV2 + INV3** push every risky path toward *hold-and-surface* rather than act:
  INV2 forbids autonomous destruction outright; INV3 forbids autonomous *guessing*
  even for non-destructive actions.
- **INV8** is the dial that the other invariants compose with: raising autonomy
  moves the threshold in INV3 and the breadth of INV1's auto-allowed actions, but
  never repeals INV2, INV9, INV10, or INV11.
- **INV9, INV10** are the two "identity/oversight" guards rescoped to survive a
  future where the assistant might act as its own principal — both are stated
  relative to *the user's behalf* / *the principal it serves*, not absolutely.

> **Judgment calls (overridable):** the exact set and granularity of invariants is
> a *reading* of the vision. Notably — INV6/INV7 were split from one "sovereignty"
> rule; INV9 and INV10 were deliberately rescoped to the on-behalf-of relationship;
> INV2 and INV3 are kept separate (destructiveness axis vs. confidence axis).
