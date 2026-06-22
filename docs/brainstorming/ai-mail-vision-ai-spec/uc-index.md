# UC index — traceability spine

Every use-case from
[ai-mail-foundation-vision.md](../ai-mail-foundation-vision.md), mapped to its
actor, primary capability (+ notable secondaries), the invariants it leans on, and
a **normalized intent** one-liner. The one-liner is the *only* place text is
compressed — repeated invariant boilerplate is factored out to `INV` references;
read the cited source line for the full original.

- **Actor** → [actors.md](actors.md) · **CAP** → [capability-map.md](capability-map.md) · **INV** → [invariants.md](invariants.md)
- **Src** links the UC's line in the vision. Coverage: all **67** UCs present, each with a primary capability and an actor.

| UC | Src | Actor | Primary | Also | INV | Normalized intent |
|----|-----|-------|---------|------|-----|-------------------|
| UC1 | [L35](../ai-mail-foundation-vision.md#L35) | IND | CAP1 | CAP6 | INV1 | Every important message ends up either handled or scheduled — nothing carried in the head. |
| UC2 | [L39](../ai-mail-foundation-vision.md#L39) | IND | CAP4 | CAP13, CAP1 | INV1, INV7 | All the prep (draft, slot, decision) ready ahead or on demand; user stays the approver. |
| UC3 | [L44](../ai-mail-foundation-vision.md#L44) | IND | CAP6 | CAP9, CAP10 | INV3 | Catch the costly life-admin miss before it happens and ask what to do. |
| UC4 | [L47](../ai-mail-foundation-vision.md#L47) | IND | CAP6 | — | INV3 | Know deadlines/obligations inferred from the email itself — no manual due dates. |
| UC5 | [L50](../ai-mail-foundation-vision.md#L50) | IND | CAP3 | — | INV11 | Ask in plain words; get a fact or the exact buried thread back, across recent and old mail. |
| UC6 | [L56](../ai-mail-foundation-vision.md#L56) | IND | CAP6 | CAP10 | INV3 | Resurface the right thing (booking, warranty) the moment it's needed, unprompted. |
| UC7 | [L60](../ai-mail-foundation-vision.md#L60) | IND | CAP2 | — | INV3 | Mail sorted into sensible places rather than one undifferentiated pile. |
| UC8 | [L63](../ai-mail-foundation-vision.md#L63) | IND | CAP15 | CAP2 | INV1 | Important attachments appear correctly filed in the user's document store. |
| UC9 | [L67](../ai-mail-foundation-vision.md#L67) | IND | CAP4 | — | INV1, INV9 | The dreaded reply pre-drafted in the user's voice — tweak and nod. |
| UC10 | [L71](../ai-mail-foundation-vision.md#L71) | IND | CAP4 | — | INV1 | Legwork-heavy reply assembled (facts gathered, numbers pulled) ready to check. |
| UC11 | [L75](../ai-mail-foundation-vision.md#L75) | IND | CAP1 | CAP10 | INV3 | Open to a short briefing of the handful that actually need the user today. |
| UC12 | [L78](../ai-mail-foundation-vision.md#L78) | IND | CAP1 | CAP12 | INV7, INV8 | Lean on the briefing yet always able to open and read everything — never locked out. |
| UC13 | [L81](../ai-mail-foundation-vision.md#L81) | IND | CAP1 | CAP2 | INV2 | Low-stakes noise set aside in a read-only No-action corner, not flagged as spam. |
| UC14 | [L85](../ai-mail-foundation-vision.md#L85) | IND | CAP5 | — | INV1 | Notice a cared-about thread going cold and offer to draft. |
| UC15 | [L89](../ai-mail-foundation-vision.md#L89) | IND | CAP5 | CAP10 | INV1 | Nudge before a key account or promising lead slips through the cracks. |
| UC16 | [L93](../ai-mail-foundation-vision.md#L93) | IND | CAP7 | CAP5 | INV6, INV11 | Remember relationship context across years, even data living outside email. |
| UC17 | [L98](../ai-mail-foundation-vision.md#L98) | IND | CAP3 | CAP7 | — | Ask questions of decades of correspondence and get answers out of the archive. |
| UC18 | [L102](../ai-mail-foundation-vision.md#L102) | IND | CAP8 | — | INV2, INV3 | Old mail made safe and tidy — dead stuff set aside, valuable preserved and in order. |
| UC19 | [L106](../ai-mail-foundation-vision.md#L106) | IND | CAP8 | — | INV2 | Taming the old pile never loses what mattered — it's surfaced, not buried. |
| UC20 | [L109](../ai-mail-foundation-vision.md#L109) | IND | CAP10 | CAP9 | INV3 | Stand watch over the whole picture and surface patterns the user never knew to ask about. |
| UC21 | [L115](../ai-mail-foundation-vision.md#L115) | IND | CAP13 | CAP4, CAP15 | INV1 | Run a scheduling negotiation in the background; user sees only the result to confirm. |
| UC22 | [L119](../ai-mail-foundation-vision.md#L119) | IND | CAP3 | CAP7 | — | Trace a filed document back to its source email and the surrounding correspondence. |
| UC23 | [L122](../ai-mail-foundation-vision.md#L122) | IND | CAP3 | — | — | Pull together every message on one topic, even across separate threads and people. |
| UC24 | [L126](../ai-mail-foundation-vision.md#L126) | IND | CAP12 | — | INV6, INV7 | What it learns stays the user's — see it, correct it, switch off, leave with mail intact. |
| UC25 | [L130](../ai-mail-foundation-vision.md#L130) | IND | CAP12 | CAP11 | INV8, INV11 | Set autonomy per Account — personal vs work live by their own rules. |
| UC26 | [L134](../ai-mail-foundation-vision.md#L134) | IND | CAP11 | CAP12 | INV11 | One assistant spans all the user's accounts while keeping the walls between them. |
| UC27 | [L138](../ai-mail-foundation-vision.md#L138) | IND | CAP11 | — | INV7 | Help one click away inside the existing inbox, not a new place to move into. |
| UC28 | [L141](../ai-mail-foundation-vision.md#L141) | IND | CAP9 | CAP7 | — | Know the user's normal to catch the forged invoice / changed-bank-details note. |
| UC29 | [L145](../ai-mail-foundation-vision.md#L145) | IND | CAP9 | — | INV1 | Slow the urgent-money traps and warn before any money moves, not after. |
| UC30 | [L149](../ai-mail-foundation-vision.md#L149) | IND (→PROT) | CAP9 | — | INV2 | Extend scam protection to a watched-over relative's inbox. |
| UC31 | [L152](../ai-mail-foundation-vision.md#L152) | IND | CAP9 | CAP12 | INV4 | Explain in plain words why something smells wrong, so the user learns to spot it. |
| UC32 | [L155](../ai-mail-foundation-vision.md#L155) | IND | CAP9 | — | INV2 | Even a suspected scam is Held-aside and flagged, never deleted on its own. |
| UC33 | [L159](../ai-mail-foundation-vision.md#L159) | IND | CAP5 | — | INV1 | Help the user never miss a birthday, thank-you, or kind check-in. |
| UC34 | [L163](../ai-mail-foundation-vision.md#L163) | IND | CAP5 | CAP11, CAP7 | INV9 | See the whole person across email + chat; draft the warm reply the user's way; notice cold threads anywhere. |
| UC35 | [L168](../ai-mail-foundation-vision.md#L168) | IND | CAP11 | — | INV7, INV11 | Bring chats under the assistant only by choice — separate or left out if preferred. |
| UC36 | [L172](../ai-mail-foundation-vision.md#L172) | IND | CAP4 | — | INV1, INV9 | Cold-start drafts (intro, reconnection, pitch) assembled in the user's voice. |
| UC37 | [L177](../ai-mail-foundation-vision.md#L177) | IND | CAP5 | CAP4 | INV1, INV7 | Spot the user's loose ends (Commitments) and offer to draft; nudging dialable down/off. |
| UC38 | [L182](../ai-mail-foundation-vision.md#L182) | IND | CAP2 | — | INV1 | Notice unread subscriptions and offer to unsubscribe — always shown, never silent. |
| UC39 | [L187](../ai-mail-foundation-vision.md#L187) | IND | CAP11 | CAP9 | INV4 | A patient plain-words helper to just ask "is this real?" / "what does this want?". |
| UC40 | [L192](../ai-mail-foundation-vision.md#L192) | IND | CAP11 | — | — | Reach the whole mailbox by speaking or typing in plain language. |
| UC41 | [L196](../ai-mail-foundation-vision.md#L196) | IND | CAP12 | — | INV4, INV8 | Start small and watch it earn trust — shows its thinking, widens only as allowed. |
| UC42 | [L200](../ai-mail-foundation-vision.md#L200) | IND | CAP4 | — | INV9 | Meet each message in its own language while the app stays in the user's. |
| UC43 | [L204](../ai-mail-foundation-vision.md#L204) | TM | CAP4 | CAP14 | INV1, INV9 | Draft repeat-support answers from past mail then KB; a person approves every send. |
| UC44 | [L209](../ai-mail-foundation-vision.md#L209) | TM | CAP14 | CAP2 | INV3 | File the shared inbox the team's way; when unsure leave in the common pile; learn from re-assignment. |
| UC45 | [L215](../ai-mail-foundation-vision.md#L215) | TM | CAP14 | — | INV3 | Know who's actually reachable and route time-sensitive mail to whoever's covering. |
| UC46 | [L220](../ai-mail-foundation-vision.md#L220) | TM | CAP14 | — | — | See when a colleague is already on a message before doubling up. |
| UC47 | [L224](../ai-mail-foundation-vision.md#L224) | IND | CAP12 | — | INV4 | Show everything it did and why, each with a plain reason — never a black box. |
| UC48 | [L228](../ai-mail-foundation-vision.md#L228) | MGR | CAP12 | CAP14 | INV5, INV10 | A complete lasting record of the assistant's own decisions — auditable, not staff-surveillance. |
| UC49 | [L233](../ai-mail-foundation-vision.md#L233) | TM | CAP14 | — | INV4 | A handed-off conversation arrives already understood — full context travels with it. |
| UC50 | [L238](../ai-mail-foundation-vision.md#L238) | TM | CAP14 | CAP5 | — | Escalate a beyond-me message to the right specialist with the full picture, one nod. |
| UC51 | [L243](../ai-mail-foundation-vision.md#L243) | IND | CAP3 | CAP11 | INV11 | Search across chat apps the same way as mail — find it wherever it was said. |
| UC52 | [L248](../ai-mail-foundation-vision.md#L248) | IND | CAP3 | CAP7 | — | One question returns the connected picture — email + filed contract + meeting. |
| UC53 | [L252](../ai-mail-foundation-vision.md#L252) | IND | CAP2 | CAP15 | INV1, INV2 | Notice duplicates and offer to tidy — always shown, never a copy thrown away silently. |
| UC54 | [L257](../ai-mail-foundation-vision.md#L257) | TM | CAP3 | CAP14 | INV11 | Search across what the team holds together — answers aren't trapped in one person's mail. |
| UC55 | [L261](../ai-mail-foundation-vision.md#L261) | TM | CAP3 | — | INV11 | Reach into the company's shared files too and bring them back alongside mail. |
| UC56 | [L265](../ai-mail-foundation-vision.md#L265) | TM (→PIC) | CAP14 | — | INV1, INV11 | Pull a colleague in for just this moment with a scoped view; drop them back out after. |
| UC57 | [L270](../ai-mail-foundation-vision.md#L270) | MGR | CAP14 | CAP12 | INV8, INV10 | Manager sets how far the assistant may go per person/account — the boundary is theirs. |
| UC58 | [L275](../ai-mail-foundation-vision.md#L275) | IND | CAP10 | — | — | See at a glance where every open item stands and whose court it's in. |
| UC59 | [L280](../ai-mail-foundation-vision.md#L280) | MGR | CAP14 | CAP10 | INV10 | See the team's whole work-state — aged items, whose court — without clocking people. |
| UC60 | [L285](../ai-mail-foundation-vision.md#L285) | IND | CAP1 | CAP9 | INV2, INV3 | Doorkeeper tells the real first-contact from mass pitch; holds (never deletes) the rest, overrulable. |
| UC61 | [L293](../ai-mail-foundation-vision.md#L293) | IND | CAP5 | CAP10 | INV1 | Watch the replies others owe the user (Waiting-on) and offer to chase before silence costs. |
| UC62 | [L299](../ai-mail-foundation-vision.md#L299) | IND | CAP7 | — | INV11 | Recognise one Contact across addresses and apps — one relationship thread, never half-blind. |
| UC63 | [L305](../ai-mail-foundation-vision.md#L305) | IND | CAP12 | — | INV1, INV8 | Tell it once where it may go ahead vs must always ask; the line is the user's to move. |
| UC64 | [L311](../ai-mail-foundation-vision.md#L311) | IND | CAP13 | CAP4 | INV1, INV9 | Let it carry a whole multi-round exchange to its finish, coming back for decisions/approval. |
| UC65 | [L317](../ai-mail-foundation-vision.md#L317) | IND | CAP9 | — | INV1 | Catch the user's own send-mistakes in the moment before send (reply-all, wrong Anna, missing attachment, changed bank). |
| UC66 | [L322](../ai-mail-foundation-vision.md#L322) | IND | CAP15 | — | INV1 | Carry each message through to calendar / task / filing / cancellation — a nod before committing. |
| UC67 | [L328](../ai-mail-foundation-vision.md#L328) | IND | CAP7 | — | INV6 | Useful from day one — learned from the whole existing archive, not only new mail. |

## Reverse index (capability → UCs)

| CAP | UCs (primary) |
|-----|----------------|
| CAP1 — Triage & Daily Briefing | UC1, UC11, UC12, UC13, UC60 |
| CAP2 — Organize & Declutter | UC7, UC38, UC53 |
| CAP3 — Search & Retrieval | UC5, UC17, UC22, UC23, UC51, UC52, UC54, UC55 |
| CAP4 — Reply & Compose | UC2, UC9, UC10, UC36, UC42, UC43 |
| CAP5 — Follow-ups & Relationship Care | UC14, UC15, UC33, UC34, UC37, UC61 |
| CAP6 — Deadlines & Resurfacing | UC3, UC4, UC6 |
| CAP7 — Memory & Context | UC16, UC62, UC67 |
| CAP8 — Archive Taming | UC18, UC19 |
| CAP9 — Fraud & Safety Guard | UC28, UC29, UC30, UC31, UC32, UC65 |
| CAP10 — Situational Awareness & Insights | UC20, UC58 |
| CAP11 — Reach & Access | UC26, UC27, UC35, UC39, UC40 |
| CAP12 — Trust, Transparency & Control | UC24, UC25, UC41, UC47, UC48, UC63 |
| CAP13 — Autonomous Multi-step Handling | UC21, UC64 |
| CAP14 — Team Collaboration & Oversight | UC44, UC45, UC46, UC49, UC50, UC56, UC57, UC59 |
| CAP15 — Cross-system Follow-through | UC8, UC66 |
