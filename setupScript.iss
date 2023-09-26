; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ImgTagFanOut"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "https://github.com/manuc66"
#define MyAppURL "https://manuc66.github.io/ImgTagFanOut/"
#define MyAppExeName "ImgTagFanOut.exe"
#define MyAppAssocName MyAppName + " File"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0550D412-47B7-495E-A5DA-AED1F28BAF0B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={commonpf64}\{#MyAppName}
ChangesAssociations=yes
DisableProgramGroupPage=yes
LicenseFile=LICENSE
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=ImgTagFanOut-{#MyAppVersion}-installer
SetupIconFile=ImgTagFanOut\Assets\logo.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
OutputDir=InstallerOutput

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "ImgTagFanOut\bin\Release\net7.0\publish\win-x64\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "ImgTagFanOut\bin\Release\net7.0\publish\win-x64\ImgTagFanOut.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "ImgTagFanOut\bin\Release\net7.0\publish\win-x64\av_libglesv2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "ImgTagFanOut\bin\Release\net7.0\publish\win-x64\blake3_dotnet.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "ImgTagFanOut\bin\Release\net7.0\publish\win-x64\e_sqlite3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "ImgTagFanOut\bin\Release\net7.0\publish\win-x64\libHarfBuzzSharp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "ImgTagFanOut\bin\Release\net7.0\publish\win-x64\libSkiaSharp.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
