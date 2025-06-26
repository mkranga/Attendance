unit SettingsU;

interface

uses
  System.Classes, db, FireDAC.Comp.Client;

type
  TSettingKey = (skTheme, skConfirmMsgPath, skPOSPrinter, skLastCHQNo, skCHQPrinter, skCompName, skCompAddress, skSalaryStartDate);

const
  _KeyNames: array[TSettingKey] of string = ('Theme', 'ConfirmMsgPath', 'POSPrinter', 'LastChequeNo', 'ChequePrinter', 'CompanyName', 'CompanyAddress',
    'SalaryStartDate');

type
  TSettings = class(Tobject)
  private
    flocal: tstrings;
    saved: Boolean;
    fqr: TFDQuery;
  { private declarations }
  protected
  { protected declarations }
  public
    class var
      IsSuperUser: Boolean;
      UserID, UserLevel: Integer;
  { public declarations }
    class function GetString(key: TSettingKey; def: string = ''): string;
    class function GetValue(key: TSettingKey; def: string = ''): TField;
    class function SetValue(key: TSettingKey; value: string): Boolean;
    class function GetLocal(): TStrings;

    constructor Create(dbCon: tfdconnection);
    destructor Destroy; override;

  published
  { published declarations }
  end;

var
  stt: TSettings;

implementation

{ TSettings }

constructor TSettings.Create(dbCon: tfdconnection);
begin
  inherited Create;
  flocal := TStringList.Create;
  flocal.LoadFromFile('settings.ini');
  fqr := TFDQuery.Create(nil);
  fqr.Connection := dbCon;
  stt := Self;
end;

destructor TSettings.Destroy;
begin
  flocal.free;
  fqr.Free;
  stt := nil;
  inherited;
end;

class function TSettings.GetLocal: TStrings;
begin
  Result := stt.flocal;
end;

class function TSettings.GetString(key: TSettingKey; def: string): string;
begin
  Result := GetValue(key, def).AsString;
end;

class function TSettings.GetValue(key: TSettingKey; def: string): TField;
begin
  if stt.fqr.Active = False then
    stt.fqr.Open('select keyN,vals from setting;');

  Result := stt.fqr.Fields[1];
  if not (stt.fqr.Locate('keyN', _KeyNames[key], [])) then
    SetValue(key, def);
end;

class function TSettings.SetValue(key: TSettingKey; value: string): Boolean;
var
  b: TBookmark;
begin
  Result := false;
  if stt.fqr.Locate('keyN', _KeyNames[key], []) then
    stt.fqr.Edit
  else
  begin
    stt.fqr.Append;
    stt.fqr.FieldByName('keyN').value := _KeyNames[key];
  end;
  stt.fqr.FieldByName('vals').value := value;
  stt.fqr.Post;
//  b := stt.fqr.GetBookmark;
//  stt.fqr.ApplyUpdates();
//  stt.fqr.GotoBookmark(b);
  Result := true;
end;

end.

