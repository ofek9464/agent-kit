---
name: how
description: Trace how an existing codebase, subsystem, feature, or runtime flow works. Use for code walkthroughs and ownership or placement questions.
---

# How

Clarify the scope from the request and state a reasonable assumption when it is ambiguous. Keep the work read-only.

Find the entry point, follow calls and data to their effects, inspect the defining types and configuration, and verify claims against actual code. For a broad subsystem, split exploration by genuine boundaries when parallel help is available. Reconcile the findings yourself.

Explain:

- what the subsystem does
- the important concepts needed to understand it
- the runtime or data flow from trigger to result
- where the main pieces live
- non-obvious behavior or sharp edges

Reference specific files and symbols. Include code only when a short excerpt explains the mechanism better than prose.

Completion means the explanation covers the full path relevant to the question without guessing over a missing step.
