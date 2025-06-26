{*******************************************************}
{                                                       }
{       ERP                                             }
{                                                       }
{       Copyright (C) 2025 Lion TS                      }
{                                                       }
{*******************************************************}

{-------------------------------------------------------------------------------
  Author:    Ranga
  DateTime:  2025.06.14
 //param
 // usage
-------------------------------------------------------------------------------}


unit DownloadU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Grids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  System.Zip, FireDAC.DApt, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FPDLThreadU, Vcl.ComCtrls,
  System.Net.HttpClient, Vcl.Mask, IdHTTP, Vcl.Buttons;

procedure LM(s: string);

type
  TDownloadF = class(TForm)
    mmolog: TMemo;
    con1: TFDConnection;
    qrDevices: TFDQuery;
    ds1: TDataSource;
    qrDevicesID: TByteField;
    qrDevicesConfig: TStringField;
    dbnvgr1: TDBNavigator;
    pb1: TProgressBar;
    dbedtConfig: TDBEdit;
    qrAttLog: TFDQuery;
    ds2: TDataSource;
    qrAttLogDID: TLongWordField;
    qrAttLogDTime: TDateTimeField;
    Panel1: TPanel;
    bt1: TButton;
    bt2: TButton;
    mmoDC: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure qrDevicesAfterInsert(DataSet: TDataSet);
    procedure dbnvgr1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure con1BeforeConnect(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    var
      dlt: TFPDLThread;
      zip: TZipFile;
//      fLogCount: UINT;
    { Private declarations }
    procedure onDlComplete(sender: TFPDLThread);
    procedure Anim(start: Boolean = True);
    procedure onDlErr(e: Exception; t: TFPDLThread);
    procedure OnLogBufferFull(data: PLogBuffer; count: Integer; t: TFPDLThread);
    function SettingsGet(key: string; def: string = ''): string;
    function Uploadlog(duid: string; log: Tstream): Boolean;
    function ClearFP(): string;
  public
    { Public declarations }
    procedure DownloadLog();
    procedure UploadPendingLogs();
  end;

var
  DownloadF: TDownloadF;
  Settings: tstrings;
  _log: tstrings;
  AppPath: string;
  _ZipName: string;

const
  skRunMode = 'RunMode';
  skConStr = 'ConStr';
  skConMode = 'ConMode';
  skAutoStart = 'AutoStart';
  skLogPath = 'LogPath';
  skAutoUpload = 'AutoUpload';
  skDebug = 'Debug';
  AttLogServerURL = 'https://lionts.softwarestylers.lk/AttendanceLog.php?duid=';
  ZipKey = 'Lion';

implementation

uses
  System.IOUtils, CRC32ZipCryptor;
{$R *.dfm}

procedure TDownloadF.Anim(start: Boolean);
begin
  pb1.Visible := start;
  bt1.Enabled := not (start);
//  pb1.StepIt;
  if start then
    pb1.State := TProgressBarState.pbsNormal
  else
    pb1.State := TProgressBarState.pbsPaused;
end;

procedure TDownloadF.bt1Click(Sender: TObject);
begin
  //start animation
  Anim(true);
  Settings.Values[skAutoUpload] := '1';
  DownloadLog();
  if Settings.Values['CLS'] = '1' then
  begin
    lm(clearfp);
  end;
  Anim(false);
end;

procedure TDownloadF.bt2Click(Sender: TObject);
begin
//stop thread if running
//save any downloaded data
  try
    if (dlt <> nil) then
      dlt.Terminate;
  except
    //silance
  end;
  Anim(false);
  Close;
end;

function TDownloadF.ClearFP: string;
var
  s: string;
begin
  lm(sLineBreak + '*** Cleaning Started ***');
  if zip.FileCount > 0 then
    exit('Uploads Pending. Cannot continue!');

  lm('No pending uploads. Continue');

  Settings.Values[skAutoUpload] := '0';
  Settings.Values[skDebug] := '1';
  Settings.Values[skConMode] := 'File';
  TFPDLThread._ClearAfterDL := True;
  lm('Backing up log data from devices.');
  DownloadLog;
  lm('Saving Backup');
  zip.Close;
  s := 'FPLog\FullBackup-' + FormatDateTime('yymmddhhnnss', now) + '.DAT';
  RenameFile(_ZipName, s);
  lm(s);
  zip.Open(_ZipName, zmWrite);
  zip.close;
  zip.Open(_ZipName, zmReadWrite);
  result := 'Cleaning Complete';
end;

procedure TDownloadF.con1BeforeConnect(Sender: TObject);
begin
  con1.ConnectionString := StringReplace(Settings.Values[skConStr], '{pwd}', 'systemr', [rfIgnoreCase]);
end;

procedure TDownloadF.dbnvgr1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = TNavigateBtn.nbPost then
  begin
    lm('Testing Connection');
    lm(TFPDLThread.ConnectTest(qrDevicesConfig.Text));
  end;
end;

procedure TDownloadF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if _log <> nil then
  begin
    _log.SaveToFile(apppath + FormatDateTime('yyyymmdd_hhnn', now()) + '.log');
    _log.Clear;
  end;
  if Assigned(zip) then
  begin
    zip.Close;
    zip.Free;
  end;
end;

procedure TDownloadF.FormCreate(Sender: TObject);
var
  s: string;
begin
  _ZipName := AppPath + 'Data.dat';
  if Settings.Values['CLS'] = '1' then
    self.Caption := self.Caption + ' - [ERASE MODE]';
  mmolog.Lines.text := _log.Text;
  _log := mmolog.Lines;
  if Settings.Values[skConMode] = 'DB' then
  begin
    lm('Connection to DB');
    con1.open();

    lm('Loading Device Config');
    if qrDevices.Active = false then // ?
      qrDevices.Open();
  end
  else
  begin

    zip := TZipFile.Create;
    zip.Password := 'TGlvbiBUZWNobm9sb2d5IFNvbHV0aW9ucyA=';//base64(Lion Technology Solutions)
    zip.Cryptor := tCRC32ZipCryptor.Create;
    try
      zip.Open(_ZipName, zmReadWrite);
    except
      if FileExists(_ZipName) then
        RenameFile(_ZipName, AppPath + 'FPLog\DataDamaged.dat.' + FormatDateTime('yymmddhhnnss', now));
      zip.Open(_ZipName, zmWrite);
      zip.Close;
      zip.Open(_ZipName, zmReadWrite);
      lm('Database Created');
    end;

    lm('Config file path :' + Settings.Values[skConStr]);
    if FileExists(Settings.Values[skConStr]) = false then
    begin
      lm('Settings file or DB connection info not found. ' + sLineBreak + 'abort');
      exit;
    end;
    s := _log.Text;
    _log.LoadFromFile(Settings.Values[skConStr]);
    lm('Config file loaded');
    _log.Insert(0, s);
  end;

end;

procedure TDownloadF.FormShow(Sender: TObject);
begin
  dbedtConfig.Top := dbnvgr1.Top;
  dbnvgr1.Visible := (Settings.Values[skConMode] = 'DB');
  dbedtConfig.Visible := dbnvgr1.Visible;
  mmoDC.Visible := dbnvgr1.Visible;
  Application.ProcessMessages;
  if Settings.Values[skAutoStart] = '1' then
    bt1Click(self);
end;

procedure lm(s: string);
begin
  _log.Append(s);
end;

procedure TDownloadF.qrDevicesAfterInsert(DataSet: TDataSet);
begin
  qrDevicesConfig.Value :=
    'DeviceType=0,MachineNo=1,IpAddress=192.168.1.224,NetPort=5005,TimeOut=5000,ProtocolType=0,NetPassword=0,License=1253,Active=1,{DeviceType 0=dtFKAttend/1=dtUSeries/2=dtCMSeries/3=dtSBXP/4=ZK}';

end;

function TDownloadF.SettingsGet(key, def: string): string;
begin
  Result := Settings.Values[key];
  if Result = '' then
  begin
    settings.AddPair(key, def);
    Result := def;
  end;
end;

function TDownloadF.Uploadlog(duid: string; log: Tstream): Boolean;
var
  id: THTTPClient;
  res: IHTTPResponse;
  url: string;
  ss: TStringStream;
begin
  id := THTTPClient.Create();
  ss := TStringStream.Create;
  try
    try
     // id.Request.ContentType := 'application/json';
      if (Application.Terminated) then
        exit
      else
        url := AttLogServerURL + duid;
      log.Position := 0;
      ss.CopyFrom(log);
      ss.Position := 0;
      res := id.Post(url, ss);
      Result := (res.StatusCode = 200);
      if Result = false then
        lm(res.StatusText);
    except
      on E: Exception do
      begin
        lm('Upload Error :' + e.Message);
      end;
    end;
  finally
    ss.Free;
    res := nil;
    id.Free;
  end;
end;

procedure TDownloadF.UploadPendingLogs;
var
  fl: Tarray<string>;
  s, duid: string;
  stm: tstream;
  stm1: TstringStream;
  zh: TZipHeader;
  i: Integer;
begin
  i := 0;
//get pending file list
  if zip.FileCount < 1 then
  begin
    lm('No pending files');
    exit;
  end;
//upload and move file ot uploaded folder
  lm('Uploading Started');
//  stm := TstringStream.Create;
  try
    for i := zip.FileCount - 1 downto 0 do
    begin
      s := zip.FileName[i];
      duid := s.Split(['.'])[1];
      zip.Read(i, stm, zh, true);
      if uploadlog(duid, stm) then
      begin
        zip.Delete(i);
        lm('Uploaded : ' + s);
      end
      else
        Break;
    end;
    lm('Task End');
  finally
    stm.free;
  end;
end;

procedure TDownloadF.onDlErr(e: Exception; t: TFPDLThread);
begin
  lm('Err:' + e.Message);
end;

procedure TDownloadF.OnLogBufferFull(data: PLogBuffer; count: Integer; t: TFPDLThread);
var
  qr: TFDQuery;
  I: Integer;
  r: TlogRec;
  s: string;

  procedure WriteLogBufferToCSV(const FileName: string; const LogBuffer: PLogBuffer; Count: Integer);
  var
    i: Integer;
    TempStr: TStrings;
    lb: TLogBuffer;
    stm: TstringStream;
  begin
    if Count < 1 then
      exit;
    lb := LogBuffer^;
    TempStr := TStringList.Create;
    try
      try
        for i := 0 to Count - 1 do
        begin
      // Fast formatting without unnecessary string allocations
          TempStr.Append(IntToStr(lb[i].MNO) + ',' + DateTimeToStr(lb[i].dt) + ',' + IntToStr(lb[i].IO));
        end;
//        TempStr.SaveToStream(stm);
        stm := TStringStream.Create(TempStr.Text);
        zip.Add(stm, FileName);
      except
        on e: exception do
          lm('Data Storing Error' + e.Message);
      end;
    finally
      stm.Free;
      TempStr.Free;
    end;
  end;

begin
  lm('Downloaded : ' + inttostr(count));
  if count < 1 then
    exit;
  if Settings.Values[skConMode] <> 'DB' then
  begin
    s := 'Log\' + FormatDateTime('yyyymmddHHnnss', now) + '.' + t.ci.DeviceUID + '.csv';
    WriteLogBufferToCSV(s, data, count);
    exit;
  end;
  qr := qrAttLog; // datam.SQLExcec('SELECT DID, DTime, InoutMod FROM attlog where 1=0; ', qr);
  if qr.Active = false then
    qr.open;
  qr.DisableControls;
  try
    try
  //save to db or file
      for I := 0 to count - 1 do
      begin
        qr.Append;
        r := TlogRec(data[I]);
        qr.Fields[1].Value := r.MNO;
        qr.Fields[2].Value := r.dt;
        qr.Fields[3].Value := r.IO;
        qr.Post;
      end;

      lm('Save OK');
    except
      on e: Exception do
      begin
        lm('Save Error :' + e.Message);
        t.Terminate;
      end;
    end;
  finally
    qr.EnableControls;
  end;
end;

procedure TDownloadF.OnDlComplete(sender: TFPDLThread);
begin
  lm('Download Complete. Total=' + sender.TotalLogCount.ToString);
  dlt := nil;
end;

procedure TDownloadF.DownloadLog();
var
  qr: TFDQuery;
  _DCC: Tstrings;
//  _freeQr: Boolean;
  cf: string;
  I: Integer;
  s: string;

  procedure createDlThread(s: string);
  begin
    if Application.Terminated then
      exit;
    dlt := TFPDLThread.Create(s, OnDlComplete, OnlogBufferFull, onDlErr);

    while TFPDLThread.InstanceCount <> 0 do
    begin
//      TThread.SpinWait(100);
      Application.ProcessMessages;
      Application.HandleMessage;
//      sleep(50);
    end;

  end;

begin

  if Settings.Values[skdebug] = '1' then
    TFPDLThread._debug := true;

  if Settings.Values[skConMode] = 'DB' then
  begin
//      _freeQr := (qr = nil);
    qr := qrDevices;// datam.SQLExcec('SELECT * FROM devices', qr);
    if qr.Active = false then
      qr.Open();
    qr.First;
    while qr.Eof = false do
    begin
      Lm('Connecting Device#' + IntToStr(qr.RecNo));
      createDlThread(qr.FieldByName('config').AsString);
      qr.Next;
    end;
  end
  else // load config  from file
  begin
    cf := Settings.Values[skConStr].Trim;
    if (cf = '') or (FileExists(cf) = false) then
    begin
      lm('Cannot find Config file. path=' + cf);
      exit;
    end;
    _DCC := TStringList.Create;
    try
      _DCC.LoadFromFile(cf);
      for I := 0 to 10 do
      begin
        s := _DCC.Values['Device' + I.ToString].Trim;
        if s = '' then
          Break;
        s := StringReplace(s, ',', sLineBreak, [rfReplaceAll]);
        createDlThread(s);
      end;
    finally
      _DCC.Free;
    end;
    zip.Close;
    zip.open(_ZipName, zmReadWrite);
  end;
  if Settings.Values[skAutoUpload] = '1' then   //auto upload
    UploadPendingLogs;
end;

end.

