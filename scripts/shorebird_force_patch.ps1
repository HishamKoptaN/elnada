$pubspec = Get-Content pubspec.yaml | Out-String
if ($pubspec -match 'version:\s*([^\s]+)') {
    $version = $matches[1].Trim()
    echo "FULL_VERSION=$version" >> $env:GITHUB_ENV
    Write-Host "🔍 Target Version: $version" -ForegroundColor Cyan
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

Write-Host "🚀 Trying PATCH first..."
shorebird patch windows --release-version=$version --dart-define=ENV=$flavor --verbose --force

if ($LASTEXITCODE -ne 0) {
    Write-Host "📦 Patch failed → fallback to RELEASE" -ForegroundColor Yellow
    shorebird release windows --dart-define=ENV=$flavor --verbose --force
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ Both PATCH and RELEASE failed!" -ForegroundColor Red
        exit 1
    } else {
        Write-Host "✅ Release succeeded" -ForegroundColor Green
    }
} else {
    Write-Host "✅ Patch succeeded" -ForegroundColor Green
}
