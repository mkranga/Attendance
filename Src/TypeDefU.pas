unit TypeDefU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataFormTPLU,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBGrids, DataU, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Mask, Vcl.Grids;

type
  TTypeDefF = class(TDataFormTPL)
    qrMainCode: TStringField;
    qrMainDes: TStringField;
    qrMainTypeA: TStringField;
    dg1: TDBGrid;
    pnl1: TPanel;
    btSave: TBitBtn;
    btCancel: TBitBtn;
    lbl: TLabel;
    edCode: TDBEdit;
    lbl1: TLabel;
    edDes: TDBEdit;
    lbl2: TLabel;
    edTypeA: TDBEdit;
    btNew: TBitBtn;
    procedure btSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnl1Click(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ShowMin(TypeA: string): Boolean;
    procedure reset;
//    procedure FillCB(code, dis: TStrings; TypeA: string = '');  moved to dataU
  end;

var
  TypeDefF: TTypeDefF;

implementation

{$R *.dfm}

procedure TTypeDefF.btCancelClick(Sender: TObject);
begin
  inherited;
  datam.qrTypeDef.Cancel;
  if datam.qrTypeDef.Filtered then
    ModalResult := mrCancel;
end;

procedure TTypeDefF.btNewClick(Sender: TObject);
begin
  inherited;
  if datam.qrTypeDef.State <> dsBrowse then
    Exit;
  datam.qrTypeDef.Append;
end;

procedure TTypeDefF.btSaveClick(Sender: TObject);
begin
  inherited;
  if not (datam.qrTypeDef.State in [dsEdit, dsInsert]) then
    exit;
  datam.qrTypeDef.Post;
  datam.qrTypeDef.ApplyUpdates();
 // qrMain.Refresh;
  Self.tag := 1;
end;

procedure TTypeDefF.FormCreate(Sender: TObject);
begin
  inherited;
  AccessLevel := 3;
  datam.qrTypeDef.Open;
end;

procedure TTypeDefF.pnl1Click(Sender: TObject);
begin
  inherited;
  Self.Tag := 1;
  if datam.qrTypeDef.Filtered then
    ModalResult := mrOk;
end;

procedure TTypeDefF.reset;
begin
  Self.Tag := 0;
  Self.Height := 500;
  datam.qrTypeDef.Filtered := false;
  edTypeA.ReadOnly := False;
end;

function TTypeDefF.ShowMin(TypeA: string): Boolean;
begin
  Self.Tag := 0;
  Self.Height := 250;
  datam.qrTypeDef.Filtered := false;
  datam.qrTypeDef.Filter := 'TypeA=' + QuotedStr(TypeA);
  datam.qrTypeDef.Filtered := True;
  datam.qrTypeDef.Append;
  datam.qrTypeDefTypeA.Value := TypeA;
  edTypeA.ReadOnly := True;
//  edCode.SetFocus;
  ShowModal;
  Result := (Self.Tag = 1);
end;

end.

