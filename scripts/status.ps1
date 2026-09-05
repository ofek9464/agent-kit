#requires -Version 7.0
[CmdletBinding()]
param(
    [ValidateSet('Codex', 'Claude', 'All')][string]$Target = 'All',
    [string]$ProfileRoot = $env:USERPROFILE,
    [string]$KitRoot = (Split-Path -Parent $PSScriptRoot)
)

# Read-only comparison. Include references and metadata, not just SKILL.md.
function Get-SkillFingerprint([string]$Path) {
    $files = Get-ChildItem -LiteralPath $Path -File -Recurse -Force -ErrorAction Stop
    ($files | Sort-Object FullName | ForEach-Object {
        $relative = [IO.Path]::GetRelativePath($Path, $_.FullName)
        "$relative=$((Get-FileHash -LiteralPath $_.FullName -ErrorAction Stop).Hash)"
    }) -join "`n"
}

$skillSource = Join-Path $KitRoot 'skills/approved'
$skills = Get-ChildItem -LiteralPath $skillSource -Directory -ErrorAction Stop
foreach ($agentName in @('Codex', 'Claude')) {
    if ($Target -ne 'All' -and $Target -ne $agentName) { continue }
    $folder = if ($agentName -eq 'Codex') { '.codex' } else { '.claude' }
    $agentRoot = Join-Path $ProfileRoot $folder
    foreach ($skill in $skills) {
        $path = Join-Path $agentRoot "skills/$($skill.Name)"
        $entry = Get-Item -LiteralPath $path -Force -ErrorAction SilentlyContinue
        $status = 'Missing'
        if ($null -ne $entry) {
            try {
                if ($entry.LinkType) {
                    $resolved = $entry.ResolveLinkTarget($true)
                    $status = if ($null -ne $resolved -and $resolved.FullName -eq $skill.FullName) { 'Linked' } else { 'Different or broken link' }
                } elseif (-not $entry.PSIsContainer) {
                    $status = 'Not a skill folder'
                } elseif ((Get-SkillFingerprint $path) -ceq (Get-SkillFingerprint $skill.FullName)) {
                    $status = 'Matching copy'
                } else {
                    $status = 'Different copy'
                }
            } catch { $status = 'Unreadable or broken link' }
        }
        [pscustomobject]@{ Agent = $agentName; Item = $skill.Name; Status = $status; Path = $path }
    }

    $ruleFile = if ($agentName -eq 'Codex') { 'AGENTS.md' } else { 'CLAUDE.md' }
    $rulePath = Join-Path $agentRoot $ruleFile
    $status = 'Missing rules'
    if (Test-Path -LiteralPath $rulePath -PathType Leaf) {
        $text = Get-Content -LiteralPath $rulePath -Raw
        $blocks = [regex]::Matches($text, '(?s)<!-- BEGIN AGENT-KIT -->\s*(.*?)\s*<!-- END AGENT-KIT -->')
        $expected = (Get-Content -LiteralPath (Join-Path $KitRoot "rules/$($folder.TrimStart('.'))/$ruleFile") -Raw).Replace("`r`n", "`n").Trim()
        $status = if ($blocks.Count -eq 1 -and $blocks[0].Groups[1].Value.Replace("`r`n", "`n").Trim() -ceq $expected) { 'Matching rules' } else { 'Different or missing rule block' }
    }
    [pscustomobject]@{ Agent = $agentName; Item = 'Global rules'; Status = $status; Path = $rulePath }
}
