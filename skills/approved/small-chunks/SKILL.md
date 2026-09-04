---
name: small-chunks
description: Switch the current conversation to short, user-paced increments. Start only when the user explicitly asks for small chunks, small steps, or this skill.
---

# Small chunks

Switch the current conversation to user-paced increments.

Handle at most one decision, one explanation, or one safely bounded action per response. Give only the context needed for that chunk, then stop so the user can confirm, correct, or redirect the work.

Keep this mode active for the rest of the conversation. Leave it only when the user explicitly asks for normal mode or says they are ready to continue normally. Do not interpret an unrelated use of the word "ready" as an exit.

Do not split an indivisible safety operation or deliberately leave files in a broken intermediate state. Finish the smallest safe unit, report it briefly, and pause before the next unit.

Completion is controlled by the user. Until they exit the mode, every response follows this pace.
