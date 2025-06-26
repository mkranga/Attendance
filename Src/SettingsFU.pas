unit SettingsFU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataFormTPLU,
  Data.DB, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, DataU, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Grids;

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
    Panel1: TPanel;
    cbStyle: TComboBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure ed1Change(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure cbStyleSelect(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure FillStyles;
  public
    { Public declarations }
  end;

var
  SettingsF: TSettingsF;

implementation

{$R *.dfm}

uses
  Vcl.Themes, Vcl.Styles, SettingsU, UsersU;

procedure TSettingsF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if Assigned(UsersF) = false then
    UsersF := TUsersF.Create(self);
  UsersF.ShowModal;
end;

procedure TSettingsF.bt1Click(Sender: TObject);
begin
  inherited;
  datam.ApplyUpdate(qrMain);
end;

procedure TSettingsF.cbStyleSelect(Sender: TObject);
begin
  inherited;
  if TStyleManager.TrySetStyle(cbStyle.Items[cbStyle.ItemIndex]) then
  begin
    if qrMain.Locate('keyN', _KeyNames[skTheme], [loCaseInsensitive]) = false then
      exit;
    qrMain.edit;
    qrMainValS.Value := cbStyle.Items[cbStyle.ItemIndex];
    qrMain.Post;
  end;
end;

procedure TSettingsF.ed1Change(Sender: TObject);
begin
  inherited;
  if ed1.Text = '' then
    qrMain.Filtered := false
  else
  begin
    qrmain.Filtered := false;
    qrmain.Filter := 'keyN like ''%' + ed1.Text + '%''';
    qrmain.Filtered := true;
//    datam.setFilter(qrMain, 'keyN', Trim(ed1.Text));
  end;
end;

procedure TSettingsF.FillStyles;
var
  s: string;
begin
  cbStyle.Items.BeginUpdate;
  try
    cbStyle.Items.Clear;
    for s in TStyleManager.StyleNames do
      cbStyle.Items.Add(s);
    cbStyle.Sorted := True;
    // Select the style that's currently in use in the combobox
    cbStyle.ItemIndex := cbStyle.Items.IndexOf(TStyleManager.ActiveStyle.Name);
  finally
    cbStyle.Items.EndUpdate;
  end;
end;

procedure TSettingsF.FormCreate(Sender: TObject);
begin
  AccessLevel := 2;
  inherited;
  FillStyles;
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

