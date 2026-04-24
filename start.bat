@echo off
setlocal
title dupeGuru
cd /d "%~dp0"

echo [dupeGuru] Starting...
python --version >nul 2>nul
if errorlevel 1 (
    echo [dupeGuru] python not found. Please install it.
    pause
    exit /b 1
)

python -m dupeguru

if errorlevel 1 (
    echo [dupeGuru] Exited with error code %errorlevel%.
    pause
)
endlocal
