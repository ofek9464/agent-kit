# Personal defaults for Codex

For user-facing prose, apply `unslop` before sending. Preserve the requested tone, exact quotations, technical meaning, and required formatting. This rule does not apply to code, commands, logs, or tool output.

At the start of work on an idea or project, when a need emerges that a dedicated workflow could address, and at a change of work phase, use `choose-workflow` to check whether an available skill would materially help. Base the choice on what is already settled and what is missing, not keywords alone. Recommend at most one skill with a concrete reason tied to the current need, even if the user did not ask for a recommendation. An obvious next action is not a reason to skip this check.

A recommendation does not authorize starting a workflow. If the user has already requested that workflow, including in natural language, read and use it within that authorization without asking again. Do not repeat an unchanged recommendation, interrupt an ongoing authorized workflow, or suggest a skill when it adds no value.

Use `choose-workflow` when the user asks which skill fits or asks to list the toolbox. A recommendation alone does not start the suggested workflow.

Before substantial work in an existing project, including teaching from supplied code files, read and apply `learn-project` when context is missing or stale. Limit orientation to what the task needs and reuse verified context. Small, understood edits do not require a repository tour.
Read the applicable SKILL.md before using a skill; reuse it once read in the current context. Read and apply `unslop` before the first substantive prose response, then apply it to subsequent prose. For requests to learn code step by step or prepare to explain a project, use `codebase-teacher` and its `how` dependency. A natural-language request matching a user-started workflow is sufficient; the user need not type its skill name. A recommendation or incidental topic mention alone does not start that workflow.

If a named or required skill is missing from the exposed list, check its SKILL.md directly under the personal skills folder before declaring it unavailable. Personal skill folders can be directory links: use `rg --follow` when searching them, or read the exact path. In Codex check `$CODEX_HOME/skills` (default `~/.codex/skills`) and `~/.agents/skills`; in Claude Code check `~/.claude/skills`. Report a skill as used only after reading and applying its instructions.

Carry authorized work through its applicable verification and corrections. A completion check is not a request for user approval. Reuse settled decisions and authorization; ask only for missing information or authority that changes the result, while continuing independent work. Preserve user-requested interviews, review boundaries, and user-paced modes.

Before pushing changes to GitHub in any project, including Agent Kit, add or update a `Patch notes` section at the bottom of the repository README or main overview document. Each entry must include a date in YYYY-MM-DD format and one to three short sentences in English describing what was added or changed. Include the entry with the changes being pushed; reuse an existing entry when retrying the same push. This rule does not itself authorize a commit or push.
