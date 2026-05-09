@echo off
setlocal enabledelayedexpansion

:: ============================================
:: Minecraft PE 1.1.5 - APK Build & Sign Script
:: Usage: just double-click or run in terminal
:: ============================================

set HORRIBLE=C:\Users\triggertrash\Desktop\horrible
set PROJECT=%HORRIBLE%\Minecraft PE 1.1.5_src
set APKTOOL=%HORRIBLE%\apktool.jar
set SIGNER=%HORRIBLE%\uber-apk-signer.jar
set OUTPUT_DIR=C:\Users\triggertrash\Desktop\horrible build
set FRAME_DIR=%HORRIBLE%\build\apktool-framework
if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

:: Check tools exist
if not exist "%APKTOOL%" (
    echo [ERROR] apktool.jar not found at %APKTOOL%
    pause
    exit /b 1
)
if not exist "%SIGNER%" (
    echo [ERROR] uber-apk-signer.jar not found at %SIGNER%
    pause
    exit /b 1
)

:: Auto-increment version number
set VERSION_FILE=%PROJECT%\.mc_build_version
set VER=
if exist "%VERSION_FILE%" (
    for /f "usebackq delims=" %%A in ("%VERSION_FILE%") do (
        if not defined VER set "VER=%%A"
    )
)
if not defined VER (
    set VER=0
)
set /a VER=VER+1
> "%VERSION_FILE%" echo %VER%

set APK_NAME=minecraft_1.1.5_%VER%
set APK_PATH=%OUTPUT_DIR%\%APK_NAME%.apk

echo.
echo ========================================
echo   MINECRAFT PE 1.1.5 - Build #%VER%
echo   Target: Android 15/16 (SDK 35)
echo   Mode: DEBUG
echo ========================================
echo.

:: Step 1: Build
echo [1/3] Building APK with apktool...
if exist "%PROJECT%\build" rd /s /q "%PROJECT%\build"
if not exist "%FRAME_DIR%" mkdir "%FRAME_DIR%"
java -jar "%APKTOOL%" b "%PROJECT%" -o "%APK_PATH%" --use-aapt1 --frame-path "%FRAME_DIR%"
echo       OK

:: Step 2: Sign (debug)
echo [2/3] Signing APK (debug)...
java -jar "%SIGNER%" --apks "%APK_PATH%" --allowResign
if %ERRORLEVEL% neq 0 (
    echo.
    echo [ERROR] Signing failed!
    pause
    exit /b 1
)

:: Step 3: Cleanup unsigned APK
del "%APK_PATH%" 2>nul

:: Find the signed file
set SIGNED=%OUTPUT_DIR%\%APK_NAME%-aligned-debugSigned.apk
if exist "%SIGNED%" (
    echo       OK
    echo.
    echo ========================================
    echo   DONE! Minecraft PE 1.1.5 build #%VER%
    echo   APK: %SIGNED%
    echo ========================================
) else (
    echo [WARN] Signed APK not found at expected path
    echo        Check %OUTPUT_DIR% manually
    dir /b "%OUTPUT_DIR%\%APK_NAME%*" 2>nul
)

echo.
pause
