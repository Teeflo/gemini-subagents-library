param(
    [string]$Category,
    [array]$AgentsMetadata
)

$targetDir = ".gemini/agents/$Category"
if (!(Test-Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir -Force
}

foreach ($agent in $AgentsMetadata) {
    $name = $agent.name
    $description = $agent.description
    $model = if ($agent.model) { $agent.model } else { "gemini-3-flash" }
    $tools = if ($agent.tools) { $agent.tools } else { "run_shell_command, read_file, grep_search, glob" }
    $temp = if ($agent.temperature) { $agent.temperature } else { 0.7 }
    $maxTurns = if ($agent.max_turns) { $agent.max_turns } else { 10 }
    $prompt = $agent.prompt

    $filePath = Join-Path $targetDir "$name.md"
    
    $content = @"
---
name: $name
description: $description
model: $model
tools: [$tools]
temperature: $temp
max_turns: $maxTurns
---
$prompt
"@

    Set-Content -Path $filePath -Value $content -Encoding UTF8
}
