---
name: ui-design-discovery
description: Explore and agree a UI direction before implementation for a new system or an existing interface, through focused questions, image alternatives, and an optional lightweight mock-data artifact. Use for interface discovery and visual exploration, not routine styling fixes or implementing an already-approved design.
---

# UI Design Discovery

Produce an agreed visual direction and a concise design brief that can guide implementation. Start when the user requests this workflow in natural language or accepts its recommendation; mentioning an app idea alone is not permission to begin an interview. Keep documentation in English and converse in the user's language. Product copy follows the intended interface language.

## Understand the interface

Reuse decisions, references, and project context already available. For an existing UI, inspect accessible screenshots, relevant screens, and design conventions; identify the requested problems and preserve what works. Do not turn a local redesign into a whole-product redesign.

Ask short, decision-dependent rounds, normally at most three related questions. Cover only missing information that changes the design:

- users, their primary tasks, and the main screen or flow;
- required information, example data, actions, priorities, and data density;
- devices, screen sizes, interface language and direction, and accessibility needs;
- existing branding, preferred and disliked visual styles, and constraints worth preserving.

For vague style preferences, offer understandable visual directions rather than requiring design vocabulary. If a material product decision prevents meaningful alternatives, settle that decision first. Avoid restarting broader product discovery for choices already made.

When available, use `grill-with-docs` and its `grilling` guidance for the interview, adapting its documentation to this design brief. Keep one record of accepted decisions and open questions; do not create parallel glossaries or require another confirmation of an already-settled decision. If these skills are unavailable, conduct the same bounded interview directly.

## Research when useful

Research comparable products or design references when inspiration or a specific design problem warrants it. Skip research when the supplied references and direction are sufficient. Use available browsing tools, link the sources, and explain which interaction or layout ideas address this project's needs. Distinguish observed features from inferences; do not claim to have inspected inaccessible screens.

## Compare image alternatives

Before implementation code, create two or three static image alternatives for the same representative screen, unless the user requests another number. Use the same core content, realistic mock data, and main actions so the alternatives can be compared fairly. Vary meaningful choices such as navigation, hierarchy, layout, density, or visual style, rather than colors alone.

Use the available image-generation capability and read its applicable skill before generating or editing images. Use supplied screenshots as references for redesigns. Inspect the results for missing requirements, unreadable labels, and misleading content. Generated text, especially Hebrew or dense labels, may need correction; keep exact required copy and data fields in the brief. Do not treat images as proof of working interaction, responsiveness, or accessibility.

Explain the tradeoff of each direction briefly and let the user choose or combine them. Refine the chosen direction before extending to other relevant screens or important states. Reuse the user's selection; do not keep offering new alternatives without a reason.

If image generation is unavailable, report that limitation and offer a clearly labeled fallback. Do not silently substitute implementation code for the requested image-first process or claim that prompts are generated images.

## Optional illustrative prototype

After the user selects a visual direction, offer an interactive artifact only when it would resolve remaining uncertainty about the general feel or flow. Create it when requested or already authorized; it is not a required stage.

Use mock data only and the smallest useful interaction, such as switching views, selecting an item, or opening a panel. Prefer an in-conversation artifact when supported; otherwise provide a standalone local HTML artifact. Keep temporary state in memory. Do not connect real services, add authentication or a backend, deploy, or build a production project for this demonstration. Stop when it answers the design question; completeness and production architecture are not goals.

Verify the interactions actually demonstrated when tools permit. Report any behavior that was not run. Label the artifact as an illustration and distinguish it from production implementation.

## Record and hand over

Maintain a concise English design brief in the project's established design location, or `docs/design/<short-name>/` when there is no convention. In a projectless conversation, use the allowed deliverables folder. Include only what helps the next step:

- agreed users, tasks, screens, information, and actions;
- selected images and the reasons for the chosen direction;
- visual conventions, interface language, layout and responsive intentions;
- important interaction states, constraints, and unresolved questions;
- reference links and the illustrative artifact, if produced.

Use `frontend-skill` when available for applicable design guidance and for later implementation; the user's brief and existing design system govern its defaults. Do not start production implementation as part of this skill. If the user subsequently requests it, hand over the accepted brief and assets to the appropriate implementation workflow without repeating discovery. A request for a full implementation specification can use `to-spec` when available.

Completion means the user has selected the visual direction, the brief and selected assets are accessible, and any remaining uncertainty or unverified behavior is explicit. If the user stops early or required tools are unavailable, preserve the partial result without claiming that a direction has been approved.
