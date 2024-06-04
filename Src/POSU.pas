unit POSU;

// todo
{
  //print out
  //
}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  DataFormTPLU, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Buttons, CommonU, JvExDBGrids, JvDBGrid, Vcl.DBCtrls, JvDBCheckBox,
  Vcl.Mask, JvComponentBase, JvPrint, JvExControls, JvPrvwDoc, JvgReport,
  SQLSPanelU, datau, JvExStdCtrls, JvCombobox, JvDBCombobox, RLPreviewForm,
  RLFilters, RLPDFFilter, RLPreview, RLReport, System.Actions, Vcl.ActnList,
  Vcl.Imaging.pngimage;

type
  TPOSF = class(TDataFormTPL)
    edItSearchinv: TEdit;
    btnewIn: TButton;
    dgInv: TJvDBGrid;
    pnlBill: TPanel;
    EdItemSearch: TEdit;
    btQout: TButton;
    Panel1: TPanel;
    btSave: TButton;
    dgitems: TJvDBGrid;
    qrItem: TFDQuery;
    ds3: TDataSource;
    qrMainid: TFDAutoIncField;
    qrMaincname: TStringField;
    qrMainaddr1: TStringField;
    qrMainaddr2: TStringField;
    qrMaindate: TDateTimeField;
    qrMaintotal: TLongWordField;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label3: TLabel;
    qrMainpayment: TLongWordField;
    qrMainpaytype: TStringField;
    qrMaincancel: TBooleanField;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    qrItemid: TFDAutoIncField;
    qrItemname: TStringField;
    qrItemqty: TLongWordField;
    qrItemprice: TLongWordField;
    qrItemdiscount: TLongWordField;
    qrItemtotalval: TLongWordField;
    qrIteminvid: TIntegerField;
    Button4: TButton;
    JvDBComboBox1: TJvDBComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    JvDBCheckBox1: TJvDBCheckBox;
    pnlPrint: TPanel;
    RLPreview1: TRLPreview;
    bteditInv: TButton;
    bt6: TButton;
    alMain: TActionList;
    actnewIn: TAction;
    acteditInv: TAction;
    actSave: TAction;
    actPrint: TAction;
    pnl1: TPanel;
    cbb1: TComboBox;
    btPrint1: TButton;
    bt1: TButton;
    btPrint2: TButton;
    rpShippingLbl: TRLReport;
    RLBand6: TRLBand;
    codName: TRLLabel;
    codval: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    rpPrintInv: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLImage1: TRLImage;
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
    RLDBMemo1: TRLDBMemo;
    RLBand5: TRLBand;
    RLDBText8: TRLDBText;
    RLLabel8: TRLLabel;
    RLBand4: TRLBand;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLAngleLabel1: TRLAngleLabel;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw3: TRLDraw;
    qrMainstatus: TStringField;
    qrMainwarrenty: TIntegerField;
    qrMainguid: TStringField;
    lbl1: TLabel;
    dbedtpayment: TDBEdit;
    lbl2: TLabel;
    dbedtpayment1: TJvDBComboBox;
    lbl3: TLabel;
    dbedtpayment2: TDBEdit;
    RLDBText2: TRLDBText;
    btPrint3: TButton;
    btClone: TButton;
    actClone: TAction;
    spClone: TFDStoredProc;
    qrMaintel: TStringField;
    btPrint4: TButton;
    rpCombo: TRLReport;
    RLBand11: TRLBand;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLAngleLabel2: TRLAngleLabel;
    RLDBText23: TRLDBText;
    RLDraw15: TRLDraw;
    RLPDFFilter2: TRLPDFFilter;
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
    procedure OnEnterSelectAll(Sender: TObject);
    procedure btslClick(Sender: TObject);
    procedure actCloneExecute(Sender: TObject);
    procedure qrMaincnameSetText(Sender: TField; const Text: string);
    procedure btPrint4Click(Sender: TObject);
    procedure dgitemsExit(Sender: TObject);
  private
    var
      spis: TSQLSPanel;
    { Private declarations }
    function SearchItem(): Boolean;
  public
    { Public declarations }
  end;

var
  POSF: TPOSF;

implementation

uses
  Vcl.Printers, JclStrings;
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
//refresh
end;

procedure TPOSF.acteditInvExecute(Sender: TObject);
begin
  inherited;
  SlideMe(pnlBill, 3);
  qrItem.Active := false;
  qrItem.ParamByName('id').Value := qrMainid.Value;
  qrItem.Open();
end;

procedure TPOSF.actnewInExecute(Sender: TObject);
begin
  inherited;
  SlideMe(pnlBill, 3);
  pnlBill.show;
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
  rpPrintInv.NextReport := rpShippingLbl;
  rpPrintInv.Preview(RLPreview1);
  RLPreview1.ZoomMultiplePages;
  SlideMe(pnlPrint, 2);

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
  slideme(pnlPrint, 0, true)
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
  SlideMe(pnlPrint, 2)
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
    qrMaintotal.Value := qrItem.Aggregates.AggregateByName('billtotal').Value;
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

procedure TPOSF.OnEnterSelectAll(Sender: TObject);
begin
  inherited;
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
  SlideMe(pnlBill, 1, true);
//  pnlBill.Visible := false;
  qrMain.Cancel;
  qrItem.cancel;
  qrItem.CancelUpdates;
end;

procedure TPOSF.btslClick(Sender: TObject);
begin
  inherited;
  rpShippingLbl.Prepare;
  Application.ProcessMessages;
  rpShippingLbl.PreviewModal;
//  rpShippingLbl.Print;
end;

procedure TPOSF.btPrint4Click(Sender: TObject);
begin
  inherited;
//    rpCombo.NextReport := nil;
  rpCombo.Prepare;
  rpCombo.Print;
//  rpCombo.Print;
//  rpCombo.NextReport := rpShippingLbl;

end;

procedure TPOSF.btPrintInvClick(Sender: TObject);
begin
  inherited;
  rpPrintInv.NextReport := nil;
  rpPrintInv.Prepare;
  rpPrintInv.Print;
  rpPrintInv.NextReport := rpShippingLbl;
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
//  pnlPrint.Left := 0;
  pnlBill.Left := 0;
  pnlBill.BringToFront;
  pnlPrint.BringToFront;


    // pnlBill.Align:=alClient;
  pnlBill.Top := 0;
  pnlBill.Visible := false;
  pnlPrint.Visible := false;
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
  qrMaintotal.Value := qrItem.Aggregates.AggregateByName('billtotal').Value;
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

