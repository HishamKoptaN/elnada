# Read current version
$pubspec = Get-Content pubspec.yaml | Out-String
if ($pubspec -match 'version:\s*([^\s]+)') {
    $currentVersion = $matches[1].Trim()
    Write-Host "🔍 Current Version: $currentVersion" -ForegroundColor Cyan
    
    # Extract version and build number
    if ($currentVersion -match '^(.+)\+(\d+)$') {
        $version = $matches[1]
        $buildNumber = [int]$matches[2] + 1
        $newVersion = "$version+$buildNumber"
        
        Write-Host "📝 Bumping version to: $newVersion" -ForegroundColor Yellow
        
        # Update pubspec.yaml
        (Get-Content pubspec.yaml) -replace "version:\s*$currentVersion", "version: $newVersion" | Set-Content pubspec.yaml
        
        echo "FULL_VERSION=$newVersion" >> $env:GITHUB_ENV
    } else {
        echo "FULL_VERSION=$currentVersion" >> $env:GITHUB_ENV
        $newVersion = $currentVersion
    }
} else {
    Write-Error "❌ Could not find version in pubspec.yaml"
    exit 1
}

$flavor = "prod"
$TARGET_ID = if ($flavor -eq "prod") { 
    "ed427ccb-5edb-4594-a376-2ee9636bef4e" 
} else { 
    "e962126d-ee7a-48f2-b89d-fb0349f4a05f" 
}

(Get-Content shorebird.yaml) -replace '^app_id:.*', "app_id: $TARGET_ID" | Set-Content shorebird.yaml
Write-Host "✅ App ID Switched to: $TARGET_ID" -ForegroundColor Green

Write-Host "🚀 Creating PATCH with new version..."
shorebird patch windows --release-version=$newVersion --dart-define=ENV=$flavor --verbose

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Patch failed!" -ForegroundColor Red
    exit 1
} else {
    Write-Host "✅ Patch succeeded with version $newVersion" -ForegroundColor Green
}
