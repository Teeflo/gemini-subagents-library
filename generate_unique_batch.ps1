param(
    [string]$Category
)

$targetDir = ".gemini/agents/$Category"
if (!(Test-Path $targetDir)) { New-Item -ItemType Directory -Path $targetDir -Force }
Remove-Item "$targetDir\*.md" -Force -ErrorAction SilentlyContinue

$roles = @("expert", "specialist", "auditor", "architect", "lead", "manager", "engineer", "designer", "coordinator", "analyst", "consultant", "strategist", "pro", "master", "advisor")
$domains = @("systems", "infrastructure", "data", "security", "cloud", "network", "performance", "compliance", "integration", "operations", "strategy", "metrics", "platform", "lifecycle", "architecture")
$focuses = @("optimization", "migration", "automation", "deployment", "monitoring", "testing", "research", "governance", "support", "planning", "delivery", "orchestration", "quality", "analytics", "engineering")

$count = 1
for ($i=0; $i -lt $roles.Length; $i++) {
    for ($j=0; $j -lt $domains.Length; $j++) {
        for ($k=0; $k -lt $focuses.Length; $k++) {
            if ($count -gt 100) { break }
            
            $role = $roles[$i]
            $domain = $domains[$j]
            $focus = $focuses[$k]
            
            $name = "$Category-$domain-$focus-$role"
            $description = "Specialized $role focusing on $domain $focus within the $Category sector."
            $model = if ($count % 3 -eq 0) { "gemini-3.1-pro" } else { "gemini-3-flash" }
            $prompt = "You are a senior $role in $Category. Your specific expertise is $domain $focus. Analyze, advise, and execute tasks related to $focus of $domain systems to achieve optimal results."
            
            $filePath = Join-Path $targetDir "$name.md"
            
            $content = @"
---
name: $name
description: $description
model: $model
tools: [run_shell_command, read_file, grep_search, glob]
temperature: 0.7
max_turns: 10
---
$prompt
"@
            Set-Content -Path $filePath -Value $content -Encoding UTF8
            $count++
        }
        if ($count -gt 100) { break }
    }
    if ($count -gt 100) { break }
}
