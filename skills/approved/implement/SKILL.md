---
name: implement
description: Implement an approved specification or ticket, verify it, and review the result. Start only when the user explicitly requests implementation.
---

# Implement

Read the approved specification or ticket and the relevant project instructions. Identify the observable acceptance checks before editing.

Work in small verifiable units. Use the `tdd` skill when a cheap, meaningful test seam exists or the user requests test-first development. Preserve unrelated user changes.

Run focused checks during implementation and the appropriate broader checks at the end. Then use `code-review` to compare the result with both project standards and the approved request. Fix clear problems within the authorized scope and rerun affected checks.

Do not commit, push, open a pull request, publish, deploy, or close a ticket unless the user explicitly requests that action.

Completion means the acceptance checks pass, the review found no unresolved blocking issue, and remaining risks are stated plainly.
