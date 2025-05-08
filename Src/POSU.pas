unit POSU;

// todo
{
  //print out
  //
}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataFormTPLU,
  FireDAC.Stan.Param, Data.DB, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, CommonU, JvExDBGrids,
  JvDBGrid, Vcl.DBCtrls, JvDBCheckBox, JvComponentBase, JvPrint, JvExControls, JvPrvwDoc, JvgReport, SQLSPanelU, datau, JvExStdCtrls, JvCombobox,
  JvDBCombobox, RLFilters, RLPDFFilter, RLPreview, RLReport, System.Actions, Vcl.ActnList, Vcl.Imaging.pngimage, JvEnterTab, RLSpoolFilter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Mask, Vcl.DBGrids, Vcl.ComCtrls;

type
  TPOSF = class(TDataFormTPL)
    qrItem: TFDQuery;
    ds3: TDataSource;
    qrMainid: TFDAutoIncField;
    qrMaincname: TStringField;
    qrMainaddr1: TStringField;
    qrMainaddr2: TStringField;
    qrMaindate: TDateTimeField;
    qrMaintotal: TLongWordField;
    qrMainpayment: TLongWordField;
    qrMainpaytype: TStringField;
    qrMaincancel: TBooleanField;
    qrItemid: TFDAutoIncField;
    qrItemname: TStringField;
    qrItemqty: TLongWordField;
    qrItemprice: TLongWordField;
    qrItemdiscount: TLongWordField;
    qrItemtotalval: TLongWordField;
    qrIteminvid: TIntegerField;
    qrMainstatus: TStringField;
    qrMainwarrenty: TIntegerField;
    qrMainguid: TStringField;
    spClone: TFDStoredProc;
    qrMaintel: TStringField;
    RLPDFFilter2: TRLPDFFilter;
    JvEnterAsTab1: TJvEnterAsTab;
    pgc1: TPageControl;
    tsMain: TTabSheet;
    tsInvoice: TTabSheet;
    tsPrint: TTabSheet;
    RLPreview1: TRLPreview;
    rpCombo: TRLReport;
    RLBand7: TRLBand;
    RLDBText24: TRLDBText;
    RLLabel13: TRLLabel;
    RLImage2: TRLImage;
    RLDraw8: TRLDraw;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDraw9: TRLDraw;
    RLLabel26: TRLLabel;
    RLDBMemo4: TRLDBMemo;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel32: TRLLabel;
    RLBand8: TRLBand;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLDBText27: TRLDBText;
    RLBand9: TRLBand;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBMemo3: TRLDBMemo;
    RLBand10: TRLBand;
    RLDBText22: TRLDBText;
    RLLabel31: TRLLabel;
    RLBand11: TRLBand;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLAngleLabel2: TRLAngleLabel;
    RLDBText23: TRLDBText;
    RLDraw17: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    rpShippingLbl: TRLReport;
    codval: TRLDBText;
    RLDBMemo2: TRLDBMemo;
    RLDBText11: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDBText28: TRLDBText;
    rlmg1: TRLImage;
    RptPrintInv: TRLReport;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw6: TRLDraw;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    rlmg2: TRLImage;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDraw2: TRLDraw;
    rlTitle: TRLLabel;
    RLBand2: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBMemo1: TRLDBText;
    RLBand5: TRLBand;
    RLDBText8: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel39: TRLLabel;
    RLDBText29: TRLDBText;
    RLBand4: TRLBand;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLAngleLabel1: TRLAngleLabel;
    RLDBText2: TRLDBText;
    pnl1: TPanel;
    cbb1: TComboBox;
    btPrint1: TButton;
    bt1: TButton;
    btPrint3: TButton;
    btPrint4: TButton;
    alMain: TActionList;
    actnewIn: TAction;
    acteditInv: TAction;
    actSave: TAction;
    actPrint: TAction;
    actClone: TAction;
    dgInv: TJvDBGrid;
    edItSearchinv: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    pnl02: TPanel;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    DBEdit7: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    JvDBComboBox1: TJvDBComboBox;
    DBEdit1: TDBEdit;
    JvDBCheckBox1: TJvDBCheckBox;
    dbedtpayment: TDBEdit;
    dbedtpayment1: TJvDBComboBox;
    dbedtpayment2: TDBEdit;
    dbmmoaddr1: TDBMemo;
    pnltop1: TPanel;
    EdItemSearch: TEdit;
    btQout: TButton;
    btSave: TButton;
    Button4: TButton;
    btPrint2: TButton;
    dgitems: TJvDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure EdItemSearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdItemSearchDblClick(Sender: TObject);
    procedure btCloseInvoiceClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure dgitemsDblClick(Sender: TObject);
    procedure qrMainAfterInsert(DataSet: TDataSet);
    procedure qrItemBeforePost(DataSet: TDataSet);
    procedure qrItemAfterPost(DataSet: TDataSet);
    procedure edItSearchinvChange(Sender: TObject);
    procedure dgitemsKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure btcancelClick(Sender: TObject);
    procedure dgInvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actnewInExecute(Sender: TObject);
    procedure acteditInvExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btPrintInvClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure onPrintSL(Sender: TObject);
    procedure actCloneExecute(Sender: TObject);
    procedure qrMaincnameSetText(Sender: TField; const Text: string);
    procedure btPrint4Click(Sender: TObject);
    procedure dgitemsExit(Sender: TObject);
    procedure SelectOnMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure qrMainBeforePost(DataSet: TDataSet);
    procedure RLDBText13BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
  private
    var
      spis: TSQLSPanel;
    { Private declarations }
    function SearchItem(): Boolean;
  protected
    var
      filler: TRLSpoolFilter;
  public
    { Public declarations }
  end;

var
  POSF: TPOSF;

implementation

uses
  Vcl.Printers, JclStrings, SettingsU;
{$R *.dfm}

procedure TPOSF.actCloneExecute(Sender: TObject);
begin
  inherited;
//clone
  spClone.Active := False;
  spClone.ParamByName('id1').Value := qrMainid.AsInteger;
  spClone.Open();

  Application.ProcessMessages;
  qrMain.Refresh;
  qrMain.First;
//refresh
end;

procedure TPOSF.acteditInvExecute(Sender: TObject);
begin
  inherited;
//  SlideMe(pnlBill, 3);
  pgc1.ActivePage := tsInvoice;

  qrItem.Active := false;
  qrItem.ParamByName('id').Value := qrMainid.Value;
  qrItem.Open();
end;

procedure TPOSF.actnewInExecute(Sender: TObject);
begin
  inherited;
  pgc1.ActivePage := tsInvoice;
//  SlideMe(pnlBill, 3);
//  pnlBill.show;
  qrMain.Append;
  qrItem.Active := false;
  qrItem.ParamByName('id').Value := -1;
  qrItem.Open();
  EdItemSearch.SetFocus;

end;

procedure TPOSF.actPrintExecute(Sender: TObject);
begin
  inherited;
//  if qrMain.State in [dsEdit, dsInsert] then
  actSaveExecute(nil);
  Printer.PrinterIndex := cbb1.ItemIndex;
  if Sender = btQout then
    rlTitle.Caption := 'QUOTATION'
  else
    rlTitle.Caption := 'INVOICE';
  RptPrintInv.NextReport := rpShippingLbl;
  codval.Visible := SameText(qrMainpaytype.Value, '0');
  RptPrintInv.Preview(RLPreview1);
  RLPreview1.ZoomMultiplePages;
  pgc1.ActivePage := tsPrint;
//  SlideMe(pnlPrint, 2);

end;

procedure TPOSF.actSaveExecute(Sender: TObject);
var
  s: string;
  I: Integer;
begin
  inherited;
  qrItem.DisableControls;
  try
//validate
    if qritem.RecordCount < 1 then
      s := s + 'No Items' + sLineBreak;
  //prepair +save
    if qrItem.State in [dsInsert, dsEdit] then
      qrItem.Post;
    if qrMain.State in [dsInsert, dsEdit] then
      qrMain.Post;
    qrMain.ApplyUpdates();

    qrItem.First;
    for I := 0 to qrItem.RecordCount - 1 do
    begin
      qrItem.Edit;
      qrIteminvid.Value := qrMainid.Value;
      qrItem.Post;
      qrItem.Next;
    end;
    qrItem.ApplyUpdates();
    qrMain.CommitUpdates;
    qrItem.CommitUpdates;
//confirm
  finally
    qrItem.EnableControls;
  end;
  btCloseInvoiceClick(nil);
end;

procedure TPOSF.bt1Click(Sender: TObject);
begin
  inherited;
  pgc1.ActivePage := tsInvoice;
//  slideme(pnlPrint, 0, true)
end;

procedure TPOSF.btcancelClick(Sender: TObject);
begin
  inherited;
  qrmain.Edit;
  qrMaincancel.Value := True;
  qrMain.Post;
end;

procedure TPOSF.Button2Click(Sender: TObject);
begin
  inherited;
  pgc1.ActivePage := tsPrint;
  //SlideMe(pnlPrint, 2)
end;

procedure TPOSF.Button3Click(Sender: TObject);
var
  i, i2: Integer;
  s: string;
begin
  inherited;

  if qrMain.State <> dsBrowse then
    qrMain.Post;
  i := qrMainid.Value;
  if qrItem.State <> dsBrowse then
    qrItem.Post;
  // validate
  s := '';
  if qrItem.RecordCount < 1 then
    s := s + 'No Items' + sLineBreak;
  if qrMaintotal.Value < 1 then
    s := s + 'Invoice total invalid' + sLineBreak;

  if s <> '' then
  begin
    ShowMessage('Validation Failed' + sLineBreak + s);
    exit;
  end;
  qrItem.DisableControls;
  try
    qrItem.First;
    for i := 1 to qrItem.RecordCount do
    begin
      qrItem.Edit;
      qrIteminvid.Value := i;
      qrItem.Post;
      qrItem.Next
    end;
    qrMain.Edit;

    qrMaintotal.Value := qrItem.Aggregates.AggregateByName('billtotal').Value - qrMainpayment.Value;
    qrMain.Post;
    qrMain.ApplyUpdates();
    qrItem.ApplyUpdates();

  finally
    qrItem.EnableControls;
  end;
end;

procedure TPOSF.cbb1Change(Sender: TObject);
begin
  inherited;
//  Printer.PrinterIndex := cbb1.ItemIndex;
end;

procedure TPOSF.SelectOnMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
//  if focus then

  TDBEdit(Sender).SelectAll;
end;

procedure TPOSF.btCloseClick(Sender: TObject);
begin
  inherited;
 //
end;

procedure TPOSF.btCloseInvoiceClick(Sender: TObject);
begin
  inherited;
  pgc1.ActivePage := tsMain;
// SlideMe(pnlBill, 1, true);
//  pnlBill.Visible := false;
  qrMain.Cancel;
  qrItem.cancel;
  qrItem.CancelUpdates;
end;

procedure TPOSF.onPrintSL(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  i := printer.PrinterIndex;
  Printer.PrinterIndex := TSettings.GetValue(skPOSPrinter, '0').AsInteger;
  rptPrintInv.NextReport := nil;
  rpShippingLbl.Prepare;
  Application.ProcessMessages;
  rpShippingLbl.PrintDialog := False;
  rpShippingLbl.Print;
  Printer.PrinterIndex := i;
end;

procedure TPOSF.btPrint4Click(Sender: TObject);
begin
  inherited;
//    rpCombo.NextReport := nil;
  rpCombo.Prepare;
  rpCombo.Print;
//  rpCombo.Print;
  rpCombo.NextReport := rpShippingLbl;

end;

procedure TPOSF.btPrintInvClick(Sender: TObject);
begin
  inherited;
  rptPrintInv.NextReport := nil;
  rptPrintInv.Prepare;
  rptPrintInv.Print;
//  rpPrintInv.NextReport := rpShippingLbl;
end;

procedure TPOSF.dgInvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    dgInv.col := dgInv.col + 1;
end;

procedure TPOSF.EdItemSearchDblClick(Sender: TObject);
begin
  inherited;
  SearchItem;
end;

procedure TPOSF.EdItemSearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  SearchItem;
end;

procedure TPOSF.edItSearchinvChange(Sender: TObject);
var
  s: string;
begin
  inherited;
  Application.ProcessMessages;
  s := edItSearchinv.Text;
  qrMain.Active := false;
  qrMain.SQL.Text := 'select * from invoice';
  if true then
  begin
    qrMain.SQL.add(' i where i.id like :p or i.cname  like :p');
    qrMain.ParamByName('p').Value := '%' + s + '%';
  end;
  qrMain.Open();
end;

procedure TPOSF.FormCreate(Sender: TObject);
begin
  inherited;
  pgc1.ActivePage := tsMain;
  filler := TRLSpoolFilter.Create(nil);
  rpShippingLbl.DefaultFilter := filler;
  qrMain.Open();
  spis := TSQLSPanel.Create(self);
  spis.Setup([0, 80], 'SELECT ii.name,ii.price from invitems ii where ii.name like :empno group by ii.name,ii.price', Point(600, 400), datam.Con1);
  cbb1.Items := Printer.Printers;
  cbb1.ItemIndex := Printer.PrinterIndex;
end;

procedure TPOSF.FormDestroy(Sender: TObject);
begin
  inherited;
  spis.Free;
  filler.Free;
end;

procedure TPOSF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = chr(13) then
    SelectNext(ActiveControl, true, true);
end;

procedure TPOSF.dgitemsDblClick(Sender: TObject);
begin
  inherited;
  if SearchItem then
    qrItemname.Value := spis.FieldByName('name').AsString;

end;

procedure TPOSF.dgitemsExit(Sender: TObject);
begin
  inherited;
  if qrItem.State in [dsEdit, dsInsert] then
    qrItem.Post;
end;

procedure TPOSF.dgitemsKeyPress(Sender: TObject; var Key: Char);
begin
  // inherited;
  // if dgitems.Col=0 then
  // qrItem.Edit;
  // EdItemSearch.SetFocus;
end;

procedure TPOSF.qrItemAfterPost(DataSet: TDataSet);
begin
  inherited;
  qrMain.Edit;
  qrMaintotal.Value := qrItem.Aggregates.AggregateByName('billtotal').Value - qrMainpayment.Value;
  qrmain.Post
end;

procedure TPOSF.qrItemBeforePost(DataSet: TDataSet);
begin
  inherited;
  qrItemtotalval.Value := (qrItemprice.Value * qrItemqty.Value) - qrItemdiscount.Value;
end;

procedure TPOSF.qrMainAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrMaincname.Value := 'CASH';
  qrMaindate.Value := now;

end;

procedure TPOSF.qrMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrMainguid.Value = '' then
    qrMainguid.Value := GUIDToString(TGUID.NewGuid);

end;

procedure TPOSF.qrMaincnameSetText(Sender: TField; const Text: string);
//var
//  f: TField;
//  s: string;
begin
  inherited;
//  f := TDBEdit(Sender).Field;
//  s := f.AsString;
  Sender.Value := StrSmartCase(Trim(Text), nil);
//  f.Value := s;
end;

procedure TPOSF.RLDBText13BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
  inherited;
  if (Length(AText) > 18) then
    RLDBText13.Font.Size := 14;
end;

function TPOSF.SearchItem(): Boolean;
begin
  Result := (spis.Exec(EdItemSearch) = mrok);
  if Result = false then
    exit;
  if not (qrItem.State in [dsedit, dsInsert]) then
    qrItem.Append;
  qrItemname.Value := spis.FieldByName('name').AsString;
  qrItemprice.Value := spis.FieldByName('price').AsInteger;
  qrItemqty.Value := 1;
//  dgitems.SetFocus;
  dgitems.Col := 2;
end;

end.

