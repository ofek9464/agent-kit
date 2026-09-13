---
name: tdd
description: Develop behavior through a failing test, the smallest passing change, and cleanup. Use when the user requests TDD or a cheap meaningful regression test exists.
---

# TDD

Choose the highest stable seam that exposes the requested behavior. Prefer observable outcomes over internal calls.

For each small behavior:

1. Add one test that fails for the intended reason.
2. Run that focused test and confirm the failure.
3. Make the smallest production change that passes it.
4. Run the focused test again.
5. Refactor only while the test remains green.

Use real collaborators when they are fast and deterministic. Mock only external systems, time, randomness, or genuinely slow boundaries. Avoid tests that merely repeat the implementation.

For optional use, skip this skill for reversible, low-impact edits with no meaningful behavioral risk, or when the only available test is expensive, unclear, flaky, or disconnected from the behavior. If the user explicitly requires TDD, explain the test limitation and settle an alternative before replacing test-first development.

Completion means the new test would fail without the behavior and passes with it.
