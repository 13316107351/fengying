@echo off
cd /d "C:\Users\Administrator\fengying"


rem git add Build/tianwen1-final.framework.js

git add 000_同步1个文件.bat

git commit -m "Auto update: %date% %time%"

git pull --rebase origin main

if errorlevel 1 (
    echo !!! Conflict detected. Keeping local version...
    git checkout --ours Build/tianwen1-final.framework.js  :: 强制使用本地版本
    git add Build/tianwen1-final.framework.js              :: 标记冲突已解决
    git rebase --continue
)

git push origin main

echo Sync complete.
pause