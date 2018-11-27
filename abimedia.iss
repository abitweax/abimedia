; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D488E448-4256-4261-8097-2AE249770956}}
AppName=Abimedia
AppVersion=0.3
;AppVerName={#MyAppName} {#MyAppVersion}
DisableProgramGroupPage=yes
DisableDirPage=yes
DefaultDirName={userpf}\Abimedia
Compression=lzma
SolidCompression=yes
PrivilegesRequired=lowest
ShowLanguageDialog=yes
OutputBaseFilename=abimedia

[Files]
Source: "README.md"; DestDir: "{app}\README.txt"; Flags: ignoreversion uninsremovereadonly
Source: "abimedia_audio.bat"; DestDir: "{app}"; Flags: ignoreversion uninsremovereadonly
Source: "abimedia_video_up849.bat"; DestDir: "{app}"; Flags: ignoreversion uninsremovereadonly
Source: "abimedia_video_wide.bat"; DestDir: "{app}"; Flags: ignoreversion uninsremovereadonly
Source: "abimedia_audio.ico"; DestDir: "{app}"; Flags: ignoreversion uninsremovereadonly
Source: "abimedia_video.ico"; DestDir: "{app}"; Flags: ignoreversion uninsremovereadonly
Source: "ffmpeg\*"; DestDir: "{app}\ffmpeg"; Flags: ignoreversion uninsremovereadonly
Source: "ffmpeg\bin\ffmpeg.exe"; DestDir: "{app}\ffmpeg\bin"; Flags: ignoreversion uninsremovereadonly
Source: "ffmpeg\doc\*"; DestDir: "{app}\ffmpeg\doc"; Flags: ignoreversion uninsremovereadonly
Source: "ffmpeg\presets\*"; DestDir: "{app}\ffmpeg\presets"; Flags: ignoreversion uninsremovereadonly
Source: "sox\*"; DestDir: "{app}\sox"; Flags: ignoreversion uninsremovereadonly
[Icons]
Name: "{sendto}\Abimedia Audio"; Filename: "{app}\abimedia_audio.bat"; IconFilename: "{app}\abimedia_audio.ico"; Parameters: "{app}"; WorkingDir: "{app}"
Name: "{sendto}\Abimedia Video Width less than 850px"; Filename: "{app}\abimedia_video_up849.bat"; IconFilename: "{app}\abimedia_video.ico"; Parameters: "{app}"; WorkingDir: "{app}"
Name: "{sendto}\Abimedia Video Widescreen"; Filename: "{app}\abimedia_video_wide.bat"; IconFilename: "{app}\abimedia_video.ico"; Parameters: "{app}"; WorkingDir: "{app}"
