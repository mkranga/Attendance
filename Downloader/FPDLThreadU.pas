unit FPDLThreadU;
// todo
// use fire shark to monitor calling header and write full native lib using deepseak AI

interface

uses
  System.Classes, System.SysUtils, System.SyncObjs, Winapi.Windows, ActiveX, XMLintf, XMLDoc, System.DateUtils;

type
  TDeviceType = (dtFkAtt, dtUSeries, dtCM, dtSB, dtZK, dtEseye);
//  'Protocall=1,MachineNo=1,IpAddress=192.168.1.224,NetPort=5005,TimeOut=5000,ProtocolType=0,NetPassword=0,License=1253,
//DeviceType=3,Active=1,{DeviceType= 0=dtFKAttend/1=dtUSeries/2=dtCMSeries/3=dtSBXP/4=ZK}';

type
  TFPConInfo = record
    DeviceType: TDeviceType;
    MachineNo: Integer;
    IpAddress: string;
    NetPort: Integer;
    TimeOut: Integer;
    ProtocolType: Integer;
    NetPassword: Integer;
    License: Integer;
    Active: Integer;
    DeviceUID: string;
    function toObj(s: string): TFPConInfo;
  end;

type
  pLogRec = ^TlogRec;

  TlogRec = record
    MNO: Cardinal;
    dt: TDateTime;
    IO: Integer;
  end;

  TLogBuffer = array[0..999] of TlogRec; //buffer to hold downloaded records untill save

  PLogBuffer = ^TLogBuffer;

type
  TFPDLThread = class(TThread)
    procedure onTerminate_(sender: tobject);
    constructor Create(ConStr: string; onComplete: tproc<TFPDLThread>; onMsg: tproc<PLogBuffer, Integer, TFPDLThread> = nil; onE: tproc<Exception,
      TFPDLThread> = nil);
  private
    fOnC: tproc<TFPDLThread>;
    fOnMSG: tproc<PLogBuffer, Integer, TFPDLThread>;
    fOnE: tproc<Exception, TFPDLThread>;
    fConStr: string;
//    FProtocall: TDeviceTypeTDeviceType;
//    FConStr:TStrings;
    { Private declarations }
    procedure ExcecuteI;

    procedure DownloadFromFKAttend;
    procedure DownloadFromCM;
    procedure DownloadFromUSeries;
    procedure DownloadFromZK;
    procedure DownloadFromEseye;
    procedure DownloadFromSB;

    procedure FlushBuffer(var i: Integer);
    procedure OnError(e: Exception);
  public
    class var
      InstanceCount: byte;
      instance: TFPDLThread;
      _debug: Boolean;
      _ClearAfterDL: Boolean;
      var
      ci: TFPConInfo;
      TotalLogCount: Cardinal;
      LogBuffer: TLogBuffer;
      LastError: string;
    class function ConnectTest(constr: string): string;
  protected
    procedure Execute; override;
  public
  end;

var
  tlLog: TThreadList;

implementation

uses
  FKAttendLib_TLB, CM_INTERFACELib_TLB, SB100PCXLib_TLB, ZKU, EseyeU, SBXPCLib_TLB;
{ TFPDownloader }

class function TFPDLThread.ConnectTest(constr: string): string;
var
  ci: TFPConInfo;
  s: string;
  i: Integer;
  _fkA: TFKAttend;
begin
  ci.toObj(constr);
  if ci.DeviceType = dtFkAtt then
  begin
    _fkA := TFKAttend.Create(nil);
    try
      i := _fkA.ConnectNet(ci.MachineNo, ci.IpAddress, ci.NetPort, ci.TimeOut, ci.ProtocolType, ci.NetPassword, ci.License);
      result := IntToStr(i);
    finally
      _fkA.free;
    end;

  end;
end;

constructor TFPDLThread.Create(ConStr: string; onComplete: tproc<TFPDLThread>; onMsg: tproc<PLogBuffer, Integer, TFPDLThread> = nil; onE: tproc<
  Exception, TFPDLThread> = nil);
begin
  inherited Create(True);
  instance := self;
  InstanceCount := InstanceCount + 1;
  self.OnTerminate := onTerminate_;
  FreeOnTerminate := true;
  fConStr := ConStr;
  TotalLogCount := 0;
  LastError := '';
  if Assigned(onComplete) then
    fOnC := onComplete;
  if Assigned(onMsg) then
    fOnMSG := onMsg;
  if Assigned(onE) then
    fOnE := onE;
  Resume;
end;

procedure TFPDLThread.ExcecuteI;
begin
  ci.toObj(fconstr);
  if ci.Active <> 1 then
  begin
    LastError := 'Active<>1';
    exit;
  end;
  case ci.DeviceType of
    dtFkAtt:
      DownloadFromFKAttend;
    dtUSeries:
      DownloadFromUSeries;
    dtCM:
      DownloadFromCM;
    dtSB:
      DownloadFromSB;
    dtZK:
      DownloadFromZK;
    dtEseye:
      DownloadFromEseye;
  end;

end;

procedure TFPDLThread.Execute;
begin
  CoInitialize(nil);
  try
    try
      ExcecuteI;
    except
      on e: exception do
        onError(e);
    end;
  //on complete will be called in onterminate event
  finally
    InstanceCount := InstanceCount - 1;
  end;
end;

procedure TFPDLThread.FlushBuffer(var i: Integer);
var
  reccount: Integer;
begin
  reccount := i;
  TotalLogCount := TotalLogCount + i;
  Synchronize(
    procedure
    begin
      fOnMSG(@LogBuffer, reccount, Self);
    end);
  i := 0;
end;

procedure TFPDLThread.OnError(e: Exception);
begin
  LastError := e.Message;
  if Assigned(fOnE) then
    fOnE(e, self);
  Terminate;
end;

procedure TFPDLThread.DownloadFromCM;
var
  dt: TDateTime;
  i, rc, _did, _lt: Integer;
  y, m, d, h, n, s, ms, w: Integer;
  CM: TCM_Interface;
  lst: TList;
  lr: TlogRec;
  _ls: Integer;
begin
  CM := TCM_Interface.Create(nil);
  try
    CM.SetCommTcpPar(ci.MachineNo, ci.IpAddress, ci.NetPort, ci.NetPassword);
    if CM.ConnectLDN() = False then
      raise Exception.Create('Connection Failure');
    dt := now();
    if CM.SetDeviceTime(ci.MachineNo, dt.Year, dt.Month, dt.Day, dt.Hour, dt.Minute, dt.Second) = false then
      raise Exception.Create('Communication Failure');

    if CM.ReadNewGLogData(ci.MachineNo, rc) = false then
      raise Exception.Create('Download Failure. #E01');
    if rc < 1 then
      exit;
    i := 0;
    while CM.GetNewGLogData(ci.MachineNo, _did, _lt, _ls, y, m, d, h, n, s, w) <> false do
    begin
      inc(i);
      lr := LogBuffer[i];
      lr.MNO := _did;
      lr.dt := EncodeDateTime(y, m, d, h, n, s, 0);
      lr.IO := _lt;
      if i = High(LogBuffer) then
        FlushBuffer(i)
    end;
    FlushBuffer(i)
  finally
    CM.free;
  end;

end;

procedure TFPDLThread.DownloadFromEseye;
var
  EY: TEseye;
  lr: TlogRec;
  ar: TAttendanceArray1;
  at: TAttendanceRecord1;
  i, i2: Integer;
begin
  EY := TEseye.Create();
  try
    if (EY.Connect(ci.IpAddress, ci.NetPort, ci.MachineNo) = false) then
      raise Exception.Create('Connection Failure');
    if (EY.SetDeviceTime(now) = false) then
      raise Exception.Create('Communication Failure');
    i := 0;
    ar := EY.DownloadAttendanceLog();
    for i2 := low(ar) to High(ar) do
    begin
      inc(i);
      at := ar[i2];
      lr := LogBuffer[i];
      lr.MNO := at.UserID;
      lr.dt := EncodeDateTime(at.Year, at.Month, at.Day, at.Hour, at.Minute, at.Second, 0);
      lr.IO := at.InOutMode;
      if i = High(LogBuffer) then
        FlushBuffer(i)
    end;
    FlushBuffer(i)
  finally
    EY.free;
  end;

end;

procedure TFPDLThread.DownloadFromFKAttend;
var
  dt: TDateTime;
  i, mno_, vm, iom: Integer;
  _fkA: TFKAttend;
  lst: TList;
  lr: TlogRec;
begin
  _fkA := TFKAttend.Create(nil);
  try
    i := _fkA.ConnectNet(ci.MachineNo, ci.IpAddress, ci.NetPort, ci.TimeOut, ci.ProtocolType, ci.NetPassword, ci.License);
    _fkA.SetDeviceTime(now);
    _fkA.LoadGeneralLogData(0);
    i := 0;
    while _fkA.GetGeneralLogData(mno_, vm, iom, dt) > 0 do
    begin
      inc(i);
      lr := LogBuffer[i];
      lr.MNO := mno_;
      lr.dt := dt;
      lr.IO := iom;
      if i = High(LogBuffer) then
        FlushBuffer(i)
    end;
    FlushBuffer(i);
    _fkA.DisConnect;
  finally
    _fkA.free;
  end;
end;

procedure TFPDLThread.DownloadFromSB;
var
  sb: TSBXPC;
  ip: WideString;
  i, rc, _did, _lt: Integer;
  y, m, d, h, n, s, ms, w, iom: Integer;
  _mn, _mn2, _vm: Integer;
  lr: plogRec;
  _more: Boolean;

  function GetIOMode(_x: Integer): Integer;
  begin
    Result := ord((_x and 256) = 256);
    ;
  end;

begin
//  raise Exception.Create('Not implemented');
  sb := TSBXPC.Create(nil);
  try
    ip := ci.IpAddress;
    sb.SetIPAddress(ip, ci.NetPort, ci.NetPassword);
    if sb.OpenCommPort(ci.MachineNo) = false then
      raise Exception.Create('Connection Failure');
    sb.EnableDevice(ci.MachineNo, 0);
    try
      sb.SetDeviceTime(ci.MachineNo);

      if _debug then
        sb.ReadAllGLogData(ci.MachineNo)
      else
        sb.ReadGeneralLogData(ci.MachineNo);

      i := 0;
      while true do
      begin
        if _debug then
          _more := sb.GetAllGLogData(ci.MachineNo, _mn, _did, _mn2, iom, y, m, d, h, n, s)
        else
          _more := sb.GetGeneralLogData(ci.MachineNo, _mn, _did, _mn2, iom, y, m, d, h, n, s);
        if _more = false then
          Break;
        inc(i);
        lr := @LogBuffer[i];
        lr.MNO := _did;
        lr.dt := EncodeDateTime(y, m, d, h, n, s, 0);
        lr.IO := GetIOMode(iom);
        if i = High(LogBuffer) then
          FlushBuffer(i)
      end;
      FlushBuffer(i);
      if _ClearAfterDL then
        sb.EmptyGeneralLogData(ci.MachineNo);
    finally
      sb.EnableDevice(ci.MachineNo, 1);
    end;
  finally
    if (sb <> nil) then
      sb.DisconnectAll;
    sb.free;
  end;
end;

procedure TFPDLThread.DownloadFromUSeries;
begin
  raise Exception.Create('Not implemented');
end;

procedure TFPDLThread.DownloadFromZK;
var
  zk: TZK;
  lr: TlogRec;
  ar: TAttendanceArray;
  at: TAttendanceRecord;
  i, i2: Integer;
begin
  zk := tzk.Create();
  try
    if (zk.Connect(ci.IpAddress, ci.NetPort, ci.MachineNo) = false) then
      raise Exception.Create('Connection Failure');
    if (zk.SetDeviceTime(now) = false) then
      raise Exception.Create('Communication Failure');
    i := 0;
    ar := zk.DownloadAttendanceLog();
    for i2 := low(ar) to High(ar) do
    begin
      inc(i);
      at := ar[i2];
      lr := LogBuffer[i];
      lr.MNO := at.UserID;
      lr.dt := EncodeDateTime(at.Year, at.Month, at.Day, at.Hour, at.Minute, at.Second, 0);
      lr.IO := at.InOutMode;
      if i = High(LogBuffer) then
        FlushBuffer(i)
    end;
    FlushBuffer(i)
  finally
    zk.free;
  end;

end;

procedure TFPDLThread.onTerminate_(sender: tobject);
begin
  if Assigned(fOnC) then
    fonc(self);
  CoUninitialize;
end;

{ TFPConInfo }

function TFPConInfo.toObj(s: string): TFPConInfo;
var
  st: tstrings;
begin
  Result := Self;
  s := StringReplace(s, 'Protocol', 'DeviceType', [rfIgnoreCase]);
  s := StringReplace(s, sLineBreak, ',', [rfIgnoreCase]);
  st := TStringList.Create;
  try
    st.CommaText := s;
    self.DeviceType := TDeviceType(StrToIntDef(st.Values['DeviceType'], 0));
    self.MachineNo := StrToIntDef(st.Values['MachineNo'], 1);
    self.IpAddress := st.Values['IpAddress'];
    self.NetPort := StrToIntDef(st.Values['NetPort'], 5005);
    self.TimeOut := StrToIntDef(st.Values['TimeOut'], 5000);
    self.ProtocolType := StrToIntDef(st.Values['ProtocolType'], 1);
    self.NetPassword := StrToIntDef(st.Values['NetPassword'], 0);
    self.License := StrToIntDef(st.Values['License'], 1253);
    self.Active := StrToIntDef(st.Values['Active'], 1);
    self.DeviceUID := st.Values['DeviceUID'];
  finally
    st.Free;
  end;
end;

end.

