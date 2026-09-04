[CmdletBinding()]
param(
    [ValidateSet('Codex', 'Claude', 'All')]
    [string]$Target = 'All',

    [ValidateSet('Link', 'Copy')]
    [string]$Mode = 'Link'
)

$kitRoot = Split-Path -Parent $PSScriptRoot
$skillSource = Join-Path $kitRoot 'skills\approved'

if (-not (Test-Path -LiteralPath $skillSource -PathType Container)) {
    throw "Could not find skills at $skillSource"
}

$targets = @()
if ($Target -in @('Codex', 'All')) {
    $targets += [PSCustomObject]@{ Name = 'Codex'; Path = Join-Path $env:USERPROFILE '.codex\skills' }
}
if ($Target -in @('Claude', 'All')) {
    $targets += [PSCustomObject]@{ Name = 'Claude Code'; Path = Join-Path $env:USERPROFILE '.claude\skills' }
}

$skills = Get-ChildItem -LiteralPath $skillSource -Directory
foreach ($destination in $targets) {
    New-Item -ItemType Directory -Force -Path $destination.Path | Out-Null

    foreach ($skill in $skills) {
        $entrypoint = Join-Path $skill.FullName 'SKILL.md'
        if (-not (Test-Path -LiteralPath $entrypoint -PathType Leaf)) {
            Write-Warning "Skipping $($skill.Name): no SKILL.md found."
            continue
        }

        $targetPath = Join-Path $destination.Path $skill.Name
        if (Test-Path -LiteralPath $targetPath) {
            Write-Host "$($destination.Name): $($skill.Name) already exists, left unchanged."
            continue
        }

        if ($Mode -eq 'Link') {
            New-Item -ItemType Junction -Path $targetPath -Target $skill.FullName | Out-Null
        } else {
            Copy-Item -LiteralPath $skill.FullName -Destination $targetPath -Recurse
        }
        Write-Host "$($destination.Name): installed $($skill.Name)."
    }
}

function Install-RuleBlock {
    param(
        [string]$RuleSource,
        [string]$RuleTarget
    )

    $begin = '<!-- BEGIN AGENT-KIT -->'
    $end = '<!-- END AGENT-KIT -->'
    $ruleBody = (Get-Content -Raw -LiteralPath $RuleSource).Trim()
    $block = "$begin`r`n$ruleBody`r`n$end"

    $parent = Split-Path -Parent $RuleTarget
    New-Item -ItemType Directory -Force -Path $parent | Out-Null

    if (Test-Path -LiteralPath $RuleTarget) {
        $existing = Get-Content -Raw -LiteralPath $RuleTarget
        $pattern = [regex]::Escape($begin) + '[\s\S]*?' + [regex]::Escape($end)
        if ($existing -match $pattern) {
            $updated = [regex]::Replace($existing, $pattern, $block)
        } else {
            $updated = $existing.TrimEnd() + "`r`n`r`n" + $block + "`r`n"
        }
    } else {
        $updated = $block + "`r`n"
    }

    Set-Content -LiteralPath $RuleTarget -Value $updated -Encoding utf8NoBOM
}

if ($Target -in @('Codex', 'All')) {
    Install-RuleBlock -RuleSource (Join-Path $kitRoot 'rules\codex\AGENTS.md') -RuleTarget (Join-Path $env:USERPROFILE '.codex\AGENTS.md')
    Write-Host 'Codex: installed AgentKit rules.'
}
if ($Target -in @('Claude', 'All')) {
    Install-RuleBlock -RuleSource (Join-Path $kitRoot 'rules\claude\CLAUDE.md') -RuleTarget (Join-Path $env:USERPROFILE '.claude\CLAUDE.md')
    Write-Host 'Claude Code: installed AgentKit rules.'
}

Write-Host 'Done. Start a new agent session to load the installed skills and rules.'
