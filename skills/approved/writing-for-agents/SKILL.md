---
name: writing-for-agents
description: Design or revise skills, AGENTS.md, CLAUDE.md, and documents referenced by agent instructions. Use whenever agent-facing instructions are created or edited.
---

# Writing for agents

Write instructions that produce a reliable process while leaving ordinary judgment to the agent.

Keep always-loaded material short. Put occasional workflows in skills and conditional detail in referenced files. Every pointer must say what the target contains and when to read it.

For a skill:

- Give it one focused job and a precise trigger description.
- Choose manual invocation when the user should control when it starts.
- Keep shared steps in `SKILL.md`; move branch-specific reference material beside it.
- End each phase with a checkable completion condition.
- State permissions and stopping points where the workflow may change external state.

Keep each meaning in one authoritative place. Remove stale facts, duplicated rules, generic advice, and instructions the agent already follows. Prefer positive target behavior over long lists of prohibitions.

After editing, validate the skill format and inspect every reference path. Completion means the trigger is discriminating, the workflow is executable, and success can be checked.
