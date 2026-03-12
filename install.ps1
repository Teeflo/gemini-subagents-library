# Gemini SubAgents Library Installer for Windows
# This script installs the agents into the local project or global Gemini CLI config

$targetDir = ".\.gemini\agents"
$repoUrl = "https://github.com/Teeflo/gemini-subagents-library.git"

Write-Host "🤖 Gemini CLI SubAgents Installer" -ForegroundColor Cyan
Write-Host "----------------------------------"

if (!(Test-Path ".git") -and ($args[0] -ne "--global")) {
    Write-Host "⚠️ Not in a git repository. Installing globally..." -ForegroundColor Yellow
    $targetDir = "$HOME\.gemini\agents"
}

if ($args[0] -eq "--global") {
    $targetDir = "$HOME\.gemini\agents"
}

if (!(Test-Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
}

$tempDir = [System.IO.Path]::Combine([System.IO.Path]::GetTempPath(), [System.IO.Path]::GetRandomFileName())
New-Item -ItemType Directory -Path $tempDir | Out-Null

Write-Host "Downloading library..."
git clone --depth 1 $repoUrl $tempDir 2>$null

Write-Host "Installing 3,500+ experts into $targetDir..."
Copy-Item -Path "$tempDir\.gemini\agents\*" -Destination $targetDir -Recurse -Force

Remove-Item -Path $tempDir -Recurse -Force

Write-Host "✅ Installation complete! You now have a world-class AI workforce at your fingertips." -ForegroundColor Green
Write-Host "Type 'gemini --list-agents' to see your new experts."
