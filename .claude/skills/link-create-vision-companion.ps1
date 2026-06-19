# Links the canonical create-vision-companion skill into this repo's local skills folder.
#
# The skill lives canonically in ai-knowhow/skills-plugins and is junction-linked
# here so it is not duplicated. The junction is gitignored (see .gitignore), so
# each clone/checkout needs to run this script once to recreate the link.
#
# Usage:  pwsh .\.claude\skills\link-create-vision-companion.ps1

$ErrorActionPreference = 'Stop'

$source = 'C:\PROJ\ai-knowhow\skills-plugins\create-vision-companion'
$link   = Join-Path $PSScriptRoot 'create-vision-companion'

if (-not (Test-Path -LiteralPath $source)) {
    throw "Source skill not found: $source"
}

if (Test-Path -LiteralPath $link) {
    $item = Get-Item -LiteralPath $link -Force
    if ($item.LinkType -eq 'Junction') {
        Write-Host "Junction already exists: $link -> $($item.Target)"
        return
    }
    throw "Path already exists and is not a junction: $link"
}

New-Item -ItemType Junction -Path $link -Target $source | Out-Null
Write-Host "Created junction: $link -> $source"
