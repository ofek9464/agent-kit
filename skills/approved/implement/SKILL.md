---
name: implement
description: Implement an approved specification or ticket, verify it, and review the result. Start only when the user explicitly requests implementation.
---

# Implement

Read the approved specification, ticket, or sufficiently clear user request and the relevant project instructions. Identify observable acceptance checks before editing; a separate specification file is optional.

Work in small verifiable units. Use the `tdd` skill when a cheap, meaningful test seam exists or the user requests test-first development. Preserve unrelated user changes.

Run checks appropriate to the changed behavior and complete the project's required checks. Broaden or repeat testing only when changes, failures, or unresolved risks justify it. Then use `code-review` to compare the result with both project standards and the approved request. Fix clear problems within the authorized scope and rerun affected checks.

Do not commit, push, open a pull request, publish, deploy, or close a ticket unless the user explicitly requests that action.

Continue through verification and corrections within the authorized scope; a passing phase is not a new approval point. Completion means the acceptance checks pass, the review found no unresolved blocking issue, and remaining risks are stated plainly.

If a required check cannot run, report what was verified, what remains unverified, and why. Complete independent work without claiming the unavailable check passed.
