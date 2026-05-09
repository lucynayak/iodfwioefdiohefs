@echo off
cd /d "%~dp0"
py -3.10 "%~dp0photo_music_video_maker.py"
if errorlevel 1 (
  echo.
  echo Не удалось запустить программу через Python 3.10.
  echo Проверь, что Python установлен и доступен через команду "py".
  pause
)
