# SPEC.md — Mastering Claude Code

> A comprehensive, free, open-source course for working developers who want to become dangerously effective with Claude Code.

---

## 1. Course Identity

| Field | Value |
|---|---|
| **Title** | Mastering Claude Code |
| **Tagline** | From first prompt to autonomous pipelines — a practitioner's guide to agentic engineering |
| **License** | Open-source (MIT or CC BY-SA 4.0) |
| **Format** | Self-paced, written (tutorial-style with personality) |
| **Platform** | GitHub repo + static docs site (Docusaurus or MkDocs) |
| **Pacing** | All content available immediately; no drip-feed or cohort gates |
| **Maintenance** | Living document — Git repo with versioned releases tagged to Claude Code versions |
| **Tone** | Engaging, opinionated, uses analogies — like Julia Evans' zines or Dan Abramov's blog. Concise but never dry. The author has a point of view. |

---

## 2. Target Audience

### Primary Persona

Solo developer with a DevOps/platform engineering and security focus. Think: someone who ships their own infra, writes Terraform, runs CI/CD pipelines, and cares deeply about secure defaults. This is the "Dan Gora" archetype — technically strong, independent, and skeptical of hype.

### Prerequisites (Self-Assessment Checklist)

Students should be able to answer "yes" to all of these before starting:

- [ ] I'm comfortable working in a terminal (bash/zsh, basic shell scripting)
- [ ] I use Git daily (branching, PRs, rebasing — not just `git add . && git commit`)
- [ ] I've written code professionally for 1+ years in at least one language
- [ ] I understand basic DevOps concepts (CI/CD, containers, IaC — even if I'm not an expert)
- [ ] I have a working Claude Code installation (Module 1 covers environment tuning, not first-time install from zero)

### Expected Starting Level with AI Assistants

**Intermediate.** Students have used Copilot, ChatGPT, or Cursor for code. They can get value from AI tools but don't have a systematic workflow. They copy-paste from chat windows. They haven't configured anything. They're ready to go from "occasionally useful" to "indispensable."

---

## 3. Intended Outcomes (Progressive)

| Level | Outcome |
|---|---|
| **Beginner** | Ship 3-5x faster — Claude Code is the student's primary development accelerator for everyday tasks |
| **Intermediate** | Handle tasks they couldn't before — unfamiliar codebases, languages, and infra tasks become approachable |
| **Expert** | Build autonomous workflows — hooks, MCP servers, multi-agent pipelines, and CI integration run with minimal human intervention |

A graduate of this course can:
1. Productively use Claude Code for any development task in any language
2. Write CLAUDE.md files that make Claude Code behave like a senior teammate who knows the project
3. Configure hooks that enforce quality gates and automate repetitive workflows
4. Connect Claude Code to external systems via MCP servers
5. Orchestrate multi-agent workflows for complex, parallel tasks
6. Perform a security audit of a real codebase using Claude Code as the primary tool
7. Know precisely when NOT to use Claude Code — and articulate why

---

## 4. Design Principles

### 4.1 Pedagogical Approach

- **Exercises: Guided → Open.** Early modules use pre-built exercise repos with clear success criteria. Later modules have students apply skills to their own codebases.
- **Failure is curriculum.** Dedicated troubleshooting content PLUS intentional failure exercises where Claude Code will produce wrong answers, hallucinate, or get stuck — students practice recovery.
- **Security-first throughout.** A dedicated security foundations module AND security considerations woven into every subsequent module. This audience demands it.
- **"When NOT to use it" is prominent.** Showing when the tool is the wrong choice builds trust and demonstrates mastery. Covered early, referenced often.
- **Context management: early intro + ongoing tips.** Introduce the mental model of context windows in the first few modules, then reinforce with specific strategies in every subsequent module.

### 4.2 Content Format

- **Transcripts: Curated + full.** Main content shows annotated, curated Claude Code session transcripts. Full unedited transcripts available as supplementary material in an appendix or linked file.
- **Module structure: Flexible but consistent.** Core sections are consistent across all modules (Objectives, Key Concepts, Exercises, Review). The middle section varies by topic — some modules are walkthrough-heavy, some are reference-heavy, some are exercise-heavy.
- **Case studies: One per level.** Three detailed case studies grounded in real professional workflows — beginner, intermediate, and expert.
- **Comprehensive cheat sheet.** A single, dense reference card covering all commands, shortcuts, and patterns — grows as the course progresses.

### 4.3 Tool Framing

- **Complementary, not competitive.** The course positions Claude Code alongside other tools (Copilot for autocomplete, Cursor for visual editing) rather than against them. Students learn when each tool is the right choice.
- **CLI + terminal-in-IDE.** Core content focuses on the CLI, but acknowledges most devs run it inside VS Code's integrated terminal. That hybrid workflow is first-class.
- **CLI + GitHub integration.** Beyond the local CLI, the course covers Claude Code triggered from GitHub (PR reviews, issue workflows) as a key workflow.

---

## 5. Module Map

### Dependency Graph

```
Module 1 (Setup) ─────────────────────────────────────────────┐
    │                                                          │
    ▼                                                          │
Module 2 (First Interactions) ──┐                              │
    │                           │                              │
    ▼                           ▼                              │
Module 3 (Prompt Craft)    Module 4 (Codebase Exploration)     │
    │                           │                              │
    ├───────────┬───────────────┤                              │
    ▼           ▼               ▼                              │
Module 5    Module 6        Module 7                           │
(CLAUDE.md) (Git Flows)    (Learning Accelerator)              │
    │           │                                              │
    ├───────────┤                                              │
    ▼           ▼                                              │
Module 8 (Cost & Models) ──► Module 9 (Permissions & Security) │
    │                           │                              │
    ▼                           ▼                              │
Module 10 (Custom Commands) Module 11 (Failure & Recovery)     │
    │                           │                              │
    ├───────────────────────────┤                              │
    ▼                                                          │
Module 12 (Hooks: Safety) ─────────────────────────────────────┘
    │
    ▼
Module 13 (Hooks: Automation)
    │
    ▼
Module 14 (Hooks: CI/CD Integration)
    │
    ▼
Module 15 (MCP: Using Servers)
    │
    ▼
Module 16 (MCP: Configuring & Extending)
    │
    ▼
Module 17 (MCP: Building from Scratch)
    │
    ▼
Module 18 (Multi-Agent Patterns)
    │
    ▼
Module 19 (Agent SDK)
    │
    ▼
Module 20 (Scaling to Teams)
    │
    ▼
Module 21 (Capstone: Security Audit)
```

**Rules:**
- Modules 1-2 are strictly sequential (setup → first use).
- Within levels, modules with no arrow between them can be done in any order.
- All beginner modules (1-7) should be completed before starting intermediate (8-14).
- All intermediate modules should be completed before starting expert (15-21).
- The capstone (Module 21) requires all prior modules.

---

## 6. Detailed Module Briefs

---

### BEGINNER LEVEL — "Ship Faster"

---

#### Module 1: Setup & Environment Tuning

**Objectives:** Students have a fully configured, optimized Claude Code environment ready for productive work.

**Key Topics:**
- Installation verification and first-run checks
- Shell configuration for Claude Code (aliases, PATH, completions)
- Terminal setup: font, theme, and readability for long sessions
- Tmux/screen configuration for persistent Claude Code sessions
- VS Code integrated terminal setup (the hybrid CLI+IDE workflow)
- API key management and authentication
- Initial settings: choosing defaults that balance safety and productivity
- Verifying everything works: the "hello world" smoke test

**Exercise:** Configure a complete Claude Code environment from scratch. Set up shell aliases, terminal theme, and verify with a simple prompt. Students should end with a screenshot-worthy terminal setup.

**Exercise Repo:** None needed — students configure their own environment.

**Estimated Length:** Medium (~2,500 words + configuration examples)

**Dependencies:** None (entry point)

---

#### Module 2: First Interactions — Write Something From Scratch

**Objectives:** Students experience the core Claude Code loop: prompt → review → iterate. They build something real in their first session.

**Key Topics:**
- The fundamental interaction model: you prompt, Claude Code acts, you review
- Writing your first meaningful prompt (not "hello world" — a real task)
- Understanding what Claude Code is doing: reading its tool calls and reasoning
- The review cycle: accepting, rejecting, and refining Claude Code's work
- When to intervene vs. when to let it run
- Context window basics: the mental model (introduced here, reinforced everywhere)
- Your first complete creation: from requirement to working code

**Exercise:** Use Claude Code to create a complete CLI tool from a natural language description. Example: "Build a CLI that takes a JSON file of server configs and validates them against a schema." Students go from zero to working tool in one session.

**Exercise Repo:** None — students create from scratch. Provide the spec/requirements as the exercise prompt.

**Estimated Length:** Medium (~2,500 words + annotated transcript)

**Dependencies:** Module 1

---

#### Module 3: Prompt Engineering for Claude Code

**Objectives:** Students learn structured prompting techniques specific to Claude Code's agentic workflow (not generic "prompt engineering").

**Key Topics:**
- Why prompting Claude Code differs from prompting a chatbot
- The anatomy of an effective Claude Code prompt: context, intent, constraints, verification
- Specificity spectrum: when to be precise vs. when to be vague (and why both are valid)
- Iterative refinement: the conversation as a feedback loop
- Multi-step task decomposition: breaking complex requests into stages
- Prompt anti-patterns: what NOT to do (and why it fails)
- The "show don't tell" principle: providing examples in prompts
- Using `/compact` and session management to stay effective in long conversations
- Context window management tips: when to start fresh vs. continue

**Exercise:** Take a poorly-written prompt that produces bad results. Iteratively refine it using the techniques from this module until Claude Code produces excellent output. Document each iteration and why it improved.

**Exercise Repo:** Provide a set of "bad prompt → good prompt" pairs with a starter repo to run them against.

**Estimated Length:** Long (~3,500 words + prompt examples)

**Dependencies:** Module 2

---

#### Module 4: Codebase Exploration

**Objectives:** Students can use Claude Code to rapidly understand unfamiliar codebases — reading, navigating, and building mental models.

**Key Topics:**
- The "explain this codebase" workflow: how Claude Code maps a project
- Asking architectural questions: "how does auth work here?", "where are the API endpoints?"
- Tracing execution paths: "what happens when a user clicks submit?"
- Understanding dependency relationships and data flow
- Reading code you didn't write: using Claude Code as a translator
- Limitations: when Claude Code's understanding is shallow vs. deep
- Context management for large codebases: what fits, what doesn't

**Exercise:** Clone a medium-sized open-source repo the student has never seen. Use Claude Code to answer 10 specific questions about its architecture, patterns, and behavior — without reading any documentation first.

**Exercise Repo:** Provide a curated list of 3-4 recommended repos (diverse languages/frameworks) with the 10 questions pre-written.

**Estimated Length:** Medium (~2,500 words + annotated exploration transcript)

**Dependencies:** Module 2

---

#### Module 5: The CLAUDE.md Ecosystem

**Objectives:** Students understand how CLAUDE.md files work at every level (project, user, nested) and can write effective ones using principles, not templates.

**Key Topics:**
- What CLAUDE.md is and how Claude Code discovers and loads it
- Project-level vs. user-level vs. nested CLAUDE.md: when to use each
- Principles of effective CLAUDE.md authoring:
  - Be specific about what matters (coding standards, forbidden patterns, project conventions)
  - Provide context Claude Code can't infer (business logic, domain terminology, architectural decisions)
  - Set constraints that prevent common mistakes ("never use `any` type", "always use parameterized queries")
  - Include verification commands ("run `npm test` after changes", "lint with `eslint --fix`")
- Diverse examples across languages, frameworks, and project types
- Anti-patterns: vague instructions, contradictions, stale context, over-specification
- Evolving your CLAUDE.md over time: it's a living document
- The relationship between CLAUDE.md and prompt quality

**Exercise:** Write a CLAUDE.md for an existing project (provided or student's own). Then make three requests of Claude Code — once WITHOUT the CLAUDE.md, once WITH it — and compare the quality of results.

**Exercise Repo:** Provide a repo with intentionally no CLAUDE.md. Include a "before/after" comparison framework.

**Estimated Length:** Long (~3,500 words + multiple CLAUDE.md examples)

**Dependencies:** Module 3

---

#### Module 6: Git Workflows with Claude Code

**Objectives:** Students can use Claude Code for the full Git lifecycle: committing, branching, PR creation, code review, and merge conflict resolution.

**Key Topics:**
- Committing with Claude Code: crafting commit messages, staging strategies
- Branch management: creating, switching, and managing feature branches
- PR workflows: using Claude Code + `gh` CLI to create, describe, and manage PRs
- Code review assistance: asking Claude Code to review diffs, suggest improvements
- Merge conflict resolution: using Claude Code to understand and resolve conflicts
- The GitHub integration: Claude Code triggered from GitHub (PR comments, issue workflows)
- Dangerous operations: what Claude Code will/won't do by default (force-push protection, etc.)
- Git-specific CLAUDE.md instructions: commit message format, branch naming, review checklist

**Exercise:** Work through a simulated feature branch workflow: create branch, make changes with Claude Code, write PR description, resolve a merge conflict, and complete a code review — all using Claude Code as the primary interface.

**Exercise Repo:** A repo with pre-staged merge conflicts and a PR template. Include a companion branch with intentional conflicts.

**Estimated Length:** Medium (~3,000 words + workflow walkthrough)

**Dependencies:** Module 3

---

#### Module 7: Claude Code as a Learning Accelerator

**Objectives:** Students can use Claude Code to rapidly learn unfamiliar languages, frameworks, and technologies through guided exploration and example-driven teaching.

**Key Topics:**
- The "teach me X by building Y" pattern: learning through creation
- Guided exploration: "explain this Rust code to me as if I know Python"
- Language translation: "rewrite this Go function in TypeScript and explain the differences"
- Framework onboarding: "set up a basic FastAPI app and explain each piece"
- Learning vs. copying: using Claude Code to understand, not just generate
- Building mental models: asking "why" questions, not just "how" questions
- Limitations: when Claude Code's knowledge is stale or wrong (and how to detect it)
- Complementary resources: using Claude Code alongside docs, not instead of them

**Exercise:** Pick a language or framework the student has never used. Use Claude Code to build a small working project in it, asking questions at each step. Document what was learned and what required external verification.

**Exercise Repo:** None — students choose their own learning target. Provide a rubric for the documentation.

**Estimated Length:** Medium (~2,000 words + learning transcript example)

**Dependencies:** Module 4

---

### INTERMEDIATE LEVEL — "Handle More"

---

#### Module 8: Cost Awareness & Model Selection

**Objectives:** Students understand Claude Code's token economics and can make informed decisions about model selection for different task types.

**Key Topics:**
- How Claude Code billing works: tokens in, tokens out, tool calls
- Rough cost mental models: "a typical debugging session costs about $X"
- The model spectrum: Opus vs. Sonnet vs. Haiku — capabilities, speed, and cost
- When to use which model: task-type decision matrix
  - Haiku: simple refactoring, formatting, boilerplate generation
  - Sonnet: most development tasks, code review, testing
  - Opus: complex architecture decisions, multi-file refactoring, nuanced debugging
- The `/model` command and model switching mid-session
- Context window economics: why shorter prompts save money AND produce better results
- The `/compact` command and context management as cost optimization
- Monitoring usage and setting budgets

**Exercise:** Run the same task (e.g., "add error handling to these 5 functions") on all three models. Compare output quality, speed, and approximate cost. Document when each model is the right choice.

**Exercise Repo:** Provide a small codebase with 5 functions that need error handling — same task, different model results.

**Estimated Length:** Medium (~2,500 words + comparison table + decision matrix)

**Dependencies:** Module 3

---

#### Module 9: Permissions, Security & Data Hygiene

**Objectives:** Students understand Claude Code's permission model, can configure risk-appropriate access levels, and handle sensitive data safely.

**Key Topics:**
- Claude Code's permission model: what it can access, what it asks before doing
- Risk-tiered permissions:
  - **Read-only operations:** file reads, searches, git status — low risk, auto-approve is reasonable
  - **Write operations:** file edits, new files — medium risk, review is recommended for unfamiliar codebases
  - **Execute operations:** shell commands, scripts — high risk, allowlist specific commands
  - **Network operations:** API calls, package installs — highest risk, explicit approval
- Configuring allowlists: which commands to pre-approve and which to gate
- The "yolo mode" discussion: when it's appropriate (greenfield personal projects) and when it's reckless (prod-adjacent work)
- Sensitive data handling:
  - What Claude Code can see (and what gets sent to the API)
  - .gitignore patterns that protect secrets
  - Environment variable hygiene: .env files, not inline credentials
  - Redaction strategies for working near sensitive data
  - Auditing what Claude Code has accessed in a session
- CLAUDE.md injection risks: what happens if someone puts malicious instructions in a CLAUDE.md
- Trust boundaries: your code vs. dependencies vs. external MCP servers

**Exercise:** Configure Claude Code permissions for three scenarios: (1) personal greenfield project, (2) existing team codebase, (3) production-adjacent infrastructure repo. Then, complete a mock exercise with synthetic "sensitive data" (fake API keys planted in a repo) where the goal is to work productively WITHOUT exposing the secrets.

**Exercise Repo:** A repo seeded with fake credentials in various locations (.env, config files, hardcoded strings). Students must configure Claude Code to work in it safely.

**Estimated Length:** Long (~3,500 words + configuration examples + exercise)

**Dependencies:** Module 5

---

#### Module 10: Custom Slash Commands

**Objectives:** Students can create, share, and compose custom slash commands that codify their most common workflows.

**Key Topics:**
- What custom commands are: `.claude/commands/` directory structure
- Anatomy of a command file: prompt templates with `$ARGUMENTS` placeholder
- Building your first command: a practical starting point
- Command design patterns:
  - Review commands: `/review` that applies your team's review checklist
  - Generation commands: `/component` that scaffolds according to project conventions
  - Analysis commands: `/security-check` that audits for common vulnerabilities
  - Workflow commands: `/ship` that runs tests, lints, commits, and prepares a PR
- Composing commands: building complex workflows from simple building blocks
- Sharing commands across projects: user-level vs. project-level commands
- Testing and iterating on commands
- The relationship between commands and CLAUDE.md: commands as executable CLAUDE.md

**Exercise:** Create three custom commands for an existing project: one for code review, one for scaffolding, and one for a multi-step workflow. Test each and iterate until they produce consistent, high-quality results.

**Exercise Repo:** Provide a project with clear conventions that commands should enforce. Include a "golden output" for comparison.

**Estimated Length:** Medium (~2,500 words + command file examples)

**Dependencies:** Module 5

---

#### Module 11: Failure & Recovery

**Objectives:** Students can recognize, diagnose, and recover from Claude Code failures — hallucinations, wrong answers, infinite loops, and context degradation.

**Key Topics:**
- Taxonomy of failures:
  - **Hallucinations:** confident but wrong answers (non-existent APIs, incorrect syntax)
  - **Context loss:** forgetting earlier instructions mid-session
  - **Infinite loops:** Claude Code repeatedly trying the same failing approach
  - **Scope creep:** Claude Code "improving" things you didn't ask it to change
  - **Partial work:** abandoned changes that leave code in a broken state
  - **Wrong tool:** using a sledgehammer when a screwdriver was needed
- Detection patterns: how to spot each failure type early
- Recovery strategies:
  - Re-prompting with more specificity
  - Context reset (`/clear`, new session)
  - Manual intervention points: when to take over
  - Git as your safety net: checking out broken changes, diffing before accepting
  - Breaking tasks into smaller pieces after a failure
- Prevention strategies:
  - CLAUDE.md guardrails that prevent common failure modes
  - Verification steps in prompts ("after making changes, run the tests")
  - The "trust but verify" mindset
- When to give up and do it manually (and why that's okay)

**Exercise:** Three intentional failure scenarios. Students are given tasks designed to make Claude Code fail in specific ways. They must detect the failure, diagnose the cause, and recover using the techniques from this module.

**Exercise Repo:** A repo with tricky edge cases: a function that looks like it uses a popular library but actually uses a custom fork with different behavior; a test suite that passes locally but has a hidden dependency; a config file with a subtle syntax error that Claude Code's fix makes worse.

**Estimated Length:** Long (~3,500 words + failure scenario walkthroughs)

**Dependencies:** Module 3, Module 5

---

#### Module 12: Hooks — Safety Guardrails

**Objectives:** Students can write hooks that prevent dangerous operations, audit Claude Code's actions, and enforce boundaries.

**Key Topics:**
- What hooks are: pre/post command hooks, session start hooks
- The hooks configuration in `settings.json`
- Safety-first hooks:
  - Blocking destructive shell commands (rm -rf, DROP TABLE, force-push)
  - Audit logging: recording what Claude Code does for later review
  - File change boundaries: preventing edits to specific directories or file types
  - Confirmation gates: requiring explicit approval for high-risk operations
- Writing your first hook: a step-by-step walkthrough
- Hook execution model: when they run, what they can access, how they fail
- Testing hooks: verifying they work without triggering them accidentally
- Hook anti-patterns: hooks that are too restrictive and make Claude Code unusable

**Exercise:** Write a safety hook suite: (1) a hook that blocks any `rm -rf` command, (2) a hook that logs all file modifications to an audit file, (3) a hook that prevents edits to any file matching `*.prod.*` or in a `production/` directory.

**Exercise Repo:** Provide a repo with production-like file structure. Include test scenarios that should and shouldn't trigger each hook.

**Estimated Length:** Medium (~2,500 words + hook configuration examples)

**Dependencies:** Module 9

---

#### Module 13: Hooks — Workflow Automation

**Objectives:** Students can write hooks that automate repetitive development tasks triggered by Claude Code actions.

**Key Topics:**
- Automation hooks:
  - Auto-format on file save (prettier, black, gofmt)
  - Auto-lint after code generation
  - Notification hooks: Slack/email alerts when Claude Code completes long tasks
  - Auto-commit patterns: checkpointing work at regular intervals
  - Environment sync: updating .env.example when new env vars are introduced
- Composing hooks into workflows: chaining multiple hooks for complex automation
- Performance considerations: hooks that slow down the interaction loop
- Conditional hooks: running different hooks based on file type, directory, or branch
- Debugging hooks: when your hook fails silently

**Exercise:** Build an automation pipeline: (1) auto-format Python files after Claude Code edits them, (2) run a linter and surface warnings inline, (3) send a summary notification when a multi-file change is complete.

**Exercise Repo:** A Python project with inconsistent formatting — students build hooks that enforce consistency automatically.

**Estimated Length:** Medium (~2,500 words + hook examples)

**Dependencies:** Module 12

---

#### Module 14: Hooks — CI/CD Integration

**Objectives:** Students can connect Claude Code's hook system to CI/CD pipelines, security scanners, and quality gates.

**Key Topics:**
- CI/CD integration hooks:
  - Running `checkov` / `tfsec` on Terraform changes before accepting them
  - Triggering test suites after code generation
  - Running security scanners (Semgrep, Bandit, Trivy) as post-edit hooks
  - Enforcing coverage thresholds: rejecting changes that reduce test coverage
- The Terraform workflow: `terraform plan` → Claude Code reviews output → hooks validate security
- GitHub Actions integration: triggering workflows from Claude Code, reading results back
- Quality gate patterns: pass/fail hooks that block progress until standards are met
- Advanced: hooks that feed scan results back to Claude Code for auto-remediation

**Exercise:** Build a complete quality gate for a Terraform project: (1) hook runs `checkov` after any `.tf` file change, (2) if violations found, feed them back to Claude Code with instructions to fix, (3) re-run until clean. This is the "terraform plan/apply review" exercise.

**Exercise Repo:** A Terraform project with intentional security misconfigurations (inspired by terragoat patterns). Students build hooks that catch and auto-remediate them.

**Estimated Length:** Long (~3,000 words + CI/CD hook examples + terraform walkthrough)

**Dependencies:** Module 13

---

### EXPERT LEVEL — "Go Autonomous"

---

#### Module 15: MCP — Using Existing Servers

**Objectives:** Students can discover, install, and use MCP servers to extend Claude Code's capabilities beyond the filesystem.

**Key Topics:**
- What MCP is: the protocol, the ecosystem, why it matters
- Discovering MCP servers: registries, community resources, official servers
- Installing and configuring MCP servers in Claude Code settings
- Key MCP servers for developers:
  - Filesystem servers for remote/restricted access
  - Database servers (Postgres, SQLite) for query-driven development
  - API servers (GitHub, Jira, Slack) for workflow integration
  - Monitoring servers for observability integration
- Using MCP tools in prompts: how to reference and invoke MCP capabilities
- Trust and security: what an MCP server can access, how to audit it
- Troubleshooting: when MCP connections fail, how to debug

**Exercise:** Install and configure two MCP servers (one filesystem/DB, one API-based). Use them in a real workflow: e.g., query a SQLite database to understand data, then generate code that works with that schema.

**Exercise Repo:** Provide a project with a SQLite database and a GitHub-based workflow. Students connect MCP servers and complete tasks that require both.

**Estimated Length:** Medium (~2,500 words + configuration examples)

**Dependencies:** Module 12

---

#### Module 16: MCP — Configuring & Extending

**Objectives:** Students can customize existing MCP servers, configure advanced settings, and extend server capabilities for their specific needs.

**Key Topics:**
- Deep configuration: environment variables, auth tokens, connection parameters
- Customizing server behavior: filtering, access controls, response formatting
- Extending existing servers: adding custom tools to an existing MCP server
- Multi-server setups: running multiple MCP servers simultaneously
- Performance tuning: connection pooling, timeout configuration, retry logic
- Security hardening: restricting MCP server access, network policies
- Building a personal MCP stack: combining servers for your specific workflow

**Exercise:** Take an existing MCP server and extend it: add a custom tool, configure access restrictions, and integrate it into a multi-server setup alongside the servers from Module 15.

**Exercise Repo:** Provide an MCP server with a clear extension point and instructions for adding a custom tool.

**Estimated Length:** Medium (~2,500 words + configuration and extension examples)

**Dependencies:** Module 15

---

#### Module 17: MCP — Building from Scratch

**Objectives:** Students can design and build a custom MCP server in TypeScript or Python that exposes domain-specific tools to Claude Code.

**Key Topics:**
- MCP server architecture: the protocol, tool definitions, request/response cycle
- Choosing a language: TypeScript vs. Python SDK differences
- Building a server step-by-step:
  - Project scaffolding and dependencies
  - Defining tools: name, description, input schema, handler
  - Testing locally: connecting to Claude Code and verifying tool availability
  - Error handling and graceful degradation
- Design principles for good MCP tools:
  - Clear, descriptive tool names and descriptions (Claude Code uses these to decide when to call them)
  - Appropriate input schemas: not too broad, not too narrow
  - Useful error messages that help Claude Code self-correct
- Publishing and sharing: packaging for others to use
- Real-world MCP server examples: a server that wraps your company's internal API

**Exercise:** Build a custom MCP server that exposes 3 tools related to a domain of the student's choice (e.g., a server that queries AWS costs, a server that checks DNS records, a server that interfaces with a monitoring API). Connect it to Claude Code and use it in a real task.

**Exercise Repo:** Provide a starter template (TypeScript and Python) with the boilerplate done. Students implement the tools.

**Estimated Length:** Long (~4,000 words + full code walkthrough)

**Dependencies:** Module 16

---

#### Module 18: Multi-Agent Orchestration Patterns

**Objectives:** Students understand how Claude Code's subagent system works and can structure tasks to leverage parallel, specialist, and pipeline agent patterns.

**Key Topics:**
- How Claude Code spawns subagents: when, why, and what they can do
- The mental model: agents as parallel workers with isolated context
- Orchestration patterns:
  - **Fan-out / fan-in:** Split a task across multiple agents, combine results (e.g., "review these 10 files in parallel")
  - **Pipeline:** Chain agents where output of one feeds the next (e.g., "research → plan → implement → test")
  - **Specialist agents:** Dedicated agents for specific tasks (e.g., Explore agent for codebase search, Plan agent for architecture)
  - **Competitive:** Multiple agents attempt the same task, human picks the best result
- Writing prompts that leverage parallelism effectively
- When multi-agent helps vs. when it adds overhead
- Debugging multi-agent workflows: understanding which agent did what
- Context isolation: what each agent can and cannot see
- Cost implications: each agent has its own context window and token budget

**Exercise:** Design and execute a multi-agent workflow for a complex task: use fan-out to review a codebase across 5 dimensions in parallel (security, performance, testing, documentation, code style), then use a pipeline to prioritize findings and generate a remediation plan.

**Exercise Repo:** Provide a medium-sized codebase with known issues across all 5 dimensions. Include expected findings for validation.

**Estimated Length:** Long (~3,500 words + orchestration diagrams + annotated transcript)

**Dependencies:** Module 11

---

#### Module 19: The Claude Agent SDK

**Objectives:** Students can build custom agent systems using the Claude Agent SDK — going beyond Claude Code into programmatic agent orchestration.

**Key Topics:**
- What the Agent SDK is: building your own agents that use Claude as the reasoning engine
- When to use Agent SDK vs. Claude Code directly
- Core concepts: agents, tools, handoffs, guardrails
- Building a custom agent:
  - Defining agent behavior and available tools
  - Implementing custom tool handlers
  - Agent-to-agent communication and handoffs
  - Guardrails and safety constraints
- Practical applications:
  - A CI agent that reviews PRs and suggests fixes
  - A monitoring agent that triages alerts and proposes remediation
  - A documentation agent that keeps docs in sync with code
- Integration with Claude Code: using Agent SDK agents as MCP servers
- Testing and debugging agent systems
- Production considerations: rate limits, error handling, cost management

**Exercise:** Build a simple two-agent system: Agent A analyzes code for issues, Agent B generates fixes. They communicate through a defined protocol. Deploy it as something Claude Code can invoke.

**Exercise Repo:** Provide a scaffold with the agent framework set up. Students implement the agent logic and tool handlers.

**Estimated Length:** Long (~4,000 words + full code examples)

**Dependencies:** Module 17, Module 18

---

#### Module 20: Scaling Solo Practices to Teams

**Objectives:** Students can take their personal Claude Code mastery and scale it to a team context — shared conventions, onboarding, and collaborative workflows.

**Key Topics:**
- From solo to team: what changes when multiple people use Claude Code on the same project
- Shared CLAUDE.md conventions:
  - Project-level CLAUDE.md as team documentation
  - Conventions for keeping CLAUDE.md current (who updates it, when, review process)
  - Nested CLAUDE.md for module/service-specific instructions
- Shared custom commands: team command libraries
- Shared hook configurations: standardizing quality gates across the team
- Onboarding new devs: "clone the repo and Claude Code already knows how we work here"
- Code review with Claude Code: collaborative workflows where Claude Code assists reviewers
- The GitHub integration for teams: PR-triggered Claude Code workflows
- Governance: who controls Claude Code's permissions and configuration
- Cultural adoption: getting a team to actually use these tools (not just mandating them)

**Exercise:** Take a project and create a complete "team Claude Code kit": project CLAUDE.md, shared commands, shared hooks, and a README section explaining the setup to new team members.

**Exercise Repo:** Use student's own project or provide a simulated team project.

**Estimated Length:** Medium (~2,500 words + team configuration examples)

**Dependencies:** Module 10, Module 14

---

#### Module 21: Capstone — Security Audit a Real Codebase

**Objectives:** Students demonstrate mastery of all course skills by performing a comprehensive security audit using Claude Code, MCP servers, hooks, and multi-agent patterns.

**Key Topics:**
This is not a teaching module — it's an assessment. Students apply everything they've learned.

**The Scenario:**
You've been given a vulnerable codebase (a deliberately insecure application with IaC components). Using Claude Code as your primary tool, perform a full security audit:

1. **Reconnaissance** (Modules 4, 7): Explore the codebase, understand its architecture, map attack surface
2. **Configuration** (Modules 5, 9, 10): Set up CLAUDE.md, permissions, and custom commands for the audit
3. **Scanning** (Modules 12-14): Configure hooks to run security scanners (checkov, semgrep, trivy) automatically
4. **Deep Analysis** (Modules 15-17): Use MCP servers to check dependencies, query vulnerability databases
5. **Parallel Review** (Module 18): Fan out multi-agent review across security dimensions
6. **Remediation** (Modules 3, 6): Generate fixes, create PRs with clear descriptions
7. **Report** (All): Produce a security audit report summarizing findings, severity, and remediations

**Deliverables:**
- Security audit report (generated with Claude Code assistance)
- Remediation PRs for critical/high findings
- CLAUDE.md, hooks, and commands created for the audit
- Reflection: what worked, what didn't, what you'd do differently

**Exercise Repo:** A deliberately vulnerable application with:
- Terraform configs with security misconfigurations (terragoat-inspired)
- Application code with OWASP Top 10 vulnerabilities
- CI/CD pipeline with security gaps
- Dependency vulnerabilities
- Hardcoded secrets (synthetic)

**Estimated Length:** Long (~2,000 words of instructions + rubric). The student's work IS the content.

**Dependencies:** All prior modules

---

#### Bonus Exercise: Incident Response (Timed)

**Scenario:** Production is down. You have 30 minutes. A monitoring alert fired, logs are streaming, and the on-call engineer (you) needs to diagnose and fix the issue. Use Claude Code to:

1. Parse the error logs and identify the root cause
2. Trace the issue through the codebase
3. Propose and implement a fix
4. Verify the fix and write a postmortem summary

**Exercise Repo:** A simulated incident: application with a pre-planted bug, fake monitoring alerts, and error logs. A timer script enforces the 30-minute constraint.

---

## 7. Case Studies

| Level | Case Study | Description |
|---|---|---|
| **Beginner** | "From 2 hours to 20 minutes" | A developer's first week using Claude Code for everyday tasks — writing functions, fixing bugs, understanding legacy code. Honest account of wins and friction. |
| **Intermediate** | "The infrastructure migration" | Using Claude Code + hooks + CLAUDE.md to migrate a project from one cloud provider to another — a task that would normally take weeks. |
| **Expert** | "The automated security pipeline" | Building a full MCP + hooks + multi-agent system that continuously audits infrastructure changes and blocks insecure deployments. |

Each case study includes: context, workflow, Claude Code session excerpts (annotated), results, lessons learned, and "what I'd do differently."

---

## 8. Supplementary Materials

### 8.1 Comprehensive Cheat Sheet

A single-page reference card (also available as printable PDF) covering:
- All built-in slash commands with one-line descriptions
- Key keyboard shortcuts
- Common prompt patterns (with examples)
- Model selection quick reference
- Permission configuration syntax
- Hook configuration syntax
- MCP server configuration syntax
- Cost estimation rules of thumb
- Troubleshooting quick fixes (context reset, permission issues, connection problems)

### 8.2 "When NOT to Use Claude Code" Reference

Prominent, early, and honest. Includes:
- Tasks where manual work is faster (tiny edits, known one-liners)
- Tasks where accuracy is critical and unverifiable (production database migrations, financial calculations)
- Tasks involving truly sensitive data that shouldn't reach an API
- Tasks requiring deep domain expertise the model doesn't have
- Tasks where the overhead of reviewing Claude Code's work exceeds doing it yourself
- The "would I let a junior dev do this unsupervised?" heuristic

### 8.3 Full Session Transcripts

Unedited Claude Code session recordings for key exercises, available as appendix files. Students can compare their approach to the author's.

### 8.4 Exercise Repository Index

A directory linking to all exercise repos with:
- Description and objectives
- Prerequisites (which modules)
- Setup instructions
- Success criteria
- Difficulty rating

---

## 9. Maintenance & Versioning

| Aspect | Approach |
|---|---|
| **Repository** | Monorepo: course content + exercise repos as submodules or subdirectories |
| **Releases** | Tagged releases aligned with major Claude Code versions (e.g., `v1.0-cc0.2.x`) |
| **Changelog** | `CHANGELOG.md` documenting what changed in each release and why |
| **Breaking changes** | When Claude Code changes break an exercise or workflow, fix immediately and note in changelog |
| **New features** | New Claude Code features get coverage in the relevant module within one release cycle |
| **Deprecations** | Removed Claude Code features get flagged in content with a note about what replaced them |
| **Community** | GitHub Issues for bug reports, Discussions for Q&A, PRs welcome for fixes and new exercises |

---

## 10. Content Quality Standards

- Every claim about Claude Code's behavior should be verifiable by running the described command
- Every exercise should have clear success criteria that a student can self-evaluate
- Every code example should be tested and working at the time of the tagged release
- Annotated transcripts should be honest — include failures, retries, and suboptimal paths
- Security advice should be conservative — when in doubt, recommend the safer option
- Cost estimates should use ranges, not precise numbers (pricing changes)
- No filler, no fluff, no padding. If a concept takes one paragraph to explain, use one paragraph.

---

## 11. Open Questions & Future Considerations

These are decisions deferred to the implementation phase:

1. **Docs site generator:** Docusaurus vs. MkDocs vs. Astro — depends on contributor preferences
2. **Exercise repo hosting:** Submodules vs. separate repos vs. monorepo subdirectories
3. **Search/index:** Whether to add full-text search to the docs site
4. **Community platform:** GitHub Discussions vs. Discord vs. both
5. **Translations:** Whether to support non-English versions (and how)
6. **Analytics:** Whether to track which modules are most/least popular (privacy implications)
7. **Certification:** Whether to add optional completion badges (and how to verify without formal assessment)

---

*This spec is a living document. Version: 1.0.0-draft*
*Last updated: 2026-03-18*
