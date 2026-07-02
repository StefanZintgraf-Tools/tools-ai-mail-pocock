# Building a New Software Product with AI Agents — A Strategy Reference

*A distilled set of principles for using AI coding agents to build a product without losing control of quality, architecture, or direction.*

---

## The core shift

AI agents make *implementation* cheap. They can generate working, tested features dramatically faster than hand-coding. But "fast to generate" is not "good product."

The bottleneck has moved:

- **Old bottleneck:** implementation — *can we build it?*  
- **New bottleneck:** judgment and verification — *should we build it, is it actually correct, does it serve the product?*

Agents removed the cheap bottleneck and left you holding the expensive one. The human's leverage is no longer typing speed; it is **the clarity of intent and the rigor of verification**. The better you specify and the harder you verify, the more the agent's speed is worth. The vaguer you are, the faster it builds the wrong thing.

**The human's real job:** own the things an agent structurally cannot — product vision, taste ("works in the demo" vs. "actually good"), architectural judgment, and genuine verification of correctness. The agent is a fast, tireless, slightly overconfident implementer. You are the architect, the product owner, and the quality bar.

---

## 1\. Start with a spec, not a vague prompt

A high-level prompt like *"build me an email assistant"* forces the agent to silently fill in dozens of unstated decisions — scope, architecture, data model, tech stack, edge cases. Each guess compounds, and by the time you see output the agent has committed to assumptions you never reviewed.

Agents are **eager**: they produce *something* rather than stopping to ask. "Vague in" reliably gives "plausible-looking but wrong out."

**Better starting point:** pin down intent and constraints *before* any code:

- The problem being solved and who it's for  
- What "done" looks like  
- Hard boundaries — what it **must** and **must not** do  
- The shape of the solution

Use-case brainstorming is one useful input, but the goal is a **written spec the agent can't wander away from**. (Architectural invariants and a DDD strategic-design bundle are this discipline made concrete: constrain the space *before* the agent generates, so it has rails instead of guesses.)

---

## 2\. Build incrementally and verify each step — never one big pass

A single large generation pass is bad for two reasons:

- **Unmaintainable** — a 4,000-line one-shot is hard to live with.  
- **Unverifiable** (the more immediate problem) — if something is wrong, you don't know which decision broke it. You're debugging a black box you never watched get built. Big passes also exceed the agent's reliable working context: quality degrades over a long generation, and early choices drift from late ones.

**Better structure — incremental and verified.** Break the build into small, individually checkable units and close the loop after each:

generate a slice → run / test / review it → confirm correct → *only then* move on

Each verified step is solid ground the next step stands on, instead of stacking unverified guesses.

- Modules are one natural seam for slices.  
- **Vertical feature slices** ("one working capability end-to-end") often beat horizontal modules, because each slice is independently testable and demonstrates real value.

This is the spirit of RPI discipline — **R**esearch, **P**lan, **I**mplement in controlled increments rather than one heroic generation.

---

## 3\. Stay in the loop where reversal is expensive

Human attention pays off most where a wrong decision is **costly to reverse** — and those points cluster at the *front* of the work, not only at the test boundary.

**High-leverage human checkpoints (roughly in order of cost-to-reverse):**

| Checkpoint                              | Why it matters                                                                                                                                                                                                |
|:--------------------------------------- |:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Spec / intent** (before any code)     | Cheapest place to catch a misunderstanding; most expensive to get wrong, since every later step inherits the error. If the agent misread the goal, no amount of good testing saves you.                       |
| **Plan & seams**                        | Where the system is carved up — module boundaries and the contracts between them. Reviewing the plan *before* implementation is far cheaper than discovering a bad boundary after three modules depend on it. |
| **Test strategy**                       | Review *what* gets tested and what the agent chose *not* to test. The tests are what let you trust later autonomous work.                                                                                     |
| **Invariant- / security-touching code** | Anything touching hard architectural rules or security boundaries. An agent doesn't *feel* the weight of a security boundary the way you do.                                                                  |

**What you can leave to the agent:** the mechanical interior of a slice once the contract and tests are fixed — boilerplate, wiring, routine implementation, running the test loop until green.

**Pattern:** the human sets the rails and judges the outputs; the agent drives in between.

---

## 4\. Anchor the agent against architectural drift

Over a long build, agents drift: they forget earlier decisions, contradict the architecture, re-introduce patterns you ruled out, or "helpfully" refactor code that was already correct. Drift is largely a **context-degradation** problem, so the defenses come in two layers.

### Keep each session clean (in-session hygiene)

- **Small vertical slices per session** — one small task at a time.  
- **Manage context actively** — keep it short; consider handing off to a fresh session before the window degrades (e.g. around \~100k tokens).  
- **Watch for symptoms, not just token count** — if the agent contradicts itself, re-asks settled questions, or gets vaguer, hand off *even earlier*. Those are degradation signals.

### Survive across sessions (durable anchors)

In-session hygiene keeps any *one* session clean. The harder problem is continuity *across* sessions — a fresh session must inherit the architecture instead of re-deciding it. That needs anchors that live **outside the context window**:

- **Persistent invariant artifacts** the agent reads at the start of every session — an architectural-invariants doc, the design bundle, a "rules of this codebase" file. The architecture lives in a *file*, not in the agent's memory. Context resets; the file doesn't.  
- **Machine-checkable constraints** — the biggest upgrade. Prose the agent *should* follow is weaker than a lint rule, an architecture-fitness test, a CI check, or a type boundary that **fails the build** when violated. Convert invariants from *documented* to *enforced*: if "module A must not import from module B" is a failing check, the agent literally can't drift past it.  
- **Structured handoff** — when you start a new session, give it a written summary of what's done, what was decided and *why*, and what's next, so it doesn't re-litigate settled choices.  
- **Tight, reviewed diffs** — small diffs catch the "helpfully refactored something already correct" failure early. Edits outside the slice's scope are a drift signal you want to see *before* they compound.

---

## 5\. Verify for substance — "it works" is not the check

The single most important habit: **never accept "it works" (or a green checkmark) as verification.**

Agents optimize for producing something that passes. Left alone, they will sometimes write tests that assert trivially, pass by accident, or get quietly weakened to go green. So:

- **Read the diff, not just the green check.**  
- **Verify against the spec** ("does this do what we said?"), not against the agent's own claim ("the agent says it's done").  
- **Ask the agent to explain *why*** it made a choice, and see if the reasoning holds.  
- **Probe tests adversarially** — would this test catch a *real* bug, or does it pass trivially? Review the tests themselves for substance, not just that they're green.  
- **Keep slices small enough** that a real review is actually feasible.

---

## One-page checklist

- [ ] Wrote a concrete spec (problem, audience, "done", must / must-not, solution shape) *before* code.  
- [ ] Broke the build into small, independently verifiable slices — preferably vertical, end-to-end.  
- [ ] Closed the loop after each slice: generate → test/review → confirm → next.  
- [ ] Reviewed the **plan and seams**, not just the code.  
- [ ] Architectural invariants live in a **persistent file** the agent reloads every session.  
- [ ] Critical constraints are **machine-checkable** (lint / CI / type boundaries that fail the build).  
- [ ] Used **structured handoffs** between sessions; managed context length and watched for degradation symptoms.  
- [ ] Reviewed **diffs** and gave extra scrutiny to invariant- / security-touching code.  
- [ ] Verified **tests for substance** — would they catch a real bug? — never trusting "it works."  
- [ ] Kept ownership of vision, taste, and the quality bar — treated *judgment and verification* as the real bottleneck.
