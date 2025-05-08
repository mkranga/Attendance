unit ShiftU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataFormTPLU,
  Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.Grids, FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TShiftF = class(TDataFormTPL)
    dg1: TDBGrid;
    qrMainSid: TFDAutoIncField;
    qrMainSname: TStringField;
    qrMainSDay: TStringField;
    qrMainInTime: TTimeField;
    qrMainOutTime: TTimeField;
    Panel1: TPanel;
    bt1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShiftF: TShiftF;

implementation

{$R *.dfm}

end.
