@echo off
cd /d "C:\Users\Administrator\fengying"
git add --all
git commit -m "Remove files" >nul 2>&1
git push --force origin main