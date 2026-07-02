# **Full Master Compilation: The QRSPI Method for AI Coding Agents**

## **PART I: In-Depth Analysis of the QRSPI Method (Official Implementations, Community Skills, and Best Practices)**

The integration of large language models (LLMs) into professional software development has brought about a dramatic paradigm shift in recent years. While early approaches relied heavily on isolated, line-based code completions, autonomous coding agents increasingly dominate the discourse. With the scaling of context windows up to one million tokens and the introduction of terminal-native agents like Claude Code, it quickly became clear that the capability of models is not determined solely by their parameter count. Rather, so-called "Harness Engineering"—the structural embedding, configuration, and orchestration of the model—determines success in complex, cross-project modifications.  
In this highly dynamic technological environment, the QRSPI method (often pronounced "CRISPY" in technical jargon) has established itself as a revolutionary de facto standard. Originally conceived by Dexter Horthy, the CEO of the Y-Combinator company HumanLayer, QRSPI represents a significant evolution and reconceptualization of the earlier RPI (Research-Plan-Implement) framework. The method addresses the fundamental failure modes of autonomous agents when scaling to real-world enterprise codebases and forces the systems into a strict, eight-stage operational protocol. This protocol mandatorily places technical alignment and architectural consensus before the actual code generation (Execution).  
This comprehensive research report analyzes the architectural and philosophical foundations of QRSPI, investigates the existence of official implementations by HumanLayer, evaluates the most mature skills tested by the developer community for practical use, and places the methodology into the broader context of cognitive sovereignty and current runtime environments.

### **The Architectural Necessity: From RPI to QRSPI**

To understand the mechanics and necessity of QRSPI, the failure of the predecessor model RPI in real production environments must first be deeply analyzed. RPI was a simple, three-phase workflow that instructed the agent to explore the codebase (Research), write a detailed specification plan (Plan), and then execute it (Implement). This approach initially found widespread adoption in forums because it forced the agent for the first time to understand the existing code before generating new lines. However, when applied to complex, historically grown enterprise projects, three critical failure modes revealed themselves that required a complete redevelopment of the methodology.

* **Systematic Instruction Budget Overflow:** Empirical analyses and observations by the developer community consistently show that current language models can reliably follow a maximum of about 150 to 200 instructions. Because the system prompt of the original RPI approach grew to over 85 complex instructions over time, and the context was additionally flooded with repository-specific directives, tool descriptions, and Model Context Protocol (MCP) server specifications, the model began to collapse under the cognitive load. This failure did not manifest in error messages, but rather in the agent silently ignoring critical, deeply embedded alignment rules and skipping work steps.  
* **The Magic Words Trap:** In its planning phase, the RPI framework relied on the human developer knowing and actively using specific trigger phrases to force the agent into interactive, iterative planning. Without explicit prompts such as asking to share open questions or iterate back and forth, the system defaulted to non-deterministic behavior. The agent bypassed human discourse, made far-reaching architectural decisions in complete isolation, and presented the developer with a fait accompli.  
* **The Plan-Reading Illusion:** Language models are highly capable of writing authoritative, structured-looking, and stylistically convincing implementation plans. These extensive, often thousand-line documents suggested a deep understanding of the subject matter but in practice frequently contained subtle yet fatal misconceptions about dependency structures, legacy code, and architectural constraints of the codebase. If the agent was instructed to execute this flawed plan during the implementation phase, architectural debt was instantly created. Correcting this erroneous code, already deeply integrated into the systems, was often more time-consuming and expensive than rewriting the feature from scratch manually.

### **The Anatomy of the Eight-Phase Model**

As a direct response to these systemic deficits, the QRSPI framework devised by Dexter Horthy replaces the three original, error-prone phases with eight highly specialized, decoupled steps. This methodology is divided into five phases of alignment and three phases of execution. Every single step operates in a strictly isolated context window, reads exclusively input artifacts specifically declared for it instead of the entire conversation history, and produces a verifiable, persistent Markdown document as input for the subsequent phase.

| Phase | Categorization | Main Function and Mechanics | Produced Artifact |
| :---- | :---- | :---- | :---- |
| **1\. Questions** | Alignment | Deconstruction of user intent into neutral, unbiased research questions. | task.md & questions.md |
| **2\. Research** | Alignment | Fact-based scanning of the codebase. The agent is strictly blind to the actual task. | research.md |
| **3\. Design** | Alignment | Forced interactive discourse with the human regarding architecture and solutions. | design.md |
| **4\. Structure** | Alignment | Definition of end-to-end testable, vertical integration paths instead of horizontal layers. | structure.md |
| **5\. Plan** | Alignment | Translation of the verified structure into tactical, step-by-step implementation instructions with checkboxes. | plan.md |
| **6\. Worktree** | Execution | Isolation of planned changes in a dedicated Git worktree to prevent main branch corruption. | Git Worktree / Branch |
| **7\. Implement** | Execution | Step-by-step execution of the plan with mandatory micro-commits after each successful verification point. | Source code changes |
| **8\. PR** | Execution | Human takeover, formal code review, and creation of the Pull Request. | GitHub Pull Request |

The process begins with Questions, where the agent analyzes the user's original intention and formulates targeted research questions. This early deconstruction significantly reduces the initial instruction load. This is followed by the Research phase, where specialized agents scan the codebase to gather objective facts. The most critical and innovative lever in this phase is structural secrecy: the original task ticket is strictly hidden from the researching agent. The underlying theory states that objective findings inevitably mutate into biased opinions as soon as the model knows what is supposed to be built. The strict separation of intention (what is being asked) and research (what is found) generates an unadulterated, neutral technical map of reality.  
Following fact-gathering, the Design discussion forces the agent into a dialogue. This is the most effective lever in the entire framework. The agent must actively ask the human questions and present various architectural approaches with their respective pros and cons for discussion before a single line of code is even planned. This architecturally forced discourse completely eliminates the "Magic Words" trap and allows the human developer to correct outdated patterns or stop flawed developments early—a highly manual intervention that Horthy refers to as "brain surgery on the agent".  
The approved design is translated into "Vertical Slices" during the Structure phase. Instead of layering software development horizontally—for example, by first writing all database migrations, then all API endpoints, and finally the entire frontend interface—the structure defines continuously testable, self-contained paths. A vertical slice might consist of a mock API, the corresponding frontend login field, and the associated user database table. This approach ensures a verifiable milestone is reached after each slice.  
The Plan translates this structure into a tactical document with clear checkboxes. Since technical and business alignment was strictly verified in previous phases, this plan merely serves as sequential processing for the agent and usually only requires a quick spot-check by the human. After setting up an isolated working directory (Work Tree), the Implement phase begins. The agent writes the code exactly along the vertical slices and continuously updates the plan. After each successful verification point, a separate Git commit is mandatorily created. If the context window reaches its limit or needs to be reset due to memory pressure, the agent in the subsequent session merely reads the checked boxes in the Markdown file to determine its exact position and seamlessly continue. The process culminates in the Pull Request (PR), where the human developer takes over the final, formal review and responsibility for the code to exclude any contamination of production systems by uncontrolled algorithmic artifacts.

### **Official HumanLayer Solutions: Riptide and Architectural Templates**

A central question when evaluating QRSPI in enterprise contexts is the existence and availability of official Claude/Agent skills directly maintained by the inventor company HumanLayer. A detailed analysis of HumanLayer's organizational structures, repositories, and publications reveals a strategically highly nuanced positioning: The company does not offer simple, monolithic open-source Markdown skills for the mass market. Instead, HumanLayer views the QRSPI framework as an integral, hardwired component of more complex orchestration software and massively scalable enterprise templates.  
**The Riptide Orchestration Ecosystem**  
The most commercial, mature, and official manifestation of the QRSPI method by HumanLayer is the orchestration platform Riptide (internally also referenced as riptide-rpi, Riptide-beta, or CodeLayer). Unlike text-based prompts, Riptide is a full-fledged desktop and command-line orchestration application built natively on the infrastructure of Claude Code. It abstracts the enormous manual overhead of the QRSPI workflow and fully automates the critical phase transitions from research to design and implementation.  
Architecturally, Riptide uses a powerful background service, the so-called hld daemon, which establishes a local HTTP interface on ports 3100 to 3102\. This API exposes endpoints for session management and Server-Sent Events. This infrastructure allows external automation tools to programmatically initiate agent sessions, monitor the exact progress of QRSPI phases in real-time, and react asynchronously to completions. The software is radically optimized for Developer Experience (DX). It offers dedicated, distraction-free UI elements, such as a requested "Focus" mode that hides the sometimes cluttered conversation history and sidebar to concentrate exclusively on the agent's highly condensed final response artifact. Furthermore, based on extensive user requests, the platform implements acoustic signals (chimes) and visual OS notifications. These proactively inform the developer when the agent has reached a Human Gate—for example, during the Design phase where architectural decisions must be made—and a long-running background activity is waiting for input.  
**Cross-Project Coordination Templates**  
Alongside the proprietary orchestration platform, HumanLayer maintains strategic templates in the open-source space, primarily the rpi-coordination-template. This template addresses one of the most complex challenges for AI agents: working across multiple, interdependent repositories. Instead of copying the code for microservices or frontend-backend splits into a monolithic directory, this template acts as a central coordination hub. The developer clones the template as a sibling directory to the actual code repositories in their workspace. Configuration is handled via a strictly formatted .claude/settings.json, where permissions for additional directories are declared explicitly and with security in mind.

{  
  "permissions": {  
    "additionalDirectories": \[  
      "../repo1",  
      "../repo2"  
    \]  
  }  
}

In the corresponding central CLAUDE.md file, the agent is provided with a global, abstract context regarding the topology of the distributed systems. Although this template is provided directly by HumanLayer, it functions primarily as a structural blueprint for cross-project context management and architectural safety, not as a fully automated, executable QRSPI skill for the command line.

### **Harness Engineering: The Science of Agent Configuration**

The consistent effectiveness of all these implementations in practice relies not primarily on the raw intelligence or parameter count of the underlying language model, but significantly on the physical structure of the harness. The harness envelops the model and regulates interaction with the file system, tools, and memory. A clear formula has established itself in the industry: The quality of a coding agent is the sum of the AI model and the harness.

* **Radical context window management:** The window is subject to a hard, non-negotiable ceiling in cognitive processing efficiency. As soon as the raw utilization of the context window exceeds the 60 percent mark in a running session, the model enters a state termed the "Dumb Zone." QRSPI combats this degradation through the ironclad 40% rule: context utilization should be architecturally kept constantly below 40 percent. If it reaches critical values, the framework forces an intentional, hard session termination ("Clean Start").  
* **Sub-agents as contextual firewalls:** Sub-agents are highly specialized, short-lived instances of the language model that are spun off from a primary orchestrator. During long-running, complex research tasks, the model inevitably generates enormous amounts of cognitive "processing noise". By consistently outsourcing these operations to completely isolated sub-agents, all noise is tracelessly discarded upon successful completion of the subtask.  
* **Avoiding auto-generated system prompts:** Auto-generated global instruction files or those written by other LLMs measurably degrade the agent's actual performance and pointlessly increase token costs. Repository rules must be written manually, reduced to the absolute business-critical minimum, and strictly aligned with the principle of "Progressive Disclosure".  
* **Measured approach to MCP:** Indiscriminately attaching dozens of MCP servers permanently floods the system prompt with extremely detailed JSON-based tool descriptions and parameters. It is recommended to forego heavyweight MCP servers whenever the desired functionality is already available in the form of an established, native command-line interface (CLI) tool like Docker, Git, or psql.

### **Operational and Technical Challenges**

One of the most dangerous and hardest-to-diagnose problems during intensive sub-agent use is the so-called "CWD Drift" (Current Working Directory Drift) bug. This creeping error occurs when a spawned sub-agent changes the current working directory at the operating system level during its autonomous operation. Due to a documented architectural flaw in the environment handling of the Claude Code harness, this sub-agent action inadvertently changes the working directory of the overarching parent process. Developers must circumvent this error through rigorous countermeasures, such as interpolating the static environment variable $CLAUDE\_PROJECT\_DIR in all scripts.

### **Cognitive Sovereignty**

The spread and rapid adaptation of highly structured frameworks like QRSPI mark a philosophical turning point. The total automation and the unreflective "outsourcing of thinking" to AI models inevitably leads to a creeping, irreversible destruction of the architectural integrity of software systems. QRSPI is a systemic protection mechanism to preserve "Cognitive Agency". By architecturally forcing the critical phases of Design and Structuring to pass hard, unavoidable Human Gates, a crucial balance of power is restored. The system guarantees that artificial intelligence acts exclusively in the role of an extremely fast, high-performance executor and data gatherer. The human engineer retains undivided cognitive authority.

---

## **PART II: Practical Community Implementations & Skill Registries**

While Anthropic's Agent Skills are an official mechanism and format for procedural knowledge and workflows, Anthropic's own examples focus on generic coding, research, and operations skills rather than a named "QRSPI" pipeline. HumanLayer's work defines and motivates QRSPI as a successor to RPI, but their public GitHub repos emphasize RPI templates and "advanced context engineering" rather than a published, one-click QRSPI SKILL.md bundle.  
Independent practitioners describe QRSPI as an 7-8-phase workflow for Claude Code and similar harnesses, and reference it as a methodology rather than a single official skill. Multiple community repos and skills now implement this pattern for Claude Code, GitHub Copilot CLI, and other harnesses.

### **1\. qrspi-plus (Daniel Frysinger)**

* **Description:** A structured agentic development pipeline for Claude Code that extends QRSPI with worktree parallelization, tiered reviews, integration verification, acceptance testing, and replanning.  
* **Features:** Explicitly designed around Claude Code and Agent Skills; layers on additional phases like parallel worktrees and multi-stage review/verification on top of QRSPI. Introduces route-based workflows controlled via config.md ("Full Pipeline" vs. "Quick Fix Route"). Research is radically parallelized with dedicated sub-agents per question.  
* **Status:** The repository has non-trivial activity. There are open issues discussing cost per QRSPI phase in real projects (hundreds of dollars per phase with large Claude runs), which implies serious, repeated use. This is widely considered the most "production-ish" QRSPI pipeline available for Claude Code.

### **2\. matanshavit/qrspi (The Purist Original Recreation)**

* **Description:** An 8-phase workflow for Claude Code that maps the conceptual phases directly into a Claude Code harness through native prompting and file system conventions, without requiring external npm dependencies.  
* **Features:** Orchestrates the workflow using four strictly defined "documentarian" agents (codebase-locator, codebase-analyzer, codebase-pattern-finder, web-search-researcher) who are forbidden from making architectural recommendations. Features deterministic fallback loops (e.g., if Phase 2 reveals flawed assumptions from Phase 1, it completely re-executes Phase 1).  
* **Status:** The "reference implementation" for understanding how the phases are wired.

### **3\. using-qrspi skill on skills.rest**

* **Description:** An installable Agent Skill hosted on the skills.rest registry designed to start a structured agentic development pipeline.  
* **Features:** Packaged as a reusable Agent Skill that can be installed directly via Claude Code's skills mechanism. Written to be generic, allowing developers to trigger it with natural language ("plan this with QRSPI").  
* **Status:** Highly convenient for experimentation without wiring custom directory structures.

### **4\. agent-skills (Hypergiant)**

* **Description:** A collection of skills for AI coding agents that activates when planning tickets, starting QRSPI workflows, or creating spec-driven changes.  
* **Features:** A broader library of Agent Skills where QRSPI is one of the supported planning modes. Useful for studying how QRSPI is integrated alongside other skills in a multi-skill harness, and how activation phrases and routing are engineered.

### **5\. qrspi\_agent (NPM-Driven Orchestration)**

* **Description:** An NPM package providing a CLI tool for sequence-controlled orchestration.  
* **Features:** Installed globally in the Node environment. Controls the entire QRSPI workflow via dedicated terminal commands. Functions as a robust state machine persisting progress across session boundaries. Offers integrated transparency regarding token economics (budget and context utilization).

### **6\. qrspi\_codex & David Kijko's "Crispy" Harness**

* **qrspi\_codex:** A Codex-native multi-agent orchestration tool. Intentionally language-agnostic, acting as a central source of truth for a reusable skill plus a thin per-project stub.  
* **Crispy Harness:** A DevOps-focused variant that enforces strict physical system evidence. It categorically forbids the agent from generating "Completion Claims" without verifying CLI commands (e.g., inspecting authentication files or reading raw GitHub Actions logs).

### **Evidence of Battle-Testing**

The methodology is backed by robust practitioner validation. Multiple independent blogs and newsletters (such as Mixture of Experts and analyses by Derek Perez) describe QRSPI as the necessary next iteration after RPI. Furthermore, Reddit and blog writeups show users adopting QRSPI-inspired pipelines in their own setups, utilizing the strict structuring to build comprehensive codebase wikis and support advanced research phases in large repositories.