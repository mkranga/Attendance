unit BrakeU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataFormTPLU,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ExtCtrls, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, JvExMask, JvToolEdit, System.DateUtils;

type
  TBrakeF = class(TDataFormTPL)
    Panel1: TPanel;
    dg1: TJvDBGrid;
    qrMainID: TFDAutoIncField;
    qrMainPID: TIntegerField;
    qrMainDID: TIntegerField;
    qrMainDateA: TDateField;
    qrMainT1: TDateTimeField;
    qrMainT2: TDateTimeField;
    qrMainT3: TDateTimeField;
    qrMainT4: TDateTimeField;
    qrMainT5: TDateTimeField;
    qrMainT6: TDateTimeField;
    qrMainT7: TDateTimeField;
    qrMainT8: TDateTimeField;
    qrMainT9: TDateTimeField;
    qrMainT10: TDateTimeField;
    qrMainB1: TIntegerField;
    qrMainB2: TIntegerField;
    qrMainB3: TIntegerField;
    qrMainB4: TIntegerField;
    qrMainB5: TIntegerField;
    qrMainEMPNo: TStringField;
    qrMainName_with_Initial: TStringField;
    qrMainCatagary: TStringField;
    qrMainEmGroup: TStringField;
    dpSt: TJvDateEdit;
    dped: TJvDateEdit;
    btOk: TBitBtn;
    btn5: TBitBtn;
    btLog3: TBitBtn;
    btSave: TBitBtn;
    spProcBreakes: TFDStoredProc;
    pnllog: TPanel;
    dgLog: TJvDBGrid;
    btLog1: TBitBtn;
    qrLog: TFDQuery;
    qrLogDID: TLongWordField;
    qrLogDTime: TDateTimeField;
    qrLogVMod: TShortintField;
    qrLogInoutMod: TShortintField;
    ds3: TDataSource;
    qrMainTotalA: TIntegerField;
    procedure btSaveClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure spProcBreakesAfterExecute(DataSet: TFDDataSet);
    procedure btLog3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrMainCalcFields(DataSet: TDataSet);
    procedure qrMainAfterEdit(DataSet: TDataSet);
    procedure qrMainAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BrakeF: TBrakeF;

implementation

{$R *.dfm}

uses
  DataU;

procedure TBrakeF.btSaveClick(Sender: TObject);
begin
  inherited;
  if qrmain.active = false then
    exit;
  datam.ApplyUpdate(qrMain);
end;

procedure TBrakeF.btLog3Click(Sender: TObject);
begin
  inherited;
  pnllog.Visible := not (pnllog.Visible);

end;

procedure TBrakeF.btn5Click(Sender: TObject);
begin
  inherited;
  if spProcBreakes.active then
    spProcBreakes.Close;

  spProcBreakes.ParamByName('st').Value := dpSt.Date;
  spProcBreakes.ParamByName('ed').Value := dped.Date;
  spProcBreakes.ExecProc;
end;

procedure TBrakeF.btOkClick(Sender: TObject);
begin
  inherited;
  if qrmain.active then
    qrmain.close;
  qrmain.ParamByName('st').value := dpSt.date;
  qrmain.ParamByName('ed').value := dped.date;
  qrmain.open;
  qrlog.Active := false;
end;

procedure TBrakeF.FormCreate(Sender: TObject);
begin
  AccessLevel := 1;
 inherited;
  pnllog.Visible := false;
  btsave.Enabled:=false;
  end;

procedure TBrakeF.qrMainAfterEdit(DataSet: TDataSet);
begin
  inherited;
  btSave.Enabled := true;
end;

procedure TBrakeF.qrMainAfterOpen(DataSet: TDataSet);
begin
  inherited;
  btsave.Enabled := false;
end;

procedure TBrakeF.qrMainCalcFields(DataSet: TDataSet);
var
  brakes, tot: Integer;
begin
  inherited;

  if (qrMainT2.Value > 0) and (qrMainT1.Value > 0) then
    qrMainB1.Value := MinutesBetween(qrMainT2.AsDateTime, qrMainT1.AsDateTime);
  if (qrMainT4.Value > 0) and (qrMainT3.Value > 0) then
    qrMainB2.Value := MinutesBetween(qrMainT4.AsDateTime, qrMainT3.AsDateTime);
  if (qrMainT6.Value > 0) and (qrMainT5.Value > 0) then
    qrMainB3.Value := MinutesBetween(qrMainT6.AsDateTime, qrMainT5.AsDateTime);
  if (qrMainT8.Value > 0) and (qrMainT7.Value > 0) then
    qrMainB4.Value := MinutesBetween(qrMainT8.AsDateTime, qrMainT7.AsDateTime);
  if (qrMainT10.Value > 0) and (qrMainT9.Value > 0) then
    qrMainB5.Value := MinutesBetween(qrMainT10.AsDateTime, qrMainT9.AsDateTime);
//  qrMainBrakes.Value := 0;
  qrMainTotalA.Value := qrMainB1.AsInteger + qrMainB2.AsInteger + qrMainB3.AsInteger + qrMainB4.AsInteger + qrMainB5.AsInteger;

end;

procedure TBrakeF.spProcBreakesAfterExecute(DataSet: TFDDataSet);
begin
  inherited;
  btOkClick(nil);
end;

end.

