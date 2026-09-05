---
name: choose-workflow
description: Recommend an approved skill when the user asks which skill or workflow fits, or asks to list the toolbox. Do not start the recommended manual workflow.
---

# Choose workflow

Read [the framework skill list](references/catalog.md). Check it against the current session's available skills before recommending one. If a listed skill is missing, inspect its entrypoint in the agent's installed skill folder; if it is unavailable, say so and offer an available alternative.

Consider installed project and plugin skills when they fit better. Use their actual descriptions and prerequisites; do not assume that a catalog entry or a familiar name proves availability.

If the user asks to list the toolbox, show the catalog briefly and group skills by invocation mode.

Otherwise, match the request to the narrowest useful skill. Recommend one skill with one concrete reason and show how to invoke it in the current agent. Ask a follow-up question only when different answers would select different workflows.

Do not start a manual skill. If no listed skill adds real value, say that no special skill is needed.

Completion means the user received one recommendation or a grouped toolbox list, without any recommended workflow being started.
