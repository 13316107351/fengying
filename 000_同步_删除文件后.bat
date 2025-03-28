@echo off
cd /d "C:\Users\Administrator\fengying"

:: 1. First check internet connectivity
ping github.com -n 1 -w 3000  2>&1
if errorlevel 1 (
    echo ERROR: No internet connection or cannot reach GitHub
    pause
    exit /b 1
)

:: 2. Verify Git remote exists
git remote get-url origin 2>&1
if errorlevel 1 (
    echo ERROR: No Git remote configured
    pause
    exit /b 1
)

:: 3. Test authentication
git ls-remote origin HEAD >nul 2>&1
if errorlevel 1 (
    echo ERROR: Failed to authenticate with GitHub
    echo Check your SSH keys or PAT token
    pause
    exit /b 1
)

:: 4. Proceed with force push
git add --all
git commit -m "Remove files" >nul 2>&1
git push --force origin main

if errorlevel 1 (
    echo ERROR: Push failed
    pause
    exit /b 1
)

echo SUCCESS: Remote files synced with local deletions
pause