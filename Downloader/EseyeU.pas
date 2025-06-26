unit EseyeU;

interface

uses
  SysUtils, Classes, IdTCPClient, IdGlobal, DateUtils;

type
  TAttendanceRecord1 = record    //merge record type
    UserID: Integer;
    VerificationMode: Byte; // 0=password, 1=fingerprint, etc.
    InOutMode: Byte;        // 0=check-in, 1=check-out
    Year: Word;
    Month: Byte;
    Day: Byte;
    Hour: Byte;
    Minute: Byte;
    Second: Byte;
    WorkCode: Byte;
  end;

  TUserInfo1 = record
    UserID: Integer;
    Name: string;
    Privilege: Byte; // 0=normal user, 1=admin, etc.
    Password: string;
    CardNumber: string;
    Enabled: Boolean;
  end;

  TAttendanceArray1 = array of TAttendanceRecord1;
  TUserInfoArray1 = array of TUserInfo1;

  TEseye = class
  private
    FTCPClient: TIdTCPClient;
    FIPAddress: string;
    FPort: Integer;
    FDeviceID: Integer;
    FConnected: Boolean;

    function CalculateChecksum(const Data: TIdBytes): Byte;
    function BuildCommand(const Command: Word; const Data: TIdBytes = nil): TIdBytes;
    function SendAndReceive(const Command: Word; const Data: TIdBytes = nil): TIdBytes;
    function StringToIdBytes(const S: string): TIdBytes;
    function IdBytesToString(const ABytes: TIdBytes): string;
    function ParseAttendanceData(const Data: TIdBytes): TAttendanceArray1;
    function ParseUserData(const Data: TIdBytes): TUserInfo1;

  public
    constructor Create;
    destructor Destroy; override;

    function Connect(const AIPAddress: string; APort: Integer = 5005; ADeviceID: Integer = 1): Boolean;
    procedure Disconnect;
    function SetDeviceTime(const ADateTime: TDateTime): Boolean;
    function GetDeviceTime: TDateTime;
    function DownloadAttendanceLog: TAttendanceArray1;
    function GetAllUserInfo: TUserInfoArray1;
    function GetUserInfo(const UserID: Integer): TUserInfo1;
    function SetUserName(const UserID: Integer; const UserName: string): Boolean;
    function SetUserInfo(const UserInfo: TUserInfo1): Boolean;

    property IPAddress: string read FIPAddress;
    property Port: Integer read FPort;
    property DeviceID: Integer read FDeviceID;
    property Connected: Boolean read FConnected;
  end;

implementation

const
  // ESEYE EY-263 specific commands
  CMD_CONNECT = $1000;
  CMD_DISCONNECT = $2000;
  CMD_SET_TIME = $2038;
  CMD_GET_TIME = $2034;
  CMD_DOWNLOAD_ATTENDANCE = $5000;
  CMD_GET_ALL_USER_INFO = $7002;
  CMD_GET_USER_INFO = $7003;
  CMD_SET_USER_INFO = $7001;

  // Response codes
  ACK_OK = $0000;
  ACK_ERROR = $FFFF;
  ACK_DATA_ERROR = $FFFD;
  ACK_UNAUTH = $FFFE;
  USER_NOT_FOUND = $FFFE;

constructor TEseye.Create;
begin
  inherited;
  FTCPClient := TIdTCPClient.Create(nil);
  FTCPClient.ReadTimeout := 5000;
  FTCPClient.ConnectTimeout := 5000;
  FConnected := False;
  FPort := 5005; // Default port for ESEYE devices
  FDeviceID := 1;
end;

destructor TEseye.Destroy;
begin
  if FConnected then
    Disconnect;
  FreeAndNil(FTCPClient);
  inherited;
end;

function TEseye.CalculateChecksum(const Data: TIdBytes): Byte;
var
  I: Integer;
begin
  Result := 0;
  for I := 0 to Length(Data) - 1 do
    Result := Result + Data[I];
  Result := Result mod 256;
end;

function TEseye.BuildCommand(const Command: Word; const Data: TIdBytes = nil): TIdBytes;
var
  DataLen: Word;
  I: Integer;
begin
  if Assigned(Data) then
    DataLen := Length(Data)
  else
    DataLen := 0;

  SetLength(Result, 8 + DataLen);
  // Header
  Result[0] := $AA;
  Result[1] := $55;
  // Device ID
  Result[2] := Lo(FDeviceID);
  Result[3] := Hi(FDeviceID);
  // Command
  Result[4] := Lo(Command);
  Result[5] := Hi(Command);
  // Data length
  Result[6] := Lo(DataLen);
  Result[7] := Hi(DataLen);
  // Data
  if DataLen > 0 then
    for I := 0 to DataLen - 1 do
      Result[8 + I] := Data[I];
  // Checksum
  Result := Result + [CalculateChecksum(Result)];
end;

function TEseye.SendAndReceive(const Command: Word; const Data: TIdBytes = nil): TIdBytes;
var
  CmdBytes, RecvBytes: TIdBytes;
  RecvLen: Integer;
begin
  if not FConnected then
    raise Exception.Create('Not connected to device');

  CmdBytes := BuildCommand(Command, Data);
  FTCPClient.IOHandler.Write(CmdBytes);

  // Read response header (8 bytes)
  FTCPClient.IOHandler.ReadBytes(RecvBytes, 8,false);

  // Validate header
  if (Length(RecvBytes) < 8) or (RecvBytes[0] <> $AA) or (RecvBytes[1] <> $55) then
    raise Exception.Create('Invalid response header');

  // Get data length
  RecvLen := RecvBytes[6] + RecvBytes[7] * 256;

  // Read remaining data if any
  if RecvLen > 0 then
    FTCPClient.IOHandler.ReadBytes(RecvBytes,RecvLen);

  // Read checksum
   FTCPClient.IOHandler.ReadBytes(RecvBytes,1);

  // Verify checksum
  if CalculateChecksum(Copy(RecvBytes, 0, Length(RecvBytes) - 1)) <> RecvBytes[High(RecvBytes)] then
    raise Exception.Create('Checksum verification failed');

  Result := RecvBytes;
end;

function TEseye.StringToIdBytes(const S: string): TIdBytes;
begin
  Result := TIdBytes(TEncoding.ASCII.GetBytes(S));
end;

function TEseye.IdBytesToString(const ABytes: TIdBytes): string;
begin
  Result := TEncoding.ASCII.GetString(TBytes(ABytes));
end;

function TEseye.Connect(const AIPAddress: string; APort: Integer; ADeviceID: Integer): Boolean;
var
  Response: TIdBytes;
  ReplyCode: Word;
begin
  if FConnected then
    Disconnect;

  FIPAddress := AIPAddress;
  FPort := APort;
  FDeviceID := ADeviceID;

  FTCPClient.Host := FIPAddress;
  FTCPClient.Port := FPort;

  try
    FTCPClient.Connect;
    Response := SendAndReceive(CMD_CONNECT);

    ReplyCode := Response[4] + Response[5] * 256;
    if ReplyCode = ACK_OK then
    begin
      FConnected := True;
      Result := True;
    end
    else
    begin
      FTCPClient.Disconnect;
      Result := False;
    end;
  except
    on E: Exception do
    begin
      FTCPClient.Disconnect;
      raise Exception.Create('Connection failed: ' + E.Message);
    end;
  end;
end;

procedure TEseye.Disconnect;
begin
  if FConnected then
  begin
    try
      SendAndReceive(CMD_DISCONNECT);
    finally
      FTCPClient.Disconnect;
      FConnected := False;
    end;
  end;
end;

function TEseye.SetDeviceTime(const ADateTime: TDateTime): Boolean;
var
  Data, Response: TIdBytes;
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
  ReplyCode: Word;
begin
  DecodeDate(ADateTime, Year, Month, Day);
  DecodeTime(ADateTime, Hour, Min, Sec, MSec);

  SetLength(Data, 6);
  Data[0] := Year mod 100;
  Data[1] := Month;
  Data[2] := Day;
  Data[3] := Hour;
  Data[4] := Min;
  Data[5] := Sec;

  Response := SendAndReceive(CMD_SET_TIME, Data);
  ReplyCode := Response[4] + Response[5] * 256;
  Result := (ReplyCode = ACK_OK);
end;

function TEseye.GetDeviceTime: TDateTime;
var
  Response: TIdBytes;
  Year, Month, Day, Hour, Min, Sec: Integer;
  CurrentYear: Word;
begin
  Response := SendAndReceive(CMD_GET_TIME);

  if (Response[6] + Response[7] * 256) <> 6 then
    raise Exception.Create('Invalid time data received');

  Year := Response[8];
  Month := Response[9];
  Day := Response[10];
  Hour := Response[11];
  Min := Response[12];
  Sec := Response[13];

  CurrentYear := YearOf(Now);
  Year := (CurrentYear div 100) * 100 + Year;
  if Year > CurrentYear + 1 then
    Year := Year - 100;

  Result := EncodeDateTime(Year, Month, Day, Hour, Min, Sec, 0);
end;

function TEseye.ParseAttendanceData(const Data: TIdBytes): TAttendanceArray1;
var
  I, Count, Pos: Integer;
begin
  Count := Length(Data) div 40;
  SetLength(Result, Count);

  Pos := 0;
  for I := 0 to Count - 1 do
  begin
    Result[I].UserID := Data[Pos] + Data[Pos+1]*256;
    Result[I].VerificationMode := Data[Pos+2];
    Result[I].InOutMode := Data[Pos+3];
    Result[I].Year := 2000 + Data[Pos+4];
    Result[I].Month := Data[Pos+5];
    Result[I].Day := Data[Pos+6];
    Result[I].Hour := Data[Pos+7];
    Result[I].Minute := Data[Pos+8];
    Result[I].Second := Data[Pos+9];
    Result[I].WorkCode := Data[Pos+10];
    Inc(Pos, 40);
  end;
end;

function TEseye.DownloadAttendanceLog: TAttendanceArray1;
var
  Response: TIdBytes;
  DataLen: Integer;
begin
  Response := SendAndReceive(CMD_DOWNLOAD_ATTENDANCE);
  DataLen := Response[6] + Response[7]*256;
  if DataLen = 0 then
    Exit(nil);
  Result := ParseAttendanceData(Copy(Response, 8, DataLen));
end;

function TEseye.ParseUserData(const Data: TIdBytes): TUserInfo1;
var
  NameBytes: TIdBytes;
  I: Integer;
begin
  Result.UserID := Data[0] + Data[1]*256;

  SetLength(NameBytes, 24);
  for I := 0 to 23 do
    NameBytes[I] := Data[2 + I];
  Result.Name := IdBytesToString(NameBytes).TrimRight([#0]);

  Result.Privilege := Data[26];

  SetLength(NameBytes, 8);
  for I := 0 to 7 do
    NameBytes[I] := Data[27 + I];
  Result.Password := IdBytesToString(NameBytes).TrimRight([#0]);

  SetLength(NameBytes, 5);
  for I := 0 to 4 do
    NameBytes[I] := Data[35 + I];
  Result.CardNumber := IdBytesToString(NameBytes).TrimRight([#0]);

  Result.Enabled := Data[40] <> 0;
end;

function TEseye.GetAllUserInfo: TUserInfoArray1;
var
  Response: TIdBytes;
  DataLen, RecordCount, I, Pos: Integer;
  UserData: TIdBytes;
begin
  Response := SendAndReceive(CMD_GET_ALL_USER_INFO);
  DataLen := Response[6] + Response[7]*256;
  if DataLen = 0 then
    Exit(nil);

  RecordCount := DataLen div 72;
  SetLength(Result, RecordCount);

  Pos := 8;
  for I := 0 to RecordCount - 1 do
  begin
    UserData := Copy(Response, Pos, 72);
    Result[I] := ParseUserData(UserData);
    Inc(Pos, 72);
  end;
end;

function TEseye.GetUserInfo(const UserID: Integer): TUserInfo1;
var
  Data, Response: TIdBytes;
begin
  SetLength(Data, 2);
  Data[0] := Lo(UserID);
  Data[1] := Hi(UserID);

  Response := SendAndReceive(CMD_GET_USER_INFO, Data);

  if (Response[4] + Response[5] * 256) = USER_NOT_FOUND then
    raise Exception.Create('User not found');

  if (Response[6] + Response[7] * 256) < 72 then
    raise Exception.Create('Invalid user data received');

  Result := ParseUserData(Copy(Response, 8, 72));
end;

function TEseye.SetUserName(const UserID: Integer; const UserName: string): Boolean;
var
  UserInfo: TUserInfo1;
begin
  UserInfo := GetUserInfo(UserID);
  UserInfo.Name := UserName;
  Result := SetUserInfo(UserInfo);
end;

function TEseye.SetUserInfo(const UserInfo: TUserInfo1): Boolean;
var
  Data, Response: TIdBytes;
  NameBytes, PasswordBytes, CardBytes: TIdBytes;
  I: Integer;
  ReplyCode: Word;
begin
  SetLength(Data, 72);

  // User ID
  Data[0] := Lo(UserInfo.UserID);
  Data[1] := Hi(UserInfo.UserID);

  // Name
  NameBytes := StringToIdBytes(UserInfo.Name);
  for I := 0 to 23 do
    if I < Length(NameBytes) then
      Data[2 + I] := NameBytes[I]
    else
      Data[2 + I] := 0;

  // Privilege
  Data[26] := UserInfo.Privilege;

  // Password
  PasswordBytes := StringToIdBytes(UserInfo.Password);
  for I := 0 to 7 do
    if I < Length(PasswordBytes) then
      Data[27 + I] := PasswordBytes[I]
    else
      Data[27 + I] := 0;

  // Card number
  CardBytes := StringToIdBytes(UserInfo.CardNumber);
  for I := 0 to 4 do
    if I < Length(CardBytes) then
      Data[35 + I] := CardBytes[I]
    else
      Data[35 + I] := 0;

  // Enabled
  if UserInfo.Enabled then
    Data[40] := 1
  else
    Data[40] := 0;

  // Reserved bytes
  for I := 41 to 71 do
    Data[I] := 0;

  Response := SendAndReceive(CMD_SET_USER_INFO, Data);
  ReplyCode := Response[4] + Response[5] * 256;
  Result := (ReplyCode = ACK_OK);
end;
end.
