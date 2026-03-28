# Auto-increment version script for Shorebird
param(
    [string]$Flavor = "prod"
)

# Read current version
$pubspec = Get-Content pubspec.yaml | Out-String
if ($pubspec -match 'version:\s*([^\s]+)') {
    $currentVersion = $matches[1].Trim()
    Write-Host "📋 Current version: $currentVersion" -ForegroundColor Cyan
    
    $versionParts = $currentVersion.Split('+')
    if ($versionParts.Count -eq 2) {
        $baseVersion = $versionParts[0]
        $buildNumber = [int]$versionParts[1]
        $newBuildNumber = $buildNumber + 1
        $newVersion = "$baseVersion+$newBuildNumber"
        
        Write-Host "🔄 Incrementing to: $newVersion" -ForegroundColor Green
        
        # Update pubspec.yaml
        (Get-Content pubspec.yaml) -replace "version:\s*$currentVersion", "version: $newVersion" | Set-Content pubspec.yaml
        
        # Commit and push
        git config --global user.name "github-actions[bot]"
        git config --global user.email "github-actions[bot]@users.noreply.github.com"
        git add pubspec.yaml
        git commit -m "chore: bump version to $newVersion for $Flavor release [skip ci]"
        git push origin $Flavor
        
        Write-Host "✅ Version bumped and pushed" -ForegroundColor Green
        exit 0
    } else {
        Write-Error "❌ Invalid version format: $currentVersion"
        exit 1
    }
} else {
    Write-Error "❌ Could not find version in pubspec.yaml"
    exit 1
}
