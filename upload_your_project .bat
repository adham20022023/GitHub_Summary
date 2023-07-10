@echo off
git pull
setlocal

REM Prompt the user for the filename to ignore
set /p ignorefile="Enter filename to ignore (including extension): "

REM Add the filename to the .gitignore file
echo %ignorefile% > .gitignore
echo .gitignore >> .gitignore

REM Prompt the user for the commit message
set /p message="Enter commit message: "

REM Stage changes and commit
git add .
git commit -m "%message%"

REM Prompt the user to confirm push
set /p confirm="Push changes to origin? (y/n): "
if /i "%confirm%"=="y" (
  git push origin main
  echo Changes pushed to origin.
) else (
  echo Changes not pushed to origin.
)

REM Pause for 3 seconds before exiting
timeout 3