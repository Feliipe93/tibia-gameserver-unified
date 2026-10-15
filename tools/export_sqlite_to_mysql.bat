@echo off
echo ==============================================================================
echo Tibia 7.72 - SQLite to MySQL Exporter
echo ==============================================================================
echo.
cd /d "%~dp0\.."

set "PY_CMD=python"
where python >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    if exist "%LOCALAPPDATA%\Programs\Python\Python312\python.exe" (
        set "PY_CMD=%LOCALAPPDATA%\Programs\Python\Python312\python.exe"
    )
)

"%PY_CMD%" tools\export_sqlite_to_mysql.py tibia.db tibia_mysql_full.sql
echo.
echo Done! The file tibia_mysql_full.sql is ready to be imported into MySQL/MariaDB.
pause
