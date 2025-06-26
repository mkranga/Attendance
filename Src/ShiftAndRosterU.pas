unit ShiftAndRosterU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataFormTPLU,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.ExtCtrls, Vcl.ComCtrls, System.DateUtils, Vcl.Mask, Vcl.DBCtrls, Vcl.Menus, JvCsvData, JvExStdCtrls, JvCombobox, JvDBCombobox,
  JvExMask, JvToolEdit, JvDBControls;

type
  TShiftAndRosterF = class(TDataFormTPL)
    qrMainID: TFDAutoIncField;
    qrMainempid: TIntegerField;
    qrMainRName: TStringField;
    qrMainYM: TDateField;
    qrMainD1: TStringField;
    qrMainD2: TStringField;
    qrMainD3: TStringField;
    qrMainD4: TStringField;
    qrMainD5: TStringField;
    qrMainD6: TStringField;
    qrMainD7: TStringField;
    qrMainD8: TStringField;
    qrMainD9: TStringField;
    qrMainD10: TStringField;
    qrMainD11: TStringField;
    qrMainD12: TStringField;
    qrMainD13: TStringField;
    qrMainD14: TStringField;
    qrMainD15: TStringField;
    qrMainD16: TStringField;
    qrMainD17: TStringField;
    qrMainD18: TStringField;
    qrMainD19: TStringField;
    qrMainD20: TStringField;
    qrMainD21: TStringField;
    qrMainD22: TStringField;
    qrMainD23: TStringField;
    qrMainD24: TStringField;
    qrMainD25: TStringField;
    qrMainD26: TStringField;
    qrMainD27: TStringField;
    qrMainD28: TStringField;
    qrMainD29: TStringField;
    qrMainD30: TStringField;
    qrMainD31: TStringField;
    qrMainEMPNo: TStringField;
    qrMainName_with_Initial: TStringField;
    pgc1: TPageControl;
    tsShift: TTabSheet;
    tsRoster: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    dpRMonth: TDateTimePicker;
    BitBtn1: TBitBtn;
    btClone: TBitBtn;
    mtSave: TBitBtn;
    DBEdit2: TDBEdit;
    btImport: TBitBtn;
    btExport: TBitBtn;
    dgRoster: TJvDBGrid;
    Panel2: TPanel;
    bt1: TButton;
    dg1: TDBGrid;
    Label2: TLabel;
    cbShift: TComboBox;
    qrShifts: TFDQuery;
    ds3: TDataSource;
    qrShiftsSid: TFDAutoIncField;
    qrShiftsSname: TStringField;
    qrShiftsInTime: TTimeField;
    qrShiftsOutTime: TTimeField;
    btNewShift: TButton;
    qrShiftsSDay: TShortintField;
    tsHolidays: TTabSheet;
    qrHol: TFDQuery;
    ds4: TDataSource;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    dgHolidays: TDBGrid;
    qrHolID: TFDAutoIncField;
    qrHolHDate: TDateField;
    qrHolTypeA: TStringField;
    qrHolDes: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    dpHd: TJvDBDateEdit;
    cbHType: TJvDBComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure dpRMonthChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCloneClick(Sender: TObject);
    procedure mtSaveClick(Sender: TObject);
    procedure btExportClick(Sender: TObject);
    procedure btImportClick(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure cbShiftSelect(Sender: TObject);
    procedure btNewShiftClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qrMainRosterShiftValidate(Sender: TField);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure testClick(Sender: TObject);
  private
    v_SalaryStartDate: Byte;
    { Private declarations }
    procedure FillPickList;
    procedure FillSifts;
  public
    { Public declarations }
    function ShowA(PageindexA: Byte; modal: Boolean): TModalResult;
  end;

var
  ShiftAndRosterF: TShiftAndRosterF;

implementation

uses
  SettingsU, DataU, InputMemoU;
{$R *.dfm}

procedure TShiftAndRosterF.BitBtn1Click(Sender: TObject);
var
  y, m, d: Word;
  st, ed, dt: TDate;
  i: Integer;
  sst: Integer;
begin
  inherited;
  sst := TSettings.GetValue(skSalaryStartDate, '1').AsInteger;
  st := EncodeDate(YearOf(dpRMonth.Date), MonthOf(dpRMonth.Date), sst);
  ed := IncMonth(st) - 1;
  for i := 0 to 30 do
  begin
    dgRoster.Columns[i + 1].Title.Caption := inttostr(dayof(st));
    if st > ed then
      dgRoster.Columns[i + 1].Visible := false;
    st := IncDay(st);
  end;

  DecodeDate(dpRMonth.Date, y, m, d);
  dt := EncodeDate(y, m, sst);

  datam.Con1.ExecSQL(format('CALL `BuildRosters`("%d-%d-%d")', [y, m, sst]));
  if qrMain.Active then
    qrmain.Close;
  qrMain.ParamByName('p1').Value := dt;
  qrmain.Open;
  FillPickList;
end;

procedure TShiftAndRosterF.bt1Click(Sender: TObject);
begin
  inherited;
  qrShifts.Filtered := false;
  datam.ApplyUpdate(qrShifts);
  FillPickList;
  FillSifts;
  cbShiftSelect(nil);
end;

procedure TShiftAndRosterF.btCloneClick(Sender: TObject);
var
  src, des: string;
  I: Integer;
  ar: TArray<string>;
begin
  inherited;
  if qrmain.Active = False then
    exit;
  if InputQuery('Clone', 'Enter EMPNO to Copy this Roster', des) and (des <> '') then
  begin
    for I := qrMainD1.Index to qrMainD31.Index do
      src := src + ',' + qrMain.Fields[I].AsString;
    if qrmain.Locate('empno', des, [loCaseInsensitive]) = false then
    begin
      ShowMessage('EMPNO not found');
      exit;
    end;
    ar := src.Split([',']);
    qrmain.edit;
    try
      for I := 0 to 30 do
        qrMain.Fields[I + qrMainD1.Index].Value := ar[I + 1];
      qrmain.Post;
    finally
      SetLength(ar, 0);
    end;
  end;
end;

procedure TShiftAndRosterF.btExportClick(Sender: TObject);
begin
  inherited;
  datam.pmExport.PopupComponent := dgRoster;
  datam.Export1Click(dgRoster);
  ShowMessage('Roster copied to clipboard!')
end;

procedure TShiftAndRosterF.btImportClick(Sender: TObject);
var
  s: string;
begin
  inherited;
  if TInputMemoF.ShowB('Import', 'Paste Excel data', s) = false then
    Exit;
  DataM.ImportTabDelimitedToDBGrid(s, qrMain, 'empno')
end;

procedure TShiftAndRosterF.btNewShiftClick(Sender: TObject);
var
  s: string;
  I: Integer;
begin
  inherited;

  s := InputBox('New Shift', 'Enter shift name', 'S1');
  s := s.ToUpper.Trim;
  if s.IsEmpty then
    exit;
  if cbShift.Items.IndexOf(s) > -1 then
  begin
    ShowMessage('Shift name already exist!');
    exit;
  end;

  qrShifts.DisableControls;
  qrShifts.Filtered := false;
  try
    for I := 1 to 7 do
    begin
      qrShifts.Append;
      qrShiftsSname.Value := s;
      qrShiftsSDay.Value := I;
      qrShiftsInTime.Value := EncodeTime(8, 0, 0, 0);
      qrShiftsOutTime.Value := EncodeTime(17, 0, 0, 0);
      qrShifts.Post;
    end;
    cbShift.ItemIndex := cbShift.items.Add(s);
    cbShiftSelect(nil);
  finally
    qrShifts.EnableControls;
  end;

end;

procedure TShiftAndRosterF.Button1Click(Sender: TObject);
begin
  inherited;
  if qrHol.State in [dsInsert, dsEdit] then
    qrHol.Post;
  datam.ApplyUpdate(qrHol);
end;

procedure TShiftAndRosterF.Button2Click(Sender: TObject);
begin
  inherited;
  if qrHol.State = dsBrowse then
    qrHol.Append;
  dpHd.SetFocus;
end;

procedure TShiftAndRosterF.cbShiftSelect(Sender: TObject);
begin
  inherited;
  DataM.setFilter(qrShifts, 'sname', cbShift.Text);
end;

procedure TShiftAndRosterF.dpRMonthChange(Sender: TObject);
begin
  inherited;
  qrMain.Close;
end;

procedure TShiftAndRosterF.FillPickList;
var
  pl: TStrings;
  I: Integer;
  qr: TFDQuery;
begin
  pl := TStringList.Create;
  try
    pl.Add('OFF');
    qr := datam.SQLExcec('SELECT sname FROM shift GROUP BY sname');
    while qr.Eof = false do
    begin
      pl.Add(qr.FieldValues['sname']);
      qr.Next;
    end;
    for I := 1 to 31 do
    begin
      dgRoster.Columns.Items[I].PickList.Text := pl.Text;
    end;
  finally
    pl.Free;
    qr.Free;
  end;
end;

procedure TShiftAndRosterF.FillSifts;
begin
  cbShift.Items.Text := datam.SQLExcecS('SELECT sname FROM shift GROUP BY sname') + sLineBreak + 'OFF';

end;

procedure TShiftAndRosterF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if qrShifts.Active and (qrShifts.UpdatesPending) then
    CanClose := (Application.MessageBox('Unsaved Shift Changes will be lost. ' + #13#10 + 'Are You Sure?', 'Unsaved Changes', MB_OKCANCEL +
      MB_ICONWARNING) = IDOK);
end;

procedure TShiftAndRosterF.FormCreate(Sender: TObject);
var
  y, m, d: Word;
begin
  AccessLevel := 100;
 inherited;
  v_SalaryStartDate := TSettings.GetValue(skSalaryStartDate, '1').AsInteger;
  DecodeDate(Date, y, m, d);
  dpRMonth.Date := EncodeDate(y, m, 1);
  if qrShifts.Active = false then
    qrShifts.open;
  FillSifts;
end;

procedure TShiftAndRosterF.mtSaveClick(Sender: TObject);
begin
  inherited;
      //validate
  try
    datam.ApplyUpdate(qrMain);
    ShowMessage('Done')
  except
    on e: exception do
      ShowMessage('Failed with error' + sLineBreak + e.Message);
  end;
end;

procedure TShiftAndRosterF.qrMainRosterShiftValidate(Sender: TField);
var
  i: Integer;
begin
  inherited;
  i := dgRoster.Columns[2].PickList.IndexOf(Sender.AsString);
  if i < 0 then
    raise Exception.Create('Invalid value! Please select from the dropdown.');
end;

function TShiftAndRosterF.ShowA(PageindexA: Byte; modal: Boolean): TModalResult;
begin
  pgc1.ActivePageIndex := PageindexA;
  if (PageindexA = 2) and (qrHol.active = false) then
    qrHol.Open;
  if modal then
    result := self.ShowModal
  else
    self.Show;
end;

procedure TShiftAndRosterF.testClick(Sender: TObject);
begin
  inherited;

  if qrHol.active then
    qrHol.close;
  qrHol.Open();
end;

end.

