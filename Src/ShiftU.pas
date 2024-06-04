unit ShiftU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataFormTPLU, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TShiftF = class(TDataFormTPL)
    dg1: TDBGrid;
    bt1: TButton;
    qrMainSid: TFDAutoIncField;
    qrMainSname: TStringField;
    qrMainSDay: TStringField;
    qrMainInTime: TTimeField;
    qrMainOutTime: TTimeField;
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
