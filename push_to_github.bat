@echo off
setlocal enabledelayedexpansion
title Push cyberpunk-matrix-rain to GitHub - @AhadProCoder
echo ===================================================================
echo   AHADPROCODER ONE-CLICK GITHUB PUSH: cyberpunk-matrix-rain
echo ===================================================================
echo.

echo [1/3] Preparing Local Repository...
if not exist .git (
    git init
    git branch -M main
)
git config user.name "AhadProCoder"
git config user.email "ahadprocoder@gmail.com"
git add .
git commit -m "feat: initial release of cyberpunk-matrix-rain by @AhadProCoder" 2>nul
git remote remove origin 2>nul
git remote add origin https://github.com/AhadProCoder/cyberpunk-matrix-rain.git

echo.
echo [2/3] Pushing Code Directly to GitHub (AhadProCoder)...
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ===================================================================
    echo SUCCESS! Repository is now live at:
    echo https://github.com/AhadProCoder/cyberpunk-matrix-rain
    echo ===================================================================
    echo.
    pause
    exit /b 0
)

echo.
echo ===================================================================
echo  Push failed. Checking common reasons:
echo ===================================================================
echo 1. Did you create the empty repository on GitHub first?
echo    If NOT, press [O] to open GitHub creation page in your browser.
echo 2. If you saw "Permission denied to sidahad":
echo    Your Windows has your old 'sidahad' login cached.
echo    Press [C] to clear old 'sidahad' login and re-authenticate.
echo ===================================================================
echo.
set /p USER_CHOICE="Enter Choice [O = Open GitHub, C = Clear Old Login, R = Retry Push]: "

if /i "!USER_CHOICE!"=="O" (
    echo Opening GitHub in browser...
    start "" "https://github.com/new?name=cyberpunk-matrix-rain&description=Interactive+creative+coding+project+by+@AhadProCoder"
    echo Once you click "Create repository" on GitHub, come back here and press any key!
    pause
    git push -u origin main
) else if /i "!USER_CHOICE!"=="C" (
    echo Clearing old sidahad credentials from Windows Credential Manager...
    cmdkey /delete:LegacyGeneric:target=git:https://github.com 2>nul
    echo Done! Now attempting push (a GitHub sign-in window will pop up)...
    git push -u origin main
) else (
    git push -u origin main
)

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ===================================================================
    echo SUCCESS! Repository is now live at:
    echo https://github.com/AhadProCoder/cyberpunk-matrix-rain
    echo ===================================================================
)
pause
