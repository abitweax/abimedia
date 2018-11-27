# Abimedia Converter/Frontend

Abimedia is a quick-and-dirty ffmpeg/SoX frontend to encode video and audio files
to webm (video) and ogg (audio). These formats are native to Firefox ESR which is
used in the test taker's DigabiOS/Abitti environment.

## Building the install package

 * The install package can be built with Inno Setup (http://www.jrsoftware.org/isinfo.php).
 * You need ffmpeg (http://ffmpeg.zeranoe.com/builds/). Drop the content of the ffmpeg distribution
zip to the same directory with convert scripts, iss file etc.
 * You also need SoX (https://sourceforge.net/projects/sox/). Take the latest sox-[version]-win32.zip
and place content at `sox` directory (subdirectory in the same level as the forementioned files).
 * The included icons are free for non-commercial use. See references.

Directory structure

```
-+
 +-+ abimedia/
   +- abimedia_audio.bat
   +- abimedia_video.bat
   +- abimedia_audio.ico
   +- abimedia_video.ico
   +- abimedia-convert.iss
   +- LICENSE.md
   +- README.md (this file)
   |
   +-+ ffmpeg/
   | +-+ bin/
   | | +- (ffmpeg/bin files)
   | |
   | +-+ doc/
   | | +- (ffmpeg/doc files)
   | |
   | +-+ presets/
   | | +- (ffmpeg/presets files)
   | |
   | +- LICENSE.txt
   | +- README.txt
   |
   +-+ sox
     +- (sox files)
```

## License

Please note that the LICENSE.md covers only the scripts in this repository,
not the ffmpeg, SoX or icons.

## References

Icons:
 * http://www.iconarchive.com/show/circle-icons-by-martz90/video-camera-icon.html
 * http://www.iconarchive.com/show/circle-icons-by-martz90/music-icon.html

Trademarks:
 * Abitti(tm) is trademark of Matriculation Examination Board, Finland

## Changelog

0.3 (2018-11-27)
 * Invented a name and published the scripts

0.2 (2017-11-29)
 * Rewrote audio and video scripts to correspond the settings used at the MEB
 * Added sox
 * Updated ffmpeg to 20171128-86cead5-win32
 * Removed fast video conversion as it is not used by MEB
