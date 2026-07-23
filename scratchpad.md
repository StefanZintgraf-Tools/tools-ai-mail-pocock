# ScratchPad/TODOs
  - [x] answer 8. Open questions in prod_discovery_requirements_skillset_plan.md 
  - [~] review prod_discovery_requirements_skillset_plan.md
    - [x] glossary update
    - [ ] create new skills, don't adjust brainstorm-vision etc.
    - [ ] use sub-agents and only implement the next single skill, not all
    - [ ] assure write-greate-skills rules are accomplished
      - [ ] step 1: writing rule
      - [ ] step 2: verify gating rules one rule per a single sub-agnet
  - [ ] apply prod_discovery_requirements_skillset_plan.md
        PROMPT:
        Read @coding/product_discovery_and_requirements/github_skillsets.md — it is a completed
        analysis of existing GitHub skillsets vs. our proprietary skillset plan, ending in a
        decision (§4–5), identified gaps in the plan (§6), and an ordered edit list (§7).

        Apply §7 to @coding/product_discovery_and_requirements/prod_discovery_requirements_skillset_plan.md:
        work through items 1–7 in order, consulting the method docs in the same folder where §7
        references them (especially product_discovery.md for item 1). Do not re-fetch the external
        repos — the analysis file is authoritative. Where §7 leaves a decision open (e.g. solutions.md
        vs. a section in opportunities.md), propose a choice with a one-line rationale and ask before
        finalizing. Show me the plan diff summary when done.


- [~] Check SW-Design strategies
  - [~] C:\PROJ\ai-knowhow\coding\software_design\software_design.md 
    - [x] how do these fit: C:\PROJ\github\pocock\agent-rules-books  
    - [x] agent-rules-github-repositories.md
    - [x] software_design.md shall reference books also (and check if all rules-books are correctly referenced and not missing)
    - [ ] Secure by Design: how?
    - DDD: https://de.wikipedia.org/wiki/Domain-driven_Design, https://en.wikipedia.org/wiki/Domain-driven_design  
    - AOP: 
      - https://de.wikipedia.org/wiki/Aspektorientierte_Programmierung 
      - https://people.csail.mit.edu/dnj/teaching/6898/papers/aop.pdf?utm_source=chatgpt.com 
      - https://helpercode.com/2010/12/10/aspect-oriented-programming-in-python-using-decorators/ 

- [ ] strategies.md S7 introduces "differentiating reason" which is not in strategies_sources.md S7 --> vision companion introduce core split
- [ ] strategies_sources.md refers back to strategies.md which does not make sense!
- [ ] Manual review of strategies.md based on its sources and the ai-mail companion results
- [ ] Is "secure by design" covered?
- [ ] refactor/adjust create-vision-companion skill
  - [ ] force pause after phase 11
  - [ ] terms from DDD (strategies_source.md, strategies.md) must land in ddd_glossary.md (as part of the skill)
    - [ ] ai-mail companion contains glossary in the subdomains-and-context-map.md artifact, to be removed?
  - [ ] based on updated strategies.md
  - [ ] completeness and cross-checking via script (reduce agent tokens and make result more reproducible)
  - [ ] was kann noch geskripted werden (Hash-Rechnung, Manifest etc.)

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
