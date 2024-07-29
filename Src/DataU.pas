unit DataU;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Imaging.pngimage, CommonU,
  Vcl.DBGrids, JvDBGridExport, JvComponentBase, Vcl.Menus, System.ImageList,
  Vcl.ImgList, JvImageList, vcl.Dialogs;

type
  TDataM = class(TDataModule)
    ds1: TDataSource;
    Con1: TFDConnection;
    qr1: TFDQuery;
    qrTypeDef: TFDQuery;
    qrTypeDefCode: TStringField;
    qrTypeDefDes: TStringField;
    qrTypeDefTypeA: TStringField;
    dsTypeDef: TDataSource;
    pmExport: TPopupMenu;
    Export1: TMenuItem;
    ExportCSV1: TMenuItem;
    CSVExport1: TJvDBGridCSVExport;
    ExcelExport1: TJvDBGridExcelExport;
    imglst1: TJvImageList;
    procedure Con1BeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure Con1AfterConnect(Sender: TObject);
    procedure Export1Click(Sender: TObject);
    procedure ExportCSV1Click(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    img_logo: TPngImage;
    { Public declarations }
    procedure TypedefFillCB(code, dis: TStrings; TypeA: string = '');
    function GetTypedef(st: TStrings = nil; TypeA: string = ''): TStrings;
    procedure setFilter(qr: TFDQuery; fld, val: string);
    function SQLExcec(SQL: string; qr_: TFDQuery = nil; open: Boolean = True): TFDQuery;
    function SetNote(id: Integer; LinkID: Integer; typeA: string; Note: string): Boolean;
    procedure Refresh(q: TFDQuery);
  end;

var
  DataM: TDataM;

implementation

uses
  SettingsU, JclShell;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataM.TypedefFillCB(code, dis: TStrings; TypeA: string);
begin
  if TypeA <> '' then
  begin
    qrTypeDef.Filtered := false;
    qrTypeDef.Filter := 'TypeA=' + QuotedStr(TypeA);
    qrTypeDef.Filtered := True;
  end;
  code.BeginUpdate;
  dis.BeginUpdate;
  code.Clear;
  dis.Clear;
  qrTypeDef.First;
  while (qrTypeDef.Eof = false) do
  begin
    code.Add(qrTypeDefCode.AsString);
    dis.Add(qrTypeDefDes.AsString);
    qrTypeDef.Next;
  end;
  code.EndUpdate;
  dis.EndUpdate;
end;

function TDataM.GetTypedef(st: TStrings; TypeA: string): TStrings;
begin
  if st = nil then
    st := TStringList.Create;
  if TypeA <> '' then
    setFilter(qrTypeDef, 'TypeA', TypeA);
  st.BeginUpdate;
  st.Clear;
  qrTypeDef.First;
  while (qrTypeDef.Eof = false) do
  begin
    st.Add(qrTypeDefCode.AsString + '=' + qrTypeDefDes.AsString);
    qrTypeDef.Next;
  end;
  st.EndUpdate;
  result := st;
end;

procedure TDataM.Con1AfterConnect(Sender: TObject);
begin
  qrTypeDef.Open;
end;

procedure TDataM.Con1BeforeConnect(Sender: TObject);
begin
//load settings
  if SettingsU.stt = nil then
    tsettings.create(Con1);
  Con1.connectionstring := StringReplace(stt.GetLocal.CommaText, ',', ';', [rfReplaceAll]);
end;

procedure TDataM.DataModuleCreate(Sender: TObject);
var
  s: string;
begin
  FormatSettings.DateSeparator := '-';
  FormatSettings.ShortDateFormat := 'yyyy-mm-dd';
  apppath := ExtractFilePath(ParamStr(0));
  s := 'D:\MYDOC\doc\Data\Server\start.exe';
  if FileExists(s) = false then
    s := APPPath + 'data\server\start.exe';

  JclShell.ShellExec(0, '', 'D:\MYDOC\doc\Data\Server\start.exe', '', ExtractFilePath(s), 1);
  FormatSettings.ShortDateFormat := 'yyyy-mm-dd';

  FormatSettings.ShortTimeFormat := 'hh:nn';

  FormatSettings.CurrencyString := 'Rs ';
  FormatSettings.CurrencyDecimals := 0;

  img_logo := TPngImage.Create;
  img_logo.LoadFromResourceName(HInstance, 'logoLTS');
//  try
  Con1.Open;
//  finally
//    if con1.Connected = false then
//    begin
//      ShowMessage('Database connection Failed');
//      MessageBox(Handle, 'Database connection Failed', 'SSERP', MB_OK + MB_ICONSTOP);
//      halt;
//    end;
//  end;
end;

procedure TDataM.DataModuleDestroy(Sender: TObject);
begin
  stt.Free;
img_logo.Free;
end;

procedure TDataM.Export1Click(Sender: TObject);
begin
  ExcelExport1.Grid := (pmExport.PopupComponent as tdbgrid);
  ExcelExport1.ExportGrid;

end;

procedure TDataM.ExportCSV1Click(Sender: TObject);
begin
  CSVExport1.Grid := (pmExport.PopupComponent as tdbgrid);
  CSVExport1.ExportGrid;

end;

procedure TDataM.Refresh(q: TFDQuery);
begin
  q.DisableControls;
  try
    if q.Active then
      q.Close;
    q.open;
  finally
    q.EnableControls;
  end;
end;

procedure TDataM.setFilter(qr: TFDQuery; fld, val: string);
begin
  qr.Filtered := false;
  qr.Filter := fld + '=' + QuotedStr(val);
  qr.Filtered := True;

end;

function TDataM.SetNote(id, LinkID: Integer; typeA, Note: string): Boolean;
begin
  Result := True;
  try
    Con1.ExecSQL('INSERT INTO notes (id, lid, typeA, note) VALUES (:id,:lid, :typeA, :note) ON DUPLICATE KEY UPDATE  lid=:lid, typeA=:typeA, note=:note;', [id, LinkID, typeA, Note]);
  except
    Result := False;
  end;
end;

function TDataM.SQLExcec(SQL: string; qr_: TFDQuery; open: Boolean): TFDQuery;
begin
  if qr_ = nil then
  begin
    qr_ := TFDQuery.Create(Self);
    qr_.Connection := Con1;
  end;
  qr_.SQL.Text := SQL;
  try
    if open then
      qr_.open;
  finally
    Result := qr_;
  end;
end;

end.

