# UC index — traceability spine

Every use-case from [ai-mail-foundation-vision.md](../ai-mail-foundation-vision.md),
mapped to its actor, primary capability (+ notable secondaries), the invariants it
leans on, and a **normalized intent** one-liner. The one-liner is the *only* place
text is compressed — repeated invariant boilerplate is factored out to `INV`
references; read the cited source line for the full, rich original.

- **Actor** codes → [actors.md](actors.md) · **CAP** → [capability-map.md](capability-map.md) · **INV** → [invariants.md](invariants.md)
- **Src** links the UC's line in the vision. Coverage: all 67 UCs present, each with a primary capability and an actor.

| UC | Src | Actor | Primary | Also | INV | Normalized intent |
|----|-----|-------|---------|------|-----|-------------------|
| UC1 | [L35](../ai-mail-foundation-vision.md#L35) | IND | CAP2 | — | INV1 | Trust that every important message is handled or scheduled, so you can switch off. |
| UC2 | [L39](../ai-mail-foundation-vision.md#L39) | IND | CAP3 | CAP13 | INV1, INV8 | All the prep done (draft, slot, decision), ready or on demand — you stay the approver. |
| UC3 | [L43](../ai-mail-foundation-vision.md#L43) | IND | CAP5 | CAP4 | INV1 | Catch the costly life-admin miss before it happens and ask what to do. |
| UC4 | [L47](../ai-mail-foundation-vision.md#L47) | IND | CAP5 | — | — | Know deadlines/obligations inferred from the email itself; no manual due dates. |
| UC5 | [L50](../ai-mail-foundation-vision.md#L50) | IND | CAP1 | — | — | Ask in plain words and get back a fact or the exact buried message across all of mail. |
| UC6 | [L56](../ai-mail-foundation-vision.md#L56) | IND | CAP5 | — | — | Resurface the right thing at the right moment before you think to look. |
| UC7 | [L60](../ai-mail-foundation-vision.md#L60) | IND | CAP7 | — | — | Have all mail neatly filed into sensible places instead of one pile. |
| UC8 | [L63](../ai-mail-foundation-vision.md#L63) | IND | CAP7 | CAP16 | — | Important attachments auto-filed into the document store you already use. |
| UC9 | [L67](../ai-mail-foundation-vision.md#L67) | IND | CAP3 | — | INV1 | The dreaded reply pre-drafted in your voice, needing only a tweak and a nod. |
| UC10 | [L71](../ai-mail-foundation-vision.md#L71) | IND | CAP3 | — | INV1 | The legwork reply assembled (facts, numbers) ready to check and approve. |
| UC11 | [L75](../ai-mail-foundation-vision.md#L75) | IND | CAP2 | — | — | Open to a short briefing of what actually needs you; the rest handled. |
| UC12 | [L78](../ai-mail-foundation-vision.md#L78) | IND | CAP13 | CAP2 | INV5, INV6 | Lean on the briefing yet always read everything yourself; trust without lockout. |
| UC13 | [L81](../ai-mail-foundation-vision.md#L81) | IND | CAP2 | — | INV2 | Low-stakes noise set aside in a quiet read-only corner, not flagged as spam. |
| UC14 | [L85](../ai-mail-foundation-vision.md#L85) | IND | CAP4 | — | INV1 | Notice a cared-about thread going cold and offer to draft. |
| UC15 | [L89](../ai-mail-foundation-vision.md#L89) | BIZ | CAP4 | — | INV1 | Nudge before a key account or promising lead slips through the cracks. |
| UC16 | [L93](../ai-mail-foundation-vision.md#L93) | IND | CAP10 | — | INV5 | Remember relationship context across years, even when some lives outside email. |
| UC17 | [L98](../ai-mail-foundation-vision.md#L98) | IND | CAP1 | CAP17 | — | Ask questions of decades of mail and get answers; archive as a knowledge well. |
| UC18 | [L102](../ai-mail-foundation-vision.md#L102) | IND | CAP17 | — | INV2 | Point it at the old pile and have it made safe and tidy. |
| UC19 | [L106](../ai-mail-foundation-vision.md#L106) | IND | CAP17 | — | INV2 | Taming the old pile never loses what mattered — valuables surfaced, not buried. |
| UC20 | [L109](../ai-mail-foundation-vision.md#L109) | IND | CAP4 | — | INV1 | Stand watch over the whole picture and catch patterns you never knew to ask about. |
| UC21 | [L115](../ai-mail-foundation-vision.md#L115) | IND | CAP8 | — | INV1 | Say "set up a call" and have the negotiation happen in the background to a result. |
| UC22 | [L119](../ai-mail-foundation-vision.md#L119) | IND | CAP7 | CAP1 | — | Trace a filed document back to its email and the whole correspondence around it. |
| UC23 | [L122](../ai-mail-foundation-vision.md#L122) | IND | CAP1 | CAP7 | — | Pull together every related message on a topic across separate threads. |
| UC24 | [L126](../ai-mail-foundation-vision.md#L126) | IND | CAP13 | — | INV5 | What it learns stays yours; see it, correct it, switch off, leave with mail intact. |
| UC25 | [L130](../ai-mail-foundation-vision.md#L130) | IND | CAP12 | — | INV7 | Set how careful it is per inbox — personal and work by their own rules. |
| UC26 | [L134](../ai-mail-foundation-vision.md#L134) | IND | CAP12 | CAP9 | INV7 | One assistant across all accounts while keeping the walls you want. |
| UC27 | [L138](../ai-mail-foundation-vision.md#L138) | IND | CAP14 | — | — | Help one click away inside your existing inbox, not a new place to learn. |
| UC28 | [L141](../ai-mail-foundation-vision.md#L141) | IND | CAP6 | — | INV2 | Knows your normal, so it catches the forged invoice or bank-change a spam filter waves through. |
| UC29 | [L145](../ai-mail-foundation-vision.md#L145) | IND | CAP6 | — | INV2 | Slow the urgent-money traps and warn before any money moves. |
| UC30 | [L149](../ai-mail-foundation-vision.md#L149) | GUARD | CAP6 | — | INV2 | Watch over a less tech-savvy relative's inbox and flag before they fall for something. |
| UC31 | [L152](../ai-mail-foundation-vision.md#L152) | IND | CAP6 | CAP14 | INV3 | Explain in plain words why something smells wrong, so you learn to spot it. |
| UC32 | [L155](../ai-mail-foundation-vision.md#L155) | IND | CAP6 | — | INV2 | Even a suspected scam is set aside and flagged, never quietly removed. |
| UC33 | [L159](../ai-mail-foundation-vision.md#L159) | IND | CAP4 | — | INV1 | Help you be the person who never forgets a birthday, thank-you, or check-in. |
| UC34 | [L163](../ai-mail-foundation-vision.md#L163) | IND | CAP9 | CAP10, CAP4 | — | One assistant sees the whole picture of a person across email and chat. |
| UC35 | [L168](../ai-mail-foundation-vision.md#L168) | IND | CAP9 | — | INV7 | Bring chats under the assistant only if you choose; the quiet home base stays yours. |
| UC36 | [L172](../ai-mail-foundation-vision.md#L172) | IND | CAP3 | — | INV1 | Say who and what, and get a real first draft of the cold/awkward message in your voice. |
| UC37 | [L177](../ai-mail-foundation-vision.md#L177) | IND | CAP4 | — | INV1, INV6 | Spot loose ends you owe and offer to draft — and let you turn the nudging down. |
| UC38 | [L182](../ai-mail-foundation-vision.md#L182) | IND | CAP16 | — | INV1, INV2 | Notice unread subscriptions and offer to unsubscribe — shows the list, waits for your nod. |
| UC39 | [L187](../ai-mail-foundation-vision.md#L187) | IND | CAP14 | CAP6 | INV3 | A patient helper you can just ask "is this real?" — handle your mail with confidence. |
| UC40 | [L192](../ai-mail-foundation-vision.md#L192) | IND | CAP14 | — | — | Reach your whole mailbox by speaking or typing in plain language. |
| UC41 | [L196](../ai-mail-foundation-vision.md#L196) | IND | CAP13 | — | INV6 | Start small and watch it earn trust; never a blind leap of faith. |
| UC42 | [L200](../ai-mail-foundation-vision.md#L200) | IND | CAP3 | CAP14 | — | Meet each message in its own language while the app stays in yours. |
| UC43 | [L204](../ai-mail-foundation-vision.md#L204) | BIZ | CAP3 | CAP1 | INV1, INV8 | Draft repeat support answers from past mail then the knowledge base; a person still sends. |
| UC44 | [L209](../ai-mail-foundation-vision.md#L209) | TEAM | CAP11 | CAP7 | INV1, INV6 | Auto-file shared-inbox mail to the right person; unsure → leave in the common pile; learns from corrections. |
| UC45 | [L215](../ai-mail-foundation-vision.md#L215) | TEAM | CAP11 | — | INV7 | Know who's actually reachable and route around the away person to whoever's covering. |
| UC46 | [L220](../ai-mail-foundation-vision.md#L220) | TEAM | CAP11 | — | — | See a colleague is already on a message before you reply, so no double answers. |
| UC47 | [L224](../ai-mail-foundation-vision.md#L224) | IND | CAP13 | — | INV3, INV4 | Show everything it did and why — never a black box. |
| UC48 | [L228](../ai-mail-foundation-vision.md#L228) | MGR | CAP13 | — | INV4, INV5 | A complete lasting record of every decision — the assistant's actions, not staff surveillance. |
| UC49 | [L233](../ai-mail-foundation-vision.md#L233) | TEAM | CAP11 | CAP10 | — | Hand off (or inherit) a conversation already understood; the story travels with it. |
| UC50 | [L238](../ai-mail-foundation-vision.md#L238) | TEAM | CAP11 | — | INV1 | Point a beyond-me message to the right specialist and hand over the full picture in one nod. |
| UC51 | [L243](../ai-mail-foundation-vision.md#L243) | IND | CAP1 | CAP9 | — | Ask in plain words and find it wherever it happened — mail or chat apps alike. |
| UC52 | [L248](../ai-mail-foundation-vision.md#L248) | IND | CAP1 | — | — | One question returns the whole thing — email, filed contract, and the meeting — as one picture. |
| UC53 | [L252](../ai-mail-foundation-vision.md#L252) | IND | CAP7 | — | INV1, INV2 | Notice duplicates and offer to tidy; shows what it wants to merge/remove, waits for your nod. |
| UC54 | [L257](../ai-mail-foundation-vision.md#L257) | TEAM | CAP1 | CAP11 | INV7 | Search across what the team holds together, so an answer found once is findable by all. |
| UC55 | [L261](../ai-mail-foundation-vision.md#L261) | TEAM | CAP1 | — | INV7 | Reach into the company's shared files too and bring them back alongside the mail. |
| UC56 | [L265](../ai-mail-foundation-vision.md#L265) | TEAM | CAP11 | — | INV7 | Pull a colleague in for a moment, then drop them back out; the thread stays yours. |
| UC57 | [L270](../ai-mail-foundation-vision.md#L270) | MGR | CAP12 | CAP11 | INV1, INV6, INV7 | Set per-member how far it may go — draft-only for a new hire, off-limits accounts, longer leash on routine. |
| UC58 | [L275](../ai-mail-foundation-vision.md#L275) | IND | CAP2 | — | — | See at a glance where every open thread stands and whose court it's in. |
| UC59 | [L280](../ai-mail-foundation-vision.md#L280) | MGR | CAP2 | CAP11 | INV5 | See the team's whole work honestly — who has the ball, what's aged — without clocking people. |
| UC60 | [L285](../ai-mail-foundation-vision.md#L285) | BIZ | CAP18 | — | INV1, INV2 | Doorkeep a public inbox: real first-contact vs mass pitch; held not deleted; overridable. |
| UC61 | [L293](../ai-mail-foundation-vision.md#L293) | IND | CAP4 | — | INV1 | Keep watch on replies others owe you and offer to chase before silence costs you. |
| UC62 | [L299](../ai-mail-foundation-vision.md#L299) | IND | CAP10 | — | — | Know the many addresses/apps are one person, so history isn't scattered and half-blind. |
| UC63 | [L305](../ai-mail-foundation-vision.md#L305) | IND | CAP12 | — | INV1, INV6 | Tell it once where it may go ahead vs must always ask; the line is yours to move. |
| UC64 | [L311](../ai-mail-foundation-vision.md#L311) | IND | CAP8 | — | INV1, INV6 | Let it carry a whole exchange to its finish, keeping you posted and bringing you in to decide. |
| UC65 | [L317](../ai-mail-foundation-vision.md#L317) | IND | CAP15 | CAP6 | INV1 | Catch you in the moment before send — reply-all, wrong Anna, missing attachment, changed bank details. |
| UC66 | [L322](../ai-mail-foundation-vision.md#L322) | IND | CAP16 | — | INV1 | Carry each message through to calendar/task/filing/cancellation, with your nod. |
| UC67 | [L328](../ai-mail-foundation-vision.md#L328) | IND | CAP17 | — | — | Useful from day one by learning your existing mail, not just what arrives after. |

## Capability → UCs (reverse index)

| CAP | UCs |
|-----|-----|
| CAP1 Ask-anything retrieval | UC5, UC17, UC23, UC51, UC52, UC54, UC55 |
| CAP2 Triage, briefing & inbox state | UC1, UC11, UC13, UC58, UC59 |
| CAP3 Drafting in your voice | UC2, UC9, UC10, UC36, UC42, UC43 |
| CAP4 Proactive watch & nudge | UC14, UC15, UC20, UC33, UC37, UC61 |
| CAP5 Deadlines & resurfacing | UC3, UC4, UC6 |
| CAP6 Fraud & money-trap defense | UC28, UC29, UC30, UC31, UC32 |
| CAP7 Filing & document sync | UC7, UC8, UC22, UC53 |
| CAP8 Scheduling & negotiation on your behalf | UC21, UC64 |
| CAP9 Multi-channel reach | UC34, UC35 |
| CAP10 Identity & relationship memory | UC16, UC62 |
| CAP11 Team & shared inbox | UC44, UC45, UC46, UC49, UC50, UC56 |
| CAP12 Autonomy, permissions & boundaries | UC25, UC26, UC57, UC63 |
| CAP13 Transparency, audit & ownership | UC12, UC24, UC41, UC47, UC48 |
| CAP14 Access & reach | UC27, UC39, UC40 |
| CAP15 Send-time safeguards | UC65 |
| CAP16 Act-through across apps | UC38, UC66 |
| CAP17 Onboarding from history | UC18, UC19, UC67 |
| CAP18 Public-inbox doorkeeper | UC60 |
