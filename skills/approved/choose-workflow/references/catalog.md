# Framework skill list

This is the maintained list of approved Agent Kit skills. Manual skills start when the user requests them. Supporting skills can be called directly or used within authorized work. Check actual availability before making a recommendation.

| Skill | When it helps | Starts |
| --- | --- | --- |
| `unslop` | Make user-facing prose clear and natural | Global writing rule |
| `choose-workflow` | Choose a next skill or list the toolbox | Workflow questions |
| `learn-project` | Build or refresh context before substantial project work | Missing or stale context |
| `diagnosing-bugs` | Reproduce a failure and trace its cause | Bug reports or diagnosis requests |
| `writing-for-agents` | Create or revise instructions and skills | Agent-facing writing |
| `grill-me` | Settle an idea without writing project files | Manual; uses `grilling` |
| `grill-with-docs` | Settle a project design and record agreed decisions | Manual; uses `grilling`, `domain-modeling` |
| `to-spec` | Turn settled requirements into an implementation specification | Manual |
| `to-tasks` | Break agreed requirements into tasks with dependencies and checks | Task breakdown requests |
| `prototype` | Answer one design question with a disposable demo | Manual |
| `implement` | Build, check, and review an approved request | Manual; uses `tdd` when useful, then `code-review` |
| `handoff` | Prepare another session or person to continue | Manual |
| `course-teacher` | Teach across sessions with a learning record | Manual |
| `codebase-teacher` | Teach how project code works at the user's pace | Manual; uses `how` |
| `small-chunks` | Work one user-paced step at a time | Manual; stays active until the user exits |
| `domain-modeling` | Clarify project terms and record settled design choices | Supporting; vague terms or documentation work |
| `grilling` | Work through dependent decisions in question rounds | Supporting; interview requests |
| `how` | Trace a code or data flow with file evidence | Supporting; explanation requests |
| `why` | Explain past design choices using history and evidence | Supporting; questions about decisions |
| `tdd` | Develop behavior through a meaningful failing test | Supporting; TDD requests or suitable regression tests |
| `code-review` | Check a diff against the request and project standards | Supporting; review requests |

For skills outside this list, use the current session's project and plugin skill descriptions. Missing from the session list does not prove uninstalled; inspect an installed entrypoint when necessary. Treat unavailable skills as setup options, not runnable recommendations.

Keep this table aligned with `skills/approved/` when skills are added, renamed, removed, or change invocation mode. Experimental drafts are not installed.
