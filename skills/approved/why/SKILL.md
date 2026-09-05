---
name: why
description: Explain why an existing design, dependency, or behavior was chosen using project history and decision records. Use for questions about past decisions; use how for runtime explanations.
---

# Why

Identify the decision the user is asking about. Read the relevant code to establish what exists today, then follow decision records, commits, pull requests, issues, and comments that explain how it got there.

Look for the original problem, constraints, alternatives, and tradeoffs. Treat a commit date or author as a lead, not an explanation. Use `how` only when the current behavior needs tracing.

Separate reasons stated in the evidence from your own interpretation. Cite the source for each important claim. A sensible explanation of today's code does not prove that it motivated the original decision.

Explain what was chosen, why the available evidence says it was chosen, and whether the original constraints still apply. If the reason is undocumented or sources disagree, say what is known and what remains uncertain.

Keep the investigation read-only. Proposing or implementing a replacement is separate work unless the user requests it.

Completion means the user can distinguish documented reasons, supported inferences, and unanswered questions.
