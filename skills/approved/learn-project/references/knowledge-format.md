# Local project knowledge

Keep `.agents/knowledge/` small and maintained. Create only files that hold useful findings. Prefer these stable names when they fit:

- `project.md` for purpose, entry points, commands, and major boundaries.
- `architecture.md` for verified runtime flows and ownership.
- `related-projects.md` for dependencies on other repositories and where they were verified.
- `external-research.md` for task-relevant standards, APIs, hardware rules, and primary-source links.
- `documentation-mismatches.md` for unresolved differences between documentation and implementation evidence.

Every claim that could become stale should include its evidence and the date checked. Evidence may be a repository path and symbol, commit, test, observed command result, related repository link, or authoritative external source.

Revise or remove stale knowledge when better evidence is found. This permission applies only to `.agents/knowledge/`. Report contradictions in project documentation and ask before editing or deleting those files.
