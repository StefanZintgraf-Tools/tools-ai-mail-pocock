# ScratchPad/TODOs

- [x] install Pocock skills local to this project
- [x] move brainstorm-vision to ai-knowhow (canonical: skills-plugins/brainstorm-vision), junction-linked into .claude/skills, scope files + hook moved alongside, settings.json points via junction
- [x] run brainstorming (check, ob steering geht)
- [~] continue brainstorming (wip): 
  - [x] mail archiving and rag based mail search
  - [x] lookeen features (do web search)
  - [x] Anbindung an (noch nicht existierendes) Dokumenten-Management 
  - [x] temporarily looping someone in on a thread without fully handing it off
  - [x] the limits/approvals a manager sets on what the assistant may do — per person, per inbox
  - [x] other products features (do web search)
  - [x] something missing that could have significant influence to the software architecture
- [x] skill adjustment: before finalizing, check if this had been evaluated:
        is there something missing that could have significant influence to the software architecture.
        We did not discuss architecture at all, but if you can think of any use-case that may have a significant effect in the later architecture, let me know.
- [x] currently brainstorming-vision and scope-boundary strictly forbid to put architecture/integration items into the vision
      Adjust: In case this pops up, ask user if that shall be added into a new "Constraints" section (just to not forget the idea)
      --> Add DMS integration, RAG etc. (ask AI agent, what could make sense)
- [x] shorter output wording 
- [x] Skill create-vision-companion must be able to be paused temporarily (marked as work-in-progress, wip). Maybe similar as in the brainstorm-vision skill if it makes sense.  In addition, the AI agent shall suggest to pause and continue fresh after finishing each of the internal phases, whenever reasonable.  
- [x] Skill create-vision-companion shall be executed multiple times on the same vision document.
  - use case 1: Skill was enhanced and Companion files must be adjusted
  - use case 2: Companion Review (e.g. with stronger LLM), Ralph-Looping
- [x] manual review skill brainstorm-vision (siehe auch neuer Skill von Pocock und das Video dazu)
  - [x] SKILL.md
  - [x] brainstorm.md
  - [x] architecture-significance-lens-template.md
  - [x] finalizing.md
- [x] Phase 1: assure scope boundary works
- [x] Test mit Re-run ai-mail (auch wegen neuen Artefakt/en)
  - nochmal weitermachen mit der einen neuen Idee
- [x] Vision in Bullet-List Shape (better for humans, and make them also better for AI compared to long sentence)
- [x] Use-cases also in Bullet-List Shape
- [x] Neue Lens-Phase: Abstraktion eine Ebene drüber (Human Mail --> Human Interaction --> Interaction)
  - Lens sucht nur maximal EINE Abstraktion, aber geht nicht im Detail drauf ein
  - Nur eine Abstraktion selektieren (oder Finalisierung). Dann Pause mit Resume auf Basis dieser Abstraktion
  - Ziel: eigentliches Brainstorming immer in der gleichen Phase mit dem gleichen Prompt
- [x] enforce brainstorm pause after configurable number of additional UCs.
- [x] scope_boundary.md was changed, must become generic so no change is needed!
- [x] re-run brainstorming-vision: make it fully compliant to the new skill
- [x] output file very long, does it make sens to split into separate files?
- [x] review/adjust create-vision-companion 
  - [x] shall re-use the glossary.md?
  - [x] enhance uc-index.md: vision index, scope index?
- [x] nochmal "writing-great-skill" anwenden an alle Teile
  - keine ai-Mail spezifischen Dinge etc.
  - glossary.md zu lange?

- [~] debug create-vision-companion skill
  - [ ] review decisions.md: 1,2,4,5,6
    - [ ] changes:
      - decision 3: UC65 shall be part in both INV1 and INV3
      - rethink: all low


The five decisions I would reopen are therefore #11, #16, #20, #24, and #26.
The most important correction is #26: record UC102 as extending V7 while realizing V39, and determine native scope from the complete UC requirement. Semantic traceability should drive the rule, not be altered to satisfy it.

| Decision | Verdict | Reason |
|---|---|---|
| #9 TM actor | Agree, clarify | Keep `TM` as a distinct contextual role, but state explicitly that it is assigned to a `STAFF` identity—not a different kind of person. |
| #10 DLG/PROT | Fully agree | They represent opposite ends of delegated authority with different ownership and permission constraints. |
| #11 HH actor | **Rethink** | The missing concept is a shared household domain with IND co-owners, not necessarily a new human actor type. |
| #12 UC coverage | Fully agree | Independently verified: 115 assignments, 115 unique UCs, no missing, duplicate, phantom, or out-of-range IDs. |
| #16 UC85 → CAP4 | **Rethink** | Finished documents involve templates, structured data, validation, and document lifecycle—not merely message composition. At minimum, model Document Production as a CAP4 sub-capability. |
| #17 UC106/CAP10 vs UC115/CAP15 | Fully agree | Reading and presenting a unified picture is distinct from committing write-backs to external systems. |
| #18 four-way S3 split | Agree, clarify | The mechanisms are genuinely different. However, CAP13 is a shared execution capability used by S3, not an S3-native quarter of the Watch. |
| #19 no wholly Generic capability | Fully agree | The business capabilities add product-specific behavior, while generic OCR, connectors, storage, and audit mechanics live inside them. |
| #20 two-tier Core | **Rethink** | “Core because important” and “Core because differentiating” are different axes. Calling table-stakes surfaces `Core—surface` weakens the normal strategic meaning of Core. |
| #24 Conformist + ACL | **Rethink** | These labels conflict: Conformist adopts the upstream model; ACL translates it. The rows explicitly require translation, so they should use ACL, potentially paired with upstream Open Host Service/Published Language. |
| #25 V34 → CAP14 | Fully agree | V34 is the team-scoped control promise, so CAP14 is a better primary home than the personal control surface CAP12. |
| #26 remove UC102 from V7 | **Rethink** | The mapping was changed to protect the native-rung rule rather than reflect meaning. UC102 does satisfy V7, while specializing it at S3. |
| #27 UC111 native S2 | Agree, strengthen | Keep S2. Every example arrives through a channel; extracting an Obligation does not make the UC S3. CAP ownership should not determine scope rung. |
| #29 stray UC13 | Fully agree | UC13 is unrelated to delegated authority; the intended reference was V13. |
| #30 UC2 INV7 → INV8 | Fully agree | UC2 concerns configurable autonomy and approval, not additive deployment or lock-in. |
| #31 UC30 + INV10 | Fully agree | Watching another principal’s inbox must serve that protected party and must not become surveillance. |


Recommended changes:
#15: Make CAP1 the least-bad primary—recognize and route the real ask—with CAP2/CAP5/CAP6/CAP11/CAP20 secondary. Alternatively, record a latent “semantic intake and routing” capability.
#21: Split CAP16 before classifying it: delegated authority/shared stewardship may be Core; organisational handover may be Supporting.
#22: Define Published Language as the intended A2A target, with ordinary email/chat as fallback. Reserve Partnership for assistants whose owners jointly coordinate the protocol.
#23: Treat fair separation as an INV11-governed ownership/export workflow, not a DDD context relationship. “Separate Ways” can describe the desired steady state only.
#32: Add a deferred vision-governance row consumed when creating the autonomous sibling vision: fork the foundation vision and re-derive only the changed invariants.
The five low-confidence decisions I would reopen are #15, #21, #22, #23, and #32. No files were changed.


| Decision | Verdict | Assessment |
|---|---|---|
| #8 SYS actor | Agree, clarify | Keep `SYS` as a non-human secondary actor marking external participation. It is not a principal or POV actor; detailed system types belong in the context map. |
| #13 UC90 → CAP5 | Agree, provisional | CAP5 is the least-bad current home because stopping relationship nudges is central. Treat this as indexing, not proof that CAP5 owns all grief-sensitive behavior. |
| #14 UC112 → CAP1 | Fully agree | The primary behavior is triage—finding the one relevant message. Group chat is merely its source, so CAP11 remains secondary. |
| #15 UC111 → CAP6 | **Rethink** | Its examples span commitments, filing, obligations, voice, photos, and portals. CAP6 cannot coherently own all of them. |
| #21 CAP16 Supporting | **Rethink** | Delegated authority and multi-principal stewardship may be differentiating domain logic, while role handover may be Supporting. CAP16 is too broad to classify uniformly. |
| #22 A2A boundary | **Rethink** | “Conformist today” describes an implementation fallback, but does not fully realize UC71’s assistant-to-assistant negotiation. |
| #23 Separate Ways | **Rethink** | Fair separation is an explicit transition operation, whereas Separate Ways normally describes contexts avoiding integration. Customer/Supplier is also unsuitable. |
| #28 native scope exceptions | Fully agree | UC100/105/114 require S3; UC115 remains S1. Content-based classification is necessary because these UCs realize no explicit V-point. |
| #32 BV5 unrouted | **Rethink** | The fork instruction is neither INV1 nor INV9. Leaving it unrouted risks losing an explicit vision-governance requirement. |



  - [ ] review critic-report.md
  - [ ] finalize

- [ ] Test mit neuer Idee: brainstorm-Automat nur fuer brainstorm-vision
- [ ] Test mit neuer Idee: brainstorm-Automat
- [ ] Test, ob man via claude -p oder sonst irgendwie die Skills automatisiert testen kann
- [ ] Skill create-vision-companion Test und Ergebnis-Review (match mit pocock Rules Books). 
- [ ] Neuer Use-case: Vision Enhancement (vor/nach companion erstellung)
  - [ ] Neuer Fall für brainstorm-vision Skill?
  - [ ] new case: AI with its own mailbox acting as a separate person
  - [ ] Review - C:\PROJ\ai-mail\ai-mail.pocock\docs\brainstorming\ai-mail-vision-ai-spec
    - [ ] in OKF umwandeln?
- [ ] Dokumenten-Management Brainstorming
  - [ ] Architektur-Dinge jetzt erlaubt (BV#)
  - [ ] shorter wording
- [ ] RAG Brainstorming
- [ ] EC-Engineer Brainstorming (EC-Engineer Doku als Input, Sourcen?)
  - [ ] Reverse-Engineering: wie Vision-Companion-Dokumente erzeugen? Evtl. erst mal strukturiert den Code analysieren? Welche Skills/Tools gibt es?ke
- [ ] EtherCAT Diagnosis tool Brainstorming (EC-Inspector Doku als Input)
- [ ] next step after brainstorming: architecture, design, entity model, PRD (was genau? welches Steps bis zu den Spezen?)
  - [ ] siehe auch C:\PROJ\github\pocock\agent-rules-books
  - [ ] sub-goal: find/detect one/multiple use-cases that cover the whole related architecture (tracer-bullet)
  - [ ] siehe C:\PROJ\ai-mail\ai-mail.pocock\docs\ideas
  - [ ] tactical DDD (Aggregates, Entities, ports/adapters, consistency models), no tech/platform, no MVP/phasing 

- [ ] possible technologies:
  - OpenProse (https://github.com/openprose/prose/tree/main/skills/open-prose/examples/support-inbox-router)
  - LangGraph, CrewAI, MASTRA, OpenAI Agent SDK
  - what else?
