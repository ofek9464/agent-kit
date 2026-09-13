# Agent kit

Agent Kit gives Codex and Claude Code the same skills on every PC. GitHub stores the shared copy. The installer links each approved skill into both agents, so one pull updates both.

The goal is simple: keep control of the process while giving agents reliable ways to learn existing projects, clarify ideas, write specs, build, test, review, debug, teach, and hand work to another session.

## How it works

```text
                         GitHub
                            |
                         git pull
                            |
                     local Agent Kit
                      /            \
             Codex skills      Claude skills
                      \            /
                         same skills
```

A **skill** is an instruction package stored in a `SKILL.md` file. A **workflow** is the sequence of steps an agent follows. Some skills contain a complete workflow. Others provide one supporting part.

Approved skills are available for automatic discovery. User-started skills begin when you request their workflow in natural language, name them, or approve a recommendation; a topic mention alone does not start them. They may call supporting skills, but you still control major changes to the work.

```text
rough idea
   |
   +-> grill-me ---------------------------> clear plan
   |
   +-> grill-with-docs -> grilling --------> decisions + project language
                                      |
                                      v
discussion -> to-spec -> implement -> tdd -> code-review
                  |
                  +-> prototype, when a quick experiment is more useful
```

The repository has four reusable parts:

- `skills/approved/` contains reviewed skills installed into both agents.
- `skills/experimental/` holds drafts that the installer ignores.
- `rules/` contains short instructions that should apply in every conversation.
- `mcp/` contains safe configuration templates for outside tools. Credentials stay out of Git.

## Rules the agents follow

The framework includes shared working rules for Codex and Claude Code. They tell the agent to:

- Write clear, natural prose while preserving your meaning, tone, and formatting.
- Suggest one useful next skill when it would help, using the framework list and available project or plugin skills. A suggestion does not start a manual workflow.
- Use [learn-project](skills/approved/learn-project/SKILL.md) before substantial project work when context is missing or stale. The skill contains the steps for checking evidence, maintaining notes, and handling uncertainty.

Read the full rules for [Codex](rules/codex/AGENTS.md) or [Claude Code](rules/claude/CLAUDE.md). The installer adds them to each agent's personal instruction file.

## Toolbox

| User-started skill | What it does |
| --- | --- |
| `grill-me` | Questions a rough idea until the important choices are clear |
| `grill-with-docs` | Clarifies a project idea and records terms and decisions |
| `to-spec` | Turns an agreed discussion into a buildable specification |
| `prototype` | Builds a disposable experiment to answer a design question |
| `implement` | Builds an approved spec, tests it, and reviews the result |
| `handoff` | Records enough state for another session or agent to continue |
| `course-teacher` | Runs a multi-session course in a separate learning folder |
| `codebase-teacher` | Explains an existing project or change |
| `small-chunks` | Keeps the conversation to one user-paced step at a time |

`choose-workflow` is the router. It recommends a user-started skill and waits for your approval. Supporting skills such as `domain-modeling`, `grilling`, `how`, `why`, `tdd`, and `code-review` provide reusable steps. `learn-project`, `diagnosing-bugs`, and `writing-for-agents` activate when a task matches them. `unslop` cleans up user-facing prose automatically. Ask `to-tasks` to split an agreed specification into tasks before implementation when the work needs a breakdown.

[clear-human-editor](skills/approved/clear-human-editor/SKILL.md) edits prose while preserving meaning and evidence. It includes guidance for long-document structure, avoiding repetition, and Hebrew/English Word layout. New formatted documents require rendering and visual inspection of every page. Recheck affected pages after local edits, and the whole document after global layout changes or when required; use the relevant document or PDF tools.

When substantial work begins in an existing project, `learn-project` performs a lightweight orientation. It verifies documentation against implementation evidence and studies related repositories or external material only when the task needs them. Its maintained notes stay local under `.agents/knowledge/` and are excluded from Git.

See the [approved skill catalog](skills/approved/choose-workflow/references/catalog.md) for every skill, its trigger, and what may call it.

## Using a skill

Ask naturally or name the skill directly:

```text
Use choose-workflow. I have a rough app idea. What should I start with?
Use grill-with-docs to question me about this feature.
Use to-spec to turn our agreed plan into a specification.
Use implement on the approved specification.
Use small-chunks for the rest of this conversation.
```

Naming a user-started skill begins its workflow. Asking `choose-workflow` only gives a recommendation and waits for approval.

<details>
<summary><h2>Technical reference for AI agents ONLY</h2></summary>

### First use on a PC

1. Install Codex and Claude Code normally.
2. Clone this repository somewhere stable, for example `C:\AgentKit`.
3. In PowerShell 7 or later, run:

   ```powershell
   .\scripts\install.ps1
   ```

   This creates links in each agent's personal skill folder. The skills remain in this Git repository, so pulling updates changes what both tools use.
4. Add MCP servers through their normal login flow. The config template helps you keep names and non-secret settings consistent.

### Updating

Run `git pull` inside this folder to update linked skills. Rerun `scripts/install.ps1` when approved skills or global rules change; rules are copied into each agent's instruction file.

Run `scripts/install.ps1 -StatusOnly` to check installed links, copies, missing skills, and rule differences without changing anything. The installer preserves existing skill folders. If a copy differs or a link points elsewhere, compare and back it up before explicitly replacing it. Pulling or rerunning the installer does not refresh an existing copy.

Keep the checkout in a stable folder. Moving or deleting it breaks installed links.

### Checking changes

Run `tests/install.ps1` in PowerShell 7 to exercise installation and status checks in isolated temporary profiles. The fixtures remain in the printed temporary folder for inspection. Use [the workflow prompts](tests/workflow-prompts.md) for manual routing and permission checks in each agent.

### Skill approval

Only folders under `skills/approved/` are installed. Drafts stay under `skills/experimental/` until you review them.

The workflows were selected and adapted from ideas in [Matt Pocock's skills](https://github.com/mattpocock/skills) and the [Cursor pstack plugin](https://github.com/cursor/plugins/tree/main/pstack/skills). See [third-party notices](THIRD_PARTY_NOTICES.md) for attribution and licenses.

</details>
