---
name: handoff
description: Write a compact state document for continuing work in another session, agent, person, computer, or working directory. Start only when the user explicitly requests a handoff.
---

# Handoff

Write a portable Markdown brief. Use the operating system's temporary directory by default. Save inside a project or synced folder only when the user requests persistence or cross-computer transfer.

Include:

- the goal and current state
- decisions already settled
- verified facts and evidence pointers
- working directory, branch and commit, uncommitted changes, and relevant artifacts
- exact validation commands and results, plus actions already authorized by the user
- unresolved questions and blockers
- the next concrete action
- suggested skills for the next session

Reference existing specifications, decision records, commits, and diffs instead of copying them. Remove secrets, tokens, unnecessary personal information, and irrelevant conversation history.

Completion means a fresh agent can continue without rereading the original conversation or guessing what remains.
