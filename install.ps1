# ServiceOptimizer.AI - Installation Script
# Run: irm https://raw.githubusercontent.com/Walkoud/ServiceOptimizer.AI/main/install.ps1 | iex

$ErrorActionPreference = "Stop"

Write-Host "`n=== ServiceOptimizer.AI Installation ===" -ForegroundColor Cyan
Write-Host ""

# GitHub repository
$GitHubRepo = "https://raw.githubusercontent.com/Walkoud/ServiceOptimizer.AI/main"
$InstallDir = Join-Path $env:USERPROFILE "ServiceOptimizer.AI"

# Create installation directory
if (-not (Test-Path $InstallDir)) {
    New-Item -ItemType Directory -Path $InstallDir -Force | Out-Null
    Write-Host "Created installation directory: $InstallDir" -ForegroundColor Green
}

# Files to download
$Files = @(
    @{Name = "index.ps1"; Url = "$GitHubRepo/index.ps1"},
    @{Name = "languages.json"; Url = "$GitHubRepo/languages.json"},
    @{Name = "prompt.txt"; Url = "$GitHubRepo/prompt.txt"}
)

Write-Host "Downloading files..." -ForegroundColor Yellow

foreach ($file in $Files) {
    $filePath = Join-Path $InstallDir $file.Name
    try {
        Write-Host "  - Downloading $($file.Name)..." -ForegroundColor Gray
        $webClient = New-Object System.Net.WebClient
        $webClient.Encoding = [System.Text.Encoding]::UTF8
        $content = $webClient.DownloadString($file.Url)
        [System.IO.File]::WriteAllText($filePath, $content, [System.Text.Encoding]::UTF8)
        Write-Host "    ✓ $($file.Name) downloaded" -ForegroundColor Green
    } catch {
        Write-Host "    ✗ Failed to download $($file.Name): $($_.Exception.Message)" -ForegroundColor Red
        exit 1
    }
}

Write-Host ""
Write-Host "Installation complete!" -ForegroundColor Green
Write-Host ""
Write-Host "To run ServiceOptimizer.AI, execute:" -ForegroundColor Cyan
Write-Host "  cd '$InstallDir'" -ForegroundColor White
Write-Host "  .\index.ps1" -ForegroundColor White
Write-Host ""
Write-Host "Or create a shortcut to:" -ForegroundColor Cyan
Write-Host "  powershell.exe -ExecutionPolicy Bypass -File `"$InstallDir\index.ps1`"" -ForegroundColor White
Write-Host ""

# Ask if user wants to run now
$runNow = Read-Host "Do you want to run ServiceOptimizer.AI now? (Y/N)"
if ($runNow -eq "Y" -or $runNow -eq "y") {
    Set-Location $InstallDir
    & "$InstallDir\index.ps1"
}
