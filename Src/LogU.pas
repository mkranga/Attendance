{ ******************************************************* }
{ TLog }
{ Copyright (C) 2023 MountainTop }
{ ******************************************************* }
/// <summary>
/// thread safe exception log unit
/// enable jdbg , inser in to exe
/// this will auto hook to application.exception handle
/// </summary>
{
// JCL_DEBUG_EXPERT_GENERATEJDBG ON
// JCL_DEBUG_EXPERT_INSERTJDBG ON
set Limited Debug information   // less exe size but have error linenumber
}

unit LogU;

interface

uses
  classes, sysutils, system.Generics.Collections, jcldebug, system.Threading;

function iif(exp: Boolean; t: Integer; f: Integer = 0): Integer; overload;

function iif(exp: Boolean; t: string; f: string = ''): string; overload;

type
  TLogEvent = procedure(s: string) of object;

type
  TLogLevel = (llVerbos, LLDebug, llInfo, llwarning, llError, llCritical);

  TlogRec = record
    msg: string;
    Level: TLogLevel;
    Time: TDateTime;
    Tag: string;
  end;

  PLogRec = ^TlogRec;

type
  TLog = class(TObject)
  private
    _FilterExceptionUnit: Boolean;
    _FileName: TFileName;
    _Flock: TObject;
    _loglst: TList<PLogRec>;
    _LL: TLogLevel;
    _MaxLimit: Cardinal;
    _LogFormat: string;
    FonLogEvent: TLogEvent;
    procedure LockI;
    function ToString(ll: Integer = -1): string;
    function FilterStuck(s: string): string;
    procedure MaxLimit;
  protected
    class var
      Log: TLog;
  public
    class function Lock: TLog;
    procedure UnLock;

    constructor Create();
    destructor Destroy; override;
    procedure Setup(FileName: string = ''; Clear: Boolean = True; FilterExceptionUnit: Boolean = True; ll: TLogLevel = LLDebug; MaxLimit: Cardinal = 5000);

    class procedure LM(s: string; lvl: TLogLevel = LLDebug; Tag: string = '');
    class procedure LMF(const FormatA: string; const Args: array of const; lvl: TLogLevel = LLDebug; Tag: string = '');
    class procedure LME(e: Exception; lvl: TLogLevel = llError; Tag: string = '');
    class procedure Save(FName: TFileName = '');
    class function GetLog(Clear: Boolean = True; ll: TLogLevel = llVerbos): string;
    class function GetLogList(Clear: Boolean = True; ll: TLogLevel = llVerbos): TList<PLogRec>;
    class procedure SetLogLevel(ll: TLogLevel);
    class procedure Clear();
    class procedure onException(Sender: TObject; e: Exception);
    class procedure SetOnLogEvent(ev: TLogEvent);
  end;

implementation

uses
  strutils;

function iif(exp: Boolean; t: Integer; f: Integer = 0): Integer;
begin
  if exp then
    Result := t
  else
    Result := f;
end;

function iif(exp: Boolean; t: string; f: string = ''): string;
begin
  if exp then
    Result := t
  else
    Result := f;
end;
//
// class procedure TLog.LM(s: string; lvl: TLogLevel; dt: Boolean);
// begin
// if (_LogLst = nil) or (lvl < _LogLvl) then
// exit;
// if dt then
// s := DateTimeToStr(Now) + ' : ' + s;
// if MainThreadID = TThread.CurrentThread.ThreadID then
// begin
// _LogLst.Add(s);
// if lvl = llCritical then
// MessageBox(0, pwidechar(s), 'MTNBackup', MB_OK + MB_ICONSTOP);
// end
// else
// begin
// TThread.Queue(nil,
// procedure
// begin
// _LogLst.Add(s);
// if lvl = llCritical then
// MessageBox(0, pwidechar(s), 'MTNBackup', MB_OK + MB_ICONSTOP);
// end);
// // end);
// end;
// end;

{ TLog }

class procedure TLog.Clear;
var
  r: PLogRec;
begin
  Log.LockI;
  try
    for r in Log._loglst do
      Dispose(r);
    Log._loglst.Clear;
  finally
    Log.UnLock;
  end;
end;

constructor TLog.Create();
begin
  if Assigned(Log) = False then
  begin
    Log := inherited Create;
    _Flock := TObject.Create;
    _loglst := TList<PLogRec>.Create;
    _LogFormat := '%s[%s][ll:%s]:%s';
    jcldebug.JclStackTrackingOptions := [TJclStackTrackingOption.stDelayedTrace];
    jcldebug.JclExceptionStacktraceOptions := [];
    Setup();
    
  end;
  Self := Log;
end;

destructor TLog.Destroy;
begin
  if Assigned(Log) = false then
    exit;
  LockI;
  try
    if _loglst.Count > 0 then
      Save();
    Clear;
  finally
    FreeAndNil(_Flock);
    FreeAndNil(_loglst);
    log := nil;
    inherited;
  end;
end;

function TLog.FilterStuck(s: string): string;
const
  ignorelst: TArray<string> = ['system', 'vcl', 'classes', 'soap', 'fmx'];
var
  st: TStrings;
  s2: string;
  skip: Boolean;
begin
  st := TStringList.Create;
  try
    st.Text := s;
    for s in st do
    begin
      skip := False;
      if Length(s) < 15 then
        Continue;
      for s2 in ignorelst do
      begin
        if ContainsText(s, s2 + '.') then
        begin
          skip := true;
          Break;
        end;
      end;
      if skip = false then
        Result := Result + sLineBreak + copy(s, 11, Length(s) - 10);
    end;
    if Result <> '' then
      delete(Result, 1, Length(sLineBreak));
  finally
    st.free;
  end;
end;

class function TLog.GetLog(Clear: Boolean; ll: TLogLevel): string;
begin
  Log.LockI;
  try
    Result := Log.ToString(ord(ll));
    if Clear then
      Log.Clear;
  finally
    Log.UnLock;
  end;
end;

class function TLog.GetLogList(Clear: Boolean; ll: TLogLevel): TList<PLogRec>;
var
  r, r2: PLogRec;
begin
  Log.LockI;
  try
    Result := TList<PLogRec>.Create;
    for r in Log._loglst do
    begin
      if r.Level < ll then
        Continue;
      if Clear then
      begin
        Result.Add(r);
        Log._loglst.Remove(r);
      end
      else
      begin
        new(r2);
        move(r, r2, sizeof(r2));
      end;
    end;
    if Clear then
      Log.Clear;
  finally
    Log.UnLock;
  end;

end;

class procedure TLog.LM(s: string; lvl: TLogLevel; Tag: string);
var
  r: PLogRec;
begin
  if lvl < Log._LL then
    exit;
  new(r);
  r.msg := s;
  r.Level := lvl;
  r.Time := now;
  r.Tag := Tag;
  Log.LockI;
  try
    Log._loglst.Add(r);
    log.MaxLimit;
  finally
    Log.UnLock;
  end;
  if Assigned(Log.FonLogEvent) then
  begin
    tthread.Synchronize(nil,
      procedure()
      begin
        Log.FonLogEvent(s);
      end);
  end;
end;

class procedure TLog.LME(e: Exception; lvl: TLogLevel = llError; Tag: string = '');
var
  r: PLogRec;
  s: string;
begin
  if lvl < Log._LL then
    exit;
  new(r);
  s := e.StackTrace;
  if Log._FilterExceptionUnit then
    s := Log.FilterStuck(s);

  r.msg := e.Message + sLineBreak + s;
  r.Level := lvl;
  r.Time := now;
  r.Tag := Tag;
  Log.LockI;
  try
    Log._loglst.Add(r);
    log.MaxLimit;
  finally
    Log.UnLock;
  end;
end;

class procedure TLog.LMF(const FormatA: string; const Args: array of const; lvl: TLogLevel; Tag: string);
var
  s: string;
begin
  s := Format(FormatA, Args);
  LM(s, lvl, Tag);
end;

class function TLog.Lock: TLog;
begin
  if Assigned(Log) then
    Log.LockI;
  Result := Log;
end;

procedure TLog.LockI;
begin
  TMonitor.Enter(_Flock);
end;

procedure TLog.MaxLimit;
var
  i, delCount: Integer;
  r: PLogRec;
begin
  if _loglst.Count > _MaxLimit then
  begin
    delCount := (_MaxLimit div 4);
    for i := 0 to delCount - 1 do
    begin
      r := _loglst[i];
      Dispose(r);
    end;
    _loglst.DeleteRange(0, delCount);
  end;
end;

class procedure TLog.Save(FName: TFileName);
var
  f: TFileStream;
  s: string;
  b: tbytes;
begin
  if FName = '' then
    FName := log._FileName;
  f := TFileStream.Create(FName, iif(FileExists(FName), fmOpenReadWrite, fmCreate));
  try
    s := Log.ToString;
    b := TEncoding.Default.GetBytes(s);
    f.Write(b, Length(b))
  finally
    f.Free;
  end;
end;

class procedure TLog.SetLogLevel(ll: TLogLevel);
begin
  Log._LL := ll;
end;

class procedure TLog.SetOnLogEvent(ev: TLogEvent);
begin
  log.FonLogEvent := ev;
end;

procedure TLog.Setup(FileName: string; Clear, FilterExceptionUnit: Boolean; ll: TLogLevel; MaxLimit: Cardinal);
begin
  if Assigned(Log) = False then
    exit;
  _FilterExceptionUnit := FilterExceptionUnit;
  _FileName := FileName;
  _LL := ll;
  _MaxLimit := MaxLimit;
  _LogFormat := '%s[%s][ll:%s]:%s';
  if _FileName = '' then
    _FileName := 'Error.log';
  if Clear then
    DeleteFile(_FileName);
end;

function TLog.ToString(ll: Integer = -1): string;
const
  llc = 'VDIWEX';  //(llVerbos, LLDebug, llInfo, llwarning, llError, llCritical);
var
  r: PLogRec;
begin
  if Log._loglst.Count < 1 then
    exit('');

  if (ll = -1) then
    ll := ord(Log._LL);
  Log.LockI;
  try
    for r in Log._loglst do
      if ord(r.Level) >= ll then
        Result := Result + sLineBreak + Format(Log._LogFormat, [FormatDateTime('m/d t', r.Time), r.Tag, '' + llc[ord(r.Level) + 1], r.msg]);

    delete(Result, 1, Length(sLineBreak));
  finally
    Log.UnLock;
  end;

end;

procedure TLog.UnLock;
begin
  TMonitor.exit(_Flock);
end;

class procedure TLog.onException(Sender: TObject; e: Exception);
begin
  TLog.LME(e, llError, Sender.ClassName);
end;

initialization
  TLog.Create();


finalization
  if Assigned(TLog.Log) then
    TLog.log.free;

end.

