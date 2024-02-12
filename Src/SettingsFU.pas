unit SettingsFU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  DataFormTPLU, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, SettingsU, DataU;

type
  TSettingsF = class(TDataFormTPL)
    dg1: TDBGrid;
    pnl1: TPanel;
    ed1: TEdit;
    bt1: TBitBtn;
    qrMainID: TFDAutoIncField;
    qrMainKeyN: TStringField;
    qrMainValS: TStringField;
    qrMainDes: TStringField;
    procedure ed1Change(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SettingsF: TSettingsF;

implementation

{$R *.dfm}

procedure TSettingsF.bt1Click(Sender: TObject);
begin
  inherited;
  if qrMain.State in [dsInsert, dsEdit] then
    qrMain.Post;
  qrMain.ApplyUpdates();
end;

procedure TSettingsF.ed1Change(Sender: TObject);
begin
  inherited;
  datam.setFilter(qrMain, 'keyN', Trim(ed1.Text));
end;

procedure TSettingsF.FormCreate(Sender: TObject);
begin
  inherited;
  if qrMain.Active = false then
    qrMain.Open;
end;

procedure TSettingsF.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  inherited;
  if Msg.CharCode = VK_F3 then
  begin
    Handled := true;
    ed1.SetFocus;
  end;
end;

end.

