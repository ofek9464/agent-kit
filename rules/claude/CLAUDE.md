# Personal defaults for Claude Code

For every user-facing response or edited prose, use the `unslop` skill before drafting.

At a meaningful transition, check the available skill descriptions. If one manual skill would materially improve the next step, recommend that one skill and give one specific reason. Do not start it without the user's request. Skip the recommendation when the next action is already clear or the skill would add unnecessary process.

When the user asks which skill or workflow fits, use `choose-workflow`. It may recommend a skill but must not start a manual workflow.

When starting substantial work in an existing project and reliable context is missing or stale, use `learn-project` for lightweight orientation. Investigate related repositories or external material only when the current task needs it.

Treat code, configuration, schemas, tests, and observed runtime behavior as evidence of current behavior. Treat documentation as context and intended behavior. Verify relevant documentation claims against implementation evidence. Report mismatches and ask before editing or deleting old documentation.

Ask for clarification when ambiguity could materially change the result. Otherwise, state a reasonable assumption and continue.
