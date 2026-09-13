---
name: writing-for-agents
description: Write or revise skills, AGENTS.md, CLAUDE.md, and supporting instructions for agents.
---

# Writing for agents

Write the smallest instruction set that reliably produces the requested result. Keep domain knowledge, necessary tool procedures, user preferences, and known failure checks; leave routine choices to the agent.

Give each skill one job. Put its task and discriminating trigger first in a short description. Describe the requested action, not every adjacent topic or synonym. A natural-language request can authorize a user-started workflow; a recommendation or incidental mention cannot. Keep the description, invocation metadata, catalog, and global rules consistent.

Keep always-loaded rules short. Make a multi-workflow entrypoint a small router. Each reference link must explain what it contains and when to read it. Load only the relevant branch and reuse verified context. Check what the host actually discovers, including nested modules.

Specify outcomes, constraints, necessary dependencies, and checkable completion. Use a fixed sequence only when order changes correctness. Label recipes, numeric defaults, and examples with their scope; do not promote a previous project's limits into universal requirements. Maintain each rule in one authoritative place.

Distinguish completion checks from user approval. Within system, developer, and tool constraints, explicit user instructions override skill defaults. Reuse authorization already given; continue independent work while a material decision is unresolved. Ask only for missing information or authority that changes the result. Preserve deliberately requested interviews, review boundaries, and user-paced modes.

Calibrate verification to the change and complete required checks. Repeat or broaden checks when changed outputs, failures, or unresolved risks justify it. Define honest delivery when verification is unavailable. Do not make routine artifact repair depend on rewriting skills.

After editing, validate format, references, dependencies, and routing metadata. Review a matching request, a nearby nonmatch, and any changed permission or stopping boundary. When behavior changes materially, compare representative old/new runs with the intended host and models; label unexecuted cases as proposed checks.

Completion means the skill selects the right work, can be executed with available capabilities, and has an observable stopping point. Report remaining conflicts or unverified behavior.
