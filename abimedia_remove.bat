@ECHO OFF

REM Rename uninstall file to avoid Windows' UAC popup

REN unins000.exe abimedia_remove.exe
REN unins000.dat abimedia_remove.dat

REM Execute renamed uninstall file
abimedia_remove.exe

IF ERRORLEVEL 1 GOTO has_errorlevel

REM No errorlevel
GOTO end

:has_errorlevel
REM User has cancelled uninstallation. Roll back rename to remain
REM Windows default uninstall bindings

REN abimedia_remove.exe unins000.exe
REN abimedia_remove.dat unins000.dat

:end