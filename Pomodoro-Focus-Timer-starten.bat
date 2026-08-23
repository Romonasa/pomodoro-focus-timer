@echo off
setlocal

rem --- Pfad dieser Datei ermitteln (Ordner, in dem auch die HTML-Datei liegt) ---
set "DIR=%~dp0"
set "FILEPATH=%DIR%Pomodoro-Focus-Timer.html"
set "FILEURL=file:///%FILEPATH:\=/%"

rem --- Fenstergroesse fuer das App-Fenster (Breite,Hoehe in Pixel) ---
set "WINSIZE=420,720"

rem --- Moegliche Installationspfade von Chrome / Edge ---
set "PF=%ProgramFiles%"
set "PF86=%ProgramFiles(x86)%"
set "LAD=%LocalAppData%"

set "CHROME1=%PF%\Google\Chrome\Application\chrome.exe"
set "CHROME2=%PF86%\Google\Chrome\Application\chrome.exe"
set "CHROME3=%LAD%\Google\Chrome\Application\chrome.exe"
set "EDGE1=%PF86%\Microsoft\Edge\Application\msedge.exe"
set "EDGE2=%PF%\Microsoft\Edge\Application\msedge.exe"

if exist "%CHROME1%" goto :USE_CHROME1
if exist "%CHROME2%" goto :USE_CHROME2
if exist "%CHROME3%" goto :USE_CHROME3
if exist "%EDGE1%" goto :USE_EDGE1
if exist "%EDGE2%" goto :USE_EDGE2
goto :FALLBACK

:USE_CHROME1
start "" "%CHROME1%" --app="%FILEURL%" --window-size=%WINSIZE%
goto :END

:USE_CHROME2
start "" "%CHROME2%" --app="%FILEURL%" --window-size=%WINSIZE%
goto :END

:USE_CHROME3
start "" "%CHROME3%" --app="%FILEURL%" --window-size=%WINSIZE%
goto :END

:USE_EDGE1
start "" "%EDGE1%" --app="%FILEURL%" --window-size=%WINSIZE%
goto :END

:USE_EDGE2
start "" "%EDGE2%" --app="%FILEURL%" --window-size=%WINSIZE%
goto :END

:FALLBACK
rem Chrome/Edge an den ueblichen Stellen nicht gefunden - oeffnet stattdessen normal im Standardbrowser
start "" "%FILEPATH%"

:END
endlocal
