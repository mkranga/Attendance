{*******************************************************}
{                                                       }
{       CM                                              }
{                                                       }
{       Copyright (C) 2023 Lion TS                      }
{                                                       }
{*******************************************************}

//Class : d:\MyDoc\Projects\Github\CourseManagement\Src\AttendanceU
//Developer : Ranga
//Date : 02/07/2023 1:11:50 PM
//Note :
{
}
/// <summary>
///       record course attendance
///select class will load assigned pids
/// can enter st time and ed time
/// can add notes/homework
/// </summary>
unit AttendanceU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  DataFormTPLU, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, sqlspanelu, Vcl.DBCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  Vcl.Menus, JvgExportComponents, JvDBGridExport, JvComponentBase, JvExDBGrids,
  JvDBGrid;

type
  TAttendanceF = class(TDataFormTPL)
    pnl1: TPanel;
    dgatt: TJvDBGrid;
    ds3: TDataSource;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btdownload: TBitBtn;
    dped: TJvDateEdit;
    dpSt: TJvDateEdit;
    pnllog: TPanel;
    dgLog: TJvDBGrid;
    qrLog: TFDQuery;
    spProc: TFDStoredProc;
    qrMainID: TFDAutoIncField;
    qrMainMachineNo: TStringField;
    qrMainEMPNo: TStringField;
    qrMainWorkingDate: TDateField;
    qrMainWrdIn: TDateTimeField;
    qrMainWrdOut: TDateTimeField;
    qrMainShiftDate: TDateField;
    qrMainShiftIn: TDateTimeField;
    qrMainShiftOut: TDateTimeField;
    qrMainLate: TTimeField;
    qrMainOT: TTimeField;
    qrMainOTR: TTimeField;
    qrMainEarlyOT: TTimeField;
    qrMainShortLV: TTimeField;
    qrMainTotalHrs: TTimeField;
    qrMainTOL: TTimeField;
    qrMainHType: TStringField;
    pnl2: TPanel;
    btEditSave: TBitBtn;
    btLog3: TBitBtn;
    lbl1: TLabel;
    dbedtWrdIn: TDBEdit;
    lbl2: TLabel;
    dbedtWrdIn1: TDBEdit;
    qrLogDID: TLongWordField;
    qrLogDTime: TDateTimeField;
    qrLogVMod: TShortintField;
    qrLogInoutMod: TShortintField;
    btLog1: TBitBtn;
    btn6: TBitBtn;
    btEditCancel: TBitBtn;
    procedure cbb1Change(Sender: TObject);
    procedure btLogClick(Sender: TObject);
    procedure btLog1Click(Sender: TObject);
    procedure ds1StateChange(Sender: TObject);
    procedure btEditSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btdownloadClick(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btEditCancelClick(Sender: TObject);
  private
    cbb1Vals: TStrings;
    cbb2Vals: tstrings;
    cbb3Vals: tstrings;
    sp1: TSQLSPanel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AttendanceF: TAttendanceF;

implementation

uses
  DataU, InputMemoU, downloadU, shiftu;

{$R *.dfm}

procedure TAttendanceF.btdownloadClick(Sender: TObject);
begin
  inherited;
  if Assigned(DownloadF) = False then
    DownloadF := tDownloadF.Create(nil);
  DownloadF.ShowModal
end;

procedure TAttendanceF.btEditCancelClick(Sender: TObject);
begin
  inherited;
  qrMain.Cancel;
end;

procedure TAttendanceF.btEditSaveClick(Sender: TObject);
begin
  inherited;
  if qrMain.State = dsEdit then
    qrMain.Post
  else
  begin
    qrMain.edit;
    qrMainWorkingDate.Value := qrMainShiftDate.Value;
    qrMainWrdIn.Value := qrMainShiftIn.Value;
    qrMainWrdOut.Value := qrMainShiftOut.Value;
  end;
end;

procedure TAttendanceF.btLog1Click(Sender: TObject);
begin
  inherited;
  pnllog.Hide;
end;

procedure TAttendanceF.btLogClick(Sender: TObject);
begin
  inherited;
  if pnllog.Visible then
  begin
    pnllog.Visible := False;
    exit;
  end;
  if pnllog.Visible = false then
    pnllog.show;

  qrLog.Close;
  qrLog.ParamByName('st').Value := dpst.Date;
  qrLog.ParamByName('ed').Value := dped.Date;
  qrlog.open;

end;

procedure TAttendanceF.btn4Click(Sender: TObject);
begin
  inherited;
  if Assigned(shiftF) = false then
    ShiftF := TShiftF.Create(self);
  ShiftF.ShowModal;
end;

procedure TAttendanceF.btn5Click(Sender: TObject);
begin
  inherited;
  spProc.ParamByName('st').Value := dpSt.Date;
  spProc.ParamByName('ed').Value := dped.Date;
  spProc.ExecProc;
end;

procedure TAttendanceF.btn6Click(Sender: TObject);
begin
  inherited;
  if qrMain.Active then
    qrMain.Close;
  qrMain.ParamByName('st').Value := dpSt.Date;
  qrMain.ParamByName('ed').Value := dped.Date;
  qrMain.Open();
end;

procedure TAttendanceF.cbb1Change(Sender: TObject);
begin
  inherited;
  if qrMain.Active then
    qrMain.Close;
end;

procedure TAttendanceF.ds1StateChange(Sender: TObject);
begin
  inherited;
  btEditCancel.Visible := (ds1.State = dsEdit);
  if ds1.State = dsEdit then
  begin
    btEditSave.Caption := 'Save'
  end
  else
  begin
    btEditSave.Caption := 'Edit';
  end;
end;

procedure TAttendanceF.FormCreate(Sender: TObject);
begin
  inherited;
  dpSt.Date := Now - 7;
  dped.Date := now;
end;

end.

