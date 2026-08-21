@echo off
rem Manche Zip-Programme uebernehmen die Windows-Attribute fuer desktop.ini
rem nicht automatisch. Falls der Ordner nach dem Entpacken noch das
rem Standard-Symbol zeigt, einfach diese Datei doppelklicken.
attrib +s +r "%~dp0."
attrib +h +s "%~dp0desktop.ini"
echo Fertig. Ordner ggf. einmal schliessen und neu oeffnen.
pause
