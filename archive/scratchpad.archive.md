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
- [x] finish create-vision-companion skill run for ai-mail
- [x] UCs without related V# (Vision) are allowed, OK or NOK?
- [x] finalize
- [x] review critic-report.md (how is it handled, when to remove etc.)
- [x] run fix_sdcmap.md, fix_ucorphan.md, 
  - [x] update companion artifacts (or change skill to do a small, token-optimal review)

- [x] how to continue with: C:\PROJ\ai-knowhow\coding\product_discovery_and_requirements 
  - [x] should become input for brainstorming about the workflow for a specific idea?
  - [x] review skillset_plan_update_plan.md
    - [x] Analysis of chapter "Reference map" in resource.md, are the concepts of this row considered?
        PROMPT:
        Analyse the C:\PROJ\ai-knowhow\coding\product_discovery_and_requirements\skillset_plan\skillset_plan_update_plan.md 
        if the following rows in chapter "Reference map" in resources.md consideres all the concepts of this row.
        Goal: make the skillset perfect using grounded, proven existing methods (enhance the update plan, if reasonable).
        Run one sub-agent per row and write your findings and recommendations into RefMapAnalysation_Row#.md (# = row number)
        These MD files will then be used later for a discussion between an AI agent and the human how to handle the findings.
        These MD files shall start with a quick information about what the row describes and then its findings and recommendations.
        No changes shall be made in any artifacts and in the update plan.

      PROMPT2:
          Context: c:\PROJ\ai-knowhow\coding\product_discovery_and_requirements contains a method
          collection. Its resources.md has a "Reference map" table documenting, per lifecycle
          element: label, reference lineage, and an assessment flagging deliberate deviations.
          skillset_plan/skillset_plan_update_plan.md is the normative update plan for the next
          revision of the skillset plan; its §2.3 contains a map-wide sync rule (reference-map
          rows must be updated in the same edit that changes a stage's concept set) and §2.5
          records fixes already applied directly.

          An earlier analysis checked whether reference-map row # considers all concepts of its
          lifecycle element. Its findings and recommendations are in
          skillset_plan/RefMapAnalysation_Row#.md.

          Task: walk me through that file's recommendations so we can decide each one together.

          Rules:
          1. First read RefMapAnalysation_Row#.md, resources.md, and the update plan; open the
            method doc(s) the analysis cites only as needed to verify a claim.
          2. Go recommendation by recommendation, one question at a time: present the finding
            behind it, the proposed change, your own judgment (agree / agree with modification /
            reject, with reasoning), then ask me to decide. Do not batch decisions.
          3. Apply each accepted decision immediately: "row change" → edit resources.md row #;
            "update-plan enhancement" → edit skillset_plan_update_plan.md. Follow the map-wide
            sync rule and the collection's existing citation style; introduce no new external
            sources beyond those the analysis grounds.
          4. Record rejected recommendations with a one-line reason at the end of
            RefMapAnalysation_Row#.md under a "## Dispositions" section; also list the applied
            ones there with what/where.
          5. When all recommendations are dispositioned, append a dated note to the update plan's
            §2.5 summarizing what was applied to row # (mirror the existing §2.5 entries' style),
            and tell me the file is fully dispositioned.

          Constraints: don't touch the other RefMapAnalysation files; don't read archive/, ideas/,
          or outlook-RAG/.

          Run only one RefMapAnalysation_Row#.md with # = 3


      PROMPT3:
          Orchestration

          Process reference-map rows 4, 5, 6, 7, 8, and 9, one row at a time. For each row, spawn a separate sub-agent (via the Agent tool). Run the sub-agents strictly sequentially — do not spawn the next row's sub-agent until the current one has reported completion. Do not run any sub-agents in parallel.

          Before spawning a row's sub-agent, check the top of that row's skillset_plan/RefMapAnalysation_Row#.md file for a completion marker (see step 6 below). If the file is already marked completed, skip it and move to the next row — this prevents re-running a finished job.

          Give each sub-agent the task below, with # bound to that row's number.

          Sub-agent task (for a single row #)

          Context: c:\PROJ\ai-knowhow\coding\product_discovery_and_requirements contains a method collection. Its resources.md has a "Reference map" table documenting, per lifecycle element: label, reference lineage, and an assessment flagging deliberate deviations. skillset_plan/skillset_plan_update_plan.md is the normative update plan for the next revision of the skillset plan; its §2.3 contains a map-wide sync rule (reference-map rows must be updated in the same edit that changes a stage's concept set) and §2.5 records fixes already applied directly.

          An earlier analysis checked whether reference-map row # considers all concepts of its lifecycle element. Its findings and recommendations are in skillset_plan/RefMapAnalysation_Row#.md.

          Task: work through that file's recommendations and disposition each one.

          Rules:

          First read RefMapAnalysation_Row#.md, resources.md, and the update plan; open the method doc(s) the analysis cites only as needed to verify a claim.
          Go recommendation by recommendation. For each: establish the finding behind it, the proposed change, and your own judgment (agree / agree with modification / reject, with reasoning).
          If you have strong confidence in the disposition, decide it yourself and proceed.
          If you are unsure how to decide, stop and ask the human — present the finding, the proposed change, and your judgment, and let them decide. Do not batch these questions; ask one at a time.
          Apply each accepted decision immediately: "row change" → edit resources.md row #; "update-plan enhancement" → edit skillset_plan_update_plan.md. Follow the map-wide sync rule and the collection's existing citation style; introduce no new external sources beyond those the analysis grounds.
          Record rejected recommendations with a one-line reason at the end of RefMapAnalysation_Row#.md under a "## Dispositions" section; also list the applied ones there with what/where.
          When all recommendations are dispositioned, append a dated note to the update plan's §2.5 summarizing what was applied to row # (mirror the existing §2.5 entries' style).
          Finally, mark the row's analysis file as done: add a status line at the top of RefMapAnalysation_Row#.md — e.g. > **Status: COMPLETED <YYYY-MM-DD>** — fully dispositioned. — so the job is not re-run. Report back to the orchestrator that row # is complete.
          Constraints: don't touch the other RefMapAnalysation files (only the one for your assigned row); don't read archive/, ideas/, or outlook-RAG/.

          After all rows 4–9 are dispositioned (or skipped as already-completed), report to me a summary: for each row, what was applied and where, and confirm each file is marked completed.



      - [x] 1 - Product vision as a slow-changing anchor - vision vs. strategy --> product_strategy is missing?!
      - [x] 2 - Fast discovery-definition-requirements loop
      - [x] 3 - Product discovery: users, problems, outcomes, and assumptions                            |
      - [x] 4 - Product definition: scope, capabilities, journeys, and priorities                        |
      - [x] 5 - Requirements and domain discovery: use cases, rules, constraints, and quality attributes |
      - [x] 6 - Quality-attribute scenarios                                                              |
      - [x] 7 - Coherent slice with success and stop criteria                                            |
      - [x] 8 - Software design, implementation, and release                                             |
      - [x] 9 - Validation and feedback: outcomes, guardrails, incidents, and operational evidence       |

      - [x] check result in VS Code (sol extra-high session)
