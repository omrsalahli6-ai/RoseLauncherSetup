#define AppName "RoseLauncher"
#define AppVersion "1.0.0"

[Setup]
AppId={{B7A1D3E2-5C41-4F0B-9E6A-3D2F8C1A7E55}
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher={#AppName}
DefaultDirName={autopf}\{#AppName}
DefaultGroupName={#AppName}
OutputDir=Output
OutputBaseFilename=RoseLauncher_Setup
SetupIconFile=RoseLauncher.ico
UninstallDisplayIcon={app}\RoseLauncher.exe
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=lowest
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "dist\RoseLauncher.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{autoprograms}\{#AppName}"; Filename: "{app}\RoseLauncher.exe"
Name: "{autodesktop}\{#AppName}"; Filename: "{app}\RoseLauncher.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\RoseLauncher.exe"; Description: "{cm:LaunchProgram,{#AppName}}"; Flags: nowait postinstall skipifsilent
