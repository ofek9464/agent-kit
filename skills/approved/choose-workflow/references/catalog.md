# Framework skill list

This is the maintained list of approved Agent Kit skills. Manual skills start when the user requests them. Supporting skills can be called directly or used within authorized work. Check actual availability before making a recommendation.

| Skill | When it helps | Starts |
| --- | --- | --- |
| [unslop](../../unslop/SKILL.md) | Make user-facing prose clear and natural | Global writing rule |
| [clear-human-editor](../../clear-human-editor/SKILL.md) | Edit prose, organize long documents, and visually verify formatted files | Prose editing and document revision requests |
| [create-3d-model](../../create-3d-model/SKILL.md) | Create, edit, animate, validate, and export 3D assets with Blender; includes 29 reference modules | 3D modeling and Blender asset requests |
| [choose-workflow](../../choose-workflow/SKILL.md) | Choose a next skill or list the toolbox | Workflow questions |
| [learn-project](../../learn-project/SKILL.md) | Build or refresh context before substantial project work | Missing or stale context |
| [diagnosing-bugs](../../diagnosing-bugs/SKILL.md) | Reproduce a failure and trace its cause | Bug reports or diagnosis requests |
| [writing-for-agents](../../writing-for-agents/SKILL.md) | Create or revise instructions and skills | Agent-facing writing |
| [grill-me](../../grill-me/SKILL.md) | Settle an idea without writing project files | Manual; uses [grilling](../../grilling/SKILL.md) |
| [grill-with-docs](../../grill-with-docs/SKILL.md) | Settle a project design and record agreed decisions | Manual; uses [grilling](../../grilling/SKILL.md), [domain-modeling](../../domain-modeling/SKILL.md) |
| [to-spec](../../to-spec/SKILL.md) | Turn settled requirements into an implementation specification | Manual |
| [to-tasks](../../to-tasks/SKILL.md) | Break agreed requirements into tasks with dependencies and checks | Task breakdown requests |
| [prototype](../../prototype/SKILL.md) | Answer one design question with a disposable demo | Manual |
| [implement](../../implement/SKILL.md) | Build, check, and review an approved request | Manual; uses [tdd](../../tdd/SKILL.md) when useful, then [code-review](../../code-review/SKILL.md) |
| [handoff](../../handoff/SKILL.md) | Prepare another session or person to continue | Manual |
| [course-teacher](../../course-teacher/SKILL.md) | Teach across sessions with a learning record | Manual |
| [codebase-teacher](../../codebase-teacher/SKILL.md) | Teach how project code works at the user's pace | Manual; uses [how](../../how/SKILL.md) |
| [small-chunks](../../small-chunks/SKILL.md) | Work one user-paced step at a time | Manual; stays active until the user exits |
| [domain-modeling](../../domain-modeling/SKILL.md) | Clarify project terms and record settled design choices | Supporting; vague terms or documentation work |
| [grilling](../../grilling/SKILL.md) | Work through dependent decisions in question rounds | Supporting; interview requests |
| [how](../../how/SKILL.md) | Trace a code or data flow with file evidence | Supporting; explanation requests |
| [why](../../why/SKILL.md) | Explain past design choices using history and evidence | Supporting; questions about decisions |
| [tdd](../../tdd/SKILL.md) | Develop behavior through a meaningful failing test | Supporting; TDD requests or suitable regression tests |
| [code-review](../../code-review/SKILL.md) | Check a diff against the request and project standards | Supporting; review requests |

For skills outside this list, use the current session's project and plugin skill descriptions. Missing from the session list does not prove uninstalled; inspect an installed entrypoint when necessary. Treat unavailable skills as setup options, not runnable recommendations.

Keep this table aligned with `skills/approved/` when skills are added, renamed, removed, or change invocation mode. Experimental drafts are not installed.
