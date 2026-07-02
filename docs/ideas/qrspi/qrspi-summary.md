# **Comprehensive Analysis of the QRSPI Method (Summary)**

## **1\. Introduction: From RPI to QRSPI**

The integration of large language models (LLMs) into professional software development has shifted from isolated code completions to autonomous coding agents. The QRSPI (Question, Research, Structure, Plan, Implement) method emerged as a necessary evolution of the older RPI (Research-Plan-Implement) framework. The legacy RPI method frequently failed in complex enterprise environments due to instruction budget overflows, the "Magic Words Trap" (where agents bypassed deterministic human interaction), and the "Plan-Reading Illusion" (where models hallucinated architectural constraints in their plans).

## **2\. The Eight-Phase Architecture**

QRSPI mitigates LLM limitations by forcing strict alignment and context isolation before any code is generated. The process is divided into alignment and execution phases:

| Phase | Categorization | Main Function |
| :---- | :---- | :---- |
| **1\. Questions** | Alignment | Deconstruction of user intent into unbiased research questions. |
| **2\. Research** | Alignment | Fact-based codebase scanning using sub-agents strictly blind to the main task. |
| **3\. Design** | Alignment | Forced interactive architectural discourse and approval with the human engineer. |
| **4\. Structure** | Alignment | Definition of end-to-end testable vertical integration slices. |
| **5\. Plan** | Alignment | Translation of structure into a tactical, checklist-based implementation plan. |
| **6\. Worktree** | Execution | Isolation of changes in a dedicated Git environment to protect main branches. |
| **7\. Implement** | Execution | Step-by-step code generation with micro-commits per verification point. |
| **8\. PR** | Execution | Formal human code review and Pull Request creation. |

## **3\. Available Solutions and Implementations**

While the methodology was formulated by Dexter Horthy and HumanLayer, practical deployment in terminal environments spans both proprietary enterprise tools and diverse, community-driven skills.

### **3.1 Official HumanLayer Solutions**

* **Riptide Orchestration Platform:** A full-fledged desktop and CLI orchestration application built natively on the infrastructure of Claude Code. It automates QRSPI phase transitions, implements a local HTTP API via an hld daemon, and focuses heavily on Developer Experience (DX) with features like a distraction-free "Focus" mode.  
* **rpi-coordination-template:** An open-source architectural blueprint designed for coordinating cross-project context via central CLAUDE.md files, rather than acting as a standalone executable CLI skill.

### **3.2 Proven Community Skills**

* **dfrysinger/qrspi-plus:** A massive enterprise extension of QRSPI for Claude Code and Copilot CLI. It expands the workflow to 11 phases, introducing extreme parallelization, Test-Driven Development (TDD), and multi-tiered agent reviews (security, correctness, traceability) prior to integration.  
* **using-qrspi (skills.rest):** A highly accessible, installable Agent Skill available on the public skills.rest registry. This allows developers to immediately drop the QRSPI pipeline into a standard Claude Code installation without manually wiring local harnesses.  
* **matanshavit/qrspi:** The purist recreation of the original vision. This relies on a manual directory structure and four isolated "documentarian" sub-agents with strict, deterministic fallback loops to handle error correction.  
* **gohypergiant/agent-skills:** A comprehensive library of specialized coding agent instructions where QRSPI is seamlessly integrated as a core planning mode alongside other strict coding and review standards.  
* **qrspi-agent (NPM):** A globally installable Node CLI tool providing an orchestration layer. It excels at tracking multiple concurrent feature branches and provides real-time metrics on token economics and context window utilization.  
* **domsie/qrspi\_codex:** A harness-agnostic, Codex-native implementation that isolates the multi-agent orchestration logic into a reusable core, allowing developers to adapt it easily to various LLM environments beyond Claude.  
* **David Kijko's "Crispy" Harness:** A DevOps-focused variant that enforces strict physical system evidence. The agent is strictly forbidden from making architectural claims without first verifying authentication files or reading raw CI/CD GitHub Actions logs.

## **4\. Harness Engineering Best Practices**

Successfully deploying any of these QRSPI solutions requires strict adherence to several core principles of Harness Engineering:

* **Radical Context Window Management:** Operating large codebases by keeping context utilization below 40% to prevent the model from entering the "Dumb Zone." This involves intentional session restarts to clear cognitive noise.  
* **Sub-Agent Firewalls:** Isolating intensive research and diagnostic tasks into temporary sub-agents. This prevents massive amounts of search results and failed logic branches from contaminating the main planning context.  
* **Preventing CWD Drift:** Utilizing absolute path resolutions (e.g., interpolating $CLAUDE\_PROJECT\_DIR) rather than relative paths in configuration hooks. This prevents the runtime environment from crashing if an autonomous sub-agent changes the working directory.  
* **Minimizing Context Bloat:** Reducing auto-generated global instruction files to the absolute minimum. Furthermore, heavy MCP servers should be avoided in favor of standard CLI tools (like grep, jq, and git) executed in native bash environments to preserve reasoning tokens and limit prompt injection vectors.