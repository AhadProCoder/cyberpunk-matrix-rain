@echo off
echo ========================================================
echo Pushing cyberpunk-matrix-rain to GitHub (sidahad)
echo ========================================================
git init
git branch -M main
git add .
git commit -m "feat: initial release of cyberpunk-matrix-rain by @AhadProCoder"
git remote remove origin 2>nul
git remote add origin https://github.com/sidahad/cyberpunk-matrix-rain.git
echo.
echo Attempting to push to remote main...
git push -u origin main
echo.
echo ========================================================
echo Done! Check your repo at: https://github.com/sidahad/cyberpunk-matrix-rain
echo ========================================================
pause
