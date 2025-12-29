@echo off
echo ========================================
echo ANTLR Parser Setup for COBOL
echo ========================================
echo.

REM Check if Java is installed
echo Checking for Java...
java -version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo [X] Java is NOT installed
    echo.
    echo Please install Java to use ANTLR:
    echo 1. Go to: https://adoptium.net/temurin/releases/
    echo 2. Download "JRE" for Windows x64
    echo 3. Run installer
    echo 4. Restart this script
    echo.
    pause
    exit /b 1
)

echo [OK] Java is installed
java -version
echo.

REM Check if ANTLR JAR exists
set ANTLR_JAR=antlr-4.13.1-complete.jar
if not exist %ANTLR_JAR% (
    echo Downloading ANTLR JAR...
    curl -L -o %ANTLR_JAR% https://www.antlr.org/download/antlr-4.13.1-complete.jar
    if %ERRORLEVEL% NEQ 0 (
        echo [X] Failed to download ANTLR JAR
        echo Please download manually from: https://www.antlr.org/download/
        pause
        exit /b 1
    )
    echo [OK] ANTLR JAR downloaded
) else (
    echo [OK] ANTLR JAR already exists
)
echo.

REM Generate parser
echo Generating ANTLR parser from grammar...
if not exist src\generated mkdir src\generated
java -jar %ANTLR_JAR% -Dlanguage=JavaScript -o src\generated grammar\Cobol85.g4

if %ERRORLEVEL% NEQ 0 (
    echo [X] Parser generation failed
    pause
    exit /b 1
)

echo.
echo ========================================
echo SUCCESS! ANTLR Parser Generated
echo ========================================
echo.
echo Generated files:
dir src\generated\*.js
echo.
echo Now you can use:
echo   node src\antlr-parser.js copybook\COSMATRX.cpy
echo.
pause
