# Glossary — ubiquitous language

One canonical term per concept, so code, schemas, and docs speak the same
language. The **Vision phrasings** column lists the various ways the (deliberately
non-technical) [vision](../ai-mail-foundation-vision.md) names the same thing —
treat those as synonyms of the canonical term, not distinct concepts.

> No `CONTEXT.md` ubiquitous-language section exists yet; this glossary is the
> seed for one. Where a term encodes an invariant, the relevant `INV` is cited.

## Actors & core objects

| Canonical term | Definition | Vision phrasings it absorbs |
|----------------|------------|-----------------------------|
| **Assistant** | The AI agent acting on the user's behalf. | "the assistant", "AI assistant", "a patient helper", "one calm assistant", "a doorkeeper" |
| **Email** | A communication item in a mail Account. | "email", "mail", "a note", "a letter" |
| **Chat message** | A communication item from a connected Chat channel. | "chats", "a message on WhatsApp/Telegram" |
| **Message** | Umbrella term — used **only when behaviour spans both** Email and Chat message. Prefer the specific term; reach for this only when a need genuinely covers both. | used where the vision treats mail + chats alike (UC34, UC51, UC62) |
| **Thread** | A connected exchange of messages on one matter, possibly spanning people and channels. | "thread", "conversation", "exchange", "correspondence", "the back-and-forth" |
| **Account** | One connected mailbox identity the user owns (personal, work, side-project). | "private inbox", "work inbox", "personal/work/side-project addresses" |
| **Shared inbox** | A mailbox worked by several people on a team. | "shared inbox", "the same inbox", "shared mailboxes", "our shared inbox" |
| **Chat channel** | A non-email messaging source the user opts to connect. | "chat apps", "WhatsApp, Telegram and the rest" |
| **Document** | A file that travels with or is referenced by mail. | "attachment", "document", "file", "contract/invoice/photo" |
| **Contact** | A real person the user corresponds with, unified across addresses and apps (*INV11 governs cross-context isolation*). | "people", "contacts", "a person", "it's all one person" |
| **Relationship** | The ongoing history and context with a Contact. | "how we know each other", "the whole picture of a person", "context across years" |

## What the assistant produces

| Canonical term | Definition | Vision phrasings it absorbs |
|----------------|------------|-----------------------------|
| **Briefing** | The curated "what needs you" summary; the assistant's primary surface. | "a short briefing", "morning briefing", "heads-up" |
| **Draft** | A reply or message prepared in the user's voice, pending approval (*INV1, INV9*). | "the reply drafted", "a first draft", "drafted in my own voice" |
| **Proposed action** | Any consequential action the assistant offers for the user's nod (*INV1*). | "shows me what it wants to cut and waits for my nod", "the decision laid out", "offer to…" |
| **Approval** | The user's explicit confirmation that releases a Proposed action (*INV1*). | "my nod", "I've confirmed it", "one nod", "approves it" |
| **Nudge** | A proactive prompt about something needing attention (an owed reply, a cooling lead). | "nudge", "chase", "raise a flag", "tap you", "a timely heads-up" |
| **Filing** | Sorting an Email/Document into its right place (*INV3 governs what to do when unsure*). | "filed", "sorted into sensible places", "neatly filed", "the right person's place" |
| **No-action** | An item set aside as read-only because nothing is needed from the user — explicitly *not* spam. | "noise", "low-stakes noise", "for your information, nothing needed", "quiet, read-only corner" |
| **Hand-off** | Transferring a Thread to a colleague *with* its full context (*INV1, INV4*). | "passing a conversation", "escalate", "point it to the right specialist", "fwd:" |

## Knowledge & history

| Canonical term | Definition | Vision phrasings it absorbs |
|----------------|------------|-----------------------------|
| **Memory** | What the assistant has learned — the user's/company's knowledge, owned by them (*INV6*). | "what it learns", "company memory", "our own knowledge base", "knowledge well" |
| **Archive** | The pre-existing pile of historical mail the assistant learns from on day one. | "decades of accumulated email", "years of old mail", "the old pile", "the mountain" |

## Safety

| Canonical term | Definition | Vision phrasings it absorbs |
|----------------|------------|-----------------------------|
| **Threat** | A fraud, scam, or social-engineering attempt the assistant detects. | "costly fakes and scams", "forged invoice", "changed bank details", "money traps", "boss-impersonation" |
| **Held-aside** | The non-destructive state for suspect or unwanted items — quarantined and flagged, never deleted (*INV2*). | "set aside and flagged", "held quietly at the door", "never quietly removed" |

## Control & oversight

| Canonical term | Definition | Vision phrasings it absorbs |
|----------------|------------|-----------------------------|
| **Autonomy level** | The per-scope, reversible setting for how far the assistant may go unaided (*INV8*). | "how far the assistant may go", "a longer leash", "how careful", "where it may go ahead" |
| **Action record** | The lasting, auditable log of the assistant's own actions (*INV5*). | "a complete, lasting record", "everything it did and why", "record of every decision" |
| **Commitment** | Something the *user* promised to do or send (a loose end the user owes). | "loose ends", "you said you'd send…", "promised follow-ups", "the things I promised" |
| **Waiting-on** | Something *owed to the user* by someone else. | "replies I'm owed", "things other people promised me", "the quote the supplier said he'd send" |
| **Open item** | Any Thread or obligation not yet closed; carries a state and a whose-court. | "open thread", "balls in the air", "whose court they're in", "still in flight" |

> **Judgment calls (overridable):** **Email / Chat message / Message** are kept as
> three terms so behaviour can differ per channel, with **Message** as the
> both-channels umbrella. **Commitment / Waiting-on / Open item** are kept distinct
> (I-owe vs. owed-to-me vs. status-tracking) rather than collapsed into one
> directional concept.
