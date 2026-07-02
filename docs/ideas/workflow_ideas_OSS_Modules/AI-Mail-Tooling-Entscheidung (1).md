# AI-Mail — Tooling- und Methoden-Entscheidung

*Arbeitsdokument · Entscheidungsgrundlage für Workflow-Runtime (Liga 1\) und Build-Methode (Liga 2\)*

Basis: die finalisierte Vision und ihr AI-Spec-Companion-Bundle (`docs/brainstorming/ai-mail-vision-ai-spec/` — 67 UCs → 15 Capabilities → 11 Invarianten, plus Subdomain- und Context-Map). Eigene Methode: die Skills `brainstorm-vision` und `create-vision-companion` aus `ai-knowhow`, fundiert auf den destillierten Rule-Books (`mattpocock/agent-rules-books`: DDD, Clean Architecture, A Philosophy of Software Design, DDIA, Release It\!, u. a.).

---

# Teil 1 — Analyse & finale Einordnung

## 1.1 Zwei Ligen, nicht ein Topf

Die acht untersuchten Repos liegen auf **zwei grundverschiedenen Ebenen**. Sie zu mischen hieße Äpfel mit Birnen vergleichen. Die Trennung ist die wichtigste Erkenntnis der ganzen Analyse, weil sie die Frage in zwei unabhängige Entscheidungen zerlegt:

- **Liga 1 — Runtimes / „Harnesses".** Eigenständige Agent-Laufzeitsysteme: laufen selbst als Prozess, modell-agnostisch, mit Gateway, Messaging-Kanälen, Memory, Sandboxes. Das sind die Kandidaten für die **Runtime, auf der AI-Mail als Produkt läuft**.  
- **Liga 2 — Workflow-/Skill-Aufsätze.** Kein Laufzeitsystem, sondern Prozess, Rollen und Skills, die *auf* einem fremden Agenten (meist Claude Code) sitzen. Das sind die Kandidaten für die **Methode, mit der AI-Mail gebaut wird**.

Ein Vergleich „hermes-agent vs. BMAD" wäre sinnlos. Sinnvoll ist nur: *welche Runtime?* (Liga 1\) und *welche Build-Methode?* (Liga 2\) — und beide werden am Ende kombiniert.

## 1.2 Liga 1 — die drei Runtimes

| Kriterium | openclaw | hermes-agent | deer-flow 2.0 |
| :---- | :---- | :---- | :---- |
| Hersteller | Steinberger/Community | Nous Research | ByteDance |
| Primärzweck | Persönlicher Alltags-Assistent | Lernender Einzel-Agent (Alltag \+ Dev) | Long-Horizon-Produktions-Tasks (Research/Code/Create) |
| Architektur | TypeScript, eigenes Gateway | Python, eigener Loop | Python, **LangGraph/LangChain** |
| Sub-Agents | begrenzt (Sessions) | ja | **Kern-Feature**, parallel \+ isoliert |
| Sandbox | Docker/SSH (non-main) | Docker/SSH/Modal/Daytona | Local/Docker/**Kubernetes** |
| Messaging-Kanäle | **sehr viele (20+)** | viele | Telegram, Slack, Feishu, WeChat, DingTalk … |
| Memory / Lernen | Skills \+ Memory | **Self-improving** Loop \+ Memory | Langzeit-Memory \+ Context-Engineering |
| Ressourcenbedarf | leicht–mittel | leicht–mittel | **schwer** (Server 8–32 vCPU) |
| Reife (Stars) | 381k | 201k | 68k |
| Lizenz | MIT | MIT | MIT |

**Kurzcharakter:**

- **openclaw** — persönlicher Assistent („Molty"), unschlagbare Kanal-Breite, aber kein Coding-/Produkt-Harness. Bester *Steinbruch* für Channel-Connectoren und das DM-Pairing/Allowlist-Sicherheitsmodell.  
- **hermes-agent** — aus dem OpenClaw-Ökosystem, dev-lastiger, mit eingebautem Lernloop (Skills aus Erfahrung). Leichtgewichtig, Cloud-persistent. Schwächer bei Sub-Agent-/Long-Horizon und rigorosen Gates.  
- **deer-flow** — explizit als „harness, tear it apart and make it yours" gedacht. Stärkste Sub-Agent-/Sandbox-/Skill-Architektur, auf LangGraph. Schwergewichtig, aber als Produkt-Backbone am tragfähigsten.

## 1.3 Liga 2 — die fünf Aufsätze

| Kriterium | BMAD | gstack | mattpocock/skills | qrspi-plus | qrspi-agent |
| :---- | :---- | :---- | :---- | :---- | :---- |
| Typ | Schweres AADD-Framework | Rollen-Team (23 Commands) | Leichte, komponierbare Skills | QRSPI-Plugin mit Hooks/Gates | QRSPI als Standalone-CLI |
| Methode | Agile \+ Personas | Sprint (Think→Ship) | Fundamentals, „Anti-Prozess" | QRSPI (HumanLayer/Dex Horthy) | QRSPI (HumanLayer/Dex Horthy) |
| Kontroll-Tiefe | sehr hoch | hoch | niedrig (du steuerst) | **sehr hoch (Gates erzwungen)** | hoch |
| Enforcement | Workflow-Konvention | Konvention \+ Hooks | Konvention | **Hook-basiert deterministisch** | Validator \+ State-Machine |
| Host | IDE-agnostisch | Claude Code \+ 9 Hosts (inkl. Hermes) | Claude Code, Codex u. a. | Claude Code | ruft Claude/Codex |
| Reife (Stars) | 49,6k | 117k | 135k | 1 | 0 |

## 1.4 Das Anforderungsprofil von AI-Mail (aus den Invarianten)

Für die Tool-Wahl zählen weniger die Features als die **Invarianten** — sie diktieren die Architektur. Drei Gruppen sind ausschlaggebend:

- **INV1 (Approval-Gate) \+ INV4 (Transparenz):** alles läuft durch eine *propose → review → apply*\-Pipeline mit angehängter Begründung. **Kein Auto-Commit-Pfad.**  
- **INV2/INV3 (non-destructive, safe-default):** Confidence-Schwellen; „hold & flag" statt handeln; niemals autonomes Löschen.  
- **INV5 \+ INV9 \+ INV10 \+ INV11 (Audit, echte Identität, Anti-Surveillance, Kontextgrenzen):** Append-only-Log, Outbound \= der echte Mensch, kuratierte Manager-Projektion (Kanban statt Stoppuhr), harte Isolation personal/work/account.

Und laut deiner Subdomain-Map ist **CAP7 Memory der Keystone-Core** — alles Proaktive (Triage, Reply, Follow-ups, Safety, Insights) hängt daran.

Daraus folgt das Profil: **proaktiver, multi-channel, memory-zentrierter, langlaufender Agent mit Sub-Agent-Fan-out und durchgängigem Human-in-the-Loop.**

## 1.5 Liga-1-Empfehlung für AI-Mail

**Vorab-Erkenntnis (wichtig):** Keine Runtime liefert deine Invarianten von Haus aus. Approval-Gate, Non-Destructive, Audit-Log, Anti-Surveillance, Identitäts-Attribution sind genau dein **CAP12/Invarianten-Kern — dein Differenzierer**. Den baust du selbst; keine Runtime nimmt ihn dir ab. Das ist gut: es bestätigt, dass dort der Produktwert sitzt.

**Empfehlung: deer-flow als Engine.** Seine Architektur mappt fast 1:1 auf deine Capability-Map (Sub-Agents → CAP13/Fan-out, Sandbox+FS → CAP15, Skill-Loader → deine Capabilities, Memory → CAP7, IM-Gateway → CAP11). Entscheidend: es liegt auf **LangGraph**, dessen native *human-in-the-loop interrupts* die natürliche Heimat deines INV1-Gates sind — du baust propose→review→apply *mit* der Runtime, nicht gegen sie. Preis: schwergewichtig, LangGraph-Bindung.

**Alternative:** hermes-agent, falls AI-Mail eher ein leichter, persönlicher Always-on-Assistent statt Server-Produkt werden soll (Lernloop ↔ CAP7), zu Lasten von Sub-Agent-Stärke und Gate-Rigorosität.

### Cherry-Picks aus Liga 1

| Übernehmen | Von wo | Wofür in AI-Mail |
| :---- | :---- | :---- |
| LangGraph-Sub-Agents \+ Sandbox \+ Skill-Loader \+ IM-Gateway (Engine) | **deer-flow** | CAP13, CAP15, CAP11, CAP1/CAP3-Fan-out |
| Self-improving Memory-/Learning-Loop-Design | **hermes-agent** | CAP7 Keystone (Stil, Relationship-Kontext) |
| Cron-Scheduler-Konzept | **hermes-agent** | CAP1 Daily Briefing, CAP5 Nudges, CAP6 Deadlines |
| Channel-Connectoren (20+) \+ DM-Pairing/Allowlist-Security | **openclaw** | CAP11 Reach \+ INV11 „untrusted inbound" |

Dein bereits aufgesetzter IMAP-MCP (`@codefuturist/email-mcp`) bleibt als Provider-ACL-Connector wiederverwendbar — alle drei Runtimes sprechen MCP.

## 1.6 Liga-2-Neubewertung — du besitzt die Vorderhälfte bereits

Deine `brainstorm-vision` (divergente Discovery \+ Architecture-Significance-Sweep, strikte Scope-Disziplin) und `create-vision-companion` (S1–S8: Invarianten/Glossar/Actors/Capability-Map/ Subdomain-Context-Map/UC-Index, „derive never replace", Altitude-Fence \= nur strategisches DDD) sind **eine eigene, bewusst geschnittene Methode** — keine Anwendung fremder Skills.

Damit besitzt du die **vordere Hälfte der Pipeline** (Discovery → strategisches Design) bereits, und zwar deliberater als jedes Liga-2-Repo. Matts Grilling, BMADs Personas, QRSPIs Questions/Research **überlappen genau das, was du schon abdeckst.**

**Was fehlt, ist die hintere Hälfte:** das tactical/Build-Backend, das deinen UC/CAP/INV-Bundle aufnimmt und zu Architektur → tactical Design → Tasks → TDD → Review → Ship führt. Deine `create-vision-companion` sagt das selbst: der Bundle ist für „a build-phase agent … for architecture, requirements, and planning", und sie schiebt „tactical DDD, tech, and MVP scoping" bewusst hinter die Altitude-Fence in „the phase this bundle feeds".

**Konsequenz:** Liga 2 ist für dich **kein Prozess zum Übernehmen, sondern Rohmaterial für eigene Build-Phase-Skills**, die da andocken, wo dein Companion-Bundle endet (siehe Teil 2).

---

# Teil 2 — Konkreter Vorschlag & der Schnitt

## 2.1 Was aus Liga 2 verwenden (als Basis eigener Skills)

| Liga-2-Repo | Als Basis wofür (eigener Skill) | Eignung |
| :---- | :---- | :---- |
| **qrspi-plus** | **Skelett deiner Build-Phase.** Gleiche QRSPI-Lineage, gleiche Philosophie wie deine Skills („structural enforcement over instructional discipline", Artefakt-pro-Phase, Human-Gates, frischer Subagent/Schritt, Vertical Slices, Severity-Replan). Sein Gating-Chain ≙ dein `_status.md`\-Checkpoint, eine Etage tiefer. Mine: Gating-Mechanik, 8-Reviewer-Tiers, 3 Review-Patterns, Hook-Enforcement. | **Höchste — Haupt-Basis** |
| **qrspi-agent** | **Instruction-Budget-Disziplin** (8–13 Instr./Stage, 40%-Kontextregel, Sub-Agent als Context-Firewall) *innerhalb* deiner Skill-Prompts; Runner-Abstraktion falls CLI gewünscht. | Hoch — Mikro-Basis |
| **mattpocock/skills** | Bausteine: `to-issues` (Vertical-Slice-Breakdown, frisst deine Capability-Map), `tdd` (Red-Green — um **Invarianten beweisbar** zu erzwingen), `codebase-design` (Deep Modules \= Ousterhout). Plus `writing-great-skills` als Konvention (user- vs. model-invoked). | Mittel — Komponenten \+ Skill-Handwerk |
| **gstack** | `/cso` (OWASP+STRIDE) als Basis eines Security-Review-Skills; `/plan-eng-review` (Data-Flow, State-Machines, Edge-Cases) als Basis eines tactical-Design-Skills. Nur diese zwei herauslösen. | Mittel — 2 Skills |
| **BMAD** | Nur das **TEA-Modul** (risk-based Test-Strategie) als Basis eines Invarianten-Teststrategie-Skills. Rest *nicht* — würde deine strategische DDD-Arbeit überschreiben. | Niedrig — 1 Modul |

## 2.2 Anthropic-Cybersecurity-Skills (mukul975) — die Sicherheits-Schicht

817 framework-gemappte Skills (MITRE ATT\&CK, **F3 Fight-Fraud**, ATLAS, **NIST AI RMF**, D3FEND), nach `agentskills.io`\-Standard — **demselben Standard wie deine Skills und die Runtimes** (hermes-kompatibel). Lizenz Apache-2.0 (kompatibel zu deinem MIT-Stack). Hinweis: Community-Repo, *nicht* von Anthropic; offensive/dual-use → nur autorisiert nutzen, jede Skill vor Einsatz prüfen.

Sie haben **zwei Verwendungen** in AI-Mail:

**(A) Als Runtime-Capability-Skills für CAP9 (Fraud & Safety Guard).** Direktes Mapping:

| Cyber-Skill | Deckt in AI-Mail ab |
| :---- | :---- |
| `detecting-business-email-compromise` / `…-with-ai` | CAP9 / UC28–UC31 — „know your normal" BEC-Erkennung |
| `detecting-email-account-compromise` | CAP9 / UC32 — kompromittiertes Konto |
| `detecting-email-forwarding-rules-attack` | CAP9 — klassische BEC-Persistenz |
| `analyzing-email-headers-for-phishing-investigation` | CAP9 — Header-Analyse für „warum riecht das falsch" (INV4) |
| `detecting-spearphishing-with-email-gateway` / `hunting-for-spearphishing-indicators` | CAP9 — gezielte Angriffe |
| `detecting-qr-code-phishing-with-email-security` | CAP9 — QR-Phishing |
| `performing-brand-monitoring-for-impersonation` | CAP9 — Impersonation/INV9-Schutz |
| `performing-adversary-in-the-middle-phishing-detection` | CAP9 — AiTM |
| `implementing-dmarc-dkim-spf-email-security` / `…dmarc-policy-enforcement` | CAP9 — Authentizität eingehender Mail |

**(B) Als Build-Time-Reviewer-Referenzen zur Härtung des Agenten selbst** (deine größte Angriffsfläche: ein Agent, der untrusted E-Mails/DMs liest — INV11):

| Cyber-Skill | Schützt |
| :---- | :---- |
| `detecting-indirect-prompt-injection` | **Der wichtigste** — Mail-Inhalt als Injektionsvektor |
| `detecting-ai-model-prompt-injection-attacks` | direkte Injektion |
| `testing-prompt-injection-in-rag-pipelines` | dein RAG-Pfad (AnythingLLM/CAP3) |
| `defending-llms-with-guardrails` / `implementing-llm-guardrails-for-security` | Guardrail-Schicht |
| `continuous-llm-red-teaming-with-promptfoo` · `red-teaming-llms-with-garak` · `orchestrating-llm-attacks-with-pyrit` | kontinuierliches Red-Teaming im CI |
| DLP-Skills · `hunting-for-data-exfiltration-indicators` | INV6/INV11 — kein Datenabfluss über Kontextgrenzen |

**Empfehlung:** (A) als *optionale Capability-Skills* in die Runtime laden (deer-flow/hermes laden `agentskills.io`\-Skills nativ). (B) als *Referenzen* in deinen eigenen Security-Review-Build-Skill (Basis: gstack `/cso`) einbetten — nicht 817 Skills schleppen, sondern die \~15 oben kuratieren.

## 2.3 Der Schnitt — Companion-Bundle → abgespeckte qrspi-plus-Phasenkette

Kernidee: qrspi-plus startet mit *Goals → Questions → Research → Design → Structure → Plan → Worktree → Implement → Integrate → Test → Replan*. **Deine ersten Phasen sind aber schon erledigt — auf strategischer Höhe.** Du kappst die Front und steigst bei **Design (tactical)** ein, das deinen Bundle als *approved input* liest (genau dein Gating-Prinzip, eine Etage tiefer).

DEINE METHODE (vorhanden)                    │  ABGESPECKTE qrspi-plus-KETTE (zu bauen)

                                              │

brainstorm-vision                             │

  → \*-foundation-vision.md                    │

create-vision-companion                       │

  → invariants.md  (INV1…INV11)               │

  → glossary.md    (ubiquitous language)      │

  → actors.md      (IND/TM/MGR/PROT/PIC/EXT)  │

  → capability-map.md (CAP1…CAP15)            │

  → subdomains-and-context-map.md (Core/…,    │

       ACL/Conformist/Published-Language)     │

  → uc-index.md  (UC→CAP→INV traceability)    │

                              │               │

        ════════ ALTITUDE-FENCE ════════      │

                              ▼               │

                      \[ entfällt \]  Goals     │  ← Vision+UC-Index liefern Intent;

                      \[ entfällt \]  Questions │     Akzeptanzkriterien kommen aus UC/INV

                      \[ entfällt \]  Research  │

                              ╲               │

                               ╲──────────────┼──▶  DESIGN (tactical)   ← EINSTIEGSPUNKT

                                              │       liest: capability-map \+ subdomain-map

                                              │              \+ invariants

                                              │       je Capability: tactical Architektur,

                                              │       2–3 Ansätze, Test-Strategie, Diagramm

                                              │                    │

                                              │                    ▼

                                              │     STRUCTURE        liest: glossary (→ Namen),

                                              │                      actors (→ Tenancy/Permissions),

                                              │                      context-map (ACL/Published-

                                              │                      Language → Modul-Nähte)

                                              │                    │

                                              │                    ▼

                                              │     PLAN → Tasks   (Akzeptanzkriterien \= INV-Checks)

                                              │                    │

                                              │                    ▼

                                              │     WORKTREE → IMPLEMENT → INTEGRATE → TEST

                                              │       (Reviewer um INV-Checks \+ Cyber-Refs erweitert)

                                              │                    │

                                              │                    ▼

                                              │     REPLAN  (zwischen Capabilities,

                                              │              in Investment-Reihenfolge)

**Phase-für-Phase, was sich ändert:**

- **Goals / Questions / Research — entfallen.** Deine Vision \+ `uc-index.md` liefern den Intent; die `capability-map.md` liefert den Scope; die `subdomains-and-context-map.md` ist das strategische Research-Ergebnis. Akzeptanzkriterien werden *aus* den UCs/INVs abgeleitet, nicht neu erhoben.  
- **Design (tactical) — Einstiegspunkt.** Liest `capability-map.md` \+ `subdomains-and-context-map.md`  
  + `invariants.md`. qrspi-plus' Design-Schritt (2–3 Ansätze, Vertical-Slice-Zerlegung, Phasen, Test-Strategie, System-Diagramm) bleibt — aber die *strategische* Slicing-Arbeit ist schon getan (Capabilities), hier kommt nur die *tactical* Architektur je Slice dazu. Hier landet die tactical DDD (Aggregates, Ports/Adapters), die deine Altitude-Fence bewusst ausgespart hat.  
- **Structure.** Liest `glossary.md` (kanonische Namen für Code/Schemas), `actors.md` (Tenancy/Permissions) und — der eleganteste Andock-Punkt — `subdomains-and-context-map.md`: deine Context-Map *benennt die Modul-Nähte bereits* (ACL gegen Provider, Published-Language für die MGR-Projektion, Shared-Kernel personal/team). Diese werden 1:1 zu Komponenten-Grenzen \+ Interface-Signaturen.  
- **Plan → Tasks.** Jede Task trägt **INV-abgeleitete Akzeptanzkriterien** im Frontmatter (siehe 2.4).  
- **Worktree / Implement / Integrate / Test — weitgehend unverändert**, aber die Reviewer-Sets werden um Invarianten-Checks und kuratierte Cyber-Referenzen erweitert.  
- **Replan — zwischen Capabilities.** Läuft in deiner Investment-Reihenfolge (CAP7 Memory zuerst → proaktiver Cluster \+ CAP12 → Core-surface → Supporting/Generic).

**Iteration:** Die Kette läuft **einmal pro Capability** (bzw. pro Phase innerhalb einer Capability). Replan ist der Übergang zwischen ihnen.

## 2.4 INV\* als Reviewer-Checks UND Produkt-Hook

Die rote Linie, die Build-Disziplin und Produkt-Sicherheit verbindet: **dasselbe PreToolUse-Block-Muster**, das im Build die Phasen-Reihenfolge erzwingt (qrspi-plus Hook), ist im Produkt dein INV1-Gate vor jedem send/file/delete. Eine Mechanik, zwei Einsatzorte.

| Invariant | Build-Reviewer-Check (im qrspi-Implement) | Produkt-Mechanik (Laufzeit) |
| :---- | :---- | :---- |
| **INV1** Approval-Gate | „kein Auto-Commit-Pfad existiert"; jeder konsequente Call hat propose→apply | PreToolUse-Hook / LangGraph-Interrupt vor send/file/commit/unsubscribe/merge |
| **INV2** Non-destructive | Reviewer: kein Hard-Delete in autonomem Pfad | Soft-Delete/Quarantine-only; TDD-Test: delete-Versuch → `Held-aside` |
| **INV3** Safe-default | Reviewer: Confidence-Schwelle gated jede autonome Aktion | unterhalb Schwelle → human-route / leave-as-is |
| **INV4** Transparenz | Reviewer: jede Aktion emittiert Rationale | Rationale-Feld an jeder `Proposed action`, UX surfaced on demand |
| **INV5** Audit | Reviewer/Test: Append-only-Log-Eintrag pro Aktion | unveränderliches `Action record`, abfragbar bis Einzel-Message |
| **INV6** Ownership/Exit | Architektur-Check: Export/Korrektur/Off-Switch vorhanden | Datenexport \+ Korrektur \+ Abschalter als First-Class |
| **INV7** Additiv | Check: Mailbox ohne Assistent nutzbar | Mail-Store bleibt direkt bedienbar |
| **INV8** Progressive Autonomy | Reviewer: per-Scope-Autonomy konfigurierbar, beidseitig | Autonomy-Dial, default konservativ |
| **INV9** Echte Identität | Reviewer: Outbound-Attribution \= Mensch | \+ Cyber: `…brand-monitoring-for-impersonation` schützt gegen Missbrauch |
| **INV10** Anti-Surveillance | dedizierter Deep-Module-Test der Published-Language-Projektion | Manager sieht Kanban-Vokabular, nie Per-Person-Timing |
| **INV11** Kontext-Isolation | Reviewer: kein Cross-Context-Leak | \+ Cyber: `detecting-indirect-prompt-injection`, untrusted-inbound-Handling |

qrspi-plus' vorhandene Reviewer mappen schon nah: `silent-failure-hunter` → INV3, `security-reviewer` → INV9/INV11, `spec-reviewer` → INV-Traceability gegen `uc-index.md`. Du ergänzt gezielte INV-Reviewer und hängst die kuratierten Cyber-Skills aus 2.2(B) als deren Referenzen an.

## 2.5 Zusammengesetzter Stack & Build-Reihenfolge

**Runtime (Liga 1):** deer-flow (geforkt, MIT) · Memory-Loop-Ideen von hermes · Channel/Security von openclaw · IMAP-MCP (`@codefuturist/email-mcp`) · CAP9-Cyber-Skills als optionale Runtime-Capabilities.

**Invarianten-Layer (dein Eigentum, der Differenzierer):** propose→review→apply über LangGraph-Interrupts · Append-only Action-Log (INV5) · Confidence-Gating (INV3) · Kontext-Isolation (INV11) · Published-Language-MGR-Projektion (INV10).

**Build-Methode (Liga 2, als eigene Skills):** abgespeckte qrspi-plus-Kette ab Design · Instruction-Budget-Disziplin von qrspi-agent · `tdd`/`to-issues`/`codebase-design` von mattpocock · Security-Review-Skill auf Basis gstack `/cso` \+ kuratierte Cyber-Refs · optional BMAD-TEA für Teststrategie.

**Reihenfolge (deine Investment-Ordnung aus der Subdomain-Map):**

1. **CAP7 Memory** (Keystone, day-one UC67) \+ Invarianten-Layer als Skelett — zuerst, weil alles andere darauf reitet.  
2. Proaktiver Core-Cluster: CAP5/CAP6/CAP9/CAP10/CAP13 \+ Trust-Pillar CAP12.  
3. Core-surface: CAP1/CAP3/CAP4 (Triage/Search/Reply — durch Memory gehoben).  
4. Supporting/Generic zuletzt: CAP2/CAP8/CAP11/CAP14/CAP15-Connectoren.

**Markiertes Top-Risiko (deine Map nennt es selbst):** der **MGR-Oversight-Boundary (INV10)** — erlaubte und verbotene Sicht entstehen aus *identischen* Rohdaten; das ist keine Permission-Prüfung, sondern eine bewusst überwachungs-entfernende Projektion. Gehört in einen eigenen, isoliert getesteten Deep-Module (mattpocock `codebase-design` / Ousterhout).

## 2.6 Nächste konkrete Schritte

1. **Build-Skill-Gerüst anlegen** in `ai-knowhow/skills-plugins/` — z. B. `build-from-companion` (Design/Structure/Plan) als Adaption von qrspi-plus, im selben Muster wie deine Vision-Skills (SKILL.md \+ `strategies.md`/`templates.md`, `_status.md`\-Checkpoints, „flag judgment calls").  
2. **Invarianten-Reviewer-Set** definieren (Tabelle 2.4) und als model-invoked Skills schreiben.  
3. **Security-Review-Skill** auf Basis gstack `/cso` mit den \~15 kuratierten Cyber-Refs.  
4. **deer-flow-Spike:** CAP7 (Memory) \+ INV1-Gate als LangGraph-Interrupt \+ INV5-Audit-Log als minimaler vertikaler Durchstich (UC67 day-one).

---

# Teil 3 — Open-Source-Bausteine (Buy vs. Build)

Ziel: AI-Mail mit so viel reifem OSS wie möglich bauen statt „from scratch". Geschätzt **70–80 %** der Mechanik ist ein gelöstes Problem; selbst gebaut wird nur der Invarianten-Kern (der Differenzierer). Bausteine nach AI-Mail-Schicht.

## 3.1 Fertige AI-E-Mail-Apps — als Muster/Code-Referenz

Nicht als Ganzes übernehmen, sondern als Vorlage für CAP1/CAP2/CAP4:

| Projekt | Cherry-Pick | Lizenz-Hinweis |
| :---- | :---- | :---- |
| **elie222/inbox-zero** | Implementiert deine INV1-Philosophie bereits (Aktionen vorbereiten → genehmigen, Automatisierung pro Regel erst nach Vertrauen \= INV1+INV8); Triage (CAP1), Bulk-Unsubscribe (CAP2), Draft-Replies (CAP4) | **AGPL-3.0** → nur Muster lernen, kein Code-Copy (siehe Teil 4\) |
| **cloudflare/agentic-inbox** | Referenz-Architektur inbound-classify-reply-Pipeline | Apache-2.0 — Workers-gebunden |
| **Mail-0/Zero (0.email)** | Self-host AI-E-Mail-App mit Gmail-Integration, Privacy-first (INV6) | MIT — sauber als Codebasis |

## 3.2 Connector-Schicht (CAP11 Reach \+ CAP15 Follow-through, ACL)

Deine Context-Map markiert diese Boundaries als „Conformist \+ ACL" / „Generic plumbing" — also *buy*:

| Projekt | Deckt ab | Lizenz |
| :---- | :---- | :---- |
| **MarimerLLC/calendar-mcp** | vereinheitlicht E-Mail \+ Kalender \+ Kontakte über M365, Outlook.com, Google Workspace, IMAP/SMTP, ICS; `find_available_times` → CAP11/CAP15/CAP13, INV11-Isolation | MIT |
| **nspady/google-calendar-mcp** | Multi-Account, Free/Busy, Cross-Account-Konflikte → CAP13 | MIT |
| **j3k0/mcp-google-workspace** | Gmail+Calendar; INV1-freundliche Defaults (Send standardmäßig aus, Draft separat) | MIT |
| **@codefuturist/email-mcp** | IMAP/Kerio-Connector (vorhanden) | — |
| **Activepieces** (Core) / **n8n** | CAP15 Generic-Connectoren | Core MIT / n8n Sustainable-Use (siehe Teil 4\) |

## 3.3 Memory — CAP7 Keystone (+ INV11, INV6)

| Projekt | Stärke | Fit | Lizenz |
| :---- | :---- | :---- | :---- |
| **Mem0** | Library, framework-agnostisch, per-user/agent/run-Partitionen, MCP-exponierbar | **Default** — Partition \= INV11 | Apache-2.0 |
| **Graphiti** (Zep) | temporaler Knowledge-Graph, führend bei zeitlichem Reasoning | **CAP5/CAP6** — Relationship über Jahre | Apache-2.0 |
| **Letta (MemGPT)** | getiertes Memory-Runtime (Core/Recall/Archival) | Memory-als-Runtime | Apache-2.0 |
| **MemPalace** | local-first, verbatim, top LongMemEval, null API-Calls | INV6 „Daten bleiben lokal" | MIT\* |

\* vor Einsatz verifizieren.

## 3.4 Approval-Gate / HITL — INV1 \+ INV4 \+ INV8 („buy not build")

| Projekt | Liefert | Lizenz |
| :---- | :---- | :---- |
| **LangGraph `interrupt()` \+ HITL-Middleware** | pausiert Tool-Calls gegen Policy, persistiert State, approve/edit/reject/respond, per-Argument-Gating → INV1/INV4/INV3. Bei Runtime=deer-flow **nativ** | MIT |
| **HumanLayer SDK** | Freigaben über Slack/E-Mail/Discord, MCP-Server, Auditierbarkeit → INV1/INV5/CAP11 | Apache-2.0 |
| **OPA / Cedar / Casbin** | deklarative Autonomy-Policy → INV8 (statt Permit.io-Cloud) | Apache-2.0 |
| **LangGraph Approval Hub** | Reviewer-Dashboard für interrupts | (Community — prüfen) |

## 3.5 Fraud & Safety — CAP9 (+ INV9)

Arbeitsteilung: **mechanische Signale** \= Rspamd, **Urteil/„know your normal"** \= Agent \+ Cyber-Skills.

| Projekt | Rolle | Lizenz |
| :---- | :---- | :---- |
| **Rspamd** | SPF/DKIM/DMARC, ML/neuronal, Fuzzy-Hashing, GPT-Plugin, HTTP-API; `FORGED_SENDER`\-Symbole → CAP9/INV9/INV4 | Apache-2.0 |
| **Anthropic-Cybersecurity-Skills** | Urteilsschicht: BEC/Phishing-Erkennung \+ Agent-Härtung (Prompt-Injection) | Apache-2.0 |
| ~~Spam Scanner~~ | *übersprungen* — BUSL-1.1, Rspamd ist mächtiger und sauberer | BUSL-1.1 |

## 3.6 Audit & Observability — INV5

**Langfuse** (MIT-Core, ohne `ee/`) oder **OpenTelemetry** (Apache) für Tracing aller LLM-/Tool-Calls. Das fachliche, abfragbare **Append-only Action-Record** (INV5) bleibt dein Domänenmodell.

## 3.7 Was nach dem Cherry-Picking dein Eigenbau bleibt (der Wert)

Glue \+ Domänenmodell, nicht Greenfield: die **Invarianten-Verdrahtung** (propose→review→apply, fachliches Audit-Log, Confidence-Gating), **INV2** Soft-Delete/`Held-aside`, **INV10** Published-Language-Projektion (riskantester Deep-Module), **INV11** Kontext-Isolation als Querschnitt, und das **„know your normal"-Modell** in CAP9, das Rspamds Roh-Signale zu Urteil verdichtet. Deckt sich mit deiner Subdomain-Map: Generic \= kaufen, Core-differentiating \= aus OSS-Primitiven \+ eigener Glue.

---

# Teil 4 — Lizenzstrategie für kommerziellen Vertrieb

**Kein Anwalt.** Diese Einordnung ist eine Entscheidungsgrundlage; vor dem kommerziellen Release gehört eine echte juristische Prüfung dazu — besonders bei Copyleft (AGPL/GPL) und Source-available-Lizenzen (BUSL/SSPL/fair-code) inkl. ihrer Change-Date-/Additional-Use-Klauseln. Lizenzangaben Stand Juni 2026, an den LICENSE-Dateien der Repos verifiziert.

## 4.1 Lizenz-Ampel

**🟢 Grün — MIT/Apache/BSD, kommerziell-proprietär unbedenklich (kein Tausch nötig):**

| Baustein | Lizenz |
| :---- | :---- |
| deer-flow, hermes-agent, openclaw | MIT |
| BMAD, gstack, mattpocock/skills, qrspi-plus, qrspi-agent | MIT |
| Anthropic-Cybersecurity-Skills | Apache-2.0 |
| Mem0, Graphiti, Letta | Apache-2.0 |
| MemPalace | MIT\* |
| LangChain/LangGraph HITL | MIT |
| HumanLayer | Apache-2.0 |
| OPA / Cedar / Casbin | Apache-2.0 |
| calendar-mcp, j3k0/mcp-google-workspace, nspady/google-calendar-mcp | MIT |
| cloudflare/agentic-inbox · Mail-0/Zero | Apache / MIT |
| Rspamd | Apache-2.0 |

**🟡 Gelb — Open-Core: nur permissiver Kern, NICHT die kommerziellen `ee/`\-Teile:**

| Baustein | Hinweis |
| :---- | :---- |
| **Langfuse** | MIT-Core nutzen; `ee/` kommerziell → oder OpenTelemetry |
| **Activepieces** | nur MIT-Core; Enterprise-Portionen kommerziell |
| **Permit.io** | SDK MIT, aber PDP-Backend ist Produkt → besser OPA/Cedar/Casbin self-hosten |

**🔴 Rot — Copyleft/Source-available, NICHT in ein verkauftes Produkt einbettbar (nur Schritt 1):**

| Baustein | Lizenz | Problem |
| :---- | :---- | :---- |
| elie222/inbox-zero | AGPL-3.0 | Netzwerk-Copyleft → über Netz angebotene Ableitung erzwingt Offenlegung des gesamten Quellcodes |
| spam-scanner | BUSL-1.1 | Produktiv-/Wettbewerbsnutzung bis Change-Date eingeschränkt |
| n8n | Sustainable Use License | internes Nutzen frei; **Einbetten/Mitverkaufen verboten** |
| ClamAV | GPL-2.0 | nur als unmodifizierter externer Daemon (clamd-Socket, Arm's-length); nicht einlinken |

## 4.2 Zwei-Schritt-Strategie (Schritt 1 intern → Schritt 2 kommerziell)

Mit der richtigen Geschwister-Wahl braucht nur eine Handvoll Komponenten überhaupt einen Tausch.

| Schicht | Schritt 1 (intern, „rot" erlaubt) | Schritt 2 (kommerziell sauber) |
| :---- | :---- | :---- |
| Spam/Phishing (CAP9) | — *(spam-scanner gar nicht nehmen)* | **Rspamd** (Apache) ab Tag 1 |
| CAP15-Plumbing | **n8n** als interner Backbone | direkte MCP-Connectoren \+ eigene Adapter, oder Activepieces-Core; n8n nie mitliefern |
| AI-Mail-App-Muster | **inbox-zero** intern laufen/studieren | eigene Implementierung der Muster, oder **Mail-0/Zero** (MIT) als Basis |
| Autonomy-Policy (INV8) | Permit.io-Cloud (schneller Start) | **OPA/Cedar/Casbin** (Apache) self-hosted |
| Observability (INV5) | Langfuse inkl. EE / LangSmith-SaaS | Langfuse MIT-Core oder OpenTelemetry |

**Nuancen, die den Plan verbilligen:**

- **AGPL triggert erst beim Ausliefern über Netz an Dritte.** In Schritt 1 (rein intern) darf inbox-zero sogar *betrieben* werden; die Offenlegungspflicht entsteht erst bei externen Nutzern. Sauberster Weg dennoch: Muster lernen, keinen Code kopieren — Copyright schützt die *Expression*, nicht die *Idee/Muster*.  
- **n8n ist kein echtes Risiko**, solange es internes Werkzeug bleibt. Der Verstoß wäre nur n8n *im verkauften Produkt* mitzuliefern → im Produkt läuft CAP15 über MCP-Adapter statt eingebetteter n8n-Instanz.  
- **spam-scanner (BUSL) ganz überspringen** — Rspamd ist mächtiger und sauber, kein Grund für die rote Variante.

## 4.3 Der Hebel, der Schritt 2 billig macht: ACL-Nähte

Der Tausch bleibt nur ohne Rewrite, wenn jede austauschbare Abhängigkeit **hinter einer ACL-/Adapter-Naht** sitzt — was deine eigene Context-Map ohnehin vorschreibt (Spam-Engine, Connector-Plumbing, App-Muster liegen an „Conformist \+ ACL"-Grenzen). Programmierst du in Schritt 1 gegen *eigene* Interfaces und steckst die rote Lösung nur dahinter, ist Schritt 2 ein **Adapter-Tausch an der Naht**, kein Umbau.

Empfohlene eigene Interfaces (Schritt-1-Pflicht):

| Interface | Schritt-1-Adapter | Schritt-2-Adapter |
| :---- | :---- | :---- |
| `SpamScorer` / `ThreatSignals` | *(direkt Rspamd)* | Rspamd |
| `MailConnector` / `CalendarConnector` | MCP-Server / n8n | MCP-Server / eigener Adapter |
| `PolicyEngine` (INV8) | Permit.io | OPA/Cedar/Casbin |
| `Tracer` (INV5) | Langfuse-EE | Langfuse-Core / OTel |
| `TriageRules` / `Unsubscribe` (Muster) | inbox-zero (intern) | Eigenimplementierung |

Die Nähte kosten in Schritt 1 fast nichts, weil sie in deiner Architektur ohnehin stehen — und sie sind zugleich die Stelle, an der Cyber-Skills (CAP9) und das INV1-Gate andocken.

---

*Quellen: die acht GitHub-Repos (nousresearch/hermes-agent, openclaw/openclaw, bytedance/deer-flow, bmad-code-org/BMAD-METHOD, garrytan/gstack, mattpocock/skills, dfrysinger/qrspi-plus, nixihz/qrspi-agent), mukul975/Anthropic-Cybersecurity-Skills; OSS-Bausteine (elie222/inbox-zero, Mail-0/Zero, cloudflare/agentic-inbox, mem0ai/mem0, getzep/graphiti, letta-ai/letta, humanlayer/humanlayer, MarimerLLC/calendar-mcp, j3k0/mcp-google-workspace, nspady/google-calendar-mcp, rspamd/rspamd, activepieces/activepieces, langfuse/langfuse, n8n-io/n8n, spamscanner/spamscanner); sowie die eigenen Artefakte in ai-knowhow und tools-ai-mail-pocock. Lizenzen an den LICENSE-Dateien verifiziert. Stand der Recherche: Juni 2026\.*  
