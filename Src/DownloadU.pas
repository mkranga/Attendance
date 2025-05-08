unit DownloadU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.DBCtrls, Vcl.ExtCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Buttons;

type
  TFPType = (ftNone, ftEasy);

type
  TDownloadF = class(TForm)
    pb1: TProgressBar;
    mmo1: TMemo;
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
    Panel1: TPanel;
    bt1: TButton;
    btImport: TButton;
    btSettings: TButton;
    procedure dbnvgr1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btSettingsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btImportClick(Sender: TObject);
  private
    { Private declarations }
    function Connect(s: string): Integer;
    function DownloaAndAddToQr: Boolean;
    procedure LogMsg(s: string);
  public
    { Public declarations }
  end;

var
  DownloadF: TDownloadF;

implementation

uses
  datau;
{$R *.dfm}

procedure TDownloadF.bt1Click(Sender: TObject);
var
  i: Integer;
begin
//load config from devises
  pnl1.Visible := false;
  //calland wait for downloader (param=dl full file path+name  ,config file path base64
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

procedure TDownloadF.btImportClick(Sender: TObject);
var
  st: tstrings;
  s: string;
  I: Integer;
  ar: TArray<string>;
begin
  pnl1.Visible := false;
  s := datam.OpenDialog();
  if s = '' then
    exit;
  LogMsg('Starting Import');
  if qrLog.Active = false then
    qrlog.Open;
  st := TStringList.Create;
  qrLog.DisableControls;
  try

    st.LoadFromFile(s);
    st.Text := StringReplace(st.Text, '"', '', [rfReplaceAll]);
    st.Text := StringReplace(st.Text, '/', '-', [rfReplaceAll]);
    LogMsg('Total Lines ' + inttostr(st.count));
    for I := 0 to st.Count - 1 do
    begin
      ar := st.Strings[I].Split([',']);
      if Length(ar) < 3 then
      begin
        LogMsg('Skipping line => ' + st.Strings[I]);
        Continue;
      end;
      qrlog.Append;
      qrLogDID.Value := ar[0].Trim.ToInteger;
      qrLogDTime.Value := StrToDateTime(ar[1].Trim, FormatSettings);
      qrLogInoutMod.Value := StrToInt(ar[2].Trim);
      qrlog.Post;
    end;
    LogMsg('Saving Data');
    datam.ApplyUpdate(qrlog);
    LogMsg('Import Complete!');
  finally
    qrLog.EnableControls;
    st.Free;
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
    //ident type
    //load module
    //connect

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

procedure TDownloadF.LogMsg(s: string);
begin
  mmo1.Lines.Add(DateTimeToStr(now()) + ' ' + s);
end;

end.

