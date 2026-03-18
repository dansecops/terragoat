# Mastering Claude Code: From Zero to Expert

## A Comprehensive Online Course for AI/ML Practitioners

> **Course Philosophy:** This course is built from real-world battle-tested patterns — drawn from Anthropic's official best practices, the *Everything Claude Code* repository (51K+ stars, Anthropic hackathon winner), and the collective wisdom of thousands of Claude Code power users. Every module emphasizes *doing*, not just knowing.

---

## Course Overview

| Level | Modules | Estimated Duration | Prerequisite |
|-------|---------|-------------------|-------------|
| **Beginner** | 6 modules | ~12 hours | Basic CLI familiarity, any programming experience |
| **Intermediate** | 7 modules | ~16 hours | Completed Beginner or equivalent experience |
| **Expert** | 6 modules | ~14 hours | Completed Intermediate or equivalent experience |

**Total:** 19 modules, ~42 hours of content + exercises + 3 capstone projects

---

# LEVEL 1: BEGINNER — Foundations

> *Goal: Go from zero to confidently using Claude Code for daily development tasks.*

---

## Module 1: Introduction to Claude Code & the Agentic Paradigm

### Lesson 1.1: What is Claude Code?
- Claude Code as an **agentic coding environment** — not a chatbot
- The fundamental shift: describing *what you want* vs. writing code yourself
- How Claude explores, plans, and implements autonomously
- Claude Code vs. other AI coding tools (Copilot, Cursor, Codex) — key differentiators

### Lesson 1.2: Installation & First Run
- Installing Claude Code CLI (`npm install -g @anthropic-ai/claude-code`)
- API key setup and authentication
- First interactive session: exploring a sample project
- Understanding the terminal UI: status bar, input area, output display

### Lesson 1.3: The Agentic Loop
- How Claude Code works under the hood: read → think → act → verify
- Tools Claude has access to: file reading, editing, Bash commands, web search
- The permission model: why Claude asks before acting
- Understanding token consumption and the context window

### Lesson 1.4: Core Commands & Navigation
- Essential slash commands: `/help`, `/clear`, `/compact`, `/config`, `/status`
- Keyboard shortcuts: `Esc` (stop), `Esc+Esc` (rewind), `Ctrl+G` (plan editing)
- Input modes: interactive vs. non-interactive (`claude -p "prompt"`)
- The `@` reference system for files

### Exercise 1.1: First Contact
- Clone a sample project and use Claude Code to explore it
- Ask Claude 5 questions about the codebase (like asking a senior engineer)
- Have Claude fix a simple bug, run the tests, and commit

---

## Module 2: Effective Communication with Claude Code

### Lesson 2.1: The Art of Prompting Claude Code
- **Specificity spectrum:** When to be precise vs. when to be open-ended
- Anti-pattern: "fix the bug" → Better: "users report login fails after session timeout. Check auth flow in src/auth/, especially token refresh. Write a failing test, then fix it"
- Referencing files, line numbers, and existing patterns in prompts
- The power of providing examples and constraints

### Lesson 2.2: Providing Rich Context
- Using `@` to reference files instead of describing locations
- Pasting images and screenshots directly (multimodal input)
- Piping data: `cat error.log | claude`
- Giving URLs for documentation and API references
- Letting Claude fetch its own context via Bash, MCP, or file reading

### Lesson 2.3: The "Explore → Plan → Implement → Commit" Workflow
- **Phase 1 - Explore:** Use Plan Mode to have Claude read files and understand the codebase
- **Phase 2 - Plan:** Ask Claude to create a detailed implementation plan
- **Phase 3 - Implement:** Switch to Normal Mode, let Claude code against the plan
- **Phase 4 - Commit:** Have Claude commit with descriptive messages and create PRs
- When to skip planning (single-sentence diffs, typo fixes)

### Lesson 2.4: The Interview Technique
- Letting Claude interview *you* before starting a feature
- Prompt template: "I want to build [X]. Interview me in detail using AskUserQuestion. Ask about technical implementation, UI/UX, edge cases, and tradeoffs."
- Building specs from interviews → executing in fresh sessions

### Exercise 2.1: Communication Mastery
- Take a vague requirement ("make the dashboard better") and craft 3 progressively more specific prompts
- Use the Explore → Plan → Implement workflow to add a new feature to the sample project
- Practice the interview technique for a medium-complexity feature

---

## Module 3: Verification — The Single Highest-Leverage Practice

### Lesson 3.1: Why Verification Changes Everything
- The core insight from Anthropic's best practices: "Give Claude a way to verify its work — this is the single highest-leverage thing you can do"
- Without verification, YOU become the only feedback loop
- The trust-then-verify gap: plausible-looking code that doesn't handle edge cases

### Lesson 3.2: Verification Strategies
- **Test-driven:** "Write a validateEmail function. Test cases: user@example.com → true, invalid → false. Run tests after implementing"
- **Visual verification:** Paste a screenshot → "implement this design, take a screenshot of the result and compare"
- **Root cause verification:** "The build fails with this error: [paste]. Fix it and verify the build succeeds. Address root cause, don't suppress the error"
- **Script-based verification:** Bash commands, linters, type checkers as automated checks

### Lesson 3.3: Building Quality Gates
- Using test suites as verification
- Integrating linters and formatters into your workflow
- The Claude in Chrome extension for UI verification
- Creating custom verification scripts

### Exercise 3.1: Verification Lab
- Implement a feature WITHOUT verification, note the issues
- Re-implement the same feature WITH proper verification criteria
- Build a custom verification script that Claude can use

---

## Module 4: Session Management & Context Awareness

### Lesson 4.1: Understanding the Context Window
- The most important resource to manage: context fills fast
- Performance degradation curve: 0–50% (work freely) → 50–70% (pay attention) → 70–90% (compact!) → 90%+ (clear mandatory)
- At 70% context, precision drops. At 85%, hallucinations increase. At 90%+, responses become erratic
- Tracking context usage with the status line

### Lesson 4.2: Context Hygiene
- `/clear` between unrelated tasks — the most important habit
- `/compact` with focus instructions: `/compact Focus on the API changes`
- The "kitchen sink session" anti-pattern: mixing unrelated tasks
- The "correcting over and over" anti-pattern: after 2 failed corrections → `/clear` and rewrite prompt

### Lesson 4.3: Checkpoints & Rewinding
- Every Claude action creates a checkpoint
- `Esc+Esc` or `/rewind` to open the rewind menu
- Restore conversation only, code only, or both
- "Summarize from here" for partial compaction
- Checkpoints persist across sessions

### Lesson 4.4: Session Continuity
- `claude --continue` to resume the most recent conversation
- `claude --resume` to choose from recent sessions
- `/rename` for descriptive session names ("oauth-migration", "debugging-memory-leak")
- Treating sessions like branches: separate workstreams, persistent contexts
- Side questions with `/btw` — answers in overlay, never enters history

### Exercise 4.1: Context Management
- Deliberately fill a context window, observe degradation, practice recovery
- Complete a multi-step feature using proper `/clear`, `/compact`, and checkpoint strategies
- Practice the rewind workflow: try something risky, rewind, try a different approach

---

## Module 5: Working with Git & GitHub

### Lesson 5.1: Claude Code + Git Basics
- Having Claude commit with descriptive messages
- Creating branches, staging changes, reviewing diffs
- Using the `gh` CLI through Claude for GitHub operations

### Lesson 5.2: PR Workflows
- Having Claude create pull requests with proper descriptions
- Code review with Claude: reading PR comments, addressing feedback
- The Writer/Reviewer pattern: Session A writes code, Session B reviews it

### Lesson 5.3: Using Git History as Context
- "Look through ExecutionFactory's git history and summarize how its API came to be"
- Understanding code evolution through commit history
- Using blame and log to provide Claude with context about *why* code exists

### Exercise 5.1: Git Workflow
- Implement a feature on a branch, have Claude create a well-documented PR
- Practice the Writer/Reviewer pattern with two Claude sessions
- Use git history to understand and modify a legacy function

---

## Module 6: Beginner Capstone Project

### Project: "Build a CLI Tool with Claude Code"
- **Objective:** Build a complete CLI application from scratch using Claude Code as your primary development partner
- **Requirements:**
  - Use the Explore → Plan → Implement workflow
  - All features must have verification (tests)
  - Practice proper context management throughout
  - Use git with proper commit messages and a final PR
- **Deliverables:**
  - Working CLI tool (e.g., a task manager, URL shortener, or file organizer)
  - Test suite with >80% coverage
  - Clean git history showing the development process
  - Reflection document: what worked, what didn't, lessons learned

---

# LEVEL 2: INTERMEDIATE — Configuration & Customization

> *Goal: Configure Claude Code to match your workflow, build reusable patterns, and multiply your effectiveness.*

---

## Module 7: CLAUDE.md Mastery

### Lesson 7.1: The Philosophy of CLAUDE.md
- CLAUDE.md is not about telling Claude what it is — it's about telling Claude **how your world works**
- The bridge between sessions: without `--continue` or `--resume`, every session starts from zero
- CLAUDE.md is the single mechanism that persists context across sessions

### Lesson 7.2: Writing Effective CLAUDE.md
- The golden rule: for each line, ask "Would removing this cause Claude to make mistakes?" If not, cut it
- Target: under 200 lines per file
- **Include:** Bash commands Claude can't guess, code style rules that differ from defaults, testing instructions, repo etiquette, architectural decisions, environment quirks, common gotchas
- **Exclude:** Things Claude can figure out from code, standard conventions, detailed API docs (link instead), frequently-changing info, self-evident practices

### Lesson 7.3: CLAUDE.md Architecture
- **Placement hierarchy:** `~/.claude/CLAUDE.md` (global) → project root → parent directories → child directories
- Using multiple CLAUDE.md files for monorepos: ancestor + descendant loading
- The `@path/to/import` syntax for importing other files
- `/init` command: auto-generates a starter CLAUDE.md based on your project

### Lesson 7.4: Tuning & Maintaining CLAUDE.md
- Adding emphasis: "IMPORTANT" and "YOU MUST" for critical rules
- If Claude ignores rules → file is probably too long, rules getting lost
- If Claude asks questions answered in CLAUDE.md → phrasing is ambiguous
- Check CLAUDE.md into git so the team contributes — compounds in value over time
- Treat it like code: review when things go wrong, prune regularly, test by observing behavior

### Exercise 7.1: CLAUDE.md Workshop
- Audit an existing project and write a CLAUDE.md from scratch using `/init` as a starting point
- Deliberately make it too long (300+ lines), observe Claude ignoring rules
- Prune to under 200 lines, verify improved adherence
- Create a multi-file CLAUDE.md setup for a monorepo

---

## Module 8: Skills — Teaching Claude Reusable Workflows

### Lesson 8.1: What Are Skills?
- Skills = markdown files that teach Claude repeatable workflows
- Invoked as slash commands (`/skill-name`) or auto-activated when relevant
- Key advantage: keeps heavy instructions OUT of conversation until needed
- Skills vs. CLAUDE.md: CLAUDE.md loads every session, skills load on demand

### Lesson 8.2: Creating Your First Skill
- File structure: `.claude/skills/<skill-name>/SKILL.md`
- YAML frontmatter: `name`, `description`, `disable-model-invocation`
- Using `$ARGUMENTS` for parameterized skills
- Example: a `/fix-issue` skill that analyzes, implements, tests, and creates a PR

### Lesson 8.3: Skill Design Patterns
- **Workflow skills:** Multi-step processes (e.g., `/deploy`, `/review`, `/onboard`)
- **Knowledge skills:** Domain-specific conventions (e.g., `/api-conventions`, `/db-patterns`)
- **Verification skills:** Quality checks (e.g., `/security-review`, `/perf-audit`)
- Using `disable-model-invocation: true` for skills with side effects (manual trigger only)
- Progressive disclosure: feature-specific skills instead of one giant CLAUDE.md

### Lesson 8.4: Building a Skills Library
- Organizing skills by domain, frequency, and team
- Sharing skills across projects via global `~/.claude/skills/`
- Version-controlling skills alongside your codebase
- Community skills and the plugin ecosystem

### Exercise 8.1: Skills Development
- Create 3 custom skills for a real project:
  1. A workflow skill (e.g., `/create-endpoint`)
  2. A knowledge skill (e.g., `/our-testing-patterns`)
  3. A verification skill (e.g., `/security-check`)
- Test each skill across multiple sessions

---

## Module 9: Hooks — Deterministic Control

### Lesson 9.1: Hooks vs. CLAUDE.md Instructions
- CLAUDE.md instructions are **advisory** — Claude may ignore them
- Hooks are **deterministic** — they guarantee the action happens
- Think git hooks, but for Claude Code: you define the event, the matcher, and the action
- Use hooks for actions that must happen **every time with zero exceptions**

### Lesson 9.2: Hook Events & Configuration
- Hook events: `PreToolCall`, `PostToolCall`, `Notification`, `Stop`
- Matchers: filtering by tool name, file patterns, command patterns
- Configuration in `.claude/settings.json` or via `/hooks` command
- Having Claude write hooks for you: "Write a hook that runs eslint after every file edit"

### Lesson 9.3: Practical Hook Patterns
- **Auto-lint:** Run eslint/prettier after every file edit
- **Guardrails:** Block `rm -rf`, block writes to migrations folder, block force-push
- **Notifications:** Slack/email when Claude finishes a task
- **Auto-format:** Format code on save (caveat: can consume 160K+ tokens in 3 rounds)
- **Security:** Prevent commits with secrets, block writes to sensitive files

### Lesson 9.4: Hook Performance & Gotchas
- Token consumption from formatting hooks (the 160K problem)
- Manual formatting between sessions as an alternative
- Hook execution order and conflict resolution
- Debugging hooks with `/hooks` browser

### Exercise 9.1: Hook Engineering
- Set up a complete hook system for a project:
  1. Auto-lint hook for file edits
  2. Guardrail hook blocking writes to a `config/` directory
  3. Notification hook that logs completed tasks
- Measure token impact of your hooks

---

## Module 10: MCP Servers — Extending Claude's Reach

### Lesson 10.1: Understanding MCP (Model Context Protocol)
- MCP lets Claude Code talk to external services
- How it works: define servers in `.mcp.json`, Claude gets new tools
- The ecosystem: Notion, Figma, databases, monitoring, issue trackers, and more
- `claude mcp add` to connect new servers

### Lesson 10.2: MCP Token Economics
- **Critical insight:** MCP servers consume tokens just by being available
- Tool definitions load into context on every request, whether used or not
- A few MCP servers can eat 30%+ of your context window before you type anything
- "If you're using more than 20K tokens of MCPs, you're crippling Claude"

### Lesson 10.3: MCP Design Principles
- Use `/context` to audit MCP token consumption regularly
- Disable MCP servers you're not actively using
- Avoid dozens of tools mirroring a REST API
- Prefer few powerful gateways: `download_raw_data(filters...)`, `execute_code_in_environment(code...)`
- Keep tool definitions lean

### Lesson 10.4: Essential MCP Servers
- **GitHub:** Issues, PRs, code search (prefer `gh` CLI for efficiency)
- **Database:** Query databases directly from Claude
- **Figma:** Design-to-code workflows
- **Monitoring:** Sentry, DataDog, custom dashboards
- **Documentation:** Notion, Confluence integration
- Building custom MCP servers for your specific needs

### Exercise 10.1: MCP Integration
- Configure 2-3 MCP servers for a project
- Audit token usage with `/context` before and after
- Build a workflow that uses MCP to pull data from an external service
- Optimize MCP tool definitions for minimal token footprint

---

## Module 11: Subagents — Divide and Conquer

### Lesson 11.1: Why Subagents Matter
- The context pollution problem: Claude reads hundreds of files during investigation
- Subagents run in **separate context windows** with custom system prompts and tool permissions
- Key benefits: prevents context pollution, enables specialized deep dives, parallel execution

### Lesson 11.2: Creating Custom Subagents
- File structure: `.claude/agents/<agent-name>.md`
- YAML frontmatter: `name`, `description`, `tools`, `model`
- Tool whitelisting: if you omit tools, it inherits ALL (including MCP) — whitelist intentionally
- Subagents cannot spawn other subagents

### Lesson 11.3: Subagent Design Patterns
- **Investigator:** Explores codebase and reports findings without cluttering main context
- **Reviewer:** Reviews code for security, performance, or style issues
- **Specialist:** Domain-specific expert (e.g., database optimizer, API designer)
- **Verifier:** Runs after implementation to check edge cases
- Anti-pattern: generic "QA engineer" or "backend developer" roles → use feature-specific agents instead

### Lesson 11.4: Effective Delegation
- Explicit delegation: "Use a subagent to review this code for security issues"
- Scoping investigations: narrow, focused tasks → better results
- Sequential subagent chains: results from one feed into the next
- Resumed subagents retain full conversation history

### Exercise 11.1: Subagent Workshop
- Create 3 specialized subagents:
  1. A security reviewer
  2. A test writer
  3. A documentation generator
- Use subagents to investigate a complex codebase question
- Compare context usage: with vs. without subagent delegation

---

## Module 12: Permissions & Security

### Lesson 12.1: The Permission Model
- Default: Claude requests permission for file writes, Bash commands, MCP tools
- Why this matters: after the 10th approval, you're clicking through without reviewing
- Permission allowlists: `/permissions` to permit known-safe commands
- Sandboxing: OS-level isolation for maximum freedom within boundaries

### Lesson 12.2: Security Best Practices
- `--dangerously-skip-permissions` ONLY in sandboxes without internet
- Prompt injection risks: external tool results may contain injection attempts
- The principle of least agency (from OWASP Top 10 for Agentic Applications)
- Only grant agents the minimum autonomy required for safe, bounded tasks

### Lesson 12.3: Team Security
- Shared `.claude/settings.json` for team-wide permissions
- Auditing what Claude can do vs. what it should do
- Hook-based guardrails for sensitive operations
- Managing API keys and secrets around Claude Code

### Exercise 12.1: Security Audit
- Audit a project's Claude Code configuration for security gaps
- Implement a permission + hook system that enforces least-privilege
- Test prompt injection scenarios and build defenses

---

## Module 13: Intermediate Capstone Project

### Project: "Configure Claude Code for a Production Team"
- **Objective:** Take an existing medium-complexity project and create a complete Claude Code configuration system
- **Requirements:**
  - Comprehensive CLAUDE.md (under 200 lines, multi-file for monorepo structure)
  - 5+ custom skills covering key workflows
  - 3+ hooks for deterministic guardrails
  - 2+ MCP server integrations (with optimized token usage)
  - 3+ specialized subagents
  - Permission configuration following least-privilege
  - Security review of the entire setup
- **Deliverables:**
  - Complete `.claude/` configuration directory
  - Documentation explaining each configuration choice
  - Token audit report showing context efficiency
  - Team onboarding guide for using the Claude Code setup

---

# LEVEL 3: EXPERT — Power User Workflows & Orchestration

> *Goal: Master advanced patterns for parallel execution, multi-agent orchestration, and production-grade Claude Code workflows.*

---

## Module 14: Advanced Context Engineering

### Lesson 14.1: Token Economics Deep Dive
- Measuring exact token costs of every action Claude takes
- Custom status line for real-time context monitoring
- The compaction algorithm: what survives summarization and what doesn't
- CLAUDE.md instruction for compaction: "When compacting, always preserve the full list of modified files and test commands"

### Lesson 14.2: Strategic Context Loading
- Pre-loading critical context before complex tasks
- Using `@` references strategically vs. letting Claude discover files
- The tradeoff: too much pre-loaded context vs. wasted exploration tokens
- Surgical `/compact Focus on X` for preserving specific context

### Lesson 14.3: The "Agent Dumb Zone"
- Manual `/compact` at max 50% — don't wait for auto-compaction
- Session design: one complex task per session, not multiple
- The "two-correction rule": if corrected twice on the same issue, `/clear` and rewrite
- Fresh sessions with better prompts almost always outperform long sessions with corrections

### Lesson 14.4: Memory Architecture
- Global CLAUDE.md (`~/.claude/CLAUDE.md`) for cross-project patterns
- Project CLAUDE.md for team conventions
- Directory-level CLAUDE.md for subsystem knowledge
- Skills for on-demand knowledge injection
- The hierarchy: global → project → directory → skills → conversation

### Exercise 14.1: Context Optimization Challenge
- Complete a complex multi-file refactoring while keeping context under 50%
- Design a memory architecture for a large monorepo with 5+ subsystems
- Benchmark: same task with naive context vs. optimized context — measure quality difference

---

## Module 15: Parallel Execution & Scaling

### Lesson 15.1: Running Multiple Claude Sessions
- Claude Code desktop app: visual management of parallel sessions with isolated worktrees
- Claude Code on the web: cloud infrastructure in isolated VMs
- Terminal-based parallel sessions
- The Writer/Reviewer pattern in practice

### Lesson 15.2: Non-Interactive Mode Mastery
- `claude -p "prompt"` for CI, pre-commit hooks, and scripts
- Output formats: plain text, JSON (`--output-format json`), streaming JSON
- `--allowedTools` for scoping permissions in batch operations
- `--verbose` for debugging, off in production

### Lesson 15.3: Fan-Out Patterns
- Generate task list → loop through with `claude -p` for each
- Large-scale migrations: test on 2-3 files → refine prompt → run at scale
- Integrating Claude into data/processing pipelines: `claude -p "..." --output-format json | your_command`
- Parallelism strategies: when to parallelize vs. when to sequence

### Lesson 15.4: The Test-Driven Parallel Pattern
- Session A writes tests → Session B writes code to pass them
- Fresh context for review eliminates bias toward own code
- Automated quality loops: implement → review → fix → verify

### Exercise 15.1: Parallel Execution Lab
- Write a fan-out script that migrates 20+ files using `claude -p`
- Implement the Writer/Reviewer pattern for a real feature
- Build a CI pipeline step that uses Claude Code for automated code review

---

## Module 16: Agent Teams — Multi-Agent Orchestration

### Lesson 16.1: Understanding Agent Teams
- Launched February 2026 with Opus 4.6
- Key difference from subagents: teammates can **talk to each other directly**
- Architecture: team lead coordinates, teammates work independently, shared task list
- Mailbox system for inter-agent communication

### Lesson 16.2: Designing Effective Teams
- Choosing the right team composition for different tasks
- Team lead role: coordination, task assignment, synthesis
- Teammate specialization: each teammate has its own context and tools
- Self-assignment: teammates can pick tasks from the shared list
- Challenge protocol: teammates can challenge each other's findings

### Lesson 16.3: Agent Teams vs. Subagents — When to Use Which
- **Subagents:** Quick, focused workers that report back. No inter-agent communication
- **Agent Teams:** Collaborative squads needing shared findings and coordination
- Decision framework: complexity, communication needs, parallelism requirements
- Hybrid patterns: Agent Teams that use subagents internally

### Lesson 16.4: Advanced Orchestration Patterns
- Feature development team: architect + implementer + tester + reviewer
- Research team: multiple investigators exploring different angles
- Migration team: coordinator + parallel file processors
- Incident response team: diagnostician + fixer + verifier

### Exercise 16.1: Agent Teams Lab
- Design and deploy an Agent Team for a feature implementation
- Compare results: solo Claude vs. subagents vs. Agent Team for the same task
- Optimize team composition based on task characteristics

---

## Module 17: Advanced Prompt Engineering for Claude Code

### Lesson 17.1: Thinking Modes & Reasoning
- Thinking mode true and Output Style Explanatory in `/config`
- The "ultrathink" keyword for high-effort reasoning on complex problems
- When to use extended thinking vs. when it's unnecessary overhead
- Structuring prompts that leverage Claude's reasoning capabilities

### Lesson 17.2: Advanced Prompt Patterns
- **The Specification Pattern:** Write a spec first, then execute in a fresh session
- **The Constraint Pattern:** "Build from scratch without libraries other than the ones already used"
- **The Example Pattern:** "Look at how existing widgets are implemented. HotDogWidget.php is a good example. Follow the pattern."
- **The History Pattern:** "Look through git history and summarize how this API evolved"
- **The Negative Pattern:** "Don't suppress the error — address the root cause"

### Lesson 17.3: Prompt Debugging
- When Claude produces wrong results, analyze: was context too noisy? Prompt too vague? Task too big?
- The feedback loop: notice what worked → replicate the pattern
- Adjusting specificity: tight constraints for known problems, open-ended for exploration
- The vague-prompt sweet spot: "What would you improve in this file?" for discovery

### Lesson 17.4: Building Prompt Libraries
- Creating reusable prompt templates for common tasks
- Encoding prompts as skills for team-wide consistency
- Iterating on prompts: version control your best prompts
- Domain-specific prompt patterns (API development, data pipelines, ML workflows)

### Exercise 17.1: Prompt Engineering Challenge
- Take 5 common development tasks and create optimized prompt templates
- A/B test prompt variations: measure success rate and token efficiency
- Build a team prompt library encoded as skills

---

## Module 18: Plugins & the Claude Code Ecosystem

### Lesson 18.1: The Plugin System
- Plugins = bundled skills + agents + hooks + MCP servers in one installable unit
- `/plugin` to browse the marketplace
- Code intelligence plugins for typed languages: precise symbol navigation, automatic error detection
- Community plugins vs. Anthropic-maintained plugins

### Lesson 18.2: The Extension Adoption Path
- **Stage 1:** Skills + MCP → covers 80% of workflows
- **Stage 2:** Hooks → automate linting, tests, guardrails
- **Stage 3:** Subagents → delegate when context gets heavy
- **Stage 4:** Agent Teams → go parallel when agents need to coordinate
- **Stage 5:** Plugins → package everything for your team
- Start simple, add complexity only when need is proven

### Lesson 18.3: Building Custom Plugins
- Plugin anatomy: manifest, skills, agents, hooks, MCP definitions
- Packaging and distributing plugins for your organization
- Testing plugins across different project types
- Contributing to the open-source plugin ecosystem

### Lesson 18.4: The Everything Claude Code System
- Deep dive into the Everything Claude Code repository architecture
- 13 expert agents, 40+ on-demand skills, 32 shortcut commands
- The continuous learning system and instinct patterns
- Adapting community configurations to your needs

### Exercise 18.1: Plugin Development
- Install and configure 3 community plugins
- Build a custom plugin that bundles your project's skills, hooks, and agents
- Publish your plugin for team use

---

## Module 19: Expert Capstone Project

### Project: "Build a Full Application Using Only Claude Code"
- **Objective:** Replicate the hackathon approach — build a complete, deployable application using Claude Code as your primary development tool, applying every technique from the course
- **Inspiration:** Affaan Mustafa's team built zenith.chat entirely with Claude Code in 8 hours at the Anthropic x Forum Ventures hackathon
- **Requirements:**
  - Full Claude Code configuration: CLAUDE.md, skills, hooks, MCP, subagents
  - Use Agent Teams for at least one phase of development
  - Parallel session workflows (Writer/Reviewer, test-driven)
  - Fan-out pattern for any repetitive tasks
  - Context management strategy documented and followed
  - All code verified through automated tests
  - Complete security review via security-reviewer subagent
  - Non-interactive mode integration for CI/CD
- **Deliverables:**
  - Deployed application (web app, API, or CLI tool — your choice)
  - Complete `.claude/` configuration with documentation
  - Token usage report across the entire development process
  - "Lessons Learned" document: what worked, what didn't, and your refined workflow
  - Reusable plugin packaging your best configurations

---

# Appendices

## Appendix A: Quick Reference — Essential Commands

| Command | Purpose |
|---------|---------|
| `/clear` | Reset context between tasks |
| `/compact [focus]` | Compress context with optional focus area |
| `/config` | Configure Claude Code settings |
| `/init` | Generate starter CLAUDE.md |
| `/permissions` | Manage permission allowlists |
| `/hooks` | Browse and manage hooks |
| `/context` | Audit context and MCP token usage |
| `/rewind` | Restore to previous checkpoint |
| `/btw` | Side question that doesn't enter history |
| `/rename` | Name current session |
| `/plugin` | Browse plugin marketplace |
| `Esc` | Stop Claude mid-action |
| `Esc+Esc` | Open rewind menu |
| `Ctrl+G` | Edit plan in text editor |
| `claude -p "..."` | Non-interactive mode |
| `claude --continue` | Resume most recent session |
| `claude --resume` | Choose from recent sessions |

## Appendix B: Anti-Patterns Cheat Sheet

| Anti-Pattern | Symptom | Fix |
|-------------|---------|-----|
| Kitchen sink session | Mixed unrelated tasks, confused outputs | `/clear` between tasks |
| Over-correction loop | 3+ corrections, degrading quality | After 2 fails: `/clear` + better prompt |
| Bloated CLAUDE.md | Claude ignores important rules | Prune to <200 lines, convert to hooks |
| Trust-then-verify gap | Plausible code, missing edge cases | Always provide verification criteria |
| Infinite exploration | Context full of file reads | Scope narrowly or use subagents |
| MCP token bloat | Slow responses, poor quality | `/context` audit, disable unused MCPs |
| Generic subagents | Shallow results from "QA engineer" role | Feature-specific agents with scoped tools |

## Appendix C: Context Budget Guidelines

| Context % | Status | Action |
|-----------|--------|--------|
| 0–50% | Green | Work freely |
| 50–70% | Yellow | Manual `/compact`, consider `/clear` |
| 70–85% | Orange | `/compact` immediately, precision dropping |
| 85–90% | Red | Hallucinations increasing, finish current task |
| 90%+ | Critical | `/clear` mandatory, start fresh session |

## Appendix D: Recommended Learning Path

```
Week 1-2:  Modules 1-3 (Foundations, Communication, Verification)
Week 3-4:  Modules 4-6 (Session Management, Git, Beginner Capstone)
Week 5-6:  Modules 7-9 (CLAUDE.md, Skills, Hooks)
Week 7-8:  Modules 10-11 (MCP, Subagents)
Week 9-10: Modules 12-13 (Security, Intermediate Capstone)
Week 11-12: Modules 14-16 (Context Engineering, Parallel Execution, Agent Teams)
Week 13-14: Modules 17-18 (Prompt Engineering, Plugins)
Week 15-16: Module 19 (Expert Capstone)
```

## Appendix E: Key Resources & References

- [Anthropic Official Best Practices](https://code.claude.com/docs/en/best-practices)
- [Everything Claude Code Repository](https://github.com/affaan-m/everything-claude-code) — 51K+ stars, hackathon-winning configurations
- [Affaan Mustafa's Longform Guide](https://x.com/affaanmustafa/status/2014040193557471352) — 3M+ views
- [Claude Code Subagents Guide](https://www.pubnub.com/blog/best-practices-for-claude-code-sub-agents/)
- [Claude Code Setup Guide 2026](https://okhlopkov.com/claude-code-setup-mcp-hooks-skills-2026/)
- [Claude Code for Advanced Users](https://cuttlesoft.com/blog/2026/02/03/claude-code-for-advanced-users/)
- [Claude Code Full Stack Explained](https://alexop.dev/posts/understanding-claude-code-full-stack/)
- [Ultimate Claude Code Guide](https://github.com/FlorianBruniaux/claude-code-ultimate-guide)
- [Awesome Claude Code](https://github.com/hesreallyhim/awesome-claude-code)
- [Claude Code Agent Teams Guide](https://claudefa.st/blog/guide/agents/agent-teams)

---

*Course created by synthesizing insights from Anthropic's official documentation, the Everything Claude Code repository (Affaan Mustafa), and the broader Claude Code community. All patterns have been validated against real-world usage by thousands of practitioners.*
