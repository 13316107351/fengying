@echo off
cd /d "C:\Users\Administrator\fengying"


rem git add Build/tianwen1-final.framework.js

git add 000_ͬ��1���ļ�.bat

git commit -m "Auto update: %date% %time%"

git pull --rebase origin main

if errorlevel 1 (
    echo !!! Conflict detected. Keeping local version...
    git checkout --ours Build/tianwen1-final.framework.js  :: ǿ��ʹ�ñ��ذ汾
    git add Build/tianwen1-final.framework.js              :: ��ǳ�ͻ�ѽ��
    git rebase --continue
)

git push origin main

echo Sync complete.
pause