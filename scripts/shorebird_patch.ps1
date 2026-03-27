# Read current version
$pubspec = Get-Content pubspec.yaml | Out-String
if ($pubspec -match 'version:\s*([^\s]+)') {
    $currentVersion = $matches[1].Trim()
    Write-Host "🔍 Current Version: $currentVersion" -ForegroundColor Cyan
    
    echo "FULL_VERSION=$currentVersion" >> $env:GITHUB_ENV
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

Write-Host "🚀 Trying PATCH with --force (for existing version)..."
shorebird patch windows --release-version=$currentVersion --dart-define=ENV=$flavor --verbose --force

if ($LASTEXITCODE -ne 0) {
    Write-Host "📦 Force patch failed → fallback to RELEASE" -ForegroundColor Yellow
    shorebird release windows --dart-define=ENV=$flavor --verbose
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ All attempts failed!" -ForegroundColor Red
        exit 1
    } else {
        Write-Host "✅ Release succeeded" -ForegroundColor Green
    }
} else {
    Write-Host "✅ Force patch succeeded" -ForegroundColor Green
}
