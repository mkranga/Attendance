unit DataFormTPLU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DataU, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TDataFormTPL = class(TForm)
    qrMain: TFDQuery;
    ds1: TDataSource;
    btClose: TBitBtn;
    procedure btCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataFormTPL: TDataFormTPL;

implementation

{$R *.dfm}

procedure TDataFormTPL.btCloseClick(Sender: TObject);
begin
  Close;
end;

end.

