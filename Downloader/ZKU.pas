unit ZKU;

interface

uses
  SysUtils, Classes, IdTCPClient, IdGlobal, DateUtils;

type
  TAttendanceRecord = record
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

  TUserInfo = record
    UserID: Integer;
    Name: string;
    Privilege: Byte; // 0=normal user, 1=admin, etc.
    Password: string;
    CardNumber: string;
    Enabled: Boolean;
  end;

  TAttendanceArray = array of TAttendanceRecord;

type
  TZK = class
  private
    FTCPClient: TIdTCPClient;
    FIPAddress: string;
    FPort: Integer;
    FDeviceID: Integer;
    FConnected: Boolean;
    function CalculateChecksum(const Data: TIdBytes): Byte;
    function BuildCommand(const Command: Word; const Data: TIdBytes = nil): TIdBytes;
    function SendAndReceive(const Command: Word; const Data: TIdBytes = nil): TIdBytes;
    function ParseAttendanceData(const Data: TIdBytes): TAttendanceArray;
    function ParseUserData(const Data: TIdBytes): TUserInfo;
    function GetUserInfoX(const UserID: Integer): TUserInfo;

  public
    constructor Create;
    destructor Destroy; override;

    function Connect(const AIPAddress: string; APort: Integer = 4370; ADeviceID: Integer = 1): Boolean;
    procedure Disconnect;
    function SetDeviceTime(const ADateTime: TDateTime): Boolean;
    function GetDeviceTime: TDateTime;

    property IPAddress: string read FIPAddress;
    property Port: Integer read FPort;
    property DeviceID: Integer read FDeviceID;
    property Connected: Boolean read FConnected;
    function DownloadAttendanceLog: TAttendanceArray;
    function GetAllUserInfo: TArray<TUserInfo>;
    function SetUserName(const UserID: Integer; const UserName: string): Boolean;
    function SetUserInfo(const UserInfo: TUserInfo): Boolean;
    function GetUserInfo(const UserID: Integer): TUserInfo;

  end;

implementation

const
  CMD_CONNECT = $1000;
  CMD_EXIT = $2000;
  CMD_SET_TIME = $2038;
  CMD_GET_TIME = $2034;
  CMD_DOWNLOAD_ATTENDANCE = $5000;
  CMD_GET_ALL_USER_INFO = $7002;
  CMD_SET_USER_INFO = $7001;
  ACK_OK = $0000;
  ACK_ERROR = $FFFF;
  ACK_DATA_ERROR = $FFFD;
  ACK_UNAUTH = $FFFE;
  CMD_GET_USER_INFO = $7003;
  USER_NOT_FOUND = $FFFE;
function StringToIdBytes(const S: string): TIdBytes;
begin
  Result := TIdBytes(TEncoding.ASCII.GetBytes(S));
end;

function IdBytesToString(const ABytes: TIdBytes): string;
begin
  Result := TEncoding.ASCII.GetString(TBytes(ABytes));
end;

constructor TZK.Create;
begin
  inherited;
  FTCPClient := TIdTCPClient.Create(nil);
  FTCPClient.ReadTimeout := 5000;
  FTCPClient.ConnectTimeout := 5000;
  FConnected := False;
  FPort := 4370;
  FDeviceID := 1;
end;

destructor TZK.Destroy;
begin
  if FConnected then
    Disconnect;
  FreeAndNil(FTCPClient);
  inherited;
end;

function TZK.CalculateChecksum(const Data: TIdBytes): Byte;
var
  I: Integer;
begin
  Result := 0;
  for I := 0 to Length(Data) - 1 do
    Result := Result + Data[I];
  Result := Result mod 256;
end;

function TZK.BuildCommand(const Command: Word; const Data: TIdBytes = nil): TIdBytes;
var
  DataLen: Word;
  I: Integer;
begin
  if Assigned(Data) then
    DataLen := Length(Data)
  else
    DataLen := 0;

  // Start of packet (2 bytes)
  SetLength(Result, 8 + DataLen);
  Result[0] := $50;
  Result[1] := $00;

  // Device ID (2 bytes)
  Result[2] := Lo(FDeviceID);
  Result[3] := Hi(FDeviceID);

  // Command (2 bytes)
  Result[4] := Lo(Command);
  Result[5] := Hi(Command);

  // Data length (2 bytes)
  Result[6] := Lo(DataLen);
  Result[7] := Hi(DataLen);

  // Data (if any)
  if DataLen > 0 then
    for I := 0 to DataLen - 1 do
      Result[8 + I] := Data[I];

  // Checksum (1 byte)
  Result := Result + [CalculateChecksum(Result)];
end;

function TZK.SendAndReceive(const Command: Word; const Data: TIdBytes = nil): TIdBytes;
var
  CmdBytes, RecvBytes: TIdBytes;
  RecvLen: Integer;
begin
  if not FConnected then
    raise Exception.Create('Not connected to device');

  CmdBytes := BuildCommand(Command, Data);

  FTCPClient.IOHandler.Write(CmdBytes);

  // Read response header (8 bytes)
  FTCPClient.IOHandler.ReadBytes(RecvBytes, 8, false);

  // Check response header
  if (Length(RecvBytes) < 8) or (RecvBytes[0] <> $50) or (RecvBytes[1] <> $00) then
    raise Exception.Create('Invalid response header');

  // Get data length from response
  RecvLen := RecvBytes[6] + RecvBytes[7] * 256;

  // Read remaining data if any
  if RecvLen > 0 then
    FTCPClient.IOHandler.ReadBytes(RecvBytes, RecvLen);

  // Read checksum
  FTCPClient.IOHandler.ReadBytes(RecvBytes, 1);

  // Verify checksum
  if CalculateChecksum(Copy(RecvBytes, 0, Length(RecvBytes) - 1)) <> RecvBytes[High(RecvBytes)] then
    raise Exception.Create('Checksum verification failed');

  Result := RecvBytes;
end;

function TZK.Connect(const AIPAddress: string; APort: Integer; ADeviceID: Integer): Boolean;
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

    // Send connect command
    Response := SendAndReceive(CMD_CONNECT);

    // Check reply code
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

procedure TZK.Disconnect;
begin
  if FConnected then
  begin
    try
      SendAndReceive(CMD_EXIT);
    finally
      FTCPClient.Disconnect;
      FConnected := False;
    end;
  end;
end;

function TZK.SetDeviceTime(const ADateTime: TDateTime): Boolean;
var
  Data, Response: TIdBytes;
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
  ReplyCode: Word;
begin
  DecodeDate(ADateTime, Year, Month, Day);
  DecodeTime(ADateTime, Hour, Min, Sec, MSec);

  // Prepare time data (6 bytes: YY MM DD HH MM SS)
  SetLength(Data, 6);
  Data[0] := Year mod 100;
  Data[1] := Month;
  Data[2] := Day;
  Data[3] := Hour;
  Data[4] := Min;
  Data[5] := Sec;

  Response := SendAndReceive(CMD_SET_TIME, Data);

  // Check reply code
  ReplyCode := Response[4] + Response[5] * 256;
  Result := (ReplyCode = ACK_OK);
end;

function TZK.GetDeviceTime: TDateTime;
var
  Response: TIdBytes;
  Year, Month, Day, Hour, Min, Sec: Integer;
  CurrentYear: Word;
begin
  Response := SendAndReceive(CMD_GET_TIME);

  // Check if we got 6 bytes of time data
  if (Response[6] + Response[7] * 256) <> 6 then
    raise Exception.Create('Invalid time data received');

  // Extract time data (6 bytes: YY MM DD HH MM SS)
  Year := Response[8];
  Month := Response[9];
  Day := Response[10];
  Hour := Response[11];
  Min := Response[12];
  Sec := Response[13];

  // Handle year (device returns 2-digit year)
  CurrentYear := YearOf(Now);
  Year := (CurrentYear div 100) * 100 + Year;
  if Year > CurrentYear + 1 then
    Year := Year - 100;

  Result := EncodeDateTime(Year, Month, Day, Hour, Min, Sec, 0);
end;

function TZK.GetUserInfo(const UserID: Integer): TUserInfo;
var
  AllUsers: TArray<TUserInfo>;
  I: Integer;
begin
  // Initialize empty result
  Result.UserID := 0;
  Result.Name := '';
  Result.Privilege := 0;
  Result.Password := '';
  Result.CardNumber := '';
  Result.Enabled := False;

  // Get all users and find the one we want
  AllUsers := GetAllUserInfo;
  for I := 0 to High(AllUsers) do
  begin
    if AllUsers[I].UserID = UserID then
      Exit(AllUsers[I]);
  end;

  raise Exception.Create('User not found on device');
end;

function TZK.GetUserInfoX(const UserID: Integer): TUserInfo;
var
  Data, Response: TIdBytes;
  DataLen: Integer;
  ReplyCode: Word;
begin
  // Initialize empty result
  Result.UserID := 0;
  Result.Name := '';
  Result.Privilege := 0;
  Result.Password := '';
  Result.CardNumber := '';
  Result.Enabled := False;

  // Prepare user ID data (2 bytes)
  SetLength(Data, 2);
  Data[0] := Lo(UserID);
  Data[1] := Hi(UserID);

  Response := SendAndReceive(CMD_GET_USER_INFO, Data);

  // Check reply code
  ReplyCode := Response[4] + Response[5] * 256;

  if ReplyCode = USER_NOT_FOUND then
    raise Exception.Create('User not found on device')
  else if ReplyCode <> ACK_OK then
    raise Exception.Create('Error retrieving user info: ' + IntToHex(ReplyCode, 4));

  DataLen := Response[6] + Response[7] * 256;
  if DataLen < 72 then // User record should be 72 bytes
    raise Exception.Create('Invalid user data received');

  Result := ParseUserData(Copy(Response, 8, 72));

end;

function TZK.ParseAttendanceData(const Data: TIdBytes): TAttendanceArray;
var
  I, Count, Pos: Integer;
begin
  // Each attendance record is 40 bytes
  Count := Length(Data) div 40;
  SetLength(Result, Count);

  Pos := 0;
  for I := 0 to Count - 1 do
  begin
    Result[I].UserID := Data[Pos] + Data[Pos + 1] * 256;
    Result[I].VerificationMode := Data[Pos + 2];
    Result[I].InOutMode := Data[Pos + 3];

    // Time is stored as 2 bytes each for year/month/day/hour/minute/second
    Result[I].Year := 2000 + Data[Pos + 4];
    Result[I].Month := Data[Pos + 5];
    Result[I].Day := Data[Pos + 6];
    Result[I].Hour := Data[Pos + 7];
    Result[I].Minute := Data[Pos + 8];
    Result[I].Second := Data[Pos + 9];

    Result[I].WorkCode := Data[Pos + 10];

    Inc(Pos, 40); // Move to next record
  end;
end;

function TZK.ParseUserData(const Data: TIdBytes): TUserInfo;
var
  NameBytes: TIdBytes;
  I: Integer;
begin
  Result.UserID := Data[0] + Data[1] * 256;

  // Name is 24 bytes (null-terminated if shorter)
  SetLength(NameBytes, 24);
  for I := 0 to 23 do
    NameBytes[I] := Data[2 + I];
  Result.Name := TEncoding.ASCII.GetString(NameBytes).TrimRight([#0]);

  Result.Privilege := Data[26];

  // Password is 8 bytes (null-terminated if shorter)
  SetLength(NameBytes, 8);
  for I := 0 to 7 do
    NameBytes[I] := Data[27 + I];
  Result.Password := TEncoding.ASCII.GetString(NameBytes).TrimRight([#0]);

  // Card number is 5 bytes (as string)
  SetLength(NameBytes, 5);
  for I := 0 to 4 do
    NameBytes[I] := Data[35 + I];
  Result.CardNumber := TEncoding.ASCII.GetString(NameBytes).TrimRight([#0]);

  Result.Enabled := Data[40] <> 0;
end;

function TZK.DownloadAttendanceLog: TAttendanceArray;
var
  Response: TIdBytes;
  DataLen: Integer;
begin
  Response := SendAndReceive(CMD_DOWNLOAD_ATTENDANCE);

  DataLen := Response[6] + Response[7] * 256;
  if DataLen = 0 then
    Exit(nil);

  Result := ParseAttendanceData(Copy(Response, 8, DataLen));
end;

function TZK.GetAllUserInfo: TArray<TUserInfo>;
var
  Response: TIdBytes;
  DataLen, RecordCount, I, Pos: Integer;
  UserData: TIdBytes;
begin
  Response := SendAndReceive(CMD_GET_ALL_USER_INFO);

  DataLen := Response[6] + Response[7] * 256;
  if DataLen = 0 then
    Exit(nil);

  // Each user record is 72 bytes
  RecordCount := DataLen div 72;
  SetLength(Result, RecordCount);

  Pos := 8; // Start of data
  for I := 0 to RecordCount - 1 do
  begin
    UserData := Copy(Response, Pos, 72);
    Result[I] := ParseUserData(UserData);
    Inc(Pos, 72);
  end;
end;

function TZK.SetUserName(const UserID: Integer; const UserName: string): Boolean;
var
  UserInfo: TUserInfo;
begin
  // First get current user info
  UserInfo := GetUserInfo(UserID);

  // Update just the name
  UserInfo.Name := UserName;

  // Set the updated info
  Result := SetUserInfo(UserInfo);
end;

function TZK.SetUserInfo(const UserInfo: TUserInfo): Boolean;
var
  Data, Response: TIdBytes;
  NameBytes, PasswordBytes, CardBytes: TIdBytes;
  I: Integer;
  ReplyCode: Word;
begin
  SetLength(Data, 72); // User record is 72 bytes

  // User ID (2 bytes)
  Data[0] := Lo(UserInfo.UserID);
  Data[1] := Hi(UserInfo.UserID);

  // Name (24 bytes)
  NameBytes:=StringToIdBytes(UserInfo.Name);
//  NameBytes := TEncoding.ASCII.GetBytes(UserInfo.Name);
  for I := 0 to 23 do
  begin
    if I < Length(NameBytes) then
      Data[2 + I] := NameBytes[I]
    else
      Data[2 + I] := 0;
  end;

  // Privilege (1 byte)
  Data[26] := UserInfo.Privilege;

  // Password (8 bytes)
  PasswordBytes :=StringToIdBytes( UserInfo.Password);
  for I := 0 to 7 do
  begin
    if I < Length(PasswordBytes) then
      Data[27 + I] := PasswordBytes[I]
    else
      Data[27 + I] := 0;
  end;

  // Card number (5 bytes)
  CardBytes := StringToIdBytes(UserInfo.CardNumber);
  for I := 0 to 4 do
  begin
    if I < Length(CardBytes) then
      Data[35 + I] := CardBytes[I]
    else
      Data[35 + I] := 0;
  end;

  // Enabled (1 byte)
  if UserInfo.Enabled then
    Data[40] := 1
  else
    Data[40] := 0;

  // The rest are reserved bytes (set to 0)
  for I := 41 to 71 do
    Data[I] := 0;

  Response := SendAndReceive(CMD_SET_USER_INFO, Data);

  // Check reply code
  ReplyCode := Response[4] + Response[5] * 256;
  Result := (ReplyCode = ACK_OK);
end;

end.

