unit ChequeU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, DataU,
  System.Math, Data.Win.ADODB, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, Printers, Vcl.Imaging.pngimage, JvComponentBase,
  JvDBGridExport, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls,
  Vcl.Mask, RLReport, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, RLPreview, JvEnterTab, JclStrings;

function NumberToWords(Number: Integer): string;

function NumToWords(dblValue: Double): string;

const
  C_ViewDef = 'SELECT  *  FROM Cheque order by id desc limit 1000';

type
  TChequeF = class(TForm)
    grdCheque: TDBGrid;
    qrMain: TFDQuery;
    ds1: TDataSource;
    pnltop: TPanel;
    pnlleft: TPanel;
    btnCredit: TButton;
    bt1: TButton;
    btnPrintMain: TButton;
    btnDeposit: TButton;
    btnClose: TButton;
    edtSearch: TEdit;
    btnSearch: TButton;
    btnRefresh: TButton;
    lbl1: TLabel;
    pnlEdit: TPanel;
    lbl4: TLabel;
    dbedtCName: TDBEdit;
    lbl5: TLabel;
    dbedtCNo: TDBEdit;
    lbl6: TLabel;
    dbedtCValue: TDBEdit;
    lbl7: TLabel;
    dbedtCDate: TDBEdit;
    dbchkAccPay: TDBCheckBox;
    lbl13: TLabel;
    dbedtCNote: TDBEdit;
    btnsave: TButton;
    btnCredit2: TButton;
    dbchkCancel1: TDBCheckBox;
    qrMainid: TFDAutoIncField;
    qrMainCNo: TIntegerField;
    qrMainCName: TStringField;
    qrMainCNote: TStringField;
    qrMainCValue: TSingleField;
    qrMainCDate: TDateField;
    qrMainAccPay: TBooleanField;
    qrMainCanceled: TBooleanField;
    qrMainUserID: TBooleanField;
    qrMainCrDate: TSQLTimeStampField;
    qrMainMdDate: TSQLTimeStampField;
    RLPreview1: TRLPreview;
    RptCheque: TRLReport;
    qrMainAPOC: TWideStringField;
    qrMainCanC: TWideStringField;
    cbbPrinter: TComboBox;
    lbl8: TLabel;
    btReport: TButton;
    JvEnterAsTab1: TJvEnterAsTab;
    RptVoucher: TRLReport;
    rlblCompName: TRLLabel;
    rlblCompAddr: TRLLabel;
    RLLabel3: TRLLabel;
    rlpnl1: TRLPanel;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText6: TRLDBText;
    rlpnl2: TRLPanel;
    rlpnl3: TRLPanel;
    rlpnl4: TRLPanel;
    RLMemo2: TRLMemo;
    RLDBText4: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    QUANTITY12: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLLabel11: TRLLabel;
    RLDraw7: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDBText2: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLMemo3: TRLMemo;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    btnPC: TButton;
    rlpnl5: TRLPanel;
    RLLabel27: TRLLabel;
    RLDBText10: TRLDBText;
    RLMemo4: TRLMemo;
    RLDBText11: TRLDBText;
    RLLabel28: TRLLabel;
    RLDraw1: TRLDraw;
    chk1: TCheckBox;
    chk2: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnDepositClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure grdChequeTitleClick(Column: TColumn);
    procedure edtSearchEnter(Sender: TObject);
    procedure edtSearchExit(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
    procedure qrMainCalcFields(DataSet: TDataSet);
    procedure bt1Click(Sender: TObject);
    procedure btnCredit2Click(Sender: TObject);
    procedure btnCreditClick(Sender: TObject);
    procedure btnPCClick(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure qrMainAfterInsert(DataSet: TDataSet);
    procedure RLMemo1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure RLLabel1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure grdChequeDblClick(Sender: TObject);
    procedure dbedtCNoExit(Sender: TObject);
    procedure dbchkAccPayClick(Sender: TObject);
    procedure ds1StateChange(Sender: TObject);
    procedure RLLabel2BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure Ge1Exception(Sender: TObject);
    procedure Ge1Progress(Sender: TObject; Min, Max, Position: Cardinal; const AText: string; var AContinue: Boolean);
    procedure btnCloseClick(Sender: TObject);
    procedure qrMainCNameSetText(Sender: TField; const Text: string);
    procedure btnPVClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cbbPrinterChange(Sender: TObject);
  private
    procedure CloneCHQ(cno: Cardinal); overload;
  public
  end;

var
  ChequeF: TChequeF;

implementation

{$R *.dfm}

uses
  CommonU, SettingsU, LogU;

function NumberToWords(Number: Integer): string;
const
  Billion = 1000000000;
  Million = 1000000;
  Thousand = 1000;
  Hundred = 100;
  Tens: array[2..9] of string = ('twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety');
  Teens: array[10..19] of string = ('ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen');
  Units: array[1..9] of string = ('one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine');
begin
  if (Number < 0) then
    Result := 'minus '
  else
    Result := '';
  Number := abs(Number); // Get number as Positive Value;

  // Billions
  if (Number >= Billion) then
  begin
    Result := Result + NumberToWords(Number div Billion) + ' bllion, ';
    Number := Number mod Billion;
  end;

  // Millions
  if (Number >= Million) then
  begin
    Result := Result + NumberToWords(Number div Million) + ' million, ';
    Number := Number mod Million;
  end;

  // Thousands
  if (Number >= Thousand) then
  begin
    Result := Result + NumberToWords(Number div Thousand) + ' thousand, ';
    Number := Number mod Thousand;
  end;

  // Hundreds
  if (Number >= Hundred) then
  begin
    Result := Result + NumberToWords(Number div Hundred) + ' hundred';
    Number := Number mod Hundred;
  end;

  // and ...
  if (Number > 0) and (Result <> '') then
  begin
    Result := Trim(Result);
    if (Result[Length(Result)] = ',') then
      Delete(Result, Length(Result), 1);
    Result := Result + ' and ';
  end;

  // Tens
  if (Number >= 20) then
  begin
    Result := Result + Tens[Number div 10] + ' ';
    Number := Number mod 10;
  end;
  if (Number >= 10) then
  begin
    Result := Result + Teens[Number];
    Number := 0
  end;

  // Units
  if (Number >= 1) then
    Result := Result + Units[Number];

  // Tidy up the result
  Result := Trim(Result);
  if (Result = '') then
    Result := 'zero'
  else if (Result[Length(Result)] = ',') then
    Delete(Result, Length(Result), 1);
end;

function NumToWords(dblValue: Double): string;
var
  ones: array[0..9] of string;
  Teens: array[0..9] of string;
  Tens: array[0..9] of string;
  thousands: array[0..4] of string;
  i, nPosition, nDigit, bAllZeros, cents: Integer;
  strResult, strTemp, tmpBuff: string;
begin

  ones[0] := 'ZERO';
  ones[1] := 'ONE';
  ones[2] := 'TWO';
  ones[3] := 'THREE';
  ones[4] := 'FOUR';
  ones[5] := 'FIVE';
  ones[6] := 'SIX';
  ones[7] := 'SEVEN';
  ones[8] := 'EIGHT';
  ones[9] := 'NINE';

  Teens[0] := 'TEN';
  Teens[1] := 'ELEVEN';
  Teens[2] := 'TWELVE';
  Teens[3] := 'THIRTEEN';
  Teens[4] := 'FOURTEEN';
  Teens[5] := 'FIFTEEN';
  Teens[6] := 'SIXTEEN';
  Teens[7] := 'SEVENTEEN';
  Teens[8] := 'EIGHTEEN';
  Teens[9] := 'NINETEEN';

  Tens[0] := '';
  Tens[1] := ''; // TEN1

  Tens[2] := 'TWENTY';
  Tens[3] := 'THIRTY';
  Tens[4] := 'FORTY';
  Tens[5] := 'FIFTY';
  Tens[6] := 'SIXTY';
  Tens[7] := 'SEVENTY';
  Tens[8] := 'EIGHTY';
  Tens[9] := 'NINETY';

  thousands[0] := '';
  thousands[1] := 'THOUSAND';
  thousands[2] := 'MILLION';
  thousands[3] := 'BILLION';
  thousands[4] := 'TRILLION';

  try

    strResult := '';
    dblValue := RoundTo(dblValue, -2);
    strTemp := IntToStr(trunc(dblValue));
    // Iterate through string
    for i := Length(strTemp) downto 1 do
    begin

      // Get value of this digit
      nDigit := StrToInt(copy(strTemp, i, 1));
      // Get column position
      nPosition := (Length(strTemp) - i) + 1;
      // Action depends on 1's, 10's or 100's column
      // Select Case (nPosition Mod 3)
      case (nPosition mod 3) of

        1: // Case 1  //'1's position
          begin
            bAllZeros := 0;
            if i = 1 then
              tmpBuff := ones[nDigit] + ' '
            else if copy(strTemp, i - 1, 1) = '1' then
            begin
              tmpBuff := Teens[nDigit] + ' ';
            end
            else if nDigit > 0 then
              tmpBuff := ones[nDigit] + ' '
            else
            begin
              // If next 10s & 100s columns are also
              // zero, then don't show 'thousands'
              bAllZeros := 1;
              if i > 1 then
              begin
                if copy(strTemp, i - 1, 1) <> '0' then
                  bAllZeros := 0;
              end;
              if i > 2 then
              begin
                if copy(strTemp, i - 2, 1) <> '0' then
                  bAllZeros := 0;

              end;
              tmpBuff := '';
            end;
            if (bAllZeros = 0) and (nPosition > 1) then
              tmpBuff := tmpBuff + thousands[nPosition div 3] + ' ';

            strResult := tmpBuff + strResult;

          end;
        2: // Tens position
          begin

            if nDigit > 0 then
              // if MidStr(strTemp, i - 1, 1) <> '1' Then
              strResult := Tens[nDigit] + ' ' + strResult;

          end;
        0: // Hundreds position

          begin

            if nDigit > 0 then
              strResult := ones[nDigit] + ' HUNDRED ' + strResult;

          end;
      end;
    end;

    // dblValue:=157.67;
    strTemp := FloatToStr(dblValue);

    cents := StrToInt(copy(strTemp, Length(strTemp) - 1, 2));
    if Frac(dblValue) > 0 then // if cents > 0 then
      strResult := strResult + ' AND ' + NumToWords(cents) + ' CENTS';
    Result := strResult;

  except

    Result := '';
  end;

end;

// ------------------
procedure TChequeF.bt1Click(Sender: TObject);
begin
  if qrMain.RecordCount < 1 then
    exit;
  CloneCHQ(qrMainid.Value);
end;

procedure TChequeF.btnsaveClick(Sender: TObject);
begin
  try
    if qrMain.State = dsInsert then
      TSettings.SetValue(TSettingKey.skLastCHQNo, qrMainCNo.AsString);
    qrMain.Post;

    // qrMain.ApplyUpdates();
  except
    on e: exception do
      ShowMessage('Failed' + sLineBreak + e.Message);
  end;
 // SlideMe(pnlEdit, 1, true);
end;

procedure TChequeF.btnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TChequeF.btnCredit2Click(Sender: TObject);
begin
  if qrMain.State <> dsBrowse then
    qrMain.Cancel;
  SlideMe(pnlEdit, 1, true);
end;

procedure TChequeF.btnPCClick(Sender: TObject);
var
  i: Integer;
  rpt: TRLReport;
begin
  if qrMain.State in [dsInsert, dsEdit] then
    btnsaveClick(Sender);
  if qrMainCanceled.Value then
  begin
    ShowMessage('Canceled!');
    exit;
  end;
  if chk1.Checked and chk2.Checked then
  begin
    RptCheque.NextReport := RptVoucher;
    rpt := RptCheque;
  end
  else if chk1.Checked then
  begin
    RptCheque.NextReport := nil;
    rpt := RptCheque;
  end
  else
  begin
    RptCheque.NextReport := nil;
    rpt := RptVoucher;
  end;

  RptCheque.Prepare;
  RptCheque.Print;
end;

procedure TChequeF.btnCreditClick(Sender: TObject);
begin
  CloneCHQ(0);
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
  RptCheque.Prepare;
  RptCheque.Print;
end;

procedure TChequeF.btnPVClick(Sender: TObject);
var
  i: Integer;
begin
  if qrMain.State in [dsInsert, dsEdit] then
    btnsaveClick(Sender);
  RptVoucher.Prepare;
  RptVoucher.Print;
end;

procedure TChequeF.btnRefreshClick(Sender: TObject);
begin
  if qrMain.State <> dsInactive then
    qrMain.close;
  qrMain.sql.Text := C_ViewDef;
  qrMain.Open;
  qrMain.Filtered := False;
end;

procedure TChequeF.btnSearchClick(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  if qrMain.State <> dsInactive then
    qrMain.close;
  if Trim(edtSearch.Text) = '' then
  begin
    qrMain.sql.Text := C_ViewDef;
    qrMain.Open;
    exit;
  end;

  i := StrToIntDef(edtSearch.Text, -1);
  if i > -1 then
    s := 'CNo like ' + QuotedStr('%' + edtSearch.Text + '%')
  else
    s := 'cname like ' + QuotedStr('%' + edtSearch.Text + '%') + ' or cnote like ' + QuotedStr('%' + edtSearch.Text + '%');

  qrMain.sql.Text := 'select * from Cheque where ' + s + ' ORDER BY ID DESC';
  qrMain.Open;
end;

procedure TChequeF.cbbPrinterChange(Sender: TObject);
begin
  Printer.PrinterIndex := cbbPrinter.ItemIndex;
end;

procedure TChequeF.CloneCHQ(cno: Cardinal);
var
  name, note: string;
  val: Currency;
  cdate: TDate;
  accpay: Boolean;
begin
  if cno > 0 then
  begin
    name := qrMainCName.Value;
    val := qrMainCValue.Value;
    note := qrMainCNote.Value;
    accpay := qrMainAccPay.Value;
    qrMain.Append;
    qrMainCName.Value := name;
    qrMainCValue.Value := val;
    qrMainAccPay.Value := accpay;
    qrMainCNote.Value := note;
  end
  else
    qrMain.Append;
  SlideMe(pnlEdit, 3, False);
  dbedtCValue.SetFocus;
end;

procedure TChequeF.dbchkAccPayClick(Sender: TObject);
begin
  dbedtCNoExit(Self)
end;

procedure TChequeF.dbedtCNoExit(Sender: TObject);
begin
  RptCheque.Prepare;
  RptCheque.Preview(RLPreview1);
end;

procedure TChequeF.ds1StateChange(Sender: TObject);
begin
  if qrMain.State in [dsEdit, dsInsert] then
  begin
    dbedtCNoExit(Sender);
  end;
end;

procedure TChequeF.edtSearchChange(Sender: TObject);
begin
  qrMain.DisableControls;
  try
    qrMain.Filtered := False;
    if Trim(edtSearch.Text) = EmptyStr then
      exit;
    qrMain.Filter := 'cname LIKE ''%' + Trim(edtSearch.Text) + '%'' OR cnote LIKE ''%' + Trim(edtSearch.Text) + '%''';
    qrMain.Filtered := true;
  finally
    qrMain.EnableControls;
  end;
end;

procedure TChequeF.edtSearchEnter(Sender: TObject);
begin
  btnSearch.Default := true;
end;

procedure TChequeF.edtSearchExit(Sender: TObject);
begin
  btnSearch.Default := False;
end;

procedure TChequeF.grdChequeDblClick(Sender: TObject);
begin
  SlideMe(pnlEdit, 3, False);
  qrMain.Edit;

end;

procedure TChequeF.grdChequeTitleClick(Column: TColumn);
begin

  // if qrMain.Sort = Column.FieldName + ' ASC' then
  // qrMain.Sort := Column.FieldName + ' DESC'
  // else
  // qrMain.Sort := Column.FieldName + ' ASC';
end;

procedure TChequeF.qrMainAfterInsert(DataSet: TDataSet);
begin
  qrMainCDate.Value := Date;
  qrMainCNo.Value := TSettings.GetValue(TSettingKey.skLastCHQNo, '1').AsInteger + 1;
  qrMainCanceled.Value := False;
end;

procedure TChequeF.qrMainCalcFields(DataSet: TDataSet);
begin
  if qrMainAccPay.Value then
    qrMainAPOC.Value := #9745
  else
    qrMainAPOC.Value := EmptyStr;
  if qrMainCanceled.Value then
    qrMainCanC.Value := #9745
  else
    qrMainCanC.Value := EmptyStr;
end;

procedure TChequeF.qrMainCNameSetText(Sender: TField; const Text: string);
begin
  Sender.Value := StrSmartCase(Trim(Text), nil);

end;

procedure TChequeF.RLLabel1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
  PrintIt := qrMainAccPay.Value;
end;

procedure TChequeF.RLLabel2BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
  AText := FormatDateTime('dd"    "mm"          "yy', qrMainCDate.AsDateTime);
  insert(' ', AText, 20);
  insert(' ', AText, 8);
  insert(' ', AText, 2);
end;

procedure TChequeF.RLMemo1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
  AText := StrSmartCase(NumberToWords(qrMainCValue.AsInteger) + ' only', nil);
end;

procedure TChequeF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  TSettings.SetValue(TSettingKey.skCHQPrinter, IntToStr(cbbPrinter.ItemIndex));
end;

procedure TChequeF.FormCreate(Sender: TObject);
begin
  FormatSettings.CurrencyFormat := 2;
  FormatSettings.CurrencyString := 'Rs';
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  if qrMain.State = dsInactive then
    qrMain.Open;
  pnlEdit.BringToFront;
  pnlEdit.Visible := False;
  cbbPrinter.Items := Printer.Printers;
  cbbPrinter.ItemIndex := TSettings.GetValue(TSettingKey.skCHQPrinter, '0').AsInteger;
  rlblCompName.Caption := TSettings.GetValue(TSettingKey.skCompName, 'Company Name Not Set').AsString;
  rlblCompAddr.Caption := TSettings.GetValue(TSettingKey.skCompAddress, 'Company Address').AsString;
end;

procedure TChequeF.Ge1Exception(Sender: TObject);
begin
  ShowMessage('Failed');
end;

procedure TChequeF.Ge1Progress(Sender: TObject; Min, Max, Position: Cardinal; const AText: string; var AContinue: Boolean);
begin
  if Position >= Max then
    ShowMessage('Done');
end;

end.

