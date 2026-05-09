@echo off
cd /d "C:\Users\triggertrash\Desktop\horrible"
echo === Horrible Client: Native Library Analysis ===
echo.
python analyze_so.py
echo.
echo Results saved to analysis_results.txt
echo.
pause
