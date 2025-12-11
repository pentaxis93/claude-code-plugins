# devtools

Developer tools and git workflows for Claude Code.

## Installation

```bash
/plugin marketplace add pentaxis93/recursive-loop
/plugin install devtools@pentaxis93
```

## Tools

### Status Line

A minimal status line that shows:

- **Model** - Current Claude model (opus, sonnet, haiku)
- **Working Directory** - Full path to current directory

Output example:

```text
opus /home/user/projects/my-app
```

#### Setup

Invoke the skill:

- "setup statusline"
- "configure status line"
- "devtools statusline"

The skill will:

1. Copy the status line script to `~/.claude/statusline.sh`
2. Configure `~/.claude/settings.json`
3. Restart Claude Code to activate

#### Revert

To disable the custom status line:

1. Remove `statusLine` from `~/.claude/settings.json`
2. Delete `~/.claude/statusline.sh` (optional)

---

## Git Commands

### Workday Boundaries

| Practical | Ceremonial | Purpose |
|-----------|------------|---------|
| `/devtools:begin` | `/devtools:invoke` | Start-of-day orientation |
| `/devtools:end` | `/devtools:banish` | End-of-day safe shutdown |

**Practical commands** (`begin`/`end`) do the work.
**Ceremonial commands** (`invoke`/`banish`) wrap the work in silent dedications.

### Other Commands

- `/devtools:story` - Craft atomic commits from uncommitted changes
- `/devtools:plot` - Weave stories into PRs across repositories
- `/devtools:status` - Check git and PR status across managed repos
- `/devtools:park` - Park work with full context for later
- `/devtools:unpark` - Resume parked work with context validation
- `/devtools:decide` - Three-pass decision method

---

## Git Skills

- **conflict-resolution** - Resolve merge conflicts systematically
- **history-surgery** - Rebase, squash, and history manipulation
- **recovery** - Recover from git disasters
- **worktree** - Manage multiple worktrees

---

## Dependencies

- `jq` (JSON processor) - required for the status line script
