@echo off
REM Change directory to your repo folder
cd /d A:/database/Documents/py/data

REM Stage all changes
git add .

REM Create a commit message with current date and time
for /f "tokens=1-4 delims=/-: " %%a in ("%date% %time%") do (
    set commitMsg=Auto-commit on %%a-%%b-%%c at %%d:%%e:%%f
)

REM Commit changes
git commit -m "%commitMsg%"

REM Push changes to main branch
git push origin main

pause
