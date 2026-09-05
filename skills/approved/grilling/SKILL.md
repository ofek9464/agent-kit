---
name: grilling
description: Interview the user in decision-dependent rounds to expose and settle every material branch of a plan or design. Use when the user asks to be grilled, or when an approved workflow invokes it.
---

# Grilling

Map the plan as a decision tree. A question belongs on the current frontier only when its prerequisites are settled and its answer changes scope, behavior, cost, risk, or acceptance checks.

Ask up to three related questions per round unless the user requests a full questionnaire. Explain what each answer controls and recommend an answer with a short reason. Put dependent questions in later rounds.

Find facts with the available read-only tools. Ask the user only for choices, preferences, priorities, and missing authority. If a fact cannot be found, state the uncertainty before asking the user.

After each answer, update the decision tree and ask the next frontier. Do not begin implementation during the interview.

At the end, summarize settled decisions and ask for confirmation once. A calling skill can add its own results to this summary without asking again. If the user ends the interview early, report the remaining decisions without treating them as settled.

Completion means the material decisions are settled or explicitly deferred, assumptions are visible, and the user confirms the shared understanding.
