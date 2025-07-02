program FPDL;

uses
  Vcl.Forms,
  System.SysUtils,
  System.NetEncoding,
  FireDAC.Comp.Client,
  System.Classes,
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
  lm('Starting');
  Settings := TStringList.Create;
  apppath := ExtractFilePath(ParamStr(0));
  if FindCmdLineSwitch('CLS', true) then                    //debug mode
  begin
    Settings.AddPair('CLS', '1');
    Settings.AddPair(skConMode, 'File');
    if FindCmdLineSwitch('f', s, true) = false then
      s := ExtractFilePath(ParamStr(0)) + 'settings.ini';
    Settings.AddPair(skConStr, s);                             // file
    exit;
  end;

//  if ParamCount < 1 then
//    exit(false);
  if FindCmdLineSwitch('s', true) then
  begin
    Settings.AddPair(skRunMode, 'S');
    Settings.AddPair(skAutoStart, '1');
    Result := true;
  end;

  if FindCmdLineSwitch('c', s, true) then
  begin
    s := TNetEncoding.Base64String.Decode(s);                       //dbconstr;
//    LM(s);
    Settings.AddPair(skConStr, s);
    Settings.AddPair(skConMode, 'DB');
  end
  else
  begin
    Settings.AddPair(skConMode, 'File');
    if FindCmdLineSwitch('f', s, true) = false then
      s := ExtractFilePath(ParamStr(0)) + 'settings.ini';
    Settings.AddPair(skConStr, s);                             // file
  end;
  if FindCmdLineSwitch('r', true) then                      //auto start
    Settings.AddPair(skAutoStart, '1');

  if FindCmdLineSwitch('u', true) then
    Settings.AddPair(skAutoUpload, '1');                  //auto upload

  if FindCmdLineSwitch('debug', true) then                    //debug mode
    Settings.AddPair(skDebug, '1');

end;

procedure _Unload();
begin
  Settings.free;
  DownloadF.Free;
end;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  try
    init;
    Application.CreateForm(TDownloadF, DownloadF);
    if Settings.Values[skRunMode] = 'S' then
      DownloadF.DownloadLog()
    else
      Application.Run;
  finally
    _unload;
  end;
end.

