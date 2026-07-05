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

- [ ] nochmal "writing-great-skill" anwenden an alle Teile
  - keine ai-Mail spezifischen Dinge etc.
  - [ ] mit Sonnet 5 x Mal
- [ ] create-vision-companion shall re-use the glossary.md?

- [ ] Neuer use-case: Kommunikation mit Freund/Kunde/Lead ueber mehrere Kanaele (Mail, Pipedrive, Whatsapp, eingescannter Brief, ...)
  - Verlinkung, wie?
  - generisches Interface zum Kommunikationskanal?
    - Inbox, Outbox, Notizen, Ablage, ...

- [ ] Test mit neuer Idee: brainstorm-Automat (vorher create-vision-companion skill review?)
- [ ] manual review skill create-vision-companion (siehe auch neuer Skill von Pocock und das Video dazu)
- [ ] Test mit neuer Idee: brainstorm-Automat
- [ ] Test, ob man via claude -p oder sonst irgendwie die Skills automatisiert testen kann
- [ ] Skill create-vision-companion Re-run and Test (shall stop after phase complete, Updated strategies.md considered?) 
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

