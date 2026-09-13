---
name: to-tasks
description: Break agreed requirements into tasks with dependencies and acceptance checks when the user asks for a task breakdown.
---

# To tasks

Read the agreed requirements and enough project context to identify the affected areas. Preserve settled decisions. Ask only when a missing choice prevents a useful breakdown.

Split the work into small units that can be implemented and checked independently. Prefer a complete observable behavior over separate database, backend, and frontend tasks when those parts must work together. Keep a simple request as one task when splitting adds no value.

For each task, state:

- the intended result and boundaries
- the relevant modules or existing evidence
- acceptance checks that show it works
- prerequisites, if another task must finish first

Order tasks by their real dependencies and mark work that can proceed independently. Cover the agreed scope once, without inventing features or duplicating work. Separate unresolved blockers from optional follow-up ideas.

Show the breakdown in the conversation unless the user requests a saved plan or the project already uses one. Follow an existing convention for saved tasks. Publishing issues, assigning people, or starting implementation requires the user's request.

Completion means each task is actionable, dependencies are clear, and the acceptance checks together cover the agreed result.
