@echo off
rem Pomodoro-Focus-Timer -- oeffnet die aktuelle Online-Version in einem
rem eigenen, schlanken App-Fenster (kein Tab, keine Adressleiste).
rem Benoetigt eine Internetverbindung beim Start und Chrome oder Edge.

set "URL=https://romonasa.github.io/pomodoro-focus-timer/Pomodoro-Focus-Timer.html"
set "WINSIZE=420,720"

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
start "" "%CHROME1%" --app="%URL%" --window-size=%WINSIZE%
goto :END

:USE_CHROME2
start "" "%CHROME2%" --app="%URL%" --window-size=%WINSIZE%
goto :END

:USE_CHROME3
start "" "%CHROME3%" --app="%URL%" --window-size=%WINSIZE%
goto :END

:USE_EDGE1
start "" "%EDGE1%" --app="%URL%" --window-size=%WINSIZE%
goto :END

:USE_EDGE2
start "" "%EDGE2%" --app="%URL%" --window-size=%WINSIZE%
goto :END

:FALLBACK
rem Chrome/Edge an den ueblichen Stellen nicht gefunden - oeffnet stattdessen
rem im Standardbrowser als normalen Tab
start "" "%URL%"

:END
