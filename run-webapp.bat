@echo off
:: Interactive Batch launcher for create-webapp.ps1
:: Asks user for URL and App Name, then passes to PowerShell

echo =========================================
echo   Web App Creator
echo =========================================
echo.

set /p APPURL=Enter the website URL (example: https://github.com): 
set /p APPNAME=Enter the app name (example: GitHubApp): 

echo.
echo 🚀 Creating "%APPNAME%" from %APPURL% ...
echo.

powershell -NoExit -ExecutionPolicy Bypass -File "%~dp0create-webapp.ps1" "%APPURL%" "%APPNAME%"

echo.
echo ✅ Script finished. You can close this window.
pause
