Short answer: I haven’t found any first‑party, “official” HumanLayer or Anthropic Agent Skill that packages QRSPI as a canonical SKILL for Claude Code. Instead, QRSPI is a methodology defined by HumanLayer (Dexter Horthy, Alex Lavaee) that several third‑party skills and harnesses have implemented and iterated on.[web:14][web:23][web:30][web:10][web:16]

Below is a curated list of the best‑documented and most battle‑tested QRSPI implementations you can experiment with today.

## Official vs. community status

Anthropic’s Agent Skills are an official mechanism and format for procedural knowledge and workflows, but Anthropic’s own examples focus on generic coding, research, and operations skills rather than a named “QRSPI” pipeline.[web:15] HumanLayer’s work defines and motivates QRSPI as a successor to RPI (Research‑Plan‑Implement) in blog posts and talks, but their public GitHub repos emphasize RPI templates and “advanced context engineering” rather than a published, one‑click QRSPI SKILL.md bundle.[web:14][web:19][web:17]

Independent practitioners (Lavaee, Horthy, Derek Perez, others) describe QRSPI as an 7–8‑phase workflow (“Question, Research, Structure, Plan, Implement” plus extra phases like worktrees and PR) for Claude Code and similar harnesses, and reference it as a methodology rather than a single official skill.[web:14][web:23][web:30][web:27] Multiple community repos and skills now implement this pattern for Claude Code, GitHub Copilot CLI, and other harnesses, and those are what you’d use in practice.[web:31][cite:20][web:32][web:26]

## Community skills that implement QRSPI

These are the projects I’d look at first if you want “proven by several people” and are comfortable reading SKILLs and harness glue.

### 1. `qrspi-plus` (Daniel Frysinger)

- Repo: [`dfrysinger/qrspi-plus`](https://github.com/dfrysinger/qrspi-plus) – “A structured agentic development pipeline for Claude Code — extends QRSPI with worktree parallelization, tiered reviews, integration verification, acceptance testing, and replanning.”[web:7][cite:20]  
- This is explicitly designed around Claude Code and Agent Skills; it layers on additional phases like parallel worktrees and multi‑stage review/verification on top of QRSPI.[web:7][web:22]  
- The repo has non‑trivial stars, forks, and a large issue tracker, plus the author’s profile indicates broader Agent Skills work (“My agent skills for GitHub Copilot CLI and other coding agents”), which is a good signal that multiple people are exercising it.[cite:20][web:24]  
- There are open issues discussing cost per QRSPI phase in real projects (hundreds of dollars per phase with large Claude runs), which implies serious, repeated use rather than toy experiments.[web:22]

This is probably the most “production‑ish” QRSPI pipeline you can adopt as‑is for Claude Code if you’re okay with some complexity.

### 2. `QRSPI — 8‑phase workflow for Claude Code` (Matanshavit)

- Repo: [`matanshavit/qrspi`](https://github.com/matanshavit/qrspi) – “Question, Research, Structure, Plan, Implement — an 8‑phase workflow for Claude Code that breaks complex coding tasks …”[web:31]  
- This is a more focused, Claude‑centric QRSPI implementation that maps the conceptual 8 phases directly into a Claude Code harness.[web:31]  
- Good if you want a relatively minimal, readable implementation of QRSPI without all of `qrspi-plus`’s extra machinery.

I’d treat this as the “reference implementation” to understand how the phases are wired, and then compare with `qrspi-plus` for more advanced patterns.

### 3. `using-qrspi` skill on skills.rest

- Listing: [`using-qrspi` on skills.rest](https://skills.rest/skill/using-qrspi) – “Start a structured agentic development pipeline… QRSPI enforces a disciplined, review‑gated pipeline for agentic software … Claude Code installation. Recommended: let Claude install automatically.”[web:26]  
- This is packaged as a reusable Agent Skill that you can install via Claude Code’s skills mechanism, with QRSPI as the underlying workflow.[web:26]  
- Because skills.rest is a public catalog and this skill is written to be generic (“plan this with QRSPI”, “use QRSPI to plan”), it’s a convenient way to experiment without wiring everything yourself.[web:26][web:32]

This is closest to what you were asking for: an explicit skill artifact rather than a full harness repo.

### 4. `agent-skills` (Hypergiant)

- Repo: [`gohypergiant/agent-skills`](https://github.com/gohypergiant/agent-skills) – “A collection of skills for AI coding agents … Activates when: planning tickets, starting QRSPI workflow, creating spec‑driven changes, ‘plan this with QRSPI’, ‘use QRSPI to plan’.”[web:32]  
- This repo is a broader library of Agent Skills where QRSPI is one of the supported planning modes, triggered by natural language invocations.[web:32]  
- Useful if you want to see how QRSPI is integrated alongside other skills in a more complete “skills toolbox,” and how they engineer activation phrases and routing.

Given your background, this is a good place to study how others are stitching QRSPI into larger multi‑skill harnesses.

### 5. `qrspi_codex` (Codex‑native, harness‑agnostic)

- Repo: [`domsie/qrspi_codex`](https://github.com/domsie/qrspi_codex) – “Codex‑native multi‑agent orchestration for software development using the QRSPI workflow … central source of truth for a reusable Codex skill plus a thin per‑project stub; intentionally language‑agnostic.”[cite:20]  
- Although framed around Codex, it’s explicitly about a reusable QRSPI skill with a per‑project shim, and the structure is portable to Claude or other harnesses.[cite:20]  
- Good reference if you want to design your own skills where QRSPI lives in a shared “core” and each repo just has a thin project‑specific wrapper.

This is more architectural inspiration than “drop‑in Claude skill,” but still valuable.

### 6. QRSPI‑adjacent skills and marketplaces (e.g. “crispy”)

- The skills marketplace entry “crispy” describes delegating coding tasks to Codex, Claude Code, or Pi agents via a background process, and is explicitly positioned as an evolution of QRSPI‑style structured workflows.[web:28][web:27]  
- LinkedIn/BetterQuestions posts from Alex Lavaee and others talk about “crispy (technically QRSPI)” as an 8‑stage framework that front‑loads alignment (Questions, Research, Design, Structure, Plan, worktree, Implement, PR), which you can mirror in your own skills.[web:27][web:23][web:30]

These are worth reading to see how practitioners are iterating on QRSPI with Agent Skills, even if you don’t adopt their exact implementation.

## Evidence that QRSPI is “battle‑tested”

If you’re looking for workflows that more than one person has validated:

- Multiple independent blog posts and newsletters (Mixture of Experts, BetterQuestions, Derek Perez’s analysis) describe QRSPI as the next iteration after RPI and report concrete benefits in real codebases.[web:11][web:23][web:30]  
- HumanLayer’s own talks and writing describe QRSPI as addressing failure modes of RPI in large‑scale agentic coding (context bloat, skipped alignment steps, poor research structure).[web:14][web:34][web:30]  
- Reddit and blog writeups show users adopting “humanlayer’s QRSPI‑inspired pipelines” in their own setups, including building wikis/graphs to support the research phase.[web:25][web:13]  
- Repos like `qrspi-plus` have active issue trackers (including detailed cost‑optimization threads), suggesting repeated use on serious workloads rather than one‑off experiments.[web:22][cite:20]

Given your experience with EtherCAT/RTOS and agentic tooling, I’d start with:

1. Install `using-qrspi` from skills.rest into Claude Code to get a feel for the phases and prompts.[web:26]  
2. Clone `matanshavit/qrspi` to inspect/adjust the core workflow.[web:31]  
3. Study (and optionally adopt) `qrspi-plus` if you want a more opinionated, “production‑grade” pipeline with worktrees and multi‑phase reviews.[web:7][cite:20]  

If you tell me your preferred harness (pure Claude Code vs. mixed, or local agent orchestrator plus Claude), I can sketch a concrete wiring plan for integrating one of these into your existing setup.
