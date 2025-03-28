@echo off
cd /d "C:\Users\Administrator\fengying"

rem git add Build/tianwen1-final.framework.js
git add 000_同步_指定文件.bat 

git commit -m "Force update selected files: %date% %time%"

git push --force origin main

echo Force sync completed for 3 files (including root file).
pause