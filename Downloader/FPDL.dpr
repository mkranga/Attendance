program FPDL;

uses
  Vcl.Forms,
  System.SysUtils,
  System.NetEncoding,
  FireDAC.Comp.Client,
  System.Classes,
  JclAppInst,
  DownloadU in 'DownloadU.pas' {DownloadF},
  FKAttendLib_TLB in 'FKAttendLib_TLB.pas',
  FPDLThreadU in 'FPDLThreadU.pas',
  ZKU in 'ZKU.pas',
  EseyeU in 'EseyeU.pas',
  CM_INTERFACELib_TLB in 'CM_INTERFACELib_TLB.pas',
  SBXPCLib_TLB in 'SBXPCLib_TLB.pas',
  CRC32ZipCryptor in '..\Common\CRC32ZipCryptor.pas';

{$R *.res}

function Init(): Boolean;
var
  s: string;
begin
//while (DebugHook<1) do
//Sleep(100);

  _log := TStringList.Create;
  LM('Starting');
  Settings := TStringList.Create;
  AppPath := ExtractFilePath(ParamStr(0));
  if FindCmdLineSwitch('CLS', True) then                    //debug mode
  begin
    Settings.AddPair('CLS', '1');
    Settings.AddPair(skConMode, 'File');
    if FindCmdLineSwitch('f', s, True) = False then
      s := ExtractFilePath(ParamStr(0)) + 'settings.ini';
    Settings.AddPair(skConStr, s);                             // file
    Exit;
  end;

//  if ParamCount < 1 then
//    exit(false);
  if FindCmdLineSwitch('s', True) then
  begin
    Settings.AddPair(skRunMode, 'S');
    Settings.AddPair(skAutoStart, '1');
    Result := True;
  end;

  if FindCmdLineSwitch('c', s, True) then
  begin
    s := TNetEncoding.Base64String.Decode(s);                       //dbconstr;
//    LM(s);
    Settings.AddPair(skConStr, s);
    Settings.AddPair(skConMode, 'DB');
  end
  else
  begin
    Settings.AddPair(skConMode, 'File');
    if FindCmdLineSwitch('f', s, True) = False then
      s := ExtractFilePath(ParamStr(0)) + 'settings.ini';
    Settings.AddPair(skConStr, s);                             // file
  end;
  if FindCmdLineSwitch('r', True) then                      //auto start
    Settings.AddPair(skAutoStart, '1');

  if FindCmdLineSwitch('u', True) then
    Settings.AddPair(skAutoUpload, '1');                  //auto upload

  if FindCmdLineSwitch('debug', True) then                    //debug mode
    Settings.AddPair(skDebug, '1');

end;

procedure _Unload();
begin
  Settings.free;
  DownloadF.Free;
end;

begin
   JclAppInstances.CheckSingleInstance;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  try
    Init;
    Application.Title := 'Download Attendance';
  Application.CreateForm(TDownloadF, DownloadF);
    if Settings.Values[skRunMode] = 'S' then
      DownloadF.DownloadLog()
    else
      Application.Run;
  finally
    _Unload;
  end;
end.

