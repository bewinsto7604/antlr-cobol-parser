@echo off
REM Add Java to PATH for current session

set JAVA_HOME=C:\Users\samue\Downloads\OpenJDK21U-jre_x64_windows_hotspot_21.0.9_10\jdk-21.0.9+10-jre
set PATH=%JAVA_HOME%\bin;%PATH%

echo Java added to PATH for this session.
echo.
echo Testing Java:
java -version
echo.
echo You can now run: npm run generate
echo.
