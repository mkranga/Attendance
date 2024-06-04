unit ReportsU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  DataFormTPLU, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.ComCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus, JvDBGridExport,
  JvComponentBase, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ExtCtrls,
  Vcl.CheckLst, JvExCheckLst, JvCheckListBox, SQLSPanelU, JvExStdCtrls,
  JvCombobox, JvDBCombobox;

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
    qrMainid: TFDAutoIncField;
    qrMaincode: TStringField;
    qrMainname: TStringField;
    qrMainnamef: TStringField;
    qrMainTel: TStringField;
    qrMainEmail: TStringField;
    mtrdMaindob: TDateField;
    qrMainNIC: TStringField;
    qrMaincat1: TStringField;
    qrMaincat2: TStringField;
    qrMainactive: TShortintField;
    qrMainaddress: TStringField;
    qrMainpayment: TStringField;
    qrMainepin: TStringField;
    qrMainSponsor: TStringField;
    qrMaincdate: TSQLTimeStampField;
    qrMaintelegram: TStringField;
    qrAtt: TFDQuery;
    ds2: TDataSource;
    qrAttid: TFDAutoIncField;
    qrAttpid: TIntegerField;
    qrAttsid: TIntegerField;
    qrAttst: TSQLTimeStampField;
    qrAtted: TSQLTimeStampField;
    qrAttcode: TStringField;
    qrAttname: TStringField;
    qrAttid_1: TIntegerField;
    qrAttlid: TIntegerField;
    qrAtttypeA: TStringField;
    qrAttnote: TMemoField;
    qrAttcdate: TSQLTimeStampField;
    ds3: TDataSource;
    qrPay: TFDQuery;
    qrAttgid: TIntegerField;
    qrAttcid: TStringField;
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
    dgAtt: TJvDBGrid;
    pnl2: TPanel;
    edPid: TEdit;
    btAttok: TButton;
    edGid: TEdit;
    edSid: TEdit;
    cbbCID: TComboBox;
    tsPayment: TTabSheet;
    dgPay: TJvDBGrid;
    pnl3: TPanel;
    edPid1: TEdit;
    btPayok: TButton;
    cbbdbcbpcat2: TComboBox;
    cbbdbcbpcat1: TComboBox;
    ts1: TTabSheet;
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
    s := ' and p.cat1 in (' + s + ')';

  s2 := GetChecked(clbG, clbgVals);
  if s2 <> '' then
    s2 := ' and p.cat2 in (' + s2 + ')';
  qrMain.MacroByName('macro1').AsRaw := s + s2;
  qrMain.Open();
  qrMain.EnableControls;
end;

procedure TReportsF.btPayokClick(Sender: TObject);
var
  s: string;
begin
  inherited;
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

procedure TReportsF.btAttokClick(Sender: TObject);
var
  s: string;
begin
  inherited;
  //gen where
  if edPid.Text <> '' then
    s := s + ' and pid=' + edPid.Hint;
  if cbbCID.Text <> '' then
    s := s + ' and cid="' + cbbCidVals[cbbCID.ItemIndex] + '"';
  if edGid.Text <> '' then
    s := s + ' and gid=' + edgid.Text;
  if edSid.Text <> '' then
    s := s + ' and sid=' + edSid.Text;

  if s <> '' then
  begin
    Delete(s, 1, 4);
    s := 'where' + s;
  end;
//open qr with macro

  if qrAtt.Active then
    qrAtt.Close;
  qrAtt.MacroByName('macro1').Value := s;
  qrAtt.Open();
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
  spnl1.Setup([-1, 80, 100, 100], 'select id,code, namef, tel,nic from profile where code like :code or namef like :namef or tel like :tel or  nic like :nic or id like :id', Point(600, 400), DataM.Con1);
  if spnl1.Exec() <> mrok then
  begin
    edpid.Text := '';
    edpid1.Text := '';
    edpid1.hint := '';
    edpid.hint := '';
    Exit;
  end;
  edpid.Text := spnl1.FieldByName('code').AsString;
  edpid1.Text := spnl1.FieldByName('code').AsString;
  edpid1.hint := spnl1.FieldByName('id').AsString;
  edpid.hint := spnl1.FieldByName('id').AsString;

end;

procedure TReportsF.edSidEnter(Sender: TObject);
var
  s: string;
begin
  inherited;
  if edGid.Text = '' then
  begin
    edGid.SetFocus;
    Exit;
  end;
  s := '';
//  if edGid.Text <> '' then
//    s := 'CCode ="' + cbbSidVals[cbbCID.ItemIndex] + '" and ';
  spnl1.Setup([50, 0], 'SELECT s.id, s.sdt as SDate	FROM `session` s where  s.gid=' + edGid.Text + ' and   CAST(s.id as CHAR) like :sid ', Point(600, 400), DataM.Con1);
  if spnl1.Exec() <> mrok then
    Exit;
  edsid.Text := spnl1.FieldByName('id').AsString;

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
  if cbbCID.ItemIndex < 0 then
    exit;
  s := '';
  if cbbCID.ItemIndex > 1 then
    s := 'g.CCode ="' + cbbCidVals[cbbCID.ItemIndex] + '" and ';
  spnl1.Setup([50, 0], 'select g.id, g.Des as "Name" from cgroup g where ' + s + ' g.des like :des ', Point(600, 400), DataM.Con1);
  if spnl1.Exec() <> mrok then
    Exit;
  edGid.Text := spnl1.FieldByName('id').AsString;

end;

procedure TReportsF.FormCreate(Sender: TObject);
begin
  inherited;
  spnl1 := TSQLSPanel.Create(Self);
  clbCatVals := TStringList.Create;
  DataM.TypedefFillCB(clbCatVals, clbCat.Items, 'C');
  clbgVals := TStringList.Create;
  DataM.TypedefFillCB(clbgVals, clbg.Items, 'G');
  cbbCidVals := TStringList.Create;
  DataM.TypedefFillCB(cbbCidVals, cbbcid.Items, 'CR');
   //ts select 1
  pgc.ActivePageIndex := 0;
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
    1:
      SetGridExport(dgAtt);

  end;
end;

procedure TReportsF.SetGridExport(g: TJvDBGrid);
begin
  expXML.Grid := g;
  ExpCSV.Grid := g;
  ExpExcel.Grid := g;

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

