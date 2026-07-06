# Links the canonical create-vision-companion skill into this repo's Claude and
# Codex local skills folders.
#
# The skill lives canonically in ai-knowhow/skills-plugins and is junction-linked
# into both locations so it is not duplicated. The junctions are gitignored (see
# .gitignore), so each clone/checkout needs to run this script once to recreate
# the links.
#
# Usage:  pwsh .\link-skill-create-vision-companion.ps1

$ErrorActionPreference = 'Stop'

$source = 'C:\PROJ\ai-knowhow\skills-plugins\create-vision-companion'
$skillDirectories = @(
    (Join-Path $PSScriptRoot '.claude\skills')
    (Join-Path $PSScriptRoot '.agents\skills')
)

if (-not (Test-Path -LiteralPath $source)) {
    throw "Source skill not found: $source"
}

foreach ($skillDirectory in $skillDirectories) {
    if (-not (Test-Path -LiteralPath $skillDirectory)) {
        New-Item -ItemType Directory -Path $skillDirectory -Force | Out-Null
    }

    $link = Join-Path $skillDirectory 'create-vision-companion'

    if (Test-Path -LiteralPath $link) {
        $item = Get-Item -LiteralPath $link -Force
        if ($item.LinkType -eq 'Junction') {
            Write-Host "Junction already exists: $link -> $($item.Target)"
            continue
        }
        throw "Path already exists and is not a junction: $link"
    }

    New-Item -ItemType Junction -Path $link -Target $source | Out-Null
    Write-Host "Created junction: $link -> $source"
}
