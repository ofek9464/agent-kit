#requires -Version 7.0
$ErrorActionPreference = 'Stop'
$kitRoot = Split-Path -Parent $PSScriptRoot
$fixture = Join-Path ([IO.Path]::GetTempPath()) ('agent-kit-check-' + [guid]::NewGuid().ToString('N'))
$fixtureKit = Join-Path $fixture 'kit'
$profilePath = Join-Path $fixture 'profile'
New-Item -ItemType Directory -Force -Path "$fixtureKit/scripts", "$fixtureKit/skills/approved/sample/references", "$fixtureKit/rules/codex", "$fixtureKit/rules/claude", "$profilePath/.codex" | Out-Null
Copy-Item -LiteralPath "$kitRoot/scripts/install.ps1", "$kitRoot/scripts/status.ps1" -Destination "$fixtureKit/scripts"
Set-Content -LiteralPath "$fixtureKit/skills/approved/sample/SKILL.md" -Value "---`nname: sample`ndescription: Test fixture`n---`nSample"
Set-Content -LiteralPath "$fixtureKit/skills/approved/sample/references/check.md" -Value 'Original reference'
Set-Content -LiteralPath "$fixtureKit/rules/codex/AGENTS.md" -Value 'Keep literal $& and $1 in rules.'
Set-Content -LiteralPath "$fixtureKit/rules/claude/CLAUDE.md" -Value 'Claude rules'
Set-Content -LiteralPath "$profilePath/.codex/AGENTS.md" -Value 'Keep these personal instructions.'
function Assert([bool]$Condition, [string]$Message) { if (-not $Condition) { throw $Message } }
function Status { @(& "$fixtureKit/scripts/install.ps1" -StatusOnly -ProfileRoot $profilePath) }

$before = Get-ChildItem -LiteralPath $fixture -Recurse -File | Get-FileHash
Assert (@(Status | Where-Object Status -like 'Missing*').Count -eq 3) 'Profile should report two missing skills and one missing rules file.'
$after = Get-ChildItem -LiteralPath $fixture -Recurse -File | Get-FileHash
Assert (($before.Hash -join ',') -eq ($after.Hash -join ',')) 'Status must not change files.'

& "$fixtureKit/scripts/install.ps1" -ProfileRoot $profilePath
Assert (@(Status | Where-Object Status -eq 'Linked').Count -eq 2) 'Both agents should link the skill.'
Assert (@(Status | Where-Object Status -eq 'Matching rules').Count -eq 2) 'Both rule blocks should match.'
$ruleBefore = Get-Content -LiteralPath "$profilePath/.codex/AGENTS.md" -Raw
& "$fixtureKit/scripts/install.ps1" -ProfileRoot $profilePath
Assert ((Get-Content -LiteralPath "$profilePath/.codex/AGENTS.md" -Raw) -ceq $ruleBefore) 'Repeated installation must be idempotent.'
Assert ($ruleBefore.Contains('Keep these personal instructions.') -and $ruleBefore.Contains('Keep literal $& and $1 in rules.')) 'Personal text and literal dollar expressions must survive.'

$copyProfile = Join-Path $fixture 'copies'
& "$fixtureKit/scripts/install.ps1" -ProfileRoot $copyProfile -Mode Copy
$copyStatus = @(& "$fixtureKit/scripts/install.ps1" -StatusOnly -ProfileRoot $copyProfile)
Assert (@($copyStatus | Where-Object Status -eq 'Matching copy').Count -eq 2) 'Fresh copies should match.'
Set-Content -LiteralPath "$copyProfile/.codex/skills/sample/references/check.md" -Value 'User edit'
& "$fixtureKit/scripts/install.ps1" -ProfileRoot $copyProfile -Mode Copy
$copyStatus = @(& "$fixtureKit/scripts/install.ps1" -StatusOnly -ProfileRoot $copyProfile)
Assert (@($copyStatus | Where-Object Status -eq 'Different copy').Count -eq 1) 'Changed references must be detected and preserved.'
New-Item -ItemType Directory -Path "$fixture/wrong-target" | Out-Null
$wrongProfile = Join-Path $fixture 'wrong'
New-Item -ItemType Directory -Force -Path "$wrongProfile/.codex/skills" | Out-Null
New-Item -ItemType Junction -Path "$wrongProfile/.codex/skills/sample" -Target "$fixture/wrong-target" | Out-Null
$wrong = @(& "$fixtureKit/scripts/install.ps1" -StatusOnly -Target Codex -ProfileRoot $wrongProfile)
Assert (@($wrong | Where-Object Status -eq 'Different or broken link').Count -eq 1) 'Wrong link target must be reported.'
Write-Output "PASS: read-only status, links, copies, rule updates, idempotence, literal text, and conflict preservation. Fixtures: $fixture"
