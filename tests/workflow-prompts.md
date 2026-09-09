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
