# ai-mail.pocock

This is a git submodule of `tools-ai-mail`. To push changes, run `.\git_push.ps1 "message"` — then run `.\git_sync-submodule.ps1` from the parent repo to advance the submodule pointer.

## Off-limits — never read, search, or reference

- `archive/`
- `outlook-RAG/`
- `scratchpad.md` — human-only scratchpad

## Read only when relevant

- `skills/` — read only when creating, refactoring, or debugging a skill. 

## Agent skills

### Issue tracker

Issues live in GitHub Issues (`StefanZintgraf-Tools/tools-ai-mail-pocock`). See `docs/agents/issue-tracker.md`.

### Triage labels

Default label vocabulary (needs-triage, needs-info, ready-for-agent, ready-for-human, wontfix). See `docs/agents/triage-labels.md`.

### Domain docs

Single-context layout — one `CONTEXT.md` + `docs/adr/` at the repo root. See `docs/agents/domain.md`.
