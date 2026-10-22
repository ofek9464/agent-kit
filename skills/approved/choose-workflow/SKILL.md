---
name: choose-workflow
description: Select an installed skill at project start, when a workflow need emerges, at phase transitions, or when asked which workflow fits or to list the toolbox. Route explicit external discovery requests or concrete capability gaps to find-skills. Recommendations do not authorize starting workflows or installing skills.
---

# Choose workflow

Check at the start of an idea or project, when a need for a dedicated workflow emerges, and at phase transitions, even without a direct workflow question. Match the current need, settled decisions, and missing information rather than keywords. For a rough app idea with important choices still open, consider `grill-me` for an interview, or `grill-with-docs` when recording project decisions is part of the requested work. Recommend only one; do not start the interview merely because the idea was mentioned. In particular, when requirements are settled and no adequate implementation specification exists, consider `to-spec` before moving into implementation. Recommend it when it would preserve decisions and acceptance checks for substantial work. Do not require it for a small, fully specified task or recreate an adequate existing specification. Use the current artifact and unresolved decisions to choose the next skill; do not impose a fixed sequence of skills.

If material design decisions are still open, do not present them as settled or recommend specification writing as though they were. Resolve the blocking decision within the requested workflow, or recommend a suitable interview when one is needed. Nonblocking unknowns can remain explicit in a specification.

Read [the framework skill list](references/catalog.md). Check it against the current session's available skills before recommending one. If a listed skill is missing, inspect its entrypoint in the agent's installed skill folder; if it is unavailable, say so and offer an available alternative.

Consider installed project and plugin skills when they fit better. Use their actual descriptions and prerequisites; do not assume that a catalog entry or a familiar name proves availability.

## External skill discovery

Check installed framework, project, and plugin skills first. When the user explicitly asks for external skills, or a concrete missing capability could be supplied by one, read and use [find-skills](../find-skills/SKILL.md). Pass the task, the gap or explicit search request, and installed options already checked so it can continue without repeating this routing step.

Do not search externally just because a task is complex, unfamiliar, or phrased as a request for help. If an installed skill fits, use or recommend it within the existing authorization. If find-skills is unavailable, report that limitation and continue with available capabilities. Keep the one-recommendation limit across local and external candidates; discovery does not authorize installation or starting a recommended workflow.

If the user asks to list the toolbox, show the catalog briefly and group skills by invocation mode.

Otherwise, match the request to the narrowest useful primary skill. Apply the shared personal rule for combining supporting skills within authorized work; recommending one primary workflow does not limit execution to one skill. Recommend one skill with one concrete reason and show how to invoke it in the current agent. Ask a follow-up question only when different answers would select different workflows.

A recommendation alone does not authorize starting a manual skill. If the user has already requested that workflow, including in natural language, read and use it without asking for the same authorization again. Do not repeat an unchanged recommendation or interrupt an ongoing authorized workflow. If no skill adds real value, omit a proactive suggestion; for a direct workflow question, say that no special skill is needed.

Completion means the user received one useful recommendation or a grouped toolbox list, an external search reached a reviewed result through find-skills, or an already-authorized request was routed to its matching skill. No workflow or installation starts solely because it was recommended.
