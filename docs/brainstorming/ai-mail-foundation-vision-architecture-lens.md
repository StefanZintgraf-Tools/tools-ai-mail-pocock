# AI-Mail — Architecture lens

Derived at vision wrap-up. The one-way-door axes for this product — decisions
cheap to make now, expensive to discover after building starts — each with the
user need behind it. Build-phase handoff; not part of the vision.

- **Graduated-autonomy / consent model** — how far the assistant may act on its own, escalating over time and set independently per account and per user; AI-Mail's defining door · surfaced by UC2, UC41, UC57, UC63, UC73, UC102
- **Human override & hard limits** — inspect, veto, stop, and a floor of actions the assistant can never cross unattended (never deletes, never moves money, never sends without a nod); includes the user-visible standing-watch list · surfaced by UC12, UC32, UC47, UC63, UC65, UC104
- **Multi-tenancy / boundary walls** — personal vs work vs shared spaces whose data never leaks across, incl. clean personal-vs-company ownership split · surfaced by UC25, UC26, UC35, UC69, UC74
- **Identity resolution** — treating the same person as one entity across many addresses and apps, and the same exchange as one conversation across channels; the entity/relationship graph · surfaced by UC16, UC34, UC62, UC107
- **Long-term memory model** — years of history remembered, user-visible/correctable/deletable, and usable from day one over pre-existing mail · surfaced by UC16, UC17, UC24, UC67
- **Data location & privacy** — where data may live, what can never leave the device or reach an outside service, residency/regulatory limits · surfaced by UC24, UC25, UC81 (+ parking-lot BV3 local-first)
- **Security & adversary resistance** — scam/BEC/impersonation defence across every channel (not just email), collective threat intel, and containing blast radius after a breach · surfaced by UC28, UC29, UC30, UC75, UC77, UC110
- **Interop & no lock-in** — exchange with calendar, task list, doc store, chat apps, network drives; extensible by third parties; clean exit with data intact · surfaced by UC8, UC51, UC55, UC66, UC79 (+ parking-lot BV1, BV4)
- **Channel ingress & egress (bidirectional)** — what counts as an input (email + chat + paper/scan + voicemail/video + phone) AND getting a reply back out through the right door on its own; the channel abstraction is two-way, not input-only · surfaced by UC51, UC76, UC78, UC87 (ingress), UC108, UC105 (egress/routing), UC111, UC112 (obligations & high-volume threads inside casual channels)
- **Multi-party — sharing, delegation, handoff, concurrency** — shared inboxes, role handover, delegated authority (incl. acting on a relative's silent obligations), two people at once · surfaced by UC44, UC45, UC46, UC49, UC50, UC56, UC68, UC70, UC72, UC100
- **Federation / inter-assistant protocol** — one user's assistant negotiating directly with another's · surfaced by UC71
- **History, audit & longevity** — permanent record, complete decision trail, legal hold / data production · surfaced by UC17, UC48, UC82
- **Reach — languages / regions / abilities** — per-message language, voice/type, and being the interface for people who can't use an inbox at all · surfaced by UC31, UC40, UC42, UC86
- **Deployment shape / execution targets** — layered additively on existing mail, reachable inside the client the user already uses, across hosts/OSes · surfaced by UC26, UC27 (+ parking-lot BV1, BV2)
- **Offline / degraded connection** — read, triage, and draft with no or poor network, syncing and sending on reconnect; where the local source-of-truth and sync boundary sit · surfaced by UC94
- **Across devices, channels & notifications** — one live picture across phone, desktop and voice, resumable mid-task; a single calm surface that gathers what wants the user out of many nagging apps; where the authoritative live state lives · surfaced by UC95, UC109
- **External-world & obligation watching** — the system stops being a message-processor and becomes an active watcher of state that never sent a message; AI-Mail's biggest structural door after autonomy. Sub-doors:
  - *credentialed portal access* — logging into third-party portals on the user's behalf, and the user granting/scoping/revoking that access (credential vault, per-provider connectors) · surfaced by UC97, UC102, UC105, UC113
  - *external data feeds* — recall registries, breach feeds, flight status, rate/renewal changes, entitlement sources · surfaced by UC80, UC98
  - *standing-obligation model* — obligations as first-class timed entities distinct from messages, with three input sources: inferred-from-mail, world-feed, and user-declared · surfaced by UC96, UC99, UC101, UC103, UC114
- **Business systems-of-record integration** — reading AND writing across CRM / helpdesk / sales systems that own state elsewhere; a distinct integration class from calendar/task/doc interop, and read vs. write-back is a real architectural asymmetry · surfaced by UC106 (read), UC115 (write-back)
