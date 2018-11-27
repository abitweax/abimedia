@ECHO OFF
REM video-to-webm-40.sh
SET LOG=%TEMP%\abimedia_video_log.txt

ECHO abimedia_video_up849.bat >%LOG%
ECHO Parameter 1: %1 >>%LOG%
ECHO Parameter 2: %2 >>%LOG%

SET S=%2
SET D=%~d2%~p2[Abimedia] %~n2.webm

ECHO SRCPATH: %S% >>%LOG%
ECHO DSTPATH: %D% >>%LOG%

IF EXIST "%D%" (
	DEL "%D%"
	ECHO Destination file found, deleted: %D% >>%LOG%
)

SET TEMP_AUDIO=%TEMP%\abimedia_video_audio.ogg
IF EXIST "%TEMP_AUDIO%" (
	DEL "%TEMP_AUDIO%"
	ECHO Temporary audio file %TEMP_AUDIO% found, deleted >>%LOG%
)

SET TEMP_VIDEO=%TEMP%\abimedia_video_video.webm
IF EXIST "%TEMP_VIDEO%" (
	DEL "%TEMP_VIDEO%"
	ECHO Temporary video file %TEMP_VIDEO% found, deleted >>%LOG%
)

REM Write video stats to log
"%1\ffmpeg\bin\ffmpeg.exe" -i %2 2>>%LOG%

ECHO -----------------------------------
ECHO Now executing ffmpeg (phase 1)
ECHO -----------------------------------

"%1\ffmpeg\bin\ffmpeg.exe" -i %2 -c:a libvorbis -vn "%TEMP_AUDIO%"

ECHO -----------------------------------
ECHO Now executing ffmpeg (phase 2)
ECHO -----------------------------------

"%1\ffmpeg\bin\ffmpeg.exe" -i %2 -c:v libvpx-vp9 -crf 40 -b:v 0 -g 50 -an "%TEMP_VIDEO%"

ECHO -----------------------------------
ECHO Now executing ffmpeg (phase 3)
ECHO -----------------------------------

"%1\ffmpeg\bin\ffmpeg.exe" -i "%TEMP_VIDEO%" -i "%TEMP_AUDIO%" -c copy "%D%"

ECHO -----------------------------------
ECHO Conversion done: %D%
ECHO -----------------------------------

REM Write converted video stats to log
"%1\ffmpeg\bin\ffmpeg.exe" -i "%D%" 2>>%LOG%

PAUSE
