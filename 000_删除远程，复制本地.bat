@echo off
cd /d "C:\Users\Administrator\fengying"

echo === Abort any unfinished rebase ===
git rebase --abort >nul 2>&1

echo === Set correct remote origin ===
git remote set-url origin https://github.com/yuexiuqu/222.git

echo === Remove everything from remote ===
git fetch origin
git rm -r --cached . >nul 2>&1
git add --all

echo === Commit local state ===
git commit -m "Replace remote with local content on %date% %time%" || echo No local changes to commit.

echo === Force push to overwrite remote content ===
git push origin main --force

echo === Sync complete: remote content replaced by local ===
pause
