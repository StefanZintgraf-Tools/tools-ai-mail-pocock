# UC index — traceability spine

Every use-case from
[ai-mail-foundation-vision.md](../ai-mail-foundation-vision.md), mapped to its
native scope rung, its actor(s), primary capability (+ notable secondaries), the
invariants it leans on, and a **normalized intent** one-liner. The one-liner is the
*only* place text is compressed — repeated invariant boilerplate is factored out to
`INV` references; read the cited source line for the full original.

- **Actor** → [actors.md](actors.md) · **CAP** → [capability-map.md](capability-map.md) · **INV** → [invariants.md](invariants.md) · **Scope** → [vision-index.md](vision-index.md)
- **Src** links the UC's line in the vision. Coverage: all **115** UCs (UC1–UC115) present, each with a native scope rung, ≥1 actor, and exactly one primary capability.
- **Scope** is the UC's *native rung* — the lowest scope item (`S#`) among the vision points it realizes, per [vision-index.md](vision-index.md)'s UC→rung mapping (S1 < S2 < S3). No UC realizes zero promises, so there are no `—` rungs.
- **Actor** notation: `→PROT`/`→PIC` = a scoped grant onto another domain; `→EXT` = an external counterparty the assistant deals with on the user's behalf; `· SYS` = an outside system/portal the assistant reaches into. These are the load-bearing *boundary* actors alongside the point-of-view principal.

| UC    | Src                                          | Scope | Actor           | Primary | Also         | INV                | Normalized intent                                                                                                                                    |
| ----- | -------------------------------------------- | ----- | --------------- | ------- | ------------ | ------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| UC1   | [L125](../ai-mail-foundation-vision.md#L125) | S1    | IND             | CAP1    | —            | INV1               | Every important message ends up either handled or scheduled — nothing carried in the head.                                                           |
| UC2   | [L130](../ai-mail-foundation-vision.md#L130) | S1    | IND             | CAP4    | CAP1, CAP13  | INV1, INV8         | All the prep (draft, slot, decision) ready ahead or on demand; user stays the approver.                                                              |
| UC3   | [L132](../ai-mail-foundation-vision.md#L132) | S1    | IND             | CAP6    | —            | INV3               | Catch the costly life-admin miss before it happens — deadlines/obligations inferred from the email itself, no manual due dates — and ask what to do. |
| UC4   | [L137](../ai-mail-foundation-vision.md#L137) | S1    | IND             | CAP6    | —            | see UC3            | Merged into UC3 — automatic due-date/obligation inference folded into the same costly-miss watch.                                                    |
| UC5   | [L139](../ai-mail-foundation-vision.md#L139) | S1    | IND             | CAP3    | —            | INV11              | Ask in plain words; get a fact or the exact buried thread back, across recent and old mail.                                                          |
| UC6   | [L145](../ai-mail-foundation-vision.md#L145) | S1    | IND             | CAP6    | —            | INV3               | Resurface the right thing (booking, warranty) the moment it's needed, unprompted.                                                                    |
| UC7   | [L149](../ai-mail-foundation-vision.md#L149) | S1    | IND             | CAP2    | —            | INV3               | Mail sorted into sensible places rather than one undifferentiated pile.                                                                              |
| UC8   | [L152](../ai-mail-foundation-vision.md#L152) | S1    | IND             | CAP15   | CAP2         | INV1               | Important attachments appear correctly filed in the user's document store.                                                                           |
| UC9   | [L156](../ai-mail-foundation-vision.md#L156) | S1    | IND             | CAP4    | —            | INV1, INV9         | The dreaded reply pre-drafted in the user's voice — tweak and nod.                                                                                   |
| UC10  | [L160](../ai-mail-foundation-vision.md#L160) | S1    | IND             | CAP4    | —            | INV1               | Legwork-heavy reply assembled (facts gathered, numbers pulled) ready to check.                                                                       |
| UC11  | [L164](../ai-mail-foundation-vision.md#L164) | S1    | IND             | CAP1    | —            | INV3               | Open to a short briefing of the handful that actually need the user today.                                                                           |
| UC12  | [L167](../ai-mail-foundation-vision.md#L167) | S1    | IND             | CAP1    | —            | INV4, INV7, INV8   | Lean on the briefing yet always able to open and read everything — never locked out.                                                                 |
| UC13  | [L170](../ai-mail-foundation-vision.md#L170) | S1    | IND             | CAP1    | —            | INV2               | Low-stakes noise set aside in a read-only No-action corner, not flagged as spam.                                                                     |
| UC14  | [L174](../ai-mail-foundation-vision.md#L174) | S1    | IND             | CAP5    | —            | INV1               | Notice a cared-about thread going cold and offer to draft.                                                                                           |
| UC15  | [L179](../ai-mail-foundation-vision.md#L179) | S1    | IND (→EXT)      | CAP5    | —            | INV1               | Nudge before a key account, client request, or promising lead slips through the cracks.                                                              |
| UC16  | [L182](../ai-mail-foundation-vision.md#L182) | S1    | IND             | CAP7    | —            | INV6, INV11        | Remember relationship context across years, even data living outside email.                                                                          |
| UC17  | [L187](../ai-mail-foundation-vision.md#L187) | S1    | IND             | CAP3    | CAP8         | INV6               | Ask questions of decades of correspondence and get answers out of the archive.                                                                       |
| UC18  | [L191](../ai-mail-foundation-vision.md#L191) | S1    | IND             | CAP8    | —            | INV2, INV3         | Old mail made safe and tidy — dead stuff set aside, valuable preserved and in order.                                                                 |
| UC19  | [L195](../ai-mail-foundation-vision.md#L195) | S1    | IND             | CAP8    | CAP6         | INV2               | Taming the old pile never loses what mattered — it's surfaced, not buried.                                                                           |
| UC20  | [L198](../ai-mail-foundation-vision.md#L198) | S1    | IND             | CAP10   | —            | INV3               | Stand watch over the whole picture and surface patterns the user never knew to ask about.                                                            |
| UC21  | [L205](../ai-mail-foundation-vision.md#L205) | S1    | IND (→EXT)      | CAP13   | —            | see UC64           | Merged into UC64 — scheduling negotiation is one instance of carry-the-exchange-to-finish.                                                           |
| UC22  | [L208](../ai-mail-foundation-vision.md#L208) | S1    | IND             | CAP3    | CAP7         | —                  | Trace a filed document back to its source email and the surrounding correspondence.                                                                  |
| UC23  | [L211](../ai-mail-foundation-vision.md#L211) | S1    | IND             | CAP3    | —            | —                  | Pull together every message on one topic, even across separate threads and people.                                                                   |
| UC24  | [L215](../ai-mail-foundation-vision.md#L215) | S1    | IND             | CAP12   | —            | INV6, INV7, INV10  | What it learns stays the user's, works for them alone — see it, correct it, switch off, leave with mail intact.                                      |
| UC25  | [L219](../ai-mail-foundation-vision.md#L219) | S1    | IND             | CAP12   | CAP11        | INV8, INV11        | Set autonomy per Account — personal vs work live by their own rules.                                                                                 |
| UC26  | [L223](../ai-mail-foundation-vision.md#L223) | S1    | IND             | CAP11   | CAP12        | INV11              | One assistant spans all the user's accounts while keeping the walls between them.                                                                    |
| UC27  | [L227](../ai-mail-foundation-vision.md#L227) | S1    | IND             | CAP11   | —            | INV7               | Help one click away inside the existing inbox, not a new place to move into.                                                                         |
| UC28  | [L230](../ai-mail-foundation-vision.md#L230) | S1    | IND             | CAP9    | —            | INV1               | Know the user's normal to catch forged invoices, changed bank details, boss-impersonation and pay-now/wire pressure — warn before any money moves.   |
| UC29  | [L236](../ai-mail-foundation-vision.md#L236) | S1    | IND             | CAP9    | —            | see UC28           | Merged into UC28 — urgent-money-pressure intervention folded into the money-fraud guard.                                                             |
| UC30  | [L238](../ai-mail-foundation-vision.md#L238) | S1    | IND (→PROT)     | CAP9    | CAP16        | INV2, INV10, INV12 | Extend scam protection to a watched-over relative's inbox, within the authority conferred.                                                           |
| UC31  | [L241](../ai-mail-foundation-vision.md#L241) | S1    | IND             | CAP9    | CAP12        | INV4               | Explain in plain words why something smells wrong, so the user learns to spot it.                                                                    |
| UC32  | [L244](../ai-mail-foundation-vision.md#L244) | S1    | IND             | CAP9    | —            | INV2               | Even a suspected scam is Held-aside and flagged, never deleted on its own.                                                                           |
| UC33  | [L248](../ai-mail-foundation-vision.md#L248) | S1    | IND             | CAP5    | —            | INV1               | Help the user never miss a birthday, thank-you, or kind check-in.                                                                                    |
| UC34  | [L252](../ai-mail-foundation-vision.md#L252) | S1    | IND             | CAP5    | CAP11, CAP7  | INV9               | See the whole person across email + chat; draft the warm reply the user's way; notice cold threads anywhere.                                         |
| UC35  | [L257](../ai-mail-foundation-vision.md#L257) | S2    | IND             | CAP11   | CAP12        | INV7, INV11        | Bring chats under the assistant only by choice — separate or left out if preferred.                                                                  |
| UC36  | [L261](../ai-mail-foundation-vision.md#L261) | S1    | IND             | CAP4    | —            | INV1, INV9         | Cold-start drafts (intro, reconnection, pitch) assembled in the user's voice.                                                                        |
| UC37  | [L266](../ai-mail-foundation-vision.md#L266) | S1    | IND             | CAP5    | CAP4         | INV1, INV8         | Spot the user's loose ends (Commitments) and offer to draft; nudging dialable down/off.                                                              |
| UC38  | [L270](../ai-mail-foundation-vision.md#L270) | S1    | IND             | CAP2    | —            | INV1, INV2         | Notice unread subscriptions and offer to unsubscribe — always shown, never silent.                                                                   |
| UC39  | [L275](../ai-mail-foundation-vision.md#L275) | S1    | IND             | CAP17   | CAP9         | INV4               | A patient plain-words helper to just ask "is this real?" / "what does this want?".                                                                   |
| UC40  | [L280](../ai-mail-foundation-vision.md#L280) | S1    | IND             | CAP17   | CAP11        | INV7               | Reach the whole mailbox by speaking or typing in plain language.                                                                                     |
| UC41  | [L284](../ai-mail-foundation-vision.md#L284) | S1    | IND             | CAP12   | —            | INV4, INV8         | Start small and watch it earn trust — shows its thinking, widens only as allowed.                                                                    |
| UC42  | [L288](../ai-mail-foundation-vision.md#L288) | S1    | IND             | CAP4    | CAP17        | INV9               | Meet each message in its own language while the app stays in the user's.                                                                             |
| UC43  | [L292](../ai-mail-foundation-vision.md#L292) | S1    | TM (→EXT)       | CAP4    | CAP14        | INV1, INV9         | Draft repeat-support answers from past mail then KB; a person approves every send.                                                                   |
| UC44  | [L297](../ai-mail-foundation-vision.md#L297) | S1    | TM              | CAP14   | CAP2         | INV3               | File the shared inbox the team's way; when unsure leave in the common pile; learn from re-assignment.                                                |
| UC45  | [L303](../ai-mail-foundation-vision.md#L303) | S1    | TM              | CAP14   | —            | INV3               | Know who's actually reachable and route time-sensitive mail to whoever's covering.                                                                   |
| UC46  | [L308](../ai-mail-foundation-vision.md#L308) | S1    | TM              | CAP14   | —            | —                  | See when a colleague is already on a message before doubling up.                                                                                     |
| UC47  | [L312](../ai-mail-foundation-vision.md#L312) | S1    | IND             | CAP12   | CAP5         | INV4               | Show everything it did and why, each with a plain reason — never a black box.                                                                        |
| UC48  | [L317](../ai-mail-foundation-vision.md#L317) | S1    | MGR             | CAP18   | CAP12, CAP14 | INV5, INV10        | A complete lasting record of the assistant's own decisions — auditable, answers a legal hold or data-access request, not staff-surveillance.         |
| UC49  | [L321](../ai-mail-foundation-vision.md#L321) | S1    | STAFF / TM      | CAP14   | —            | INV4               | A handed-off conversation arrives already understood — full context travels with it.                                                                 |
| UC50  | [L327](../ai-mail-foundation-vision.md#L327) | S1    | TM              | CAP14   | CAP5         | —                  | Escalate a beyond-me message to the right specialist with the full picture, one nod.                                                                 |
| UC51  | [L331](../ai-mail-foundation-vision.md#L331) | S2    | IND             | CAP3    | CAP11        | INV11, INV13       | Search across chat apps the same way as mail — find it wherever it was said.                                                                         |
| UC52  | [L336](../ai-mail-foundation-vision.md#L336) | S1    | IND             | CAP3    | CAP7         | —                  | One question returns the connected picture — email + filed contract + meeting.                                                                       |
| UC53  | [L340](../ai-mail-foundation-vision.md#L340) | S1    | IND             | CAP2    | CAP7         | INV1, INV2         | Notice duplicates and offer to tidy — always shown, never a copy thrown away silently.                                                               |
| UC54  | [L345](../ai-mail-foundation-vision.md#L345) | S1    | TM              | CAP3    | CAP14        | INV11              | Search across what the team holds together — answers aren't trapped in one person's mail.                                                            |
| UC55  | [L349](../ai-mail-foundation-vision.md#L349) | S1    | TM              | CAP3    | —            | INV11              | Reach into the company's shared files too and bring them back alongside mail.                                                                        |
| UC56  | [L353](../ai-mail-foundation-vision.md#L353) | S1    | TM (→PIC)       | CAP14   | —            | INV1, INV11        | Pull a colleague in for just this moment with a scoped view; drop them back out after.                                                               |
| UC57  | [L358](../ai-mail-foundation-vision.md#L358) | S1    | MGR             | CAP14   | CAP12        | INV8, INV10        | Manager sets how far the assistant may go per person/account — the boundary is theirs.                                                               |
| UC58  | [L364](../ai-mail-foundation-vision.md#L364) | S1    | IND             | CAP10   | —            | —                  | See at a glance where every open item stands and whose court it's in.                                                                                |
| UC59  | [L369](../ai-mail-foundation-vision.md#L369) | S1    | MGR             | CAP14   | CAP10        | INV10              | See the team's whole work-state — aged items, whose court, whose next move — without clocking people.                                                |
| UC60  | [L373](../ai-mail-foundation-vision.md#L373) | S1    | IND (→EXT)      | CAP1    | CAP9         | INV2, INV3         | Doorkeeper tells the real first-contact from mass pitch; holds (never deletes) the rest, overrulable.                                                |
| UC61  | [L380](../ai-mail-foundation-vision.md#L380) | S1    | IND (→EXT)      | CAP5    | CAP10        | INV1               | Watch the replies others owe the user (Waiting-on) and offer to chase before silence costs.                                                          |
| UC62  | [L386](../ai-mail-foundation-vision.md#L386) | S1    | IND             | CAP7    | CAP11        | INV11              | Recognise one Contact across addresses and apps — one relationship thread, never half-blind.                                                         |
| UC63  | [L391](../ai-mail-foundation-vision.md#L391) | S1    | IND             | CAP12   | —            | INV1, INV8         | Tell it once where it may go ahead vs must always ask; the line is the user's to move.                                                               |
| UC64  | [L399](../ai-mail-foundation-vision.md#L399) | S1    | IND (→EXT)      | CAP13   | CAP4, CAP15  | INV1, INV9         | Let it carry a whole multi-round exchange to its finish — set up a call, chase a quote — committing the slot, coming back for decisions/approval.    |
| UC65  | [L403](../ai-mail-foundation-vision.md#L403) | S1    | IND             | CAP9    | —            | INV1, INV3         | Catch the user's own send-mistakes in the moment before send (reply-all, wrong Anna, missing attachment, changed bank).                              |
| UC66  | [L408](../ai-mail-foundation-vision.md#L408) | S1    | IND             | CAP15   | —            | INV1               | Carry each message through to calendar / task / filing / cancellation — a nod before committing.                                                     |
| UC67  | [L413](../ai-mail-foundation-vision.md#L413) | S1    | IND             | CAP8    | CAP7         | INV6               | Useful from day one — learned from the whole existing archive, not only new mail.                                                                    |
| UC68  | [L422](../ai-mail-foundation-vision.md#L422) | S1    | STAFF           | CAP16   | CAP7         | INV11              | Leaving a job, hand the whole role's mail over as a structured handover already understood — open threads, promises, obligations, relationships.     |
| UC69  | [L424](../ai-mail-foundation-vision.md#L424) | S1    | STAFF           | CAP16   | —            | INV11              | On exit, cleanly and fairly separate what's genuinely the user's from what's the company's — no anxious manual sort.                                 |
| UC70  | [L429](../ai-mail-foundation-vision.md#L429) | S1    | STAFF           | CAP16   | CAP7         | INV11              | Inherit a warm inbox, not a cold "fwd:" graveyard — arrive already understanding people, open threads, history.                                      |
| UC71  | [L433](../ai-mail-foundation-vision.md#L433) | S1    | IND (→EXT)      | CAP13   | CAP9         | INV1, INV9         | When the counterparty has their own assistant, the two settle the drudge; each principal is handed the result to approve.                            |
| UC72  | [L438](../ai-mail-foundation-vision.md#L438) | S1    | DLG (→PROT)     | CAP16   | CAP13        | INV1, INV11, INV12 | Step into the inbox of someone who can't manage it, with proper authority, and actually handle it — strictly within that authority.                  |
| UC73  | [L444](../ai-mail-foundation-vision.md#L444) | S1    | IND             | CAP13   | CAP15        | INV1               | Let it carry an okayed errand to the finish — pay, dispute, book — real money only on explicit go-ahead.                                             |
| UC74  | [L449](../ai-mail-foundation-vision.md#L449) | S1    | HH              | CAP16   | —            | INV1, INV11        | One assistant spans a household's common admin across both inboxes; each keeps private mail their own, controls what's shared.                       |
| UC75  | [L454](../ai-mail-foundation-vision.md#L454) | S1    | IND             | CAP9    | CAP12        | INV11              | Protected by everyone's experience — a scam that caught anyone is stopped; draw on what worked, exposing no private mail.                            |
| UC76  | [L459](../ai-mail-foundation-vision.md#L459) | S2    | IND             | CAP20   | CAP6         | INV13              | Paper, scans, and official-channel bills read, understood, and handled exactly like mail — no free pass for arriving off-channel.                    |
| UC77  | [L464](../ai-mail-foundation-vision.md#L464) | S1    | IND (→EXT)      | CAP9    | —            | INV9               | Prove an incoming message truly is from who it claims, and that the user's own are provably theirs — impersonation stops both ways.                  |
| UC78  | [L468](../ai-mail-foundation-vision.md#L468) | S2    | IND (→EXT)      | CAP13   | —            | INV1               | Hand the dreaded phone call itself to the assistant — it calls, waits on hold, reports back — say-so before it commits on the line.                  |
| UC79  | [L473](../ai-mail-foundation-vision.md#L473) | S1    | IND / ORG       | CAP19   | CAP12        | INV12              | Switch on an opt-in specialist extension built for the user's trade — only chosen, trusted helpers let in.                                           |
| UC80  | [L478](../ai-mail-foundation-vision.md#L478) | S3    | IND · SYS       | CAP22   | CAP6         | INV4, INV13        | Watch the world beyond the inbox — delay, recall, breach, rate jump — and surface what affects the user in time to act.                              |
| UC81  | [L483](../ai-mail-foundation-vision.md#L483) | S1    | ORG             | CAP18   | —            | INV15              | Operate entirely within the organisation's own walls — nothing read or learned ever leaves.                                                          |
| UC82  | [L489](../ai-mail-foundation-vision.md#L489) | S1    | MGR             | CAP18   | —            | see UC48           | Merged into UC48 — legal-hold / data-access response folded into the assistant-decision record.                                                      |
| UC83  | [L491](../ai-mail-foundation-vision.md#L491) | S1    | IND             | CAP19   | CAP12        | INV8               | Teach custom rules in plain words and have them followed faithfully — the rules stay the user's to change or switch off.                             |
| UC84  | [L495](../ai-mail-foundation-vision.md#L495) | S1    | IND             | CAP18   | CAP12        | —                  | Keep a hold on what leaves — a message that can't be forwarded on, expires, or whose access can be pulled back later.                                |
| UC85  | [L499](../ai-mail-foundation-vision.md#L499) | S1    | IND             | CAP4    | —            | INV1               | Produce the finished document itself — contract, invoice, filled-in form, report — ready to check, not just the covering note.                       |
| UC86  | [L503](../ai-mail-foundation-vision.md#L503) | S1    | IND             | CAP17   | CAP11        | INV7               | Be the email entirely by voice/assistive means for someone who can't use a conventional inbox — never forced to touch one.                           |
| UC87  | [L508](../ai-mail-foundation-vision.md#L508) | S2    | IND             | CAP20   | CAP5         | INV13              | Take in voicemail, video, and recorded meetings — understand what was said and act on it, no free pass for non-text.                                 |
| UC88  | [L513](../ai-mail-foundation-vision.md#L513) | S1    | IND             | CAP1    | —            | INV4               | Reach a real, earned end-of-day the user can see is true — genuinely done, put it down and rest.                                                     |
| UC89  | [L518](../ai-mail-foundation-vision.md#L518) | S1    | IND             | CAP1    | CAP5         | —                  | Make sure the genuinely warm message isn't lost in the pile — surfaced quietly, never dressed up as an engagement trick.                             |
| UC90  | [L524](../ai-mail-foundation-vision.md#L524) | S1    | IND             | CAP5    | CAP1, CAP7   | INV2               | Handle a grieving user's mail with tenderness — stop the nudges, never file the deceased's mail as a to-do, protect what they'd keep.                |
| UC91  | [L530](../ai-mail-foundation-vision.md#L530) | S1    | IND             | CAP1    | CAP5         | —                  | A warm re-entry after a long absence — what really happened, what still waits vs what went stale, where each thread stands.                          |
| UC92  | [L536](../ai-mail-foundation-vision.md#L536) | S1    | IND (→EXT)      | CAP4    | CAP1         | INV1, INV9         | Stay a real human to an audience at scale — surface the ones worth answering, draft warm replies in the user's voice.                                |
| UC93  | [L542](../ai-mail-foundation-vision.md#L542) | S1    | IND             | CAP10   | CAP5, CAP4   | —                  | Keep a whole job-search campaign straight — every application's stage, no missed reply, prep pulled together, graceful chasing.                      |
| UC94  | [L548](../ai-mail-foundation-vision.md#L548) | S1    | IND             | CAP11   | —            | INV14              | Read, triage, and draft offline; sync and send the moment back in range — disconnected never means cut off.                                          |
| UC95  | [L552](../ai-mail-foundation-vision.md#L552) | S1    | IND             | CAP11   | —            | INV14              | One live picture across every device and modality — pick up a draft exactly where left, by voice or screen.                                          |
| UC96  | [L557](../ai-mail-foundation-vision.md#L557) | S3    | IND             | CAP6    | —            | INV13              | Hold standing obligations — passport, VAT filing, licence, inspection — as live obligations, surfaced as the date nears, not any message arriving.   |
| UC97  | [L564](../ai-mail-foundation-vision.md#L564) | S3    | IND · SYS       | CAP21   | CAP6         | INV12, INV13       | Watch silent portals and surface what sits unread there as if it had landed in the inbox — bounded to what the user opened.                          |
| UC98  | [L571](../ai-mail-foundation-vision.md#L571) | S3    | IND             | CAP22   | CAP13        | INV13              | Make the world's silence never cost what's owed — surface each entitlement, named, while the claim window is still open.                             |
| UC99  | [L581](../ai-mail-foundation-vision.md#L581) | S3    | IND             | CAP6    | —            | INV13              | Hold the user to the obligations in fine print built to turn against them — surface the auto-renewal / step-up window while it's still open.         |
| UC100 | [L585](../ai-mail-foundation-vision.md#L585) | S3    | DLG (→PROT)     | CAP6    | CAP16        | INV12, INV13       | Watch the silent obligations that would never reach a cared-for relative and raise them in time — within the authority conferred.                    |
| UC101 | [L594](../ai-mail-foundation-vision.md#L594) | S3    | IND             | CAP6    | —            | see UC96           | Merged into UC96 — a small business's standing legal obligations folded into the obligation watch.                                                   |
| UC102 | [L596](../ai-mail-foundation-vision.md#L596) | S3    | IND             | CAP13   | CAP6         | INV1               | Carry a silent obligation all the way to done — file the claim, cancel the auto-renewal, switch the rate — confirmation before it acts.              |
| UC103 | [L604](../ai-mail-foundation-vision.md#L604) | S3    | IND             | CAP6    | —            | INV4, INV13        | Lift the background dread — trust the silent corners are watched, so "no news" finally means "nothing's wrong".                                      |
| UC104 | [L611](../ai-mail-foundation-vision.md#L611) | S3    | IND             | CAP6    | CAP12        | INV4               | Show the guarded corners as an inspectable list, each with where it stands, and prove the watch with every real catch.                               |
| UC105 | [L620](../ai-mail-foundation-vision.md#L620) | S3    | IND · SYS       | CAP21   | —            | INV12, INV13       | Close the gap at the source — switch a paperless account back to emailing, sign up for alerts, register details — so the world reaches the user.     |
| UC106 | [L628](../ai-mail-foundation-vision.md#L628) | S2    | STAFF · SYS     | CAP10   | CAP15        | INV12              | One honest picture of everything open with a customer, across mail, sales system, and support desk — never blindsided by the unopened half.          |
| UC107 | [L636](../ai-mail-foundation-vision.md#L636) | S2    | IND / TM (→EXT) | CAP11   | CAP7         | INV13              | Recognise a conversation spread across email, ticket, and DM as one — nobody answers twice, no re-explaining "the other channel".                    |
| UC108 | [L642](../ai-mail-foundation-vision.md#L642) | S2    | IND (→EXT)      | CAP11   | —            | INV13              | Just respond and have it go back out the right door on its own — never track which channel someone came in on.                                       |
| UC109 | [L648](../ai-mail-foundation-vision.md#L648) | S2    | IND             | CAP11   | —            | INV13              | One calm place gathers whatever actually wants the user out of a dozen apps — the badges go quiet, everything seen, phone down.                      |
| UC110 | [L654](../ai-mail-foundation-vision.md#L654) | S1    | IND             | CAP9    | CAP11        | INV2, INV13        | Protected wherever a scam arrives — the fake-delivery text, the "relative" on a new number — every door guarded, held not deleted.                   |
| UC111 | [L661](../ai-mail-foundation-vision.md#L661) | S2    | IND             | CAP6    | CAP11, CAP1  | INV13              | Lift the obligation buried in a casual channel — a voice note meaning "invoice by Friday," a photo that's a receipt — out as a task or filed doc.    |
| UC112 | [L667](../ai-mail-foundation-vision.md#L667) | S2    | IND             | CAP1    | CAP11        | INV13              | Read the group-chat firehose and surface only what genuinely concerns the user — the ask, the date, the decision — mute the rest without fear.       |
| UC113 | [L675](../ai-mail-foundation-vision.md#L675) | S3    | IND · SYS       | CAP21   | CAP12        | INV12              | Grant, scope, and revoke exactly which accounts and portals it may reach, in a click — guard the silent corners without handing over the keys.       |
| UC114 | [L679](../ai-mail-foundation-vision.md#L679) | S3    | IND             | CAP6    | —            | INV13              | Watch obligations no document will ever mention — the handshake deal, the in-head date, the receipt-scribbled warranty — told to it directly.        |
| UC115 | [L684](../ai-mail-foundation-vision.md#L684) | S1    | STAFF · SYS     | CAP15   | CAP10        | INV1               | Keep the systems of record up to date — log the call, advance the deal, note the promise — no double data-entry; a nod before anything that commits. |

## Reverse index (capability → UCs)

Every UC appears under exactly one primary capability; the count sums to 115.

| CAP   | Name                                                | UCs (primary)                                                       | n   |
| ----- | --------------------------------------------------- | ------------------------------------------------------------------- | --- |
| CAP1  | Triage, Briefing & the Honest Done                  | UC1, UC11, UC12, UC13, UC60, UC88, UC89, UC91, UC112                | 9   |
| CAP2  | Organize, File & Declutter                          | UC7, UC38, UC53                                                     | 3   |
| CAP3  | Search & Retrieval                                  | UC5, UC17, UC22, UC23, UC51, UC52, UC54, UC55                       | 8   |
| CAP4  | Reply, Compose & Produce                            | UC2, UC9, UC10, UC36, UC42, UC43, UC85, UC92                        | 8   |
| CAP5  | Follow-ups & Relationship Care                      | UC14, UC15, UC33, UC34, UC37, UC61, UC90                            | 7   |
| CAP6  | Deadlines, Obligations & the Silent Watch           | UC3, UC4, UC6, UC96, UC99, UC100, UC101, UC103, UC104, UC111, UC114 | 11  |
| CAP7  | Memory, Context & Identity Resolution               | UC16, UC62                                                          | 2   |
| CAP8  | Archive Onboarding & Taming                         | UC18, UC19, UC67                                                    | 3   |
| CAP9  | Fraud, Safety & Provenance Guard                    | UC28, UC29, UC30, UC31, UC32, UC65, UC75, UC77, UC110               | 9   |
| CAP10 | Situational Awareness & Insights                    | UC20, UC58, UC93, UC106                                             | 4   |
| CAP11 | Multi-channel Reach, Access & Continuity            | UC26, UC27, UC35, UC94, UC95, UC107, UC108, UC109                   | 8   |
| CAP12 | Trust, Transparency, Autonomy & Control             | UC24, UC25, UC41, UC47, UC63                                        | 5   |
| CAP13 | Autonomous Multi-step Errands                       | UC21, UC64, UC71, UC73, UC78, UC102                                 | 6   |
| CAP14 | Team & Shared-Inbox Collaboration & Oversight       | UC44, UC45, UC46, UC49, UC50, UC56, UC57, UC59                      | 8   |
| CAP15 | Cross-system Follow-through & System-of-Record Sync | UC8, UC66, UC115                                                    | 3   |
| CAP16 | Delegation, Stewardship & Handover                  | UC68, UC69, UC70, UC72, UC74                                        | 5   |
| CAP17 | Accessible & Conversational Access                  | UC39, UC40, UC86                                                    | 3   |
| CAP18 | Compliance, Legal & Deployment Boundaries           | UC48, UC81, UC82, UC84                                              | 4   |
| CAP19 | Extensibility & Custom Rules                        | UC79, UC83                                                          | 2   |
| CAP20 | Omni-format Capture                                 | UC76, UC87                                                          | 2   |
| CAP21 | Portal & Silent-Channel Reach                       | UC97, UC105, UC113                                                  | 3   |
| CAP22 | World-Watch & Entitlements                          | UC80, UC98                                                          | 2   |

**Total: 115 UCs**, each assigned exactly one primary capability.

## Scope-rung tally (cross-check with vision-index.md)

- **S1** (native): 91 UCs — all not listed under S2/S3 below.
- **S2** (channel/format promise, no S1 email promise): UC35, UC51, UC76, UC78, UC87, UC106, UC107, UC108, UC109, UC111, UC112 — 11 UCs.
- **S3** (silent-watch / world-watch / portals only): UC80, UC96, UC97, UC98, UC99, UC100, UC101, UC102, UC103, UC104, UC105, UC113, UC114 — 13 UCs.

91 + 11 + 13 = 115. Matches the UC→native-rung mapping in [vision-index.md](vision-index.md).

## Notes / reconciliation flags

- **Compression discipline.** The *Normalized intent* column is the only place text
  is shortened; repeated invariant boilerplate ("with my say-so", "held not
  deleted", "within the authority conferred", "in the user's voice") is factored out
  to the `INV` column. Each one-liner still means its source sentence — read the
  cited `Src` line for the full original.
- **Delta from the prior (67-UC) index — primary-CAP moves** applied to match the
  current [capability-map.md](capability-map.md): **UC39, UC40 → CAP17** (were CAP11;
  a dedicated accessible/conversational-access capability now exists), **UC48 → CAP18**
  (was CAP12; compliance/legal is now its own capability), **UC67 → CAP8** (was CAP7;
  archive onboarding split from memory). These are re-derivations, not errors in the
  old file.
- **INV enrichments** over the old index, from the current invariants asserting
  lists: UC12 +INV4, UC17 +INV6, UC24 +INV10, UC30 +INV12, UC37 INV8 (was INV7),
  UC38 +INV2, UC65 +INV3. All trace to representative-UC entries in
  [invariants.md](invariants.md).

> **Cross-file inconsistency found and fixed at source (Phase-7 critic):** both
> [actors.md](actors.md) (PROT and DLG representative-UC lists) and
> [invariants.md](invariants.md) (INV12 asserting list) listed **UC13** among the
> delegated-authority / least-privilege use-cases. UC13 in the vision (L170) is the
> *low-stakes-noise No-action corner* — it has nothing to do with delegated access.
> The delegated-authority UCs are UC30, UC72, UC100 (and UC113). The stray "UC13"
> meant **V13** (the "watch over a vulnerable relative" vision point), which already
> appeared alongside it in those same lists — so the critic **dropped the stray UC13**
> from actors.md (PROT, DLG, and the DLG split-rationale note) and invariants.md
> (INV12). This index always filed UC13 correctly under IND · CAP1 · INV2 and never
> propagated the error. Logged as decisions.md row 29.

## Spot-check — bidirectional traceability

- **UC102** → Scope **S3** (native-S3 list in vision-index ✓) · Actor **IND** (IND
  representative list ✓) · Primary **CAP13** (capability-map CAP13 UC list ✓) · Also
  **CAP6** (capability-map CAP13 secondary "UC102→CAP6" ✓) · **INV1** (invariants INV1
  asserting list includes UC102 ✓). Vision-index V39 → UC102 → CAP13 ✓, V42 → UC102 ✓.
- **UC57** → Scope **S1** · Actor **MGR** (actors MGR rep ✓) · Primary **CAP14**
  (capability-map ✓) · Also **CAP12** (CAP14 secondary "UC57→CAP12" ✓) · **INV8, INV10**
  (both assert UC57 ✓). Vision-index V25 → UC57 → CAP14 ✓.
- **UC97** → Scope **S3** (native-S3 ✓) · Actor **IND · SYS** (SYS rep includes UC97 ✓)
  · Primary **CAP21** (capability-map ✓) · Also **CAP6** (CAP21 secondary "UC97→CAP6" ✓)
  · **INV12, INV13** (INV12 and INV13 asserting lists include UC97 ✓). Vision-index
  V35 → UC97 → CAP6-cited, native S3 ✓.
- **UC43** → Scope **S1** · Actor **TM** (both STAFF and TM rep lists include UC43;
  TM chosen as the shared-inbox POV) · Primary **CAP4**, Also **CAP14** (capability-map
  ✓) · **INV1, INV9** (both assert UC43 ✓). Vision-index V22 → UC43 → CAP4 ✓, V33 →
  UC43 (partial) ✓.

All four resolve cleanly in both directions.
