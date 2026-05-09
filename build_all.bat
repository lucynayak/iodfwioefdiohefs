@echo off
echo ========================================
echo   BUILDING ALL: Horrible + Minecraft
echo ========================================
echo.

echo --- Building Horrible Launcher ---
call "%~dp0build_apk.bat"
echo.

echo --- Building Minecraft PE 1.1.5 ---
call "%~dp0build_minecraft.bat"
echo.

echo ========================================
echo   ALL BUILDS COMPLETE
echo ========================================
pause
