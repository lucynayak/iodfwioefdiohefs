@echo off
REM Build libhorrible_api.so using Android NDK
REM Usage: build_native.bat [path_to_ndk]

if "%1"=="" (
    echo Usage: build_native.bat [path_to_ndk]
    echo Example: build_native.bat C:\Users\YourName\AppData\Local\Android\Sdk\ndk\25.1.8937393
    echo.
    echo Download NDK from: https://developer.android.com/ndk/downloads
    exit /b 1
)

set NDK_PATH=%1
set PROJECT_DIR=%~dp0

echo Building libhorrible_api.so...
echo NDK: %NDK_PATH%
echo Project: %PROJECT_DIR%

"%NDK_PATH%\ndk-build.cmd" -C "%PROJECT_DIR%jni" NDK_PROJECT_PATH="%PROJECT_DIR%jni" APP_BUILD_SCRIPT="%PROJECT_DIR%jni\Android.mk"

if %ERRORLEVEL% EQU 0 (
    echo.
    echo Build successful!
    echo Copying .so to lib/armeabi-v7a...
    
    if exist "%PROJECT_DIR%jni\libs\armeabi-v7a\libhorrible_api.so" (
        copy /Y "%PROJECT_DIR%jni\libs\armeabi-v7a\libhorrible_api.so" "%PROJECT_DIR%lib\armeabi-v7a\"
        echo Copied libhorrible_api.so to lib/armeabi-v7a\
    ) else (
        echo ERROR: libhorrible_api.so not found in build output
        exit /b 1
    )
    
    echo.
    echo Next steps:
    echo 1. Rebuild APK with: build_apk.bat
    echo 2. Sign and install
    echo 3. Test Block.getData - it should now return actual metadata
) else (
    echo.
    echo Build failed. Check NDK installation and paths.
    exit /b 1
)
