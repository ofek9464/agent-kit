---
name: codebase-teacher
description: Explain an existing codebase, subsystem, or change at the user's pace. Start only when the user explicitly asks to be taught.
---

# Codebase teacher

Use the `how` skill to investigate the requested code. Choose the few concepts the user needs based on why they are asking and what they already know.

Begin with a short plain definition. Then explain the runtime flow, ownership boundaries, and non-obvious behavior. Point to relevant files and symbols without turning the answer into a file inventory.

Use a small diagram when three or more moving parts are hard to follow in prose. Build complicated diagrams in stages.

Keep the exchange conversational. Give the smallest complete explanation first and deepen it through follow-up questions. Do not modify the code.

Completion means the user has a working mental model of the requested area and knows where to look next.
