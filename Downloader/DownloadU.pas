unit DownloadU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TDownloadF = class(TForm)
    mmo1: TMemo;
    bt1: TButton;
    bt2: TButton;
    mmo2: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DownloadF: TDownloadF;

implementation

{$R *.dfm}

end.
