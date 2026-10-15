@echo off
chcp 65001 >nul
title Tibia Data Studio - Unified Editor
cd /d "%~dp0\tibia_data_studio"

echo =========================================================================
echo       TIBIA DATA STUDIO - LAUNCHING UNIFIED DATA EDITOR
echo =========================================================================
echo.

set "PY_CMD=python"
where python >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    if exist "%LOCALAPPDATA%\Programs\Python\Python312\python.exe" (
        set "PY_CMD=%LOCALAPPDATA%\Programs\Python\Python312\python.exe"
    )
)

"%PY_CMD%" run_editor.py

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] Failed to run Python. Please ensure Python is installed and added to PATH.
    pause
)
