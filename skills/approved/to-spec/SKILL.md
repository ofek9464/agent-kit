---
name: to-spec
description: Turn an already-settled conversation into a local implementation specification. Start only when the user explicitly requests it.
---

# To spec

Synthesize the current conversation and relevant project evidence. Do not reopen the interview unless a missing decision prevents an accurate specification.

Write the specification locally by default. Publish it to an issue tracker only when the user asks. Follow an existing project convention; otherwise use `docs/specs/<short-name>.md`.

Include:

- the user-visible problem and intended result
- agreed behavior and important scenarios
- implementation decisions and affected modules, without brittle line-level instructions
- testing seams and acceptance checks
- boundaries and out-of-scope work
- unresolved questions, marking which block implementation and which can wait

Use the project's glossary and respect existing decision records. Show the destination before writing when the target is unclear.

Completion means another agent can implement the work without inventing requirements, and every unresolved point is visible.
