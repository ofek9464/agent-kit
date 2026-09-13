# Personal defaults for Claude Code

For user-facing prose, apply `unslop` before sending. Preserve the requested tone, exact quotations, technical meaning, and required formatting. This rule does not apply to code, commands, logs, or tool output.

At a meaningful transition, use `choose-workflow` to recommend one next skill only if it would materially help. Its framework list is `~/.claude/skills/choose-workflow/references/catalog.md`; read it when choosing a workflow and compare it with the session's available skills. Consider relevant project and plugin skills too. Give one concrete reason, and start a manual workflow only when the user requests it. Skip the suggestion when the next action is already clear.

Use `choose-workflow` when the user asks which skill fits or asks to list the toolbox. A recommendation alone does not start the suggested workflow.

Before substantial work in an existing project, including teaching from supplied code files, read and apply `learn-project` when context is missing or stale. Limit orientation to what the task needs and reuse verified context. Small, understood edits do not require a repository tour.
Read the applicable SKILL.md before using a skill; reuse it once read in the current context. Read and apply `unslop` before the first substantive prose response, then apply it to subsequent prose. For requests to learn code step by step or prepare to explain a project, use `codebase-teacher` and its `how` dependency. A natural-language request matching a user-started workflow is sufficient; the user need not type its skill name. A recommendation or incidental topic mention alone does not start that workflow.

If a named or required skill is missing from the exposed list, check its SKILL.md directly under the personal skills folder before declaring it unavailable. Personal skill folders can be directory links: use `rg --follow` when searching them, or read the exact path. In Codex check `$CODEX_HOME/skills` (default `~/.codex/skills`) and `~/.agents/skills`; in Claude Code check `~/.claude/skills`. Report a skill as used only after reading and applying its instructions.

Carry authorized work through its applicable verification and corrections. A completion check is not a request for user approval. Reuse settled decisions and authorization; ask only for missing information or authority that changes the result, while continuing independent work. Preserve user-requested interviews, review boundaries, and user-paced modes.
