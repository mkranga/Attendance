unit LoginU;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Winapi.Messages, Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, System.StrUtils,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TLoginF = class(TForm)
    Label1: TLabel;
    edPassword: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    Label2: TLabel;
    EdUsername: TEdit;
    Image1: TImage;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginF: TLoginF;

implementation
 uses datau;
{$R *.dfm}

procedure TLoginF.CancelBtnClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TLoginF.FormCreate(Sender: TObject);
begin
Image1.Picture.Graphic := datam.img_logo;
//  Image1.Picture.LoadFromFile(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'res\logo.png');
end;

procedure TLoginF.OKBtnClick(Sender: TObject);
begin
  if (SameText(EdUsername.Text, 'Admin')) and (SameText(edPassword.Text, 'admin')) then
    ModalResult := mrOk
  else
  begin
    Sleep(1000);
    EdUsername.Clear;
    edPassword.Clear;
  end;
end;

end.

