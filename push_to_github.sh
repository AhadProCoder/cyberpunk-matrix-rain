#!/bin/bash
git init
git branch -M main
git add .
git commit -m "feat: initial release of cyberpunk-matrix-rain by @AhadProCoder"
git remote remove origin 2>/dev/null
git remote add origin https://github.com/sidahad/cyberpunk-matrix-rain.git
git push -u origin main
