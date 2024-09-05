unit ChequeU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, DataU,
  Data.Win.ADODB, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
   Printers, Vcl.Imaging.pngimage, JvComponentBase, JvDBGridExport,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client; // frxClass; //frxClass;

const
  C_ViewDef = 'SELECT top 100 *  FROM Cheque order by id desc';

type
  TChequeF = class(TForm)
    grdCheque: TDBGrid;
    qrView: TFDQuery;
    dsView: TDataSource;
    qrViewID: TIntegerField;
    qrViewCType: TWideStringField;
    qrViewCName: TWideStringField;
    qrViewCNo: TIntegerField;
    qrViewCValue: TBCDField;
    qrViewCDate: TDateTimeField;
    qrViewAccPay: TBooleanField;
    qrViewUserID: TIntegerField;
    qrViewAddDate: TDateTimeField;
    qrViewCurrentBalance: TBCDField;
    qrViewCancel: TBooleanField;
    qrViewAPOC: TWideStringField;
    qrViewCanC: TWideStringField;
    qrViewCNote: TWideStringField;
    Ge1: TJvDBGridExcelExport;
    dlgSave1: TSaveDialog;
    pnl1: TPanel;
    pnl2: TPanel;
    btnCredit: TButton;
    bt1: TButton;
    btnPrintMain: TButton;
    btnDeposit: TButton;
    btReport: TButton;
    btnClose: TButton;
    edtSearch: TEdit;
    btnSearch: TButton;
    btnRefresh: TButton;
    lbl1: TLabel;
    procedure btnCreditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdChequeDblClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnDepositClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure grdChequeTitleClick(Column: TColumn);
    procedure edtSearchEnter(Sender: TObject);
    procedure edtSearchExit(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
    procedure qrViewCalcFields(DataSet: TDataSet);
    procedure bt1Click(Sender: TObject);
    procedure btReportClick(Sender: TObject);
  private
  public
  end;

var
  ChequeF: TChequeF;

implementation
{$R *.dfm}

uses
  NumberToWordsU;

procedure TChequeF.bt1Click(Sender: TObject);
begin
  if qrView.RecordCount < 1 then
    exit;
  if ChequeF = nil then
    ChequeF := TChequeF.Create(self);
  ChequeF.DuplicateCHQ(qrViewCValue.AsCurrency, qrViewCName.AsString, qrViewAccPay.AsBoolean, qrViewCancel.AsBoolean, qrViewCNote.AsString);
end;

procedure TChequeF.btnCloseClick(Sender: TObject);
begin
  self.Close;
end;

procedure TChequeF.btnDepositClick(Sender: TObject);
begin
  ShowMessage('not implimented');
end;

procedure TChequeF.btnPrintClick(Sender: TObject);
var
  s: string;
  i: Integer;
begin
//get selection
  for i := 0 to grdCheque.SelectedRows.Count - 1 do
  begin
    grdCheque.DataSource.DataSet.GotoBookmark(Pointer(grdCheque.SelectedRows.Items[i]));
    s := s + ',' + qrView.FieldByName('cno').AsString;
  end;
  if s <> '' then
    delete(s, 1, 1)
  else
    s := qrViewCNo.AsString;
  datam.PrintCheque(s); //prints
end;

procedure TChequeF.btnRefreshClick(Sender: TObject);
begin
  if qrView.State <> dsInactive then
    qrView.Close;
  qrView.sql.Text := C_ViewDef;
  qrView.Open;
  qrview.Filtered := False;
end;

procedure TChequeF.btnSearchClick(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  if qrView.State <> dsInactive then
    qrview.Close;
  if trim(edtSearch.Text) = '' then
  begin
    qrview.SQL.Text := C_ViewDef;
    qrview.Open;
    Exit;
  end;

  i := StrToIntDef(edtSearch.Text, -1);
  if i > -1 then
    s := 'CNo like ' + QuotedStr('%' + edtSearch.Text + '%')
  else
    s := 'cname like ' + QuotedStr('%' + edtSearch.Text + '%') + ' or cnote like ' + QuotedStr('%' + edtSearch.Text + '%');

  qrview.SQL.Text := 'select * from Cheque where ' + s + ' ORDER BY ID DESC';
  qrview.Open;
end;

procedure TChequeF.btReportClick(Sender: TObject);
begin
  if not (dlgSave1.Execute()) then
    exit;
  ge1.FileName := dlgSave1.FileName;
  ge1.ExportGrid;
//frx
end;

procedure TChequeF.edtSearchChange(Sender: TObject);
begin
  qrView.DisableControls;
  try
    qrView.Filtered := False;
    if trim(edtSearch.Text) = EmptyStr then
      exit;
    qrView.Filter := 'cname like %' + trim(edtSearch.Text) + '% or cnote like %' + trim(edtSearch.Text) + '%';
    qrView.Filtered := True;
  finally
    qrView.EnableControls;
  end;
end;

procedure TChequeF.edtSearchEnter(Sender: TObject);
begin
  btnSearch.Default := True;
end;

procedure TChequeF.edtSearchExit(Sender: TObject);
begin
  btnSearch.Default := False;
end;

procedure TChequeF.btnCreditClick(Sender: TObject);
begin
  if ChequeF = nil then
    ChequeF := TChequeF.Create(self);
  ChequeF.NewCheque();
  datam.ResetTbl(qrView);

end;

procedure TChequeF.btnLogoutClick(Sender: TObject);
begin
  if LoginF = nil then
    LoginF := TLoginF.Create(Self);
  Self.Hide;
  if LoginF.ShowModal <> mrOk then
    Application.Terminate
  else
    Self.Show;
end;

procedure TChequeF.grdChequeDblClick(Sender: TObject);
begin
  if ChequeF = nil then
    ChequeF := TChequeF.Create(self);
  ChequeF.EditCheque(qrViewID.Value);
  datam.resettbl(qrView);
end;

procedure TChequeF.grdChequeTitleClick(Column: TColumn);
begin
  if qrView.Sort = Column.FieldName + ' ASC' then
    qrView.Sort := Column.FieldName + ' DESC'
  else
    qrView.Sort := Column.FieldName + ' ASC';
end;

procedure TChequeF.qrViewCalcFields(DataSet: TDataSet);
begin
  if qrViewAccPay.Value then
    qrViewAPOC.Value := #9745
  else
    qrViewAPOC.Value := EmptyStr;
  if qrViewCancel.Value then
    qrViewCanC.Value := #9745
  else
    qrViewCanC.Value := EmptyStr;
end;

procedure TChequeF.FormCreate(Sender: TObject);
begin
  FormatSettings.CurrencyFormat := 2;
  FormatSettings.CurrencyString := 'Rs';
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  if qrView.State = dsInactive then
    qrView.Open;
end;

end.

