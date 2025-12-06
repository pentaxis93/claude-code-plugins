---
description: End-of-day safe shutdown - secure work and clear state
---

# End

Safely close the workday. Secure all work, clear transient state, prepare for tomorrow.

## Execute

### 1. Work Assessment

Run these in parallel:

```bash
git status
git stash list
git log --oneline origin/{{branch}}..HEAD 2>/dev/null || echo "No upstream"
```

### 2. Uncommitted Changes

If working tree is dirty:

| State | Action |
|-------|--------|
| Meaningful progress | Offer to commit with message |
| Work in progress | Offer to stash with description |
| Experimental junk | Offer to discard (with confirmation) |

**Never leave uncommitted changes overnight.** Either commit, stash, or consciously discard.

### 3. Unpushed Commits

If commits exist that aren't pushed:

```bash
git log --oneline origin/{{branch}}..HEAD
```

Ask: "Push these commits before ending? (Recommended for backup)"

### 4. Branch Hygiene

Check for stale branches:

```bash
git branch --merged main | grep -v "^\*" | grep -v main
```

If found, offer to delete merged branches.

### 5. PR Status

Check open PRs:

```bash
gh pr list --author @me --state open
```

Remind user of any PRs awaiting review or action.

### 6. Closing Summary

Present:

```markdown
## End of Day Summary

**Branch:** {{branch}}
**Status:** {{all committed / stashed / pushed}}
**Open PRs:** {{list with status}}

### Tomorrow
- {{any pending items}}
```

### 7. Confirm Shutdown

Ask: "All secured. Ready to end the session?"

---

## Principles

- **Nothing left hanging** — All work accounted for
- **Explicit choices** — User decides what to keep/discard
- **Tomorrow-friendly** — Clear state for fresh start
