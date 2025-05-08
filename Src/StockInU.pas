unit StockInU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataFormTPLU, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBGrids, FireDAC.Comp.Client,
  Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Grids, DataU, SQLSPanelU;

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
    bt2: TButton;
    dg2: TDBGrid;
    qrStockSummery: TFDQuery;
    ds2: TDataSource;
    edSearch: TEdit;
    qrStockSummeryItem: TStringField;
    qrStockSummeryavgprice: TBCDField;
    qrStockSummerysumtotal: TFMTBCDField;
    qrStockSummerysumqty: TFMTBCDField;
    qrStockSummerycode: TStringField;
    qrMaincode: TStringField;
    procedure bt1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt2Click(Sender: TObject);
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
  qrStockSummery.Refresh;
end;

procedure TStockInF.bt2Click(Sender: TObject);
begin
  inherited;
  DataM.CloneRecord(qrMain, qrMain);
  qrMaincrdate.Value := Now;
  dg2.SetFocus;
end;

procedure TStockInF.FormCreate(Sender: TObject);
begin
  inherited;
  qrMain.Active := True;
  qrStockSummery.Active := true;
end;

end.

