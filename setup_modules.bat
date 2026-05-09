@echo off
echo Creating modules directory...
mkdir "C:\Users\triggertrash\Desktop\horrible\smali\dev\virus\variable\modules" 2>nul
echo Running setup script...
python "%~dp0setup_modules.py"
echo Done!
pause
