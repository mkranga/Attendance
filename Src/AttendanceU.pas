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
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataFormTPLU,
  FireDAC.Stan.Param, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, sqlspanelu, Vcl.DBCtrls, JvExMask,
  JvToolEdit, Vcl.Menus, JvgExportComponents, JvDBGridExport, JvComponentBase, JvExDBGrids, JvDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  JvExControls, JvArrowButton, FireDAC.UI.Intf, FireDAC.VCLUI.Async, FireDAC.Comp.UI;

type
  TAttendanceF = class(TDataFormTPL)
    pnl1: TPanel;
    dgatt: TJvDBGrid;
    ds3: TDataSource;
    btn5: TBitBtn;
    btdownload: TBitBtn;
    dped: TJvDateEdit;
    dpSt: TJvDateEdit;
    pnllog: TPanel;
    dgLog: TJvDBGrid;
    qrLog: TFDQuery;
    spProcAttDtl: TFDStoredProc;
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
    popAdv: TPopupMenu;
    mniRoster1: TMenuItem;
    mniShift1: TMenuItem;
    btAdvance: TJvArrowButton;
    ds2: TDataSource;
    pnlAttProcReport: TPanel;
    dgAttProcReport: TJvDBGrid;
    excDlg1: TFDGUIxAsyncExecuteDialog;
    Button1: TButton;
    BitBtn1: TBitBtn;
    Holidays1: TMenuItem;
    BitBtn2: TBitBtn;
    qrMainID: TFDAutoIncField;
    qrMainMachineNo: TLongWordField;
    BitBtn3: TBitBtn;
    procedure cbb1Change(Sender: TObject);
    procedure btLogClick(Sender: TObject);
    procedure btLog1Click(Sender: TObject);
    procedure ds1StateChange(Sender: TObject);
    procedure btEditSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btdownloadClick(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btEditCancelClick(Sender: TObject);
    procedure mniShift1Click(Sender: TObject);
    procedure mniRoster1Click(Sender: TObject);
    procedure btCloseProcREportClick(Sender: TObject);
    procedure spProcAttDtlAfterOpen(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure Holidays1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    cbb1Vals: TStrings;
    cbb2Vals: tstrings;
    cbb3Vals: tstrings;
    sp1: TSQLSPanel;
    { Private declarations }
    procedure ShowAttProcReport(Hide: Boolean = False);
  public
    { Public declarations }
  end;

var
  AttendanceF: TAttendanceF;

implementation

uses
  downloadU, ShiftAndRosterU, System.Math, System.DateUtils, datau, BrakeU,
  ReportsU;

{$R *.dfm}

procedure TAttendanceF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TAttendanceF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if Assigned(Brakef) = false then
    BrakeF := TBrakeF.Create(self);
  brakef.ShowModal;
end;

procedure TAttendanceF.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if Assigned(ReportsF) = False then
    ReportsF := TReportsF.Create(Application.MainForm);
  ReportsF.ShowModal;
end;

procedure TAttendanceF.btCloseProcREportClick(Sender: TObject);
begin
  inherited;
  ShowAttProcReport(true);
end;

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
  begin
    qrMainLate.Value := ifthen(qrMainWrdIn.Value > qrMainShiftIn.Value, qrMainWrdIn.Value - qrMainShiftIn.Value, 0);
    qrMainOT.Value := ifthen(qrMainWrdOut.Value > qrMainShiftOut.Value, qrMainWrdOut.Value - qrMainShiftOut.Value, 0);
    qrMainOTR.Value := ifthen(MinuteOf(qrMainOT.Value) > 25, 30, 0);
    qrMainEarlyOT.Value := ifthen(qrMainWrdIn.Value < qrMainShiftIn.Value, qrMainShiftIn.Value - qrMainWrdIn.Value, 0);
    qrMainShortLV.Value := ifthen(qrMainWrdOut.Value < qrMainShiftOut.Value, qrMainShiftOut.Value - qrMainWrdout.Value, 0);
    qrMainTotalHrs.Value := ifthen((qrMainWrdIn.IsNull = false) and (qrMainWrdOut.IsNull = false), qrMainWrdOut.Value - qrMainWrdin.Value, 0);
    qrMainTOL.Value := ifthen(qrMainTotalHrs.Value < (qrMainShiftOut.Value - qrMainShiftIn.Value), (qrMainShiftOut.Value - qrMainShiftIn.Value) -
      qrMainTotalHrs.Value, 0);

    qrMain.Post;
  end
  else
  begin
    qrMain.edit;
    qrMainWorkingDate.Value := qrMainShiftDate.Value;
    if qrMainWrdIn.Value < 1 then
      qrMainWrdIn.Value := qrMainShiftIn.Value;
    if qrMainWrdOut.Value < 1 then
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

  if qrLog.Active and (qrLog.ParamByName('st').AsDate = dpst.Date) and (qrLog.ParamByName('ed').AsDate = dped.Date) then
  begin
    //
  end
  else
  begin
    qrLog.Close;
    qrLog.ParamByName('st').AsDate := dpst.Date;
    qrLog.ParamByName('ed').AsDate := dped.Date;
    qrlog.open;
  end;
  if qrMain.Active = false then
    exit;
  qrlog.Filtered := false;
  qrlog.Filter := 'did' + '=' + qrMainMachineNo.AsString;
  qrlog.Filtered := True;
end;

procedure TAttendanceF.btn5Click(Sender: TObject);
begin
  inherited;
  if spProcAttDtl.active then
    spProcAttDtl.Close;

  spProcAttDtl.ParamByName('st').Value := dpSt.Date;
  spProcAttDtl.ParamByName('ed').Value := dped.Date;
  spProcAttDtl.open;
end;

procedure TAttendanceF.btnOkClick(Sender: TObject);
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
  dpSt.Date := IncDay(date - 3);
  dped.Date := date;
end;

procedure TAttendanceF.Holidays1Click(Sender: TObject);
begin
  inherited;
  if Assigned(ShiftAndRosterF) = false then
    ShiftAndRosterF := tShiftAndRosterF.Create(self);
  ShiftAndRosterF.ShowA(2, true);

end;

procedure TAttendanceF.mniRoster1Click(Sender: TObject);
begin
  inherited;
  if Assigned(ShiftAndRosterF) = false then
    ShiftAndRosterF := tShiftAndRosterF.Create(self);
  ShiftAndRosterF.ShowA(1, true);
end;

procedure TAttendanceF.mniShift1Click(Sender: TObject);
begin
  inherited;
  if Assigned(ShiftAndRosterF) = false then
    ShiftAndRosterF := tShiftAndRosterF.Create(self);
  ShiftAndRosterF.ShowA(0, true);
end;

procedure TAttendanceF.ShowAttProcReport(Hide: Boolean);
begin
  if Hide then
  begin
    spProcAttDtl.Close;
    pnlAttProcReport.Visible := false;
  end
  else
  begin
    if spProcAttDtl.RecordCount < 1 then
      exit;
    pnlAttProcReport.Visible := True;
  end;
end;

procedure TAttendanceF.spProcAttDtlAfterOpen(DataSet: TDataSet);
begin
  inherited;
//showIssues List
  if spProcAttDtl.RecordCount > 0 then
    ShowAttProcReport();

end;

end.

