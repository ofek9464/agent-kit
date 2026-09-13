---
name: prototype
description: Build disposable code or UI to answer one design question. Start only when the user explicitly requests a prototype.
---

# Prototype

State the single question the prototype must answer. Choose the smallest runnable form that can answer it.

- For logic or state questions, prefer a self-contained demo with visible state and representative edge cases.
- For interface questions, offer two or three structurally different variants when comparison would answer the question; otherwise build one.

Put prototype files under `.scratch/prototypes/<short-name>/` unless the project already has a prototype convention. Mark them as disposable. Keep state in memory unless persistence is the question being tested.

Skip production abstractions and broad error handling. Check that the prototype runs and answers its design question; use a small behavioral test only when it is the cheapest reliable evidence. Do not connect a visual prototype to live mutations. Never commit or merge prototype files unless the user asks.

Include launch instructions and what to inspect. When the user reaches a verdict, record the question, the chosen answer, and the evidence. Production implementation remains a separate task.

Completion means the user can run or inspect the prototype and use it to answer the stated question.
