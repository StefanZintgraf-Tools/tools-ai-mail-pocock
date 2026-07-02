# ai-mail.pocock

Submodule of parent repo `ai-mail` (`c:\PROJ\ai-mail`).

- Commit/push this submodule: `.\git_push.ps1 "message"` (in this dir)
- Advance submodule pointer in parent: `..\git_sync-submodule.ps1` (in parent dir)

## Off-limits — never read, search, or reference (including sub folders)

- `archive/`
- `ideas/`
- `outlook-RAG/`
- `scratchpad.md` — human-only scratchpad

## Read only when relevant

- `skills/` — read only when creating, refactoring, or debugging a skill.

## Linked skills

Some files under `.claude/skills/` are symlinks into the `ai-knowledgebase` repo (`c:\PROJ\ai-knowhow\skills-plugins`). Changes to linked skills require git commit/push in that repo, not here.

## Agent skills

### Issue tracker

Issues live in GitHub Issues (`StefanZintgraf-Tools/tools-ai-mail-pocock`). See `docs/agents/issue-tracker.md`.

### Triage labels

Default label vocabulary (needs-triage, needs-info, ready-for-agent, ready-for-human, wontfix). See `docs/agents/triage-labels.md`.

### Domain docs

Single-context layout — one `CONTEXT.md` + `docs/adr/` at the repo root. See `docs/agents/domain.md`.
