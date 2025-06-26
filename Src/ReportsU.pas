unit ReportsU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataFormTPLU,
  FireDAC.Stan.Param, Vcl.ComCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus, JvDBGridExport,
  JvComponentBase, JvExDBGrids, JvDBGrid, Vcl.ExtCtrls, Vcl.CheckLst, JvExCheckLst, JvCheckListBox, SQLSPanelU, JvExStdCtrls, JvCombobox, JvDBCombobox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, JvExMask, JvToolEdit;

type
  TReportsF = class(TDataFormTPL)
    ExpExcel: TJvDBGridExcelExport;
    ExpCSV: TJvDBGridCSVExport;
    expXML: TJvDBGridXMLExport;
    pm1: TPopupMenu;
    mniExportExcel: TMenuItem;
    mniExportXML: TMenuItem;
    mniExportCSV: TMenuItem;
    bt1: TButton;
    mniExportClipbord: TMenuItem;
    ds2: TDataSource;
    ds3: TDataSource;
    qrPay: TFDQuery;
    qrPayid: TFDAutoIncField;
    mtrdPaypdate: TDateField;
    qrPaypid: TIntegerField;
    qrPayval: TLongWordField;
    qrPaydes: TStringField;
    qrPaycat1: TStringField;
    qrPaycat2: TStringField;
    qrPaycdate: TSQLTimeStampField;
    pgc: TPageControl;
    tsProfile: TTabSheet;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    clbG: TJvCheckListBox;
    clbCat: TJvCheckListBox;
    chk1: TCheckBox;
    bt2: TButton;
    dgProfile: TJvDBGrid;
    tsAtt: TTabSheet;
    tsPayment: TTabSheet;
    dgPay: TJvDBGrid;
    pnl3: TPanel;
    edPid1: TEdit;
    btPayok: TButton;
    cbbdbcbpcat2: TComboBox;
    cbbdbcbpcat1: TComboBox;
    ts1: TTabSheet;
    dgPos: TJvDBGrid;
    pnl4: TPanel;
    btPayok1: TButton;
    qrPOS: TFDQuery;
    ds4: TDataSource;
    mmoPOSSQL: TMemo;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    clbAttGroup: TJvCheckListBox;
    clbAttCat: TJvCheckListBox;
    chk2: TCheckBox;
    btAttDetails: TButton;
    Button1: TButton;
    Label5: TLabel;
    pgcAtt: TPageControl;
    tsAttDtl: TTabSheet;
    tsAttSum: TTabSheet;
    dgdtl: TJvDBGrid;
    qrAttDtl: TFDQuery;
    ds5: TDataSource;
    ds6: TDataSource;
    JvDBGrid1: TJvDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    qrMainID: TFDAutoIncField;
    qrMainfull_name: TStringField;
    qrMaingender: TStringField;
    qrMainnic_no: TStringField;
    qrMainbirth_date: TDateTimeField;
    qrMainnationality: TStringField;
    qrMainreligion: TStringField;
    qrMaincontact: TStringField;
    qrMainAddressId: TStringField;
    qrMainenterd_date: TSQLTimeStampField;
    qrMainName_with_Initial: TStringField;
    qrMainDepartment: TStringField;
    qrMainCatagary: TStringField;
    qrMainEmGroup: TStringField;
    qrMainEMPNo: TStringField;
    qrMainJoin_Date: TDateTimeField;
    qrMainEmployee_type: TStringField;
    qrMainForm_A_Number: TStringField;
    qrMainActive: TShortintField;
    qrMainmail: TStringField;
    qrMainShift: TStringField;
    qrMainImageID: TIntegerField;
    qrAttDtlName_with_Initial: TStringField;
    qrAttDtlEMPNo: TStringField;
    qrAttDtlWorkingDate: TDateField;
    qrAttDtlWrdIn: TDateTimeField;
    qrAttDtlWrdOut: TDateTimeField;
    qrAttDtlShiftDate: TDateField;
    qrAttDtlShiftIn: TDateTimeField;
    qrAttDtlShiftOut: TDateTimeField;
    qrAttDtlLate: TTimeField;
    qrAttDtlOT: TTimeField;
    qrAttDtlOTR: TTimeField;
    qrAttDtlEarlyOT: TTimeField;
    qrAttDtlShortLV: TTimeField;
    qrAttDtlTOL: TTimeField;
    qrAttDtlHType: TStringField;
    qrAttDtlid: TFDAutoIncField;
    qrAttDtlID_1: TFDAutoIncField;
    spAttSum: TFDStoredProc;
    qrAttDtlTotalHrs: TTimeField;
    dpSt: TJvDateEdit;
    dpEd: TJvDateEdit;
    qrAttDtlMachineNo: TIntegerField;
    qrMainMachineNo: TIntegerField;
    spAttSumMachineNo: TIntegerField;
    spAttSumEMPNo: TStringField;
    spAttSumwrKD: TLargeintField;
    spAttSumsftD: TLargeintField;
    spAttSumEarlyOT: TStringField;
    spAttSumLate: TStringField;
    spAttSumShortLV: TStringField;
    spAttSumot: TStringField;
    spAttSumTotalHrs: TStringField;
    spAttSumTOL: TStringField;
    spAttSumName_with_Initial: TStringField;
    spAttSumCatagary: TStringField;
    spAttSumEmGroup: TStringField;
    spAttSumabsn: TIntegerField;
    procedure mniExportClipbordClick(Sender: TObject);
    procedure mniExportCSVClick(Sender: TObject);
    procedure mniExportXMLClick(Sender: TObject);
    procedure mniExportExcelClick(Sender: TObject);
    procedure pgcChange(Sender: TObject);
    procedure clbGClickCheck(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btAttokClick(Sender: TObject);
    procedure edPidEnter(Sender: TObject);
    procedure edCidEnter(Sender: TObject);
    procedure edCidChange(Sender: TObject);
    procedure edGidEnter(Sender: TObject);
    procedure edSidEnter(Sender: TObject);
    procedure btPayokClick(Sender: TObject);
    procedure tsPaymentEnter(Sender: TObject);
    procedure btPayok1Click(Sender: TObject);
    procedure btAttDetailsClick(Sender: TObject);
    procedure AttSumClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure spAttSumCalcFields(DataSet: TDataSet);
  private
    clbgVals, clbCatVals, cbbCidVals, pcat1vals, pcat2vals: TStrings;
    spnl1: TSQLSPanel;
    { Private declarations }
    procedure SetGridExport(g: TJvDBGrid);
    function GetChecked(cl: TJvCheckListBox; vl: TStrings): string;
  public
    { Public declarations }
  end;

var
  ReportsF: TReportsF;

implementation

{$R *.dfm}

uses
  DataU;

procedure TReportsF.bt2Click(Sender: TObject);
var
  s, s2: string;
begin
  inherited;
  qrMain.Close;
  qrMain.DisableControls;
  qrMain.ParamByName('active').Value := Ord(chk1.Checked);
  //build where condition
  s := GetChecked(clbCat, clbCatVals);
  if s <> '' then
    s := ' and p.Catagary in (' + s + ')';

  s2 := GetChecked(clbG, clbgVals);
  if s2 <> '' then
    s2 := ' and p.EmGroup in (' + s2 + ')';
  qrMain.MacroByName('macro1').AsRaw := s + s2;
  qrMain.Open();
  qrMain.EnableControls;
end;

procedure TReportsF.btPayok1Click(Sender: TObject);
begin
  inherited;
  exit;
  qrPOS.Active := not (qrPOS.Active);
  dgPos.AutoSizeColumns := True;

end;

procedure TReportsF.btPayokClick(Sender: TObject);
var
  s: string;
begin
  inherited;
  exit;
  //gen where
  if edPid1.Text <> '' then
    s := s + ' and pid=' + edPid1.Hint;
//  if dbcbpcat1.Text <> '' then
//    s := s + ' and cat1="' + pcat1vals[dbcbpcat1.ItemIndex] + '"';
//  if dbcbpcat2.Text <> '' then
//    s := s + ' and cat2="' + pcat2vals[dbcbpcat2.ItemIndex] + '"';

  if s <> '' then
  begin
    Delete(s, 1, 4);
    s := 'where' + s;
  end;
//open qr with macro

  if qrPay.Active then
    qrPay.Close;
  qrPay.MacroByName('macro1').Value := s;
  qrPay.Open();
end;

procedure TReportsF.AttSumClick(Sender: TObject);
var
  s, s2: string;
begin
  inherited;
  if spAttSum.Active then
    spAttSum.Close;
  spAttSum.DisableControls;
  try
//  spAttSum.ParamByName('active').Value := Ord(chk1.Checked);
    spAttSum.ParamByName('st').Value := dpst.Date;
    spAttSum.ParamByName('ed').Value := dpEd.Date;
  //build where condition
//  s := GetChecked(clbattCat, clbCatVals);
//  if s <> '' then
//    s := ' and p.cat1 in (' + s + ')';
//
//  s2 := GetChecked(clbAttGroup, clbgVals);
//  if s2 <> '' then
//    s2 := ' and p.cat2 in (' + s2 + ')';
//  spAttSum.MacroByName('macro1').AsRaw := s + s2;
    spAttSum.Open();
  finally
    spAttSum.EnableControls;
    pgcAtt.ActivePage := tsAttSum;
  end;
end;

procedure TReportsF.Button2Click(Sender: TObject);
begin
  inherited;
  ShowMessage('Report not configured');
end;

procedure TReportsF.Button4Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TReportsF.btAttDetailsClick(Sender: TObject);
var
  s, s2: string;
begin
  inherited;
  if qrAttDtl.Active then
    qrAttDtl.Close;
  qrAttDtl.DisableControls;
  try
    qrAttDtl.ParamByName('st').Value := dpst.Date;
    qrAttDtl.ParamByName('ed').Value := dpEd.Date;
  //build where condition
    if chk1.Checked then
      s := s + ' and e.Active=1 ';

    s := GetChecked(clbattCat, clbCatVals);
    if s <> '' then
      s := ' and p.cat1 in (' + s + ')';

    s2 := GetChecked(clbAttGroup, clbgVals);
    if s2 <> '' then
      s2 := ' and p.cat2 in (' + s2 + ')';

    qrAttDtl.MacroByName('macro1').AsRaw := s + s2;
    qrAttDtl.Open();
  finally
    qrAttDtl.EnableControls;
    pgcAtt.ActivePage := tsAttDtl;
  end;
end;

procedure TReportsF.btAttokClick(Sender: TObject);
var
  s: string;
begin
  inherited;
end;

procedure TReportsF.clbGClickCheck(Sender: TObject);
begin
  inherited;
//rebuild check list where condition
  if clbCat.GetChecked.Count > 0 then
  begin

  end;
end;

procedure TReportsF.edPidEnter(Sender: TObject);
begin
  inherited;
//  spnl1.Setup([-1, 80, 100, 100], 'select id,code, namef, tel,nic from profile where code like :code or namef like :namef or tel like :tel or  nic like :nic or id like :id', Point(600, 400), DataM.Con1);
//  if spnl1.Exec() <> mrok then
//  begin
//    edpid1.Text := '';
//    edpid1.hint := '';
//    Exit;
//  end;
//  edpid.Text := spnl1.FieldByName('code').AsString;
//  edpid1.Text := spnl1.FieldByName('code').AsString;
//  edpid1.hint := spnl1.FieldByName('id').AsString;
//  edpid.hint := spnl1.FieldByName('id').AsString;

end;

procedure TReportsF.edSidEnter(Sender: TObject);
var
  s: string;
begin
  inherited;
//  if edGid.Text = '' then
//  begin
//    edGid.SetFocus;
//    Exit;
//  end;
//  s := '';
////  if edGid.Text <> '' then
////    s := 'CCode ="' + cbbSidVals[cbbCID.ItemIndex] + '" and ';
//  spnl1.Setup([50, 0], 'SELECT s.id, s.sdt as SDate	FROM `session` s where  s.gid=' + edGid.Text + ' and   CAST(s.id as CHAR) like :sid ', Point(600, 400), DataM.Con1);
//  if spnl1.Exec() <> mrok then
//    Exit;
//  edsid.Text := spnl1.FieldByName('id').AsString;

end;

procedure TReportsF.edCidChange(Sender: TObject);
begin
  inherited;
// spnl1.Setup([-1, 80, 100, 100], 'select id,code, namef, tel,nic from profile where code like :code or namef like :namef or tel like :tel or  nic like :nic or id like :id', Point(600, 400), DataM.Con1);
// if spnl1.Exec(ed1) <>mrok then Exit;
// ed1.Text:=spnl1.FieldByName('id').AsString;

end;

procedure TReportsF.edCidEnter(Sender: TObject);
begin
  inherited;
//  spnl1.Setup([-1, 80, 100, 100], 'select id,code, namef, tel,nic from profile where code like :code or namef like :namef or tel like :tel or  nic like :nic or id like :id', Point(600, 400), DataM.Con1);
//  if spnl1.Exec(edcid) <> mrok then
//    Exit;
//  ed1.Text := spnl1.FieldByName('id').AsString;

end;

procedure TReportsF.edGidEnter(Sender: TObject);
var
  s: string;
begin
  inherited;
//  if cbbCID.ItemIndex < 0 then
//    exit;
//  s := '';
//  if cbbCID.ItemIndex > 1 then
//    s := 'g.CCode ="' + cbbCidVals[cbbCID.ItemIndex] + '" and ';
//  spnl1.Setup([50, 0], 'select g.id, g.Des as "Name" from cgroup g where ' + s + ' g.des like :des ', Point(600, 400), DataM.Con1);
//  if spnl1.Exec() <> mrok then
//    Exit;
//  edGid.Text := spnl1.FieldByName('id').AsString;

end;

procedure TReportsF.FormCreate(Sender: TObject);
begin
 AccessLevel := 200;
  inherited;
  spnl1 := TSQLSPanel.Create(Self);
  clbCatVals := TStringList.Create;
  DataM.TypedefFillCB(clbCatVals, clbCat.Items, 'EC');
  clbgVals := TStringList.Create;
  DataM.TypedefFillCB(clbgVals, clbg.Items, 'EG');
  cbbCidVals := TStringList.Create;
  //att tab
  clbAttCat.Items.Assign(clbCat.Items);
  clbAttGroup.Items.Assign(clbG.Items);

  pgc.ActivePageIndex := 0;
  mmoPOSSQL.Lines.Assign(qrPOS.SQL);
end;

function TReportsF.GetChecked(cl: TJvCheckListBox; vl: TStrings): string;
var
  I: Integer;
begin
  Result := '';
  for I := 0 to cl.Count - 1 do
  begin
    if cl.Checked[I] then
      Result := Result + ',"' + vl[I] + '"';
  end;
  if Result <> '' then
    Delete(Result, 1, 1);
end;

procedure TReportsF.mniExportClipbordClick(Sender: TObject);
begin
  inherited;
  ExpCSV.Destination := edClipboard;
  ExpCSV.ExportGrid;
end;

procedure TReportsF.mniExportCSVClick(Sender: TObject);
begin
  inherited;
  ExpCSV.Destination := edFile;
  ExpCSV.FileName := ExpCSV.Grid.Name + '.csv';
  ExpCSV.ExportGrid;
end;

procedure TReportsF.mniExportExcelClick(Sender: TObject);
begin
  inherited;
  ExpExcel.FileName := ExpExcel.Grid.Name + '.xls';
  ExpExcel.ExportGrid;
end;

procedure TReportsF.mniExportXMLClick(Sender: TObject);
begin
  inherited;
  expXML.FileName := expXML.Grid.Name + '.xml';
  expXML.ExportGrid;
end;

procedure TReportsF.pgcChange(Sender: TObject);
begin
  inherited;
  case pgc.ActivePageIndex of
    0:
      SetGridExport(dgProfile);
//    1:
//      SetGridExport(dgAtt);
//    2:
    3:
      SetGridExport(dgpos);
  end;
end;

procedure TReportsF.SetGridExport(g: TJvDBGrid);
begin
  expXML.Grid := g;
  ExpCSV.Grid := g;
  ExpExcel.Grid := g;

end;

procedure TReportsF.spAttSumCalcFields(DataSet: TDataSet);
begin
  inherited;
  spAttSumabsn.Value := spAttSumsftD.Value - spAttSumwrKD.Value;
end;

procedure TReportsF.tsPaymentEnter(Sender: TObject);
begin
  inherited;
  if Assigned(pcat1vals) = False then
  begin
    pcat1vals := TStringList.Create;
    pcat2vals := TStringList.Create;
//    datam.TypedefFillCB(pcat1vals, dbcbpcat1.Items, 'PC');
//    datam.TypedefFillCB(pcat2vals, dbcbpcat2.Items, 'PT');
  end;
end;

end.

