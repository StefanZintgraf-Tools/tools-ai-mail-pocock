# AI-Mail — End-to-End Coding-Workflows

Von Brainstorming bis Shipping, gebaut aus dem, was du schon hast: **Pocock-Skills als Spine**, **RPI-Disziplin** (vertikale Slices, Kontext-Hygiene, harte Human-Gates) darübergelegt, **gstack nur als optionaler Security-Zusatz**.

Vorgelagert sind Vision (`ai-mail-foundation-vision.md`) und das companion-Bundle (`ai-mail-vision-ai-spec/`) — die Alignment-Arbeit auf Vision-Ebene ist damit erledigt. Diese Workflows beginnen dort, wo das Bundle die „altitude fence" zieht: taktische Architektur, Tech, Slicing, Code.

---

## Prinzip in einem Satz

Jede Einheit Arbeit ist ein **vertikaler Slice mit testbarem Checkpoint**, läuft durch **Alignment → Design → Slicing → TDD → Review → QA → Ship**, hat **drei Human-Gates**, und jeder Slice ist eine **frische Session** (Kontext \< \~40 %, Übergabe per `handoff`).

   Alignment        Design+Plan        Slicing        Build           Verify        Ship

  grill-with-docs →  to-prd      →     to-issues  →   tdd       →   review \+ qa  →  merge

        │            (Gate 1:           (Gate 2:      (1 Slice \=    (+ Security-     (Gate 3:

        │             Seams ok?)         Slices ok?)   1 Session)    Lens\!)          du ownst Code)

        └─ Q/R/D der RPI-Stufen          └─ W der RPI    └─ I der RPI   └─ PR-Review

---

## Welcher Workflow? (Routing zuerst)

Vor jeder Aufgabe eine 10-Sekunden-Frage:

| Frage | → Workflow |
| :---- | :---- |
| Baue ich das **Invarianten-Skelett** zum allerersten Mal? | **W1 — Foundation Sprint** (einmalig) |
| Berührt die Aufgabe eine **Core-differentiating Capability** *oder* eine Invariante (INV1/2/3/5/9/11)? | **W2 — Capability Sprint** |
| Kleines, isoliertes Stück (Supporting/Generic, Bugfix, Doc, Connector) **ohne** Invarianten-/Core-Bezug? | **W3 — Fast Lane** |

Im Zweifel → W2. Eine Aufgabe, die eine Invariante anfasst, ist **nie** Fast Lane.

---

## W1 — Foundation Sprint *(einmalig, vor jeder Capability)*

Baut das tragende Gerüst, das jeder spätere UC voraussetzt. Kein User-Feature, sondern Architektur. Das ist auch dein **einmaliger Tech-Stack-Entscheidungs-Moment**.

**Scope \= vier Invarianten als Skelett:**

- **INV1 \+ INV4** → `propose → review → apply`\-Pipeline mit angehängtem Rationale; kein Auto-Commit-Pfad existiert im Code.  
- **INV5** → Append-only Action-Log (nachträglich lückenlos kaum machbar — jetzt).  
- **INV11** → Kontext-Isolations-Grenze (personal/work/account) im Datenmodell ab Tag 1 \= dein **PII-Fundament**.  
- **INV9** → Identitäts-Attribution (Mensch, nicht AI-Persona) im Outbound-Pfad.

**Ablauf:**

1. **Setup** — `git-guardrails-claude-code` \+ `setup-pre-commit` aktivieren. Schützt alles Folgende.  
2. **Tech \+ taktisches DDD** — Stack wählen (TS-Spine), Aggregates/Ports/Konsistenz skizzieren. Hier zahlt sich `improve-codebase-architecture` aus.  
3. **🚦 GATE 1 — Architektur-Review (Mensch).** Skelett-Design absegnen. Security-first: hier wird das Sicherheitsmodell festgelegt.  
4. **`to-prd`** des Skeletts (mit Seams) → **`to-issues`** als dünne vertikale Slices.  
5. **`tdd`** — implementieren. Ziel: ein **Walking Skeleton** — eine einzige triviale Aktion läuft echt durch `propose → approve → apply → log`, um die Pipeline zu beweisen.  
6. **`review` \+ zwingender Security-Pass** (gstack `/cso`, falls installiert, sonst Security-Lens-Review-Subagent). Dieses Skelett *ist* das Sicherheitsmodell.  
7. **🚦 GATE 3 — PR (Mensch).** Mergen.

**Output:** Lauffähiges Invarianten-Skelett, null Features. Jede spätere Capability dockt hier an.

---

## W2 — Capability Sprint *(das Arbeitspferd, 1× pro Capability/Slice)*

Die wiederholbare Schleife. Capabilities in der **Investitions-Reihenfolge** der Spec abarbeiten:

**CAP7 Memory (Keystone)** → proaktiver Cluster (CAP5, CAP6, CAP9, CAP10, CAP13) \+ Trust-Pillar CAP12 → Core-Surface (CAP1, CAP3, CAP4) → Supporting/Generic zuletzt.

Pragmatischer Einstieg: ein **dünner End-to-End-Schnitt** durch CAP1 Briefing auf minimalem CAP7 Memory — früh etwas Lauffähiges statt monatelang „erst die ganze Memory".

| \# | Stufe (RPI) | Skill / Aktion | Input aus dem Spec-Bundle | Output / Gate |
| :---- | :---- | :---- | :---- | :---- |
| 1 | **Q \+ R** (Alignment) | `grill-with-docs` | UC-Zeilen aus `uc-index.md` \+ CAP-Abschnitt \+ die zitierten `INV` | Geschärftes Verständnis; offene Fragen geklärt; Glossar konsistent (`ubiquitous-language` bei Bedarf) |
| 2 | **D \+ P** (Design) | `to-prd` | das geschärfte Verständnis \+ bestehender Code | PRD mit **Test-Seams**. **🚦 GATE 1:** `to-prd` fragt dich, ob die Seams passen — hier absegnen. Bei MGR-Oversight (CAP12/14): INV10-Projektion explizit prüfen. |
| 3 | **W** (Slicing) | `to-issues` | das PRD | Tracer-Bullet-**Vertikalslices** als Issues. **🚦 GATE 2:** Slice-Schnitt bestätigen, bevor Code entsteht |
| 4 | **I** (Build) | `tdd`, je Slice | ein Issue | Grün getesteter Slice. **1 Slice \= 1 Session**; `handoff` am Slice-Ende, dann neue Session (Kontext \< \~40 %) |
| 5 | **Review** | `review` **\+ Security-Lens** | der Diff seit Slice-Start | Standards+Spec-Befunde. **Pflicht-Security-Pass**, wenn der Slice INV9/INV11 oder CAP9 berührt |
| 6 | **QA** | `qa` | die laufende App | Bug-Issues (report-only); zurück zu Stufe 4 bei Funden |
| 7 | **PR \+ Ship** | Merge \+ CI/Deploy | grüne Tests | **🚦 GATE 3:** du liest und ownst den Code. Mergen, deployen, Docs aktualisieren |
| 8 | **Reflect** | Notiz in `scratchpad.md` | was schiefging | Learnings für den nächsten Slice |

**Bei einem harten Bug irgendwo in 4–6:** raus aus dem Loop, rein in `diagnose` (Feedback-Loop bauen → minimieren → Hypothese → Fix → Regressionstest), dann zurück.

---

## W3 — Fast Lane *(Kleinkram, minimale Zeremonie)*

Für Supporting/Generic-Capabilities, Bugfixes, Connector-Anpassungen, Docs — alles **ohne** Core-differentiating- oder Invarianten-Bezug.

1. **`triage`** — kurz einordnen / Issue anlegen (AI-Disclaimer nicht vergessen).  
2. **`diagnose`** (falls Bug) **oder** direkt **`tdd`** (kleiner roter Test → grün).  
3. **`review`** (Standards+Spec). **Security-Lens nur**, wenn doch Auth/Isolation berührt — dann ist es kein Fast-Lane-Fall mehr → eskaliere zu W2.  
4. **🚦 GATE 3 — PR (Mensch).** Mergen.

Ein einziges Gate. Kein PRD, kein Slice-Plan, kein Security-Pass (außer er wird nötig — dann hast du falsch geroutet).

---

## Querschnitt — was in *allen* Workflows gilt

**Die drei Human-Gates** (nie automatisierbar):

1. **Design/Seams** — bevor Code entsteht. Kritisch: die **MGR-Oversight-Projektion** (INV10 ist *keine* Permission-Prüfung, sondern eine bewusste Übersetzung, die Überwachungs-Details verwirft — „Kanban-Board, kein Stoppuhr"). Da rät kein Agent zuverlässig richtig.  
2. **Slice-Schnitt** — bevor `tdd` losläuft.  
3. **PR/Merge** — du ownst den Code.

Zusätzlich, hart: **vor jedem sendenden/handelnden Pfad** (INV1 ist Build- *und* Runtime-Gate).

**Die Security-Lücke schließen.** `review` deckt Standards \+ Spec ab, *nicht* Security. Optionen, vom geringsten Aufwand:

- gstack `/cso` cherry-picken (OWASP Top 10 \+ STRIDE), oder  
- mit `write-a-skill` einen eigenen `cso`\-Skill bauen, oder  
- einen Security-Lens-Subagent parallel zu `review` laufen lassen. Pflicht für jeden Slice, der INV9 (Identität), INV11 (Isolation/PII) oder CAP9 (Scam) berührt.

**Kontext-Disziplin (RPI).** 1 Slice \= 1 Session. Bei Slice-Wechsel `handoff` schreiben, neue Session starten — nicht den Kontext über mehrere Slices volllaufen lassen. Sub-Agents (`review` nutzt das schon) als Kontext-Firewall.

**Sicherheits-Setup einmalig zuerst.** `git-guardrails-claude-code` \+ `setup-pre-commit` ganz am Anfang (Teil von W1) — dann sind alle drei Workflows von Haus aus gegen destruktive Git-Operationen geschützt.

---

## Was bewusst *nicht* drin ist

- **DeerFlow / qrspi-CLI als Abhängigkeit** — nur Prinzipien übernommen, kein Fremd-Runtime.  
- **BMAD als Framework** — dein DDD-Front-End ist überlegen; geliehen sind nur Story-Sharding (= `to-issues`) und Quality-Gates.  
- **MVP-Phasing** — die Spec lässt es bewusst offen; die Investitions-Reihenfolge oben ist die einzige weiche Ordnung.

