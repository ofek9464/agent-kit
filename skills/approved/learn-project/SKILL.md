---
name: learn-project
description: Build missing project context before substantial work; reuse verified context for familiar or small edits.
---

# Learn project

Build enough verified context to work safely in an existing project. Keep orientation lightweight, then investigate deeper only where the current task needs it.

Reuse context already established in the current session and `.agents/knowledge/`. Do not repeat orientation that has already been completed. Refresh only the parts affected by changed code, stale evidence, or a new area of work.

Read applicable project instructions and repository status. Select further evidence by the task: entry points for runtime flow, build files for execution, schemas for data changes, and tests or history for the affected behavior. A small, understood edit does not require a repository tour. Read documentation for goals, terminology, past decisions, and intended behavior. Treat implementation evidence and observed runtime behavior as the source for what currently happens. Treat documentation as context, not proof.

Use the `how` skill when runtime flow or ownership needs tracing. Use `domain-modeling` when project terms conflict or a durable decision needs recording.

Follow task-relevant links to accessible related repositories, issue history, vendor documentation, standards, hardware references, or current technical guidance. Prefer primary sources. Do not perform broad research that does not affect the task. Ask when missing access or ambiguity would materially change the result. Otherwise state a reasonable assumption and continue. Reuse authorization already given in the conversation instead of asking for it again.

Only when there are useful findings to preserve beyond the current task, store them locally under `.agents/knowledge/`. Before writing there, read [the knowledge format](references/knowledge-format.md). Apply `writing-for-agents` whenever creating or updating these files. Update existing knowledge instead of creating a new summary for every run.

If the project is a Git repository, resolve the local exclusion file with `git rev-parse --git-path info/exclude` and exclude `.agents/knowledge/` when needed. Never add, commit, or push the knowledge folder. Do not store secrets, credentials, personal data, or machine-specific values.

Maintain your knowledge notes as findings change, including removing stale material. When project documentation conflicts with implementation evidence, record the mismatch with file references. Correct it when the user has authorized documentation maintenance; otherwise report the proposed correction before editing or deleting it. Do not change unrelated project files during orientation.

Only when the user requests read-only work, keep findings in the response and skip all file and Git configuration writes.

Completion means the agent can explain the task-relevant system flow, identify remaining uncertainty, and trace saved claims to evidence.
