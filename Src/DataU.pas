unit DataU;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Phys, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Imaging.pngimage, CommonU, Vcl.DBGrids,
  JvDBGridExport, JvComponentBase, Vcl.Menus, System.ImageList, Vcl.ImgList, JvImageList, vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys.MySQL, Vcl.Graphics,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Async, FireDAC.Comp.UI;

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
    CopyAll1: TMenuItem;
    dlgSave1: TSaveDialog;
    FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog;
    OpenDlg: TOpenDialog;
    procedure Con1BeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure Con1AfterConnect(Sender: TObject);
    procedure Export1Click(Sender: TObject);
    procedure ExportCSV1Click(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure CopyAll1Click(Sender: TObject);
    procedure ExcelExport1Exception(Sender: TObject);
  private
    { Private declarations }
  public
    img_logo: TWICImage;
    { Public declarations }
    procedure TypedefFillCB(code, dis: TStrings; TypeA: string = '');
    function GetTypedef(st: TStrings = nil; TypeA: string = ''): TStrings;
    procedure setFilter(qr: TFDQuery; fld, val: string);
    function SQLExcec(SQL: string; qr_: TFDQuery = nil; open: Boolean = True): TFDQuery;
    function SQLExcecS(SQL: string): string;
    function SetNote(id: Integer; LinkID: Integer; typeA: string; Note: string): Boolean;
    procedure Refresh(q: TFDQuery);
    procedure CloneRecord(src, des: TFDQuery);
    function ImportTabDelimitedToDBGrid(const TabDelimitedString: string; DataSet: TDataSet; KeyFld: string; delimiterA: Char = #9): Integer;
    function ApplyUpdate(qr: TFDQuery): Boolean;
    function OpenDialog(filter: string = '*.*'; filename: string = ''; title: string = 'Open File'): string;
    function FormPermition(FormAL: Integer): Boolean;
  end;

var
  DataM: TDataM;

implementation

uses
  SettingsU, JclShell, System.Variants;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
 //TabDelimitedString first line must contain field names
 //TabDelimitedString  first column must contain key field

function TDataM.ImportTabDelimitedToDBGrid(const TabDelimitedString: string; DataSet: TDataSet; KeyFld: string; delimiterA: Char = #9): Integer;
var
  Lines, Fields: TStringList;
  I, J: Integer;
begin
  Result := 0;
  Lines := TStringList.Create;
  Fields := TStringList.Create;
  try
    Lines.Text := StringReplace(TabDelimitedString, #13#10, #13, [rfReplaceAll]); // Normalize line endings
    DataSet.DisableControls;
//    DataSet.Close;
//    DataSet.Open;

    for I := 1 to Lines.Count - 1 do
    begin
      Fields.Clear;
      Fields.Delimiter := delimiterA; // Tab character
      Fields.DelimitedText := Lines[I];
      if DataSet.Locate(KeyFld, Fields[0], [loCaseInsensitive]) then
      begin
        DataSet.edit;
        for J := 1 to Fields.Count - 1 do
        begin
          if J < DataSet.FieldCount then
            DataSet.Fields[J].AsString := Fields[J];
        end;
        Inc(Result);
        DataSet.Post;
      end;
    end;

  finally
    Lines.Free;
    Fields.Free;
    DataSet.EnableControls;
  end;
end;

function TDataM.OpenDialog(filter, filename, title: string): string;
begin
  OpenDlg.Title := title;
  OpenDlg.FileName := filename;
  OpenDlg.Filter := filter;
  if OpenDlg.Execute() then
    Result := OpenDlg.FileName
  else
    Result := '';
end;

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

function TDataM.ApplyUpdate(qr: TFDQuery): Boolean;
begin
  Result := false;
  if qr.State in [dsInsert, dsEdit] then
    qr.Post;
  if (qr.Active = false) or (qr.UpdatesPending = false) then
    exit(true);

  qr.ApplyUpdates();
  qr.CommitUpdates;
  exit(true);
end;

procedure TDataM.CloneRecord(src, des: TFDQuery);
var
  r: Variant;
  i: Integer;
begin
  inherited;
  r := VarArrayCreate([0, src.FieldCount - 1], varVariant);
  for i := 0 to src.FieldCount - 1 do
  begin
    r[i] := src.Fields[i].Value;
  end;
  des.Append;
  for i := 0 to des.FieldCount - 1 do
  begin
    try
      des.Fields[i].Value := r[i]
    except
     //ignore
    end;
  end;
  VarClear(r);
end;

procedure TDataM.Con1AfterConnect(Sender: TObject);
begin
  qrTypeDef.Open;
end;

procedure TDataM.Con1BeforeConnect(Sender: TObject);
var
  s: string;
  I: Integer;
begin
//load settings
  if SettingsU.stt = nil then
    tsettings.create(Con1);

  for I := stt.GetLocal.Count - 1 downto stt.GetLocal.IndexOf('[Devices]') do
  begin
    stt.GetLocal.Delete(I);
  end;
  s := StringReplace(StringReplace(stt.GetLocal.CommaText, ',', ';', [rfReplaceAll]), '{pwd}', 'systemr', []);
  Con1.connectionstring := s
end;

procedure TDataM.CopyAll1Click(Sender: TObject);
begin
  CSVExport1.Grid := (pmExport.PopupComponent as tdbgrid);
  CSVExport1.Destination := edClipboard;
  CSVExport1.ExportGrid;
end;

procedure TDataM.DataModuleCreate(Sender: TObject);
var
  s: string;
begin
  FormatSettings.DateSeparator := '-';
  FormatSettings.ShortDateFormat := 'yyyy-mm-dd';
  FormatSettings.ShortTimeFormat := 'hh:nn';
  FormatSettings.CurrencyString := 'Rs ';
  FormatSettings.CurrencyDecimals := 0;
  apppath := ExtractFilePath(ParamStr(0));
  s := 'D:\MYDOC\doc\Data\Server\start.exe';
  if FileExists(s) = false then
    s := APPPath + 'data\server\start.exe';

  JclShell.ShellExec(0, '', 'D:\MYDOC\doc\Data\Server\start.exe', '', ExtractFilePath(s), 1);

  img_logo := TWICImage.Create;
  img_logo.LoadFromResourceName(HInstance, 'logo');
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

procedure TDataM.ExcelExport1Exception(Sender: TObject);
begin
  ShowMessage('Failed');
end;

procedure TDataM.Export1Click(Sender: TObject);
begin
  dlgSave1.FilterIndex := 1;
  if dlgSave1.Execute = false then
    Exit;
  if Sender is TDBGrid then
    ExcelExport1.Grid := (Sender as tdbgrid)
  else
    ExcelExport1.Grid := (pmExport.PopupComponent as tdbgrid);
  ExcelExport1.FileName := dlgSave1.FileName;
  ExcelExport1.ExportGrid;
end;

procedure TDataM.ExportCSV1Click(Sender: TObject);
begin
  dlgSave1.FilterIndex := 2;
  if dlgSave1.Execute = false then
    Exit;
  CSVExport1.Grid := (pmExport.PopupComponent as tdbgrid);
  CSVExport1.Destination := edFile;
  CSVExport1.FileName := dlgSave1.FileName;
  CSVExport1.ExportGrid;

end;

function TDataM.FormPermition(FormAL: Integer): Boolean;
begin
  if TSettings.IsSuperUser then
    exit(True);
  Result := (TSettings.UserLevel < FormAL);
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
    Con1.ExecSQL('INSERT INTO notes (id, lid, typeA, note) VALUES (:id,:lid, :typeA, :note) ON DUPLICATE KEY UPDATE  lid=:lid, typeA=:typeA, note=:note;',
      [id, LinkID, typeA, Note]);
  except
    Result := False;
  end;
end;
//this willreturn comma seperated string list

function TDataM.SQLExcecS(SQL: string): string;
var
  qr: TFDQuery;
begin
  qr := datam.SQLExcec(SQL);
  try
    while qr.Eof = false do
    begin
      Result := Result + sLineBreak + qr.Fields[0].AsString;
      qr.Next;
    end;
    Delete(Result, 1, Length(sLineBreak));
  finally
    qr.Free;
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

