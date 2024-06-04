unit StockInU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataFormTPLU, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.Client, Vcl.Buttons;

type
  TStockInF = class(TDataFormTPL)
    dg1: TDBGrid;
    pnl1: TPanel;
    bt1: TButton;
    qrMainid: TFDAutoIncField;
    qrMainitem: TStringField;
    qrMainqty: TIntegerField;
    qrMaincrdate: TDateTimeField;
    qrMainprice: TIntegerField;
    qrMaintotal: TIntegerField;
    procedure bt1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StockInF: TStockInF;

implementation

{$R *.dfm}

procedure TStockInF.bt1Click(Sender: TObject);
begin
  inherited;
qrMain.ApplyUpdates();
qrMain.CommitUpdates;
end;

procedure TStockInF.FormCreate(Sender: TObject);
begin
  inherited;
 qrMain.Active:=True;
end;

end.
