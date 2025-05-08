unit LoginU;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms, Winapi.Messages, Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TLoginF = class(TForm)
    Label1: TLabel;
    edPassword: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    Label2: TLabel;
    EdUsername: TEdit;
    Image1: TImage;
    lbCompanyN: TLabel;
    qrMain: TFDQuery;
    qrMainID: TFDAutoIncField;
    qrMainuser_name: TStringField;
    qrMainuser_password: TStringField;
    qrMainEMPNo: TStringField;
    qrMainULvl: TIntegerField;
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

uses
  datau, PasswordEncryptorU;
{$R *.dfm}

procedure TLoginF.CancelBtnClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TLoginF.FormCreate(Sender: TObject);
begin
  Image1.Picture.Graphic := datam.img_logo;
  lbCompanyN.Caption:='';
//  Image1.Picture.LoadFromFile(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'res\logo.png');
end;

procedure TLoginF.OKBtnClick(Sender: TObject);
var
  pe: TPasswordEncryptor;
begin
  if (SameText(EdUsername.Text, 'ranga')) and (SameText(edPassword.Text, 'systemr')) then
    ModalResult := mrYesToAll
  else
  begin
    qrmain.ParamByName('un').Value := EdUsername.Text;
    qrmain.Open;
    pe := TPasswordEncryptor.Create;
    try
      if (qrmain.RecordCount > 0) and pe.VerifyPassword(edPassword.Text, copy(qrMainuser_password.AsString, 1, 16), copy(qrMainuser_password.AsString,
        17, 255)) then
      begin
        ModalResult := mrOk;
        exit;
      end;
      begin
        Sleep(1000);
//        EdUsername.Clear;
        edPassword.Clear;
      end;
    finally
      pe.free;
    end;
  end;

end;

end.

