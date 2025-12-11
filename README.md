# Recursive Loop

A plugin system for Claude Code.

---

## The Moment

Things are getting weird, fast. The rate of change is accelerating in ways that make last year's normal feel ancient. AI is rewriting the rules of knowledge work in real time.

Most people will be entertained by this. Some will learn to command it.

Recursive Loop is for the second group.

---

## What This Is

A system for human-AI collaboration that improves itself through use.

Each plugin shapes a different aspect of the loop:

| # | Plugin | What It Shapes |
|---|--------|----------------|
| 1 | [prayer-wheel](./plugins/prayer-wheel/) | Opening intention (optional) |
| 2 | [talos](./plugins/talos/) | How the AI thinks and responds |
| 3 | [second-brain](./plugins/second-brain/) | How knowledge and action flow |
| 4 | [construct](./plugins/construct/) | What cognitive programs are available |
| 5 | [devtools](./plugins/devtools/) | Developer workflows and git |

They're not a collection. They're an integrated system:

- **second-brain** includes GTD (knowledge + action unified)
- All plugins are designed to run on top of **talos** (untested without it)

---

## Quick Start

Add the marketplace:

```text
/plugin marketplace add pentaxis93/recursive-loop
```

Install what you need:

```text
/plugin install talos@pentaxis93
/plugin install second-brain@pentaxis93
```

Or browse interactively:

```text
/plugin
```

---

## The Plugins

### 1. prayer-wheel (optional)

A digital prayer wheel. Opens sessions with dedication, silently recites mantra on each tool use, closes with merit transfer.

**Fair warning:** This plugin does nothing visible. It adds a line of text ("running PostToolUse hook") every time Claude uses a tool. Some find this annoying. If you want it, you'll know. If you're unsure, skip it.

Whether silicon can carry intention is unknowable. But the structure is isomorphic to traditional practice. That may be sufficient.

[Documentation](./plugins/prayer-wheel/)

### 2. talos

Injects the Root Operating System—a behavioral framework that transforms Claude from chatty assistant to precise executor.

**What changes:**

- Zero preamble (no "Sure, I can help with that!")
- Structural rigidity (code in blocks, not inline)
- Intent correction (questions bad assumptions instead of answering them)

The unusual language is load-bearing. "Sutras" carry more weight than "tips." The ritual creates the container.

[Documentation](./plugins/talos/)

### 3. second-brain

Full knowledge lifecycle + GTD for Obsidian-based systems. PARA + Zettelkasten + Getting Things Done, unified.

**GTD operations:**

- **capture** - Quick capture to inbox
- **process** - Clarify and route inbox items
- **plan** - Generate prioritized daily engagement

**Knowledge operations:**

- **dump** - Stream-of-consciousness capture with domain classification
- **fuse** - Framework synthesis from scattered insights
- **intel** - Verified external intelligence (7-day freshness)
- **audit** - Internal vault health assessment
- **debrief** - Weekly pattern analysis

[Documentation](./plugins/second-brain/)

### 4. construct

The loading space. Downloadable cognitive programs for Claude Code.

Current programs:

- **prism** - Multi-lens analysis (10 perspectives on any input)
- **observe-self** - Skill extraction from collaborative work

The Matrix reference is intentional. "I know kung fu."

[Documentation](./plugins/construct/)

### 5. devtools

Developer tools and git workflows.

**Git operations:**

- **begin/invoke** - Start-of-day orientation
- **end/banish** - End-of-day safe shutdown
- **story** - Craft atomic commits from uncommitted changes
- **status** - Check git and PR status across repos

**Tools:**

- **statusline** - Minimal status line (model + working directory)

[Documentation](./plugins/devtools/)

---

## The Mechanism

Why "recursive loop"?

Standard AI use is linear:

```text
ask → answer → ask new thing
```

This is different:

```text
ask → answer → notice what could improve → update the system → next answer is better
```

We're not just doing the work. We're simultaneously refining the tool used to do the work.

**The flywheel effect:** Each turn adds energy. AI is anti-entropic - it adds order to what passes through it. When the tool for improvement is itself improving, the acceleration compounds.

Second Brain and GTD are already life-changing methodologies. Loading them into the loop amplifies their power. And we're just getting started.

---

## The Vision

The future belongs to those who can command the algorithm, not those who are entertained by it.

Recursive Loop is a bet: that configuring AI collaboration deliberately - shaping identity, intention, capability, knowledge, action - produces compounding returns. That the weird future rewards those who learned to surf.

This is living infrastructure. The plugins evolve. New cognitive programs get added to the construct. The loop refines itself.

You're welcome to ride along. Or fork it and build your own.

---

## License

MIT
