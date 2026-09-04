---
name: workflow-builder
description: Turn a repeated task, an idea, or an existing skill into a small reusable cross-agent workflow. Use only when the user asks to create or revise a workflow or skill.
disable-model-invocation: true
---

# Workflow builder

Build one focused workflow that Codex and Claude Code can both use.

Start by naming the repeated problem in plain language. Ask only for decisions that change the workflow. If an example skill was supplied, extract its useful behavior without copying tool-specific assumptions, secrets, or instructions that depend on unavailable tools.

Keep the result small and composable. A workflow should have one job, a clear trigger, a definition of done, and only the checks needed to trust its result. Use ordinary `SKILL.md` files with a short YAML description. Put large reference material beside the skill and link it only when needed.

Do not hard-code a model, paid service, machine-specific path, API key, or a named subagent. If a step needs an external action, state what approval or setup it needs. Never make credentials part of the workflow.

Before finishing, show how a user would invoke it, where its files belong, and one realistic example request. Check that its name is lowercase kebab-case and that its description says when it should activate.
