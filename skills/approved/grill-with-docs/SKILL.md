---
name: grill-with-docs
description: Interview the user to settle a project plan or design while recording agreed terminology and durable decisions. Start only when the user explicitly requests it.
---

# Grill with docs

Use the `grilling` skill to work through the open decisions. Use the `domain-modeling` skill alongside it to check project language, compare claims with the code, and record decisions as they become settled.

Before the first round, inspect existing `CONTEXT.md`, `CONTEXT-MAP.md`, and relevant decision records when present. Find project facts yourself with available read-only tools. Ask the user for decisions, not facts the environment can answer.

After each answer, let `domain-modeling` update the glossary when a project-specific term has become clear. Offer a decision record only when the choice is hard to reverse, surprising without context, and based on a real tradeoff.

Do not implement the plan during this skill. When the decision tree has no open branches, summarize the agreed design, list the documentation changed, and ask the user to confirm that shared understanding was reached.

Completion means every material branch has been discussed, the project documentation reflects settled terms and durable decisions, and the user has confirmed the result.
