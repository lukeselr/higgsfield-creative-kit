# Higgsfield Creative Kit installer (Windows)
# Drops the connector skill + vendored prompt skill into $HOME\.claude\skills\
# Drops templates + docs into $HOME\Higgsfield-Creative-Kit\
# Idempotent — safe to re-run.

$ErrorActionPreference = "Stop"

$KitRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$SkillsDir = Join-Path $env:USERPROFILE ".claude\skills"
$KitHome = Join-Path $env:USERPROFILE "Higgsfield-Creative-Kit"

Write-Host ""
Write-Host "Higgsfield Creative Kit installer"
Write-Host "  source: $KitRoot"
Write-Host "  skills: $SkillsDir"
Write-Host "  kit home: $KitHome"
Write-Host ""

New-Item -ItemType Directory -Force -Path $SkillsDir | Out-Null
New-Item -ItemType Directory -Force -Path $KitHome | Out-Null

# 1. Connector skill
Write-Host "Installing higgsfield-connector skill..."
$connectorTarget = Join-Path $SkillsDir "higgsfield-connector"
if (Test-Path $connectorTarget) { Remove-Item -Recurse -Force $connectorTarget }
Copy-Item -Recurse (Join-Path $KitRoot "skills\higgsfield-connector") $connectorTarget

# 2. Vendored prompt skill
Write-Host "Installing higgsfield prompt skill (vendored from OSideMedia, MIT)..."
$promptTarget = Join-Path $SkillsDir "higgsfield"
if (Test-Path $promptTarget) { Remove-Item -Recurse -Force $promptTarget }
Copy-Item -Recurse (Join-Path $KitRoot "skills\higgsfield") $promptTarget

# 3. Templates + docs
Write-Host "Installing templates + docs to $KitHome..."
New-Item -ItemType Directory -Force -Path (Join-Path $KitHome "templates") | Out-Null
New-Item -ItemType Directory -Force -Path (Join-Path $KitHome "docs") | Out-Null
Copy-Item -Recurse -Force (Join-Path $KitRoot "templates\*") (Join-Path $KitHome "templates")
Copy-Item -Recurse -Force (Join-Path $KitRoot "docs\*") (Join-Path $KitHome "docs")
foreach ($f in @("README.md", "PROMPTS.md", "NOTICE")) {
  $src = Join-Path $KitRoot $f
  if (Test-Path $src) { Copy-Item $src (Join-Path $KitHome $f) -Force }
}

Write-Host ""
Write-Host "Done. Two skills installed, templates + docs in $KitHome."
Write-Host ""
Write-Host "Next: ask Claude Code to 'connect Higgsfield' and the connector skill will run."
Write-Host ""
