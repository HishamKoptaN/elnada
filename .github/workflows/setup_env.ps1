# Setup Environment Script
Write-Host "🔧 Setting up environment..." -ForegroundColor Cyan

# Checkout code
Write-Host "📥 Checking out code..." -ForegroundColor Yellow
git checkout $env:GITHUB_REF_NAME

# Setup Shorebird
Write-Host "🐦 Setting up Shorebird..." -ForegroundColor Yellow
# Shorebird setup happens automatically in GitHub Actions

# Setup Flutter
Write-Host "🧩 Setting up Flutter..." -ForegroundColor Yellow
flutter config --enable-windows-desktop
flutter pub get

# Fix Windows long paths
Write-Host "🛠️ Fixing Windows long paths..." -ForegroundColor Yellow
git config --system core.longpaths true

Write-Host "✅ Environment setup completed!" -ForegroundColor Green
