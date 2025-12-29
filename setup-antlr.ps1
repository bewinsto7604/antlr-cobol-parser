# ANTLR Parser Setup for COBOL
Write-Host "========================================"
Write-Host "ANTLR Parser Setup for COBOL"
Write-Host "========================================"
Write-Host ""

# Check if Java is installed
Write-Host "Checking for Java..."
try {
    $javaVersion = java -version 2>&1
    Write-Host "[OK] Java is installed" -ForegroundColor Green
    Write-Host $javaVersion[0]
    Write-Host ""
} catch {
    Write-Host "[X] Java is NOT installed" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Java to use ANTLR:"
    Write-Host "1. Go to: https://adoptium.net/temurin/releases/"
    Write-Host "2. Download 'JRE' for Windows x64"
    Write-Host "3. Run installer"
    Write-Host "4. Restart PowerShell and run this script again"
    Write-Host ""
    Write-Host "Press any key to open download page..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    Start-Process "https://adoptium.net/temurin/releases/"
    exit 1
}

# Check if ANTLR JAR exists
$antlrJar = "antlr-4.13.1-complete.jar"
if (-not (Test-Path $antlrJar)) {
    Write-Host "Downloading ANTLR JAR..." -ForegroundColor Yellow
    try {
        Invoke-WebRequest -Uri "https://www.antlr.org/download/antlr-4.13.1-complete.jar" -OutFile $antlrJar
        Write-Host "[OK] ANTLR JAR downloaded" -ForegroundColor Green
    } catch {
        Write-Host "[X] Failed to download ANTLR JAR" -ForegroundColor Red
        Write-Host "Please download manually from: https://www.antlr.org/download/"
        pause
        exit 1
    }
} else {
    Write-Host "[OK] ANTLR JAR already exists" -ForegroundColor Green
}
Write-Host ""

# Create generated directory if it doesn't exist
if (-not (Test-Path "src\generated")) {
    New-Item -ItemType Directory -Path "src\generated" | Out-Null
}

# Generate parser
Write-Host "Generating ANTLR parser from grammar..." -ForegroundColor Yellow
java -jar $antlrJar -Dlanguage=JavaScript -o src\generated grammar\Cobol85.g4

if ($LASTEXITCODE -ne 0) {
    Write-Host "[X] Parser generation failed" -ForegroundColor Red
    pause
    exit 1
}

Write-Host ""
Write-Host "========================================"  -ForegroundColor Green
Write-Host "SUCCESS! ANTLR Parser Generated" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Generated files:"
Get-ChildItem src\generated\*.js | ForEach-Object { Write-Host "  - $($_.Name)" }
Write-Host ""
Write-Host "Now you can use:"
Write-Host "  node src\antlr-parser.js copybook\COSMATRX.cpy" -ForegroundColor Cyan
Write-Host ""
Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
