---
name: code-review
description: Review a diff or branch against project standards and its originating request. Use when the user requests review or an approved implementation workflow calls it.
---

# Code review

Establish the comparison point before reviewing. Use the supplied base branch, merge base, commit, or diff. Otherwise inspect repository state, state the comparison you chose, and ask only if different choices would materially change the review.

Review two questions separately:

1. Does the change follow the repository's documented standards and preserve surrounding behavior?
2. Does the change satisfy the originating specification, ticket, or request without adding unrelated scope?

Read the actual diff and enough surrounding code to verify each finding. Report only actionable defects, regressions, security issues, missing behavior, or meaningful test gaps. Include the file and tight line range.

Do not edit code, commit, or publish comments unless the user asks.

Completion means every finding is evidence-backed and prioritized, or the review states that no actionable findings were found.
