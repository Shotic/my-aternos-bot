@echo off
title Minecraft AFK Bot - 24/7
color 0A

:: Check if Node.js is installed
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ============================================
    echo   ERROR: Node.js is NOT installed!
    echo ============================================
    echo.
    echo Please install Node.js from:
    echo   https://nodejs.org/
    echo.
    echo Download the LTS version, install it, then
    echo run this file again.
    echo.
    pause
    exit /b
)

echo ============================================
echo   Minecraft AFK Bot - Keeping Server Alive
echo ============================================
echo.
echo Starting bot... Press Ctrl+C to stop.
echo.
cd /d "%~dp0"
node index.js
echo.
echo Bot has stopped. Press any key to exit...
pause >nul
