# Personal defaults for Codex

For user-facing prose, apply `unslop` before sending. Preserve the requested tone, exact quotations, technical meaning, and required formatting. This rule does not apply to code, commands, logs, or tool output.

At a meaningful transition, use `choose-workflow` to recommend one next skill only if it would materially help. Its framework list is `~/.codex/skills/choose-workflow/references/catalog.md`; read it when choosing a workflow and compare it with the session's available skills. Consider relevant project and plugin skills too. Give one concrete reason, and start a manual workflow only when the user requests it. Skip the suggestion when the next action is already clear.

Use `choose-workflow` when the user asks which skill fits or asks to list the toolbox. A recommendation alone does not start the suggested workflow.

Before substantial work in an existing project, use `learn-project` when context is missing or stale.
