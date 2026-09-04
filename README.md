# Agent kit

This folder is one home for the reusable workflows you want Codex and Claude Code to share.

You edit files here. GitHub keeps this folder the same on every PC. The installer then makes each agent see the same skills.

## The simple picture

```text
GitHub repo -> one AgentKit folder on each PC -> Codex and Claude Code both read its skills
```

There are two kinds of reusable files:

- **Skills** teach an agent a repeatable job. Put approved skills in `skills/approved/<name>/SKILL.md` and drafts in `skills/experimental/<name>/SKILL.md`.
- **MCP configuration** connects an agent to an outside tool, such as GitHub or Notion. Put safe templates in `mcp/`. Keep passwords and tokens out of this repo.

`rules/` contains short text you can add to Codex or Claude Code when a preference should apply in every conversation. A skill being installed does not force it to run every time. A rule does.

## First use on a PC

1. Install Codex and Claude Code normally.
2. Clone this repository somewhere stable, for example `C:\AgentKit`.
3. In PowerShell, run:

   ```powershell
   .\scripts\install.ps1
   ```

   This creates links in each agent's personal skill folder. The skills remain in this Git repository, so pulling updates changes what both tools use.
4. Add MCP servers through their normal login flow. The config template helps you keep names and non-secret settings consistent.

## Updating

Run `git pull` inside this folder. You do not need to rerun the installer unless you add a new skill or set up another PC.

## Skill approval

Only folders under `skills/approved/` are installed. Drafts stay under `skills/experimental/` until you review them.

`choose-workflow` is the first approved skill. Its [catalog](skills/approved/choose-workflow/references/catalog.md) records every planned skill, how it starts, what calls it, and why it exists.

The two reference repositories are inputs for discussion. Their skills are not copied into this kit automatically.
