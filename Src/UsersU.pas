unit UsersU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataFormTPLU,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TUsersF = class(TDataFormTPL)
    qrMainID: TFDAutoIncField;
    qrMainuser_name: TStringField;
    qrMainuser_password: TStringField;
    qrMainEMPNo: TStringField;
    qrMainULvl: TIntegerField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    btSave: TButton;
    edPwd: TEdit;
    edPwd2: TEdit;
    procedure btSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrMainBeforeDelete(DataSet: TDataSet);
    procedure btCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UsersF: TUsersF;

implementation

uses
  PasswordEncryptorU, datau;
{$R *.dfm}

procedure TUsersF.btCloseClick(Sender: TObject);
begin
  qrmain.CancelUpdates;
  inherited;
end;

procedure TUsersF.btSaveClick(Sender: TObject);
var
  s: string;
  pe: TPasswordEncryptor;
begin
  inherited;

     //validate
  if edPwd.Text <> '' then
  begin
    if edPwd.Text <> edPwd2.Text then
      s := s + sLineBreak + 'Passwords do not match.';
  end;

  if s <> '' then
  begin
    delete(s, 1, Length(sLineBreak));
    ShowMessage(s);
 //   qrmain.Edit;
    exit;
  end;
//    prepair
  if edPwd.Text <> '' then
  begin
    pe := TPasswordEncryptor.Create;
    try
if not(qrmain.State in [dsinsert,dsedit]) then qrmain.edit;

      qrMainuser_password.Value := pe.HashPassword(edPwd.Text, s);
      qrMainuser_password.Value := s + qrMainuser_password.AsString;
      edpwd.clear;
      edpwd2.clear;
    finally
      pe.Free;
    end;
  end;

  DataM.ApplyUpdate(qrMain);

end;

procedure TUsersF.FormCreate(Sender: TObject);
begin
AccessLevel:=2;
  inherited;
  if qrmain.Active = false then
    qrMain.Open();
end;

procedure TUsersF.qrMainBeforeDelete(DataSet: TDataSet);
begin
  abort;
end;

end.

