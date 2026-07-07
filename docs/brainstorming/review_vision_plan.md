# Vision review — resumable plan (agent handoff)

> Working doc for a multi-sitting review of `ai-mail-foundation-vision.md`. Not a
> vision artifact; delete when the review is complete and the companion re-derived.
> Optimized for an AI agent resuming cold. Read this file top-to-bottom first.

## 1. Goal & trigger

**Goal:** produce a *clean* foundation vision — no near-duplicate use-cases (two UCs
that are the **same assistant act** wearing a different persona/framing → double-count)
and no unresolved term conflations.

**"Clean" does NOT mean lexical uniformity.** The vision is deliberately rich: one
concept is named many evocative ways (that variety is captured in
`ai-mail-vision-ai-spec/glossary.md` → "Vision phrasings it absorbs"). Target only
(a) genuine concept conflation and (b) same-act double-counted use-cases. **Preserve
the press-release voice.** Never flatten synonyms.

**Why this review exists:** while designing a brainstorm "term-sightings" sidecar, we
found the companion had *guessed* (low/med confidence) at several concept conflations
during its glossary derivation. Human review confirmed those guesses, then extended to
a full retrospective sweep of all 115 UCs for the structural residue (near-duplicates)
the companion's one-UC-per-capability coverage check cannot catch.

## 2. Files

| Path | Role | Editable here? |
|---|---|---|
| `ai-mail-foundation-vision.md` | THE vision (source of truth). UCs, V-points, scope. | YES — the review edits this. |
| `ai-mail-vision-ai-spec/decisions.md` | Companion judgment-call log. Rows 4/5/7 hand-set to `confirmed`. | YES (only to mark confirmations). |
| `ai-mail-vision-ai-spec/glossary.md` | Ubiquitous language, canonical term ↔ phrasings. | READ (evidence/discriminator). |
| `ai-mail-vision-ai-spec/uc-index.md` | UC → CAP/INV/actor/scope + normalized intent. | READ (discriminator). |
| `ai-mail-vision-ai-spec/vision-index.md` | V-point → UC mapping. | READ (the vision-point test, §4). |
| `ai-mail-vision-ai-spec/*` (rest) | Derived bundle (capability-map, actors, invariants, etc.). | DO NOT hand-patch — re-derived (§6). |

Note: the vision lives in `docs/brainstorming/`; the derived bundle is one level down in
`docs/brainstorming/ai-mail-vision-ai-spec/`.

## 3. Interaction protocol (STRICT)

- The user adjudicates **one finding per turn** and enforces **one question per reply**.
  Do not batch questions. Do not edit without the user's decision on that finding.
- For each finding present: the two UCs, which V-point(s) each realizes, a
  merge/keep recommendation **with reasoning**, then ask the single decision question.
- The user often asks "is there a good reason to keep two?" — answer with the honest
  analysis and a recommendation, then let them decide.

## 3a. Sub-agent orchestration (to avoid context rot)

The orchestrator (this main session) must stay lean. **The orchestrator does NOT open
the vision file or any index file** — that repeated reading across 10 findings is the
context-rot risk this plan exists to avoid. All file reading is delegated to sub-agents.

The orchestrator only: reads THIS plan, dispatches sub-agents, relays the compact
verdict to the user, asks the single decision question, and — on decision — dispatches
an edit sub-agent and updates this plan's status/change-log.

**One analysis sub-agent per finding** (read-only; use the `Explore` agent):
- Input: the two UC numbers + the finding's note from §5.
- Reads only what it needs: the two UCs' text in `ai-mail-foundation-vision.md`,
  their V-points in `vision-index.md`, CAP/INV/scope in `uc-index.md`, `glossary.md`
  if a term is in question. Runs the **vision-point test** (§4).
- Returns a COMPACT verdict — nothing more than the orchestrator needs to run the turn:
  1. Each UC verbatim (the one or two vision lines).
  2. The V-point(s) each realizes; same or different.
  3. Recommendation: **merge** / **keep-as-is** / **keep-but-sharpen** + 2–3 sentences.
  4. If merge/sharpen: the exact fold-in (what load-bearing examples + stakes to carry
     into the survivor) or the exact rewording — ready to paste.
- The sub-agent does NOT edit and does NOT ask the user anything.

**Never run two sub-agents at once. No parallel agents, ever.** Dispatch strictly one
sub-agent at a time and wait for it to finish before the next: analysis agent → user
turn → edit agent → next finding. Rationale: fanning out 10 analyses dumps 10 verdicts
into the orchestrator at once (the rot this plan avoids); findings also interact (the
deferred polysemy pass depends on merges landing first), so the work is inherently
sequential.

**One edit sub-agent per applied change** (use `general-purpose`, it needs Edit):
- Input: the survivor/absorbed UC numbers, the exact fold-in text, and §7's editing
  conventions (tombstone format, ~90-col wrap, 2-space continuation indent).
- Applies the edit to `ai-mail-foundation-vision.md` (and, for a confirmation, the
  `confirmed` tag in `decisions.md`). Reports back what it changed.
- The orchestrator then updates §5 status + the §8 change log itself (small file, no rot).

## 4. Decision method

The load-bearing discriminator each analysis sub-agent (§3a) applies. Three-pass sweep
already run to build the queue (results in §5):

**Vision-point test** — look up each UC's realized V-point in `vision-index.md`:
- Both UCs realize the **same** V-point → strong **merge** signal (true double-count).
- They realize **different** V-points → likely **keep** (distinct *promises*, even if
  the underlying capability/CAP is the same — a vision sells promises, not capabilities).

Same CAP + INV + scope-rung alone is **not** sufficient to merge; that only flags a
candidate. The V-point (the press-release promise) is the tiebreaker.

Per-finding outcomes: **merge** / **keep-as-is** / **keep but sharpen the seam** (reword
so the distinction is explicit).

## 5. Work queue (findings, ranked)

Status: DONE = edited; DECIDED = outcome chosen, edit applied or n/a; PENDING = needs user.

### Tier A — same act, persona-only difference
| # | Pair | V-points | Status | Outcome |
|---|---|---|---|---|
| 1 | UC96 ⇄ UC101 | both = the S3 obligation promise (V36-family) | **DONE** | Merged UC96←UC101. UC96 enriched w/ business/legal obligations (VAT, licence, certificate) + "trading illegally/facing a fine" stake. UC101 tombstoned (see §7 format). |
| 2 | UC14 ⇄ UC15 | UC14=V11 (warmer to people); UC15=V19/V20 (leads/clients) | **DECIDED** | Kept separate; UC15 sharpened toward commercial continuity/revenue-bearing work so it no longer reads like a business-flavored duplicate of UC14. |
| 3 | UC68 ⇄ UC70 | UC68=V26/V27; UC70=V27 | **DECIDED** | Kept separate; UC68 sharpened toward company continuity/leaver-side stewardship while UC70 remains successor-side ramp-up. |

### Tier B — overlapping facets (assess each)
| # | Pair | Note |
|---|---|---|
| 4 | UC3 ⇄ UC4 | **DONE** — Merged UC3←UC4. UC3 enriched with automatic due-date/obligation inference; UC4 tombstoned. |
| 5 | UC1 ⇄ UC88 | **DECIDED** — Kept separate; UC88 sharpened toward the visible, earned end-of-day/rest promise while UC1 remains the baseline handled/scheduled trust promise. |
| 6 | UC21 ⇄ UC64 | **DONE** — Merged UC64←UC21. UC64 enriched with scheduling negotiation; UC21 tombstoned. |
| 7 | UC28 ⇄ UC29 | **DONE** — Merged UC28←UC29. UC28 enriched with urgent-money-pressure intervention; UC29 tombstoned. |
| 8 | UC58 ⇄ UC59 | **DECIDED** — Kept separate; UC58/UC59 ownership wording sharpened to distinguish personal next move from team/role ownership. |
| 9 | UC48 ⇄ UC82 | **DONE** — Merged UC48←UC82. UC48 enriched with legal hold/data-access response; UC82 tombstoned. |
| 10 | UC49 ⇄ UC50 | **DECIDED** — Kept separate; UC50 sharpened toward right-specialist identification/escalation while UC49 remains general hand-off continuity. |

### Tier C — reviewed, confirmed KEEP (distinct; log so re-review doesn't re-open)
UC5/UC17 (retrieve a fact vs mine the archive) · UC23/UC52 (topic assembly vs cross-artifact
picture) · UC9/UC10/UC36 (three distinct drafting pains: dreaded / legwork / blank-page) ·
UC94/UC95 (offline vs multi-device) · UC107/UC108 (inbound recognition vs outbound routing) ·
UC110 vs UC28/29 (multi-channel extension of scam guard) · UC97/UC105 (watch the portal vs
fix the root cause — UC105 explicitly contrasts itself with UC97).

### Deferred — polysemy prose — DONE
Vision prose calls standing obligations "**live commitments**" (UC96) and "a **commitment**"
(UC99, UC111). Concept is settled (decisions.md row 4 confirmed: Commitment = the *user's own*
promise; obligations are NOT commitments). Decide whether to nudge the wording in those 3 lines
so the vision stops contradicting its own confirmed vocabulary. This is wording-only, not a merge.
Applied: UC96 "live commitments" → "live obligations"; UC99 "commitments" → "obligations";
UC111 "a commitment" → "the real ask".

## 6. ⛔ STOP — end the session here. Companion handling is a NEW session.

**This session ends when the vision edits (through the deferred polysemy pass) are done.**
Do NOT start any of the following — they are explicitly deferred to a fresh session so the
companion re-derivation is reviewed cold, not tacked onto a long review context:

- Re-deriving the `ai-mail-vision-ai-spec/` bundle (re-running `create-vision-companion`).
- The optional UC renumber pass (it *mandates* re-derivation, so it belongs to the new
  session too — not this one).

When the vision edits are complete, **stop and tell the user** the review is done and that
companion re-derivation should be started in a new session. Then hand off the notes below
verbatim (do not act on them):

> **For the next session — companion handling.** The bundle is a *derivation* of the vision
> (principle: "Derive, never replace"). Once vision edits are final:
> 1. **Re-derive the bundle** by re-running `create-vision-companion` against the edited
>    vision. DO NOT hand-patch uc-index/capability-map/etc. — they regenerate.
> 2. **Preserve the human confirmations.** decisions.md rows 4/5/7 are `confirmed` (human
>    input, not machine guesses). Feed these back so the re-run does NOT re-guess them at
>    low/med confidence. If decisions.md is regenerated from scratch, re-apply the
>    `confirmed` tags (and keep the legend's `confirmed` definition).
> 3. **Tombstones:** after re-derivation, merged-away UC numbers (e.g. UC101) should no
>    longer appear as live UCs. If the renumber pass was chosen, re-derivation is mandatory
>    and tombstones disappear.
> 4. **Optional renumber pass** (only if zero numbering gaps are wanted): single batch after
>    ALL merges, never piecemeal → renumber all UCs contiguous → re-derive the whole bundle.
>    Default so far: keep tombstones, no renumber.

## 7. Editing conventions

- **Never renumber existing UCs** mid-review. Merge = enrich the survivor UC + replace the
  merged-away UC's line with a tombstone:
  `- **UCn.** *(Merged into UCm — <one-line what/why>. Number retained so existing cross-references don't break.)*`
- When merging, **fold in everything load-bearing** from the absorbed UC (distinct examples AND
  distinct stakes), so no value is lost. Match the vision's wrap width (~90 cols) and 2-space
  continuation indent.
- Edit only for conflation/double-count. Keep evocative synonyms.
- This is the `ai-mail.pocock` submodule. **Commit only when the user asks**, via
  `.\git_push.ps1 "msg"` in the submodule dir; advance the parent pointer with
  `..\git_sync-submodule.ps1`. Off-limits dirs per CLAUDE.md (archive/, ideas/, outlook-RAG/,
  scratchpad.md) — do not read/reference.

## 8. Resume point

Start at **Work-queue #2 (UC14 ⇄ UC15)**. Per §3a: spawn its analysis sub-agent, relay the
compact verdict (recommendation is KEEP — different V-points), get the user's decision, apply
via an edit sub-agent if needed, update statuses. Then proceed #3 → #4…#10 → Tier C
confirmation → deferred polysemy prose.

Then **STOP (§6)**: report the review is done and that companion re-derivation + any renumber
is a NEW session. Do not start §6 work. Keep this file's statuses updated as you go.

### Change log (edits applied so far)
- decisions.md: rows 4, 5, 7 confidence → `confirmed`; header legend now defines `confirmed`.
- vision: UC96 enriched (personal + small-business/legal obligations, fine/illegal-trading stake).
- vision: UC101 → tombstone (merged into UC96).
- vision: UC15 sharpened to distinguish commercial continuity/revenue-bearing work from UC14's personal warmth promise.
- vision: UC68 sharpened to distinguish company continuity/leaver-side stewardship from UC70's successor ramp-up promise.
- vision: UC3 enriched with automatic due-date/obligation inference; UC4 → tombstone (merged into UC3).
- vision: UC88 sharpened to distinguish the visible, earned end-of-day/rest promise from UC1's handled/scheduled trust promise.
- vision: UC64 enriched with scheduling negotiation; UC21 → tombstone (merged into UC64).
- vision: UC28 enriched with urgent-money-pressure intervention; UC29 → tombstone (merged into UC28).
- vision: UC58/UC59 ownership wording sharpened to distinguish personal next move from team/role ownership.
- vision: UC48 enriched with legal hold/data-access response; UC82 → tombstone (merged into UC48).
- vision: UC50 sharpened to distinguish right-specialist identification/escalation from UC49's general hand-off continuity.
- Tier C reviewed pairs confirmed KEEP; no vision edits needed.
- vision: Deferred polysemy wording fixed in UC96, UC99, and UC111 so obligations are no longer described as commitments.
