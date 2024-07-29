unit AboutU;

interface

uses
  WinApi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, datau;

type
  TAboutF = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    bt1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure bt1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutF: TAboutF;

implementation

{$R *.dfm}

procedure TAboutF.bt1Click(Sender: TObject);
begin
close;
end;

procedure TAboutF.FormCreate(Sender: TObject);
begin

  ProgramIcon.Picture.Assign(datam.img_logo);
end;

end.

