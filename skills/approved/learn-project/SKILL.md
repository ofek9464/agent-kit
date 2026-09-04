---
name: learn-project
description: Orient to an existing codebase before substantial work when reliable project context is missing or stale. Build task-relevant understanding from implementation evidence, related repositories, and authoritative external sources.
---

# Learn project

Build enough verified context to work safely in an existing project. Keep orientation lightweight, then investigate deeper only where the current task needs it.

Reuse context already established in the current session and `.agents/knowledge/`. Do not repeat orientation that has already been completed. Refresh only the parts affected by changed code, stale evidence, or a new area of work.

Start with project instructions, repository status, structure, build files, entry points, tests, configuration, schemas, and recent relevant history. Read documentation for goals, terminology, past decisions, and intended behavior. Treat implementation evidence and observed runtime behavior as the source for what currently happens. Treat documentation as context, not proof.

Use the `how` skill when runtime flow or ownership needs tracing. Use `domain-modeling` when project terms conflict or a durable decision needs recording.

Follow task-relevant links to accessible related repositories, issue history, vendor documentation, standards, hardware references, or current technical guidance. Prefer primary sources. Do not perform broad research that does not affect the task. Ask the user when missing access or ambiguity could materially change the result.

Store reusable findings locally under `.agents/knowledge/`. Before writing there, read [the knowledge format](references/knowledge-format.md). Apply `writing-for-agents` whenever creating or updating these files. Update existing knowledge instead of creating a new summary for every run.

If the project is a Git repository, add `.agents/knowledge/` to `.git/info/exclude` when it is not already covered. Never add, commit, or push the knowledge folder. Do not store secrets, credentials, personal data, or machine-specific values.

When documentation conflicts with implementation evidence, record the mismatch with file references. Report it to the user and ask before editing or deleting the documentation.

Completion means the agent can explain the task-relevant system flow, identify remaining uncertainty, and trace saved claims to evidence.
