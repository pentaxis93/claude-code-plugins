---
description: Start-of-day orientation - load context and prepare for work
---

# Begin

Orient to the workday. Load context, assess state, prepare for productive work.

## Execute

### 1. Repository Status

Run these in parallel:

```bash
git status
git log --oneline -5
git stash list
```

### 2. Branch Assessment

| Check | Action |
|-------|--------|
| On main/master? | Warn: create feature branch before coding |
| Uncommitted changes? | Ask: continue, stash, or commit? |
| Stashed work? | Ask: apply stash or leave for later? |
| Behind upstream? | Suggest: pull or rebase |

### 3. Context Loading

Check for project context:

- Read `CLAUDE.md` if present
- Check for active PRs: `gh pr list --author @me`
- Check for assigned issues: `gh issue list --assignee @me`

### 4. Orientation Summary

Present to user:

```markdown
## Today's Starting Point

**Branch:** {{branch}} ({{tracking status}})
**Working tree:** {{clean/dirty}}
**Active PRs:** {{count}}
**Assigned issues:** {{count}}

### Suggested First Actions
1. {{based on state}}
```

### 5. Confirm Ready

Ask: "Ready to begin? Any specific focus for today?"

---

## Principles

- **No assumptions** — Show state, let user decide
- **No automatic changes** — This is orientation, not action
- **Context over commands** — Understanding before doing
