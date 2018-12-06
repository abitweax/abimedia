@ECHO OFF
REM This script creates Abimedia install package using JRSoftware Inno Setup

SET ABIVERSION=0.5

REM This should point to your Inno Setup installation folder
REM ISCC is a command-line version of Inno Setup packager
SET ISCC=%ProgramFiles%\Inno Setup 5\ISCC.exe

REM The magic happens here!
"%ISCC%" /OOutput abimedia.iss
