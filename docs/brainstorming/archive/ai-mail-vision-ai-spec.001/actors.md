# Actors & personas

Whose point of view each use-case is told from. Used codes appear in the **Actor**
column of [uc-index.md](uc-index.md). Actors are distinct *relationships to the
mailbox* (they drive permissions, isolation, and tenancy); personas are flavours
of an actor (they drive UX and tone, not architecture).

## Actor types

| Code | Actor | Description | Representative UCs |
|------|-------|-------------|--------------------|
| **IND** | Individual | A person managing their own personal and/or work mail. The default actor; the majority of the vision. | UC1–UC14, UC16–UC42 (most), UC47, UC51–53, UC58, UC61–66 |
| **BIZ** | Business owner / operator | Runs a small business or public-facing inbox; cares about clients, leads, support, and money safety. | UC15, UC43, UC60 |
| **TEAM** | Team member | One of several people working out of a shared inbox. | UC44, UC45, UC46, UC49, UC50, UC54, UC55, UC56 |
| **MGR** | Manager | Accountable for how a team's / company's inbox is handled; sets boundaries and oversees, **without** surveilling staff (INV5). | UC48, UC57, UC59 |
| **GUARD** | Guardian | Watches over a less-able relative's inbox on their behalf. | UC30 |

## Personas (flavours of IND)

These don't change the architecture but shape interaction design; capabilities
should not assume the confident, single-account power user.

- **The anxious / novice user** — finds email stressful, doesn't trust themselves;
  wants a patient, plain-speaking helper. (UC39, UC31, UC40)
- **The multilingual user** — corresponds across several languages; wants each
  message met in its own tongue while the app stays in their language. (UC42)
- **The multi-account juggler** — life scattered across personal, work, and
  side-project addresses; wants one calm view with the walls intact. (UC25, UC26)
- **The overwhelmed life-admin user** — uses email mostly for bills, school,
  renewals, parcels; fears the one dropped ball. (UC3, UC4)
- **The archive holder** — sitting on decades of mail they dread. (UC17, UC18, UC67)

## Notes for downstream design

- **IND vs TEAM/MGR is the primary tenancy fault line.** Team capabilities (CAP11)
  and oversight (parts of CAP2/CAP12) introduce multi-user state, routing, and
  per-member policy that the single-user path never needs — keep the boundary
  explicit.
- **MGR oversight must be reconcilable with INV5.** Every manager-facing view
  (UC57, UC59) is constrained to be about *work* and the *assistant's actions*,
  never a lens on individual staff behaviour.
- **GUARD is delegated access to another person's mailbox** (UC30) — a distinct
  consent/authorization case from the user's own accounts.
