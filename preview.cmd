@echo off
setlocal
rem ---- Preview the portfolio locally -------------------------------
rem Double-click this file (or run it) to serve the site and open it
rem in your default browser. Close the window to stop the server.

set "PORT=5500"
set "ROOT=%~dp0"

rem Pick a Python launcher: py -3 first, then python.
set "PY="
py -3 -V >nul 2>&1 && set "PY=py -3"
if not defined PY (
  python -V >nul 2>&1 && set "PY=python"
)

if not defined PY (
  where npx >nul 2>&1
  if errorlevel 1 (
    echo Could not find Python or npx. Install either one, then re-run.
    pause
    exit /b 1
  )
  echo Python not found - falling back to npx serve.
  start "" "http://localhost:%PORT%/"
  npx --yes serve -l %PORT% "%ROOT%"
  exit /b
)

echo.
echo   Portfolio preview
echo   http://localhost:%PORT%/
echo   Press Ctrl+C or close this window to stop.
echo.

rem Give the server a moment before the browser hits it.
start "" cmd /c "timeout /t 1 /nobreak >nul & start "" http://localhost:%PORT%/"

%PY% -m http.server %PORT% --directory "%ROOT%" --bind 127.0.0.1
