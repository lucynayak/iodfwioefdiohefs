@echo off
setlocal enabledelayedexpansion

:: ============================================
:: Horrible Launcher - APK Build & Sign Script
:: Usage: just double-click or run in terminal
:: ============================================

set "PROJECT=%~dp0"
if "%PROJECT:~-1%"=="\" set "PROJECT=%PROJECT:~0,-1%"
set "APKTOOL=%PROJECT%\apktool.jar"
set "SIGNER=%PROJECT%\uber-apk-signer.jar"
set "OUTPUT_DIR=%USERPROFILE%\Desktop\horrible build"
set "FRAME_DIR=%PROJECT%\build\apktool-framework"
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
set VERSION_FILE=%PROJECT%\.build_version
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

for /f %%A in ('powershell -NoProfile -Command "Get-Date -Format yyyyMMdd_HHmmss"') do set "STAMP=%%A"
set VERSION_CODE=1440000
set "VERSION_NAME=1.4.4"
set APK_NAME=horrible_v%VER%_%STAMP%
set APK_PATH=%OUTPUT_DIR%\%APK_NAME%.apk

echo [0/3] Updating APK version metadata...
powershell -NoProfile -ExecutionPolicy Bypass -Command "$ErrorActionPreference='Stop'; $project=$env:PROJECT; $vc=$env:VERSION_CODE; $vn=$env:VERSION_NAME; $y=Join-Path $project 'apktool.yml'; $j=Join-Path $project 'apktool.json'; $s=[IO.File]::ReadAllText($y); $s=$s -replace 'versionCode: ''\d+''', ('versionCode: '''+$vc+''''); $s=$s -replace 'versionName: [^\r\n]+', ('versionName: '+$vn); [IO.File]::WriteAllText($y,$s); $dq=[char]34; $s=[IO.File]::ReadAllText($j); $s=$s -replace ($dq+'versionName'+$dq+': '+$dq+'[^'+$dq+']+'+$dq), ($dq+'versionName'+$dq+': '+$dq+$vn+$dq); $s=$s -replace ($dq+'versionCode'+$dq+': '+$dq+'\d+'+$dq), ($dq+'versionCode'+$dq+': '+$dq+$vc+$dq); [IO.File]::WriteAllText($j,$s)"
if %ERRORLEVEL% neq 0 (
    echo.
    echo [ERROR] Failed to update APK version metadata!
    pause
    exit /b 1
)

echo.
echo ========================================
echo   HORRIBLE LAUNCHER - Build #%VER%
echo   Version: %VERSION_NAME% ^(%VERSION_CODE%^)
echo   Output: %APK_NAME%-aligned-debugSigned.apk
echo   Target: Android 15/16 (SDK 35)
echo   Mode: DEBUG
========================================
echo.

:: Step 1: Build
echo [1/3] Building APK with apktool...
if exist "%PROJECT%\build\apk" rd /s /q "%PROJECT%\build\apk"
if not exist "%FRAME_DIR%" mkdir "%FRAME_DIR%"
java -jar "%APKTOOL%" b "%PROJECT%" -o "%APK_PATH%" --use-aapt2 --frame-path "%FRAME_DIR%"
if %ERRORLEVEL% neq 0 (
    echo.
    echo [ERROR] Build failed!
    echo         Check errors above. Common issues:
    echo         - Invalid resource references
    echo         - Smali syntax errors
    pause
    exit /b 1
)
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
    echo   DONE! Horrible build #%VER%
    echo   APK: %SIGNED%
    echo ========================================
) else (
    echo [WARN] Signed APK not found at expected path
    echo        Check %OUTPUT_DIR% manually
    dir /b "%OUTPUT_DIR%\%APK_NAME%*" 2>nul
)

echo.
pause
