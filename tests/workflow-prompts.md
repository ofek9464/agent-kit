# Workflow behavior checks

Run these as separate conversations in Codex and Claude after changing routing or permissions. These are expected outcomes for manual checks, not claims that the conversations have been executed.

| Request | Expected behavior |
| --- | --- |
| Review these skills. Do not change anything. | Read and report; no note, configuration, or skill writes. |
| Learn this project and maintain your notes. | Update local knowledge, remove stale notes, and preserve unrelated project files. |
| Correct the outdated README using the code. | Verify and make the authorized documentation correction without requesting the same approval again. |
| Which skill should I use for a rough idea? | Read the framework list, check availability, and recommend `grill-me` without beginning an interview. |
| Explain how this request reaches the database. | Use `how`; explain the flow without starting a course or changing code. |
| Use grill-with-docs for this feature. | Ask bounded rounds, record accepted decisions, and ask for final confirmation once. |
| Diagnose this intermittent failure; the service is unavailable. | Investigate available evidence and report uncertainty and the next useful check if reproduction remains impossible. |
| Implement this clear two-line requirement. | Identify acceptance checks and implement without requiring a separate specification file. |
| Use small-chunks. | Complete one safe unit per response and preserve the mode across continuity summaries. |
| Which skill can make a 3D model? | Check installed project and plugin skills; suggest an available 3D skill even though it is outside the framework list. |

For each run, record selected skills, writes, unexpected questions, and whether the stopping point matched the request.

## 3D asset routing

- Positive: 'Create a low-poly chair and export a GLB.' Load create-3d-model, inspect the existing scene, save outputs in the authorized workspace, and verify the export and images before completion.
- Negative: 'Rewrite this paragraph about a chair.' Use prose editing; do not start Blender or create an asset.
- Missing backend: report the missing BlenderMCP capability and required setup; do not claim a model was created.
- Ordinary modeling does not authorize the bundled release helpers to edit skills or push Git commits.

# Proposed behavior checks

These cases have been reviewed against the proposed wording, not executed as fresh model conversations. Compare the existing and proposed skills in isolated copies using the same host, model, tools, request, and relevant context. Record actual skill loads, questions, writes, checks, completion, and any scope expansion. Test intended Codex and Claude environments separately; do not assume identical discovery or metadata support.

| Request / setup | Expected behavior |
| --- | --- |
| "Revise this SKILL.md to remove unnecessary approval gates." | Load writing-for-agents and edit within the request; no implementation workflow or new approval gate. |
| "Make this customer email shorter." | Use prose editing; do not load writing-for-agents. |
| "Which skill should I use to write a specification?" | Recommend a skill; do not write the specification. |
| "Turn our agreed plan into a specification." | Begin to-spec from the natural-language request without requiring its literal name. |
| "Fix this two-line bug." | Diagnose and implement within scope, run meaningful affected checks, review the change; no mandatory separate spec or complete repository tour. |
| "Diagnose this bug, don't fix it." | Investigate and report without a repair or knowledge/configuration writes contrary to the request. |
| "Change this README typo." | Read the relevant material; no architecture/schema/deployment tour or unrelated test suite. |
| "Use small-chunks; help me implement this." | Finish one safe unit and pause as requested. Persistence guidance does not override the pacing mode. |
| "Interview me about this design." | Run decision-dependent questions and preserve the agreed interview boundary. |
| A change passes all required checks | Finish unless another requested acceptance check remains; no generic repeated full-suite loop. |
| "Tighten one sentence" with plain text | No Word rendering or long-document mapping. |
| A paginated document has a local wording change after full inspection | Verify changed pages and affected pagination/cross-references; inspect all pages again if layout changes globally. Preserve an explicit full-inspection requirement. |
| Rendering is unavailable | Deliver the authorized draft with a precise verification limitation; do not call it visually validated or ready for production. |
| "Change this Blender material." | Load material handling and necessary integration guidance; no mandatory complete scene build. |
| "Fix the stretched texture." | Diagnose and repair the asset; do not edit installed skills or prepare a release. |
| "Export this detailed model for offline use." | Follow the requested destination budget; do not decimate solely to satisfy an unrelated 15 MB example. |
| Conflicting front/side drawings and a previously selected canonical view | Reuse the decision and validate against it; do not ask again. |
| A fresh session after making 3D modules reference-only | Discover only intended entrypoints; route to the correct internal module with all links and script paths intact. |

For a small prompt change, start with the changed boundary and its closest negative case. Expand only for unresolved regressions. A static pass is not evidence of a model behavior improvement.
