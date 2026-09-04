# Approved skill catalog

This catalog describes the approved toolbox. Every listed skill has been implemented in AgentKit.

## Always on

### unslop

Makes user-facing writing direct and natural. The global rule invokes it for prose. The user does not call it.

## Manual starting points

### grill-me

Interviews the user to sharpen an idea outside a project. Calls `grilling`. Saves no project documentation.

### grill-with-docs

Interviews the user inside a project and records terminology and decisions. Calls `grilling` and may call `domain-modeling`.

### to-spec

Turns an agreed conversation into a specification. Use when the important questions have been answered.

### prototype

Builds disposable code or UI to answer a design question. Use when discussion alone cannot settle the decision.

### implement

Builds an approved specification or ticket. It may call `tdd` and ends with `code-review`. It must not commit unless the user requests it.

### handoff

Writes a compact state document for another session, agent, person, or working directory.

### course-teacher

Runs a multi-session course in a dedicated learning directory. It keeps the mission, lessons, resources, and learning record outside software projects.

### codebase-teacher

Explains an existing project or change. Calls `how`; a future version may call `why` after that skill is reviewed and approved.

### domain-modeling

Sharpens project terminology and records durable decisions. `grill-with-docs` may call it, and the user may invoke it directly.

### small-chunks

Switches the conversation to one user-paced increment at a time. It stays active until the user explicitly asks for normal mode.

## Supporting skills

### grilling

Runs the interview used by `grill-me` and `grill-with-docs`. Those starting skills call it; the user normally does not.

### how

Traces how a codebase or subsystem works. `codebase-teacher` calls it, and the user may invoke it directly.

### tdd

Uses a failing test before implementation when a cheap, meaningful test path exists. `implement` may call it, and the user may invoke it directly.

### code-review

Reviews changes against project standards and the approved request. `implement` calls it after building, and the user may invoke it directly.

## Automatically selected

### learn-project

Builds lightweight, verified context before substantial work in an existing project. It studies related repositories and authoritative external material only when the current task needs them, and stores maintained knowledge locally outside Git tracking.

### diagnosing-bugs

Builds a reproduction and traces the cause of broken, failing, incorrect, or slow behavior before fixing it.

### writing-for-agents

Guides creation and editing of skills, `AGENTS.md`, `CLAUDE.md`, and documents written for agents.

## Router

### choose-workflow

Reads this catalog and recommends one skill when the user asks which workflow fits. It can also list the toolbox. It never starts a manual workflow.
