---
name: diagnosing-bugs
description: Reproduce and trace broken, incorrect, failing, intermittent, or slow behavior to its cause. Use for diagnosis requests and bug reports.
---

# Diagnosing bugs

Build one repeatable feedback loop that exposes the reported problem. Record the exact command, action, input, and observed failure.

Reduce the reproduction until unrelated behavior is removed. Form one falsifiable hypothesis at a time, instrument the relevant boundary, and run the loop. Keep evidence that confirms or rejects each hypothesis. For read-only requests, use existing logs and non-mutating probes; otherwise remove your temporary instrumentation before finishing.

Trace the symptom to the earliest incorrect state or decision. Explain the cause with references to the observed evidence.

Diagnosis alone does not authorize a fix. If the user asked only to diagnose, stop after reporting the cause and a scoped repair option. If the user asked to fix it, make the smallest root-cause change and add a regression test when a meaningful seam exists.

Completion means the failure is reproduced and the cause is supported by evidence. If reproduction or access remains unavailable after useful checks, report an inconclusive diagnosis with attempted checks, remaining hypotheses, and the next discriminating check. Do not present a hypothesis as the cause.
