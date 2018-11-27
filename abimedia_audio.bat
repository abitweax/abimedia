@ECHO OFF
SET LOG=%TEMP%\abimedia_audio_log.txt

ECHO Parameter 1: %1 >%LOG%
ECHO Parameter 2: %2 >>%LOG%

SET S=%2
SET D=%~d2%~p2[Abimedia] %~n2.ogg

ECHO SRCPATH: %S% >>%LOG%
ECHO DSTPATH: %D% >>%LOG%

IF EXIST "%D%" (
	DEL "%D%"
	ECHO Destination file found, deleted: %D% >>%LOG%
)

IF EXIST "%TEMP%\abimedia_audio.wav" (
	DEL "%TEMP%\abimedia_audio.wav"
	ECHO Temporary file found, deleted >>%LOG%
)

ECHO -----------------------------------
ECHO Now executing ffmpeg
ECHO -----------------------------------

"%1\ffmpeg\bin\ffmpeg.exe" -i %2 "%TEMP%\abimedia_audio.wav" >>%LOG%

ECHO -----------------------------------
ECHO Now executing SoX
ECHO -----------------------------------

"%1\sox\sox.exe" "%TEMP%\abimedia_audio.wav" "%D%" pad 1 0 >>%LOG%

ECHO -----------------------------------
ECHO Conversion done: %D%
ECHO -----------------------------------

PAUSE
