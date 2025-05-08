unit FPDLTU;

interface

uses
  System.Classes, System.SysUtils, System.SyncObjs, Winapi.Windows, ActiveX, XMLintf, XMLDoc;

type
  TProtocall = (ptFkAtt, ptCM, ptSB);
//  'Protocall=1,MachineNo=1,IpAddress=192.168.1.224,NetPort=5005,TimeOut=5000,ProtocolType=0,NetPassword=0,License=1253,
//DeviceType=3,Active=1,{DeviceType= 0=dtFKAttend/1=dtUSeries/2=dtCMSeries/3=dtSBXP}';

type
  TFPConInfo = record
    Protocall: TProtocall;
    MachineNo: Integer;
    IpAddress: string;
    NetPort: Integer;
    TimeOut: Integer;
    ProtocolType: Integer;
    NetPassword: Integer;
    License: Integer;
    DeviceType: Integer;
    Active: Integer;
    function toObj(s: string): TFPConInfo;
  end;

type
  pLogRec = ^TlogRec;

  TlogRec = record
    MNO: Cardinal;
    dt: TDateTime;
  end;

type
  TFPDownloader = class(TThread)
    constructor Create(ConStr: string; onComplete: tproc; onMsg: tproc<Integer> = nil; onE: tproc<Exception> = nil);
  private
    fOnC: TProc;
    fOnMSG: TProc<Integer>;
    fOnE: TProc<Exception>;
    fConStr: string;
    FProtocall: TProtocall;
//    FConStr:TStrings;
    { Private declarations }
    procedure ExcecuteI;
  public
    function DownloadCM(constr: string): Boolean;
    class function ConnectTest(constr: string): string;
  protected
    procedure Execute; override;
  public
  end;

var
  tlLog: TThreadList;

implementation

uses
  FKAttendLib_TLB, CM_INTERFACELib_TLB, SB100PCXLib_TLB;
{ TFPDownloader }

class function TFPDownloader.ConnectTest(constr: string): string;
var
  c: TFPConInfo;
  s: string;
  i: Integer;
  _fkA: TFKAttend;
begin
  c.toObj(constr);
  if c.Protocall = ptFkAtt then
  begin
    _fkA := TFKAttend.Create(nil);
    try
      i := _fkA.ConnectNet(c.MachineNo, c.IpAddress, c.NetPort, c.TimeOut, c.ProtocolType, c.NetPassword, c.License);
      result := IntToStr(i);
    finally
      _fkA.free;
    end;

  end;
end;

constructor TFPDownloader.Create(ConStr: string; onComplete: tproc; onMsg: tproc<Integer> = nil; onE: tproc<Exception> = nil);
begin
  inherited Create(True);
  fConStr := ConStr;
  fOnC := onComplete;
  if Assigned(onMsg) then
    fOnMSG := onMsg;
  if Assigned(onE) then
    fOnE := onE;
  Resume;
end;

function TFPDownloader.DownloadCM(constr: string): Boolean;
begin

end;

procedure TFPDownloader.ExcecuteI;
var
  c: TFPConInfo;
  s: string;
  dt: TDateTime;
  i, mno_, vm, iom: Integer;
  _fkA: TFKAttend;
  lst: TList;
  lr: pLogRec;
begin
  c.toObj(fconstr);
  try
    if c.Protocall = ptFkAtt then
    begin
      _fkA := TFKAttend.Create(nil);
      try
        i := _fkA.ConnectNet(c.MachineNo, c.IpAddress, c.NetPort, c.TimeOut, c.ProtocolType, c.NetPassword, c.License);
        _fkA.SetDeviceTime(now);
        _fkA.LoadGeneralLogData(0);
        lst := tlLog.LockList;
        try
          while _fkA.GetGeneralLogData(mno_, vm, iom, dt) > 0 do
          begin
            New(lr);
            lr.MNO := mno_;
            lr.dt := dt;
            lst.Add(lr);
          end;
        except
          on e: Exception do
            if Assigned(fOnE) then
              fOnE(e);
        end;
      finally
        tlLog.UnlockList;
        _fkA.free;
      end;
    end;

    Synchronize(
      procedure
      begin
        fOnC()
      end);
  except
    on e: Exception do
      if Assigned(fOnE) then
        fOnE(e);
  end;
end;

procedure TFPDownloader.Execute;
begin
  CoInitialize(nil);
  try
    try
      ExcecuteI;
    except
      on e: exception do
        if Assigned(fOnE) then
          fOnE(e);
    end;
  finally
    CoUninitialize;
  end;
end;

{ TFPConInfo }

function TFPConInfo.toObj(s: string): TFPConInfo;
var
  st: tstrings;
begin
  Result := Self;
  st := TStringList.Create;
  try
    st.CommaText := s;
    self.Protocall := TProtocall(StrToIntDef(st.Values['Protocall'], 0));
    self.MachineNo := StrToIntDef(st.Values['MachineNo'], 1);
    self.IpAddress := st.Values['IpAddress'];
    self.NetPort := StrToIntDef(st.Values['NetPort'], 5005);
    self.TimeOut := StrToIntDef(st.Values['TimeOut'], 5000);
    self.ProtocolType := StrToIntDef(st.Values['ProtocolType'], 1);
    self.NetPassword := StrToIntDef(st.Values['NetPassword'], 0);
    self.License := StrToIntDef(st.Values['License'], 1253);
    self.DeviceType := StrToIntDef(st.Values['DeviceType'], 1);
    self.Active := StrToIntDef(st.Values['Active'], 1);
  finally
    st.Free;
  end;
end;

end.

