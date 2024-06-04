unit DownloadU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.DBCtrls,
  Vcl.ExtCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFPType = (ftNone, ftEasy);

type
  TDownloadF = class(TForm)
    pb1: TProgressBar;
    bt1: TButton;
    mmo1: TMemo;
    btSettings: TButton;
    qrLog: TFDQuery;
    ds1: TDataSource;
    qrLogDID: TLongWordField;
    qrLogDTime: TDateTimeField;
    qrLogVMod: TShortintField;
    qrLogInoutMod: TShortintField;
    qrDevices: TFDQuery;
    ds2: TDataSource;
    pnl1: TPanel;
    dbnvgr1: TDBNavigator;
    dbmmoConfig: TDBMemo;
    qrDevicesID: TByteField;
    qrDevicesConfig: TStringField;
    procedure dbnvgr1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btSettingsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function Connect(s: string): Integer;
    function DownloaAndAddToQr: Boolean;
  public
    { Public declarations }
  end;

var
  DownloadF: TDownloadF;

implementation

{$R *.dfm}

procedure TDownloadF.bt1Click(Sender: TObject);
var
  i: Integer;
begin  
//load config from devises
  if qrDevices.Active = false then
    qrDevices.Open();
  qrDevices.First;
  if qrLog.active then
    qrLog.Close;
  qrLog.Open();
  try
    while qrDevices.Eof = false do
    begin
      i := Connect(qrDevicesConfig.AsString);
      if i <> 1 then
      begin
        ShowMessage('Device Connection Failed' + sLineBreak + 'Error Code :' + IntToStr(i));
        Break;
      end;
      DownloaAndAddToQr();
    end;
  finally
      //save qr

  end;
end;

procedure TDownloadF.btSettingsClick(Sender: TObject);
begin
  pnl1.Visible := not (pnl1.Visible);

end;

function TDownloadF.Connect(s: string): Integer;
var
  st: tstrings;
  mt: Integer;
begin
  st := TStringList.Create;
  try
    st.Text := s;
    mt := StrToIntDef(st.Values['Type'], 0);
  finally
    st.Free;
  end;
end;

procedure TDownloadF.dbnvgr1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = TNavigateBtn.nbApplyUpdates then
  begin
    qrDevices.ApplyUpdates();
    pnl1.Hide;
  end;
end;

function TDownloadF.DownloaAndAddToQr: Boolean;
begin
  Result := false;
  try

  finally
    Result := true;
  end;
end;

procedure TDownloadF.FormCreate(Sender: TObject);
begin
  if qrDevices.Active = false then
    qrDevices.Open();
end;

procedure TDownloadF.FormShow(Sender: TObject);
begin
  pnl1.Hide;
end;

end.

