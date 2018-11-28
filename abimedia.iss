; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define AppVer GetEnv("ABIVERSION")

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D488E448-4256-4261-8097-2AE249770956}}
AppName=Abimedia
AppVersion={#AppVer}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher=Abitweax
AppPublisherURL=https://abitweax.github.io/
AppSupportURL=https://abitweax.github.io/
AppUpdatesURL=https://github.com/abitweax/abimedia/releases/latest
DisableProgramGroupPage=yes
DisableDirPage=yes
DefaultDirName={userpf}\Abimedia
Compression=lzma
SolidCompression=yes
PrivilegesRequired=lowest
ShowLanguageDialog=yes
OutputBaseFilename=abimedia_{#AppVer}
WizardSmallImageFile=install_images\abimedia_138x140.bmp
;WizardSmallImageFile=install_images\abimedia_*.bmp
SetupIconFile=install_images\abimedia_256x256.ico
UninstallDisplayIcon={app}\abimedia_256x256.ico

[Files]
Source: "README.md"; DestDir: "{app}\README.txt"; Flags: ignoreversion uninsremovereadonly
Source: "abimedia_audio.bat"; DestDir: "{app}"; Flags: ignoreversion uninsremovereadonly
Source: "abimedia_video_up849.bat"; DestDir: "{app}"; Flags: ignoreversion uninsremovereadonly
Source: "abimedia_video_wide.bat"; DestDir: "{app}"; Flags: ignoreversion uninsremovereadonly
Source: "abimedia_audio.ico"; DestDir: "{app}"; Flags: ignoreversion uninsremovereadonly
Source: "abimedia_video.ico"; DestDir: "{app}"; Flags: ignoreversion uninsremovereadonly
Source: "install_images\abimedia_256x256.ico"; DestDir: "{app}"; Flags: ignoreversion uninsremovereadonly
Source: "ffmpeg\*"; DestDir: "{app}\ffmpeg"; Excludes: "*Zone.Identifier"; Flags: ignoreversion uninsremovereadonly
Source: "ffmpeg\bin\ffmpeg.exe"; DestDir: "{app}\ffmpeg\bin"; Excludes: "*Zone.Identifier"; Flags: ignoreversion uninsremovereadonly
Source: "ffmpeg\doc\*"; DestDir: "{app}\ffmpeg\doc"; Excludes: "*Zone.Identifier"; Flags: ignoreversion uninsremovereadonly
Source: "ffmpeg\presets\*"; DestDir: "{app}\ffmpeg\presets"; Excludes: "*Zone.Identifier"; Flags: ignoreversion uninsremovereadonly
Source: "sox\*"; DestDir: "{app}\sox"; Excludes: "*Zone.Identifier"; Flags: ignoreversion uninsremovereadonly
[Icons]
Name: "{usersendto}\Abimedia - Muunna ��nitiedosto"; Filename: "{app}\abimedia_audio.bat"; IconFilename: "{app}\abimedia_audio.ico"; Parameters: "{app}"; WorkingDir: "{app}"
Name: "{usersendto}\Abimedia - Muunna videotiedosto (leveys alle 850 pikseli�)"; Filename: "{app}\abimedia_video_up849.bat"; IconFilename: "{app}\abimedia_video.ico"; Parameters: "{app}"; WorkingDir: "{app}"
Name: "{usersendto}\Abimedia - Muunna videotiedosto (leveys koko n�ytt�)"; Filename: "{app}\abimedia_video_wide.bat"; IconFilename: "{app}\abimedia_video.ico"; Parameters: "{app}"; WorkingDir: "{app}"
