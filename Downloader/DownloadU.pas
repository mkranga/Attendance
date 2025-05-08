unit DownloadU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Grids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FPDLTU, Vcl.ComCtrls, Vcl.Mask;

type
  TDownloadF = class(TForm)
    bt1: TButton;
    bt2: TButton;
    mmo2: TMemo;
    con1: TFDConnection;
    qrDevices: TFDQuery;
    ds1: TDataSource;
    qrDevicesID: TByteField;
    qrDevicesConfig: TStringField;
    dbnvgr1: TDBNavigator;
    dbmmoConfig: TDBMemo;
    pb1: TProgressBar;
    dbedtConfig: TDBEdit;
    qrAttLog: TFDQuery;
    ds2: TDataSource;
    qrAttLogDID: TLongWordField;
    qrAttLogDTime: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure qrDevicesAfterInsert(DataSet: TDataSet);
    procedure dbnvgr1Click(Sender: TObject; Button: TNavigateBtn);
  private
    var
      dlt: TFPDownloader;
      fLogCount: UINT;
    { Private declarations }
    procedure lm(s: string);
    procedure onDlComplete();
    procedure onErr(e: Exception);
    procedure onMsg(Msg: Integer);
    procedure Save2Db();
    procedure Anim(start: Boolean = True);
  public
    { Public declarations }
  end;

var
  DownloadF: TDownloadF;

implementation

{$R *.dfm}

procedure TDownloadF.Anim(start: Boolean);
begin
  pb1.Visible := start;
//  pb1.StepIt;
  if start then
    pb1.State := TProgressBarState.pbsNormal
  else
    pb1.State := TProgressBarState.pbsPaused;
end;

procedure TDownloadF.bt1Click(Sender: TObject);
begin
  qrDevices.First;
  //start animation
  Anim(true);
  if qrAttLog.Active = False then
    qrAttLog.Active := True;
  onDlComplete;
end;

procedure TDownloadF.bt2Click(Sender: TObject);
begin
//stop thread if running
//save any downloaded data
  Anim(false);
  Close;
end;

procedure TDownloadF.dbnvgr1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = TNavigateBtn.nbPost then
  begin
    lm('Testing Connection');
    lm(TFPDownloader.ConnectTest(qrDevicesConfig.Text));
  end;
end;

procedure TDownloadF.FormCreate(Sender: TObject);
var
  st: TStrings;
begin
  qrDevices.Open();
  st := TStringList.Create;
  try
//st.LoadFromFile('settings.ini');
  finally

    st.free;
  end;

end;

procedure TDownloadF.lm(s: string);
begin
  mmo2.Lines.Append(s);
end;

procedure TDownloadF.onDlComplete;
begin
  Save2Db;

  if qrDevices.eof then
  begin
  //save
    qrAttLog.ApplyUpdates();
    Anim(False);
    lm('Finalized');
    Exit;
  end;

  lm('Starting : ' + qrDevicesID.AsString);
  lm('Config : ' + qrDevicesConfig.AsString);
  dlt := TFPDownloader.Create(qrDevicesConfig.AsString, onDlComplete, onmsg, onErr);
  qrDevices.Next;
end;

procedure TDownloadF.onErr(e: Exception);
begin
//stop thread
//show err MSG
  lm('Error : ' + e.Message);
  Anim(False);
end;

procedure TDownloadF.onMsg(Msg: Integer);
begin
  lm('MSG : ' + IntToStr(Msg));
end;

procedure TDownloadF.qrDevicesAfterInsert(DataSet: TDataSet);
begin
  dbmmoConfig.Lines.CommaText := 'Protocall=1,MachineNo=1,IpAddress=192.168.1.224,NetPort=5005,TimeOut=5000,ProtocolType=0,NetPassword=0,License=1253,DeviceType=3,Active=1,{DeviceType= 0=dtFKAttend/1=dtUSeries/2=dtCMSeries/3=dtSBXP}';

end;

procedure TDownloadF.Save2Db;
begin
//lock
//add to qr
//clear and unlock
//post msg to save
end;

end.

