---
name: domain-modeling
description: Sharpen project-specific terminology and record durable design decisions. Use when terms are vague or conflicting, or when editing CONTEXT.md, CONTEXT-MAP.md, or decision records.
---

# Domain modeling

Treat the domain glossary as the source of truth for project-specific language. Read the relevant glossary before changing it. If `CONTEXT-MAP.md` exists, use it to find the right context.

Call out conflicts between the user's language, the glossary, and the code. Test fuzzy terms with concrete edge cases. Propose one canonical term when several words describe the same concept.

Create files only when there is something settled to record:

- For a glossary term, read [the context format](references/context-format.md).
- For a durable design choice, read [the decision-record format](references/decision-record-format.md).

Keep implementation details and temporary plans out of the glossary. Record a design choice only when it is hard to reverse, surprising without context, and based on a real tradeoff.

Completion means each accepted term has one clear definition, recorded decisions explain why they were made, and no unresolved disagreement was written as fact.
