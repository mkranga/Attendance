unit CourseSetupU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  DataFormTPLU, FireDAC.Stan.Param,

  Data.DB, Vcl.DBGrids,
  Vcl.StdCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, DataU,
  Vcl.ExtCtrls, SQLSPanelU, Vcl.ComCtrls, JvExComCtrls, JvDateTimePicker,
  JvDBDateTimePicker, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.Grids;

type
  TCourseSetupF = class(TDataFormTPL)
    dgSession: TDBGrid;
    dgStudents: TDBGrid;
    lbl1: TLabel;
    lbl11: TLabel;
    bt11: TSpeedButton;
    bt12: TSpeedButton;
    bt121: TSpeedButton;
    bt111: TSpeedButton;
    btSave: TBitBtn;
    cbb1: TComboBox;
    lbl2: TLabel;
    lbl21: TLabel;
    dgSession1: TDBGrid;
    bt122: TSpeedButton;
    bt112: TSpeedButton;
    bt123: TSpeedButton;
    qrStd: TFDQuery;
    ds11: TDataSource;
    qrSes: TFDQuery;
    ds12: TDataSource;
    qrMainid: TFDAutoIncField;
    qrMainCCode: TStringField;
    qrMainGPrefix: TStringField;
    qrMainDes: TStringField;
    mtrdMainSDate: TDateField;
    qrSesid: TFDAutoIncField;
    qrSesgid: TIntegerField;
    qrSessdt: TDateTimeField;
    qrStdcode: TStringField;
    qrStdname: TStringField;
    bt13: TSpeedButton;
    bt14: TSpeedButton;
    bt15: TSpeedButton;
    dp1: TDateTimePicker;
    dp2: TDateTimePicker;
    qrSesiid: TIntegerField;
    bt16: TSpeedButton;
    qrStdid: TFDAutoIncField;
    qrStdpid: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure bt123Click(Sender: TObject);
    procedure cbb1Select(Sender: TObject);
    procedure dgSession1CellClick(Column: TColumn);
    procedure btSaveClick(Sender: TObject);
    procedure dgSession1DblClick(Sender: TObject);
    procedure qrMainAfterInsert(DataSet: TDataSet);
    procedure bt13Click(Sender: TObject);
    procedure bt14Click(Sender: TObject);
    procedure bt15Click(Sender: TObject);
    procedure bt12Click(Sender: TObject);
    procedure bt11Click(Sender: TObject);
    procedure bt112Click(Sender: TObject);
    procedure bt111Click(Sender: TObject);
    procedure bt122Click(Sender: TObject);
    procedure bt121Click(Sender: TObject);
    procedure qrSesAfterInsert(DataSet: TDataSet);
    procedure bt16Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    cbb1Vals: tstrings;
    spnlStd: TSQLSPanel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CourseSetupF: TCourseSetupF;

implementation

uses
  TypeDefU;
{$R *.dfm}

procedure TCourseSetupF.bt111Click(Sender: TObject);
begin
  inherited;
  datam.qr1.ExecSQL('delete from  cgstd where id=' + qrStdid.AsString);
  qrStd.Delete;
end;

procedure TCourseSetupF.bt112Click(Sender: TObject);
begin
  inherited;
  qrSes.Delete;
end;

procedure TCourseSetupF.bt11Click(Sender: TObject);
begin
  inherited;
  qrMain.Delete;
end;

procedure TCourseSetupF.bt121Click(Sender: TObject);
begin
  inherited;
  if spnlStd.Exec() <> mrOk then
    exit;
  if qrStd.Locate('pid', spnlStd.FieldByName('id').AsInteger, []) then
    exit;

  datam.qr1.ExecSQL('INSERT INTO cgstd  (gid, stdid)	VALUES (:gid, :sid)', [qrMainid.AsInteger, spnlStd.FieldByName('id').AsInteger]);
  qrStd.DisableControls;
  try
    qrStd.Close;
    qrStd.Open;
  finally
    qrStd.EnableControls;
  end;
end;

procedure TCourseSetupF.bt122Click(Sender: TObject);
begin
  inherited;
  qrSes.Append;
  qrSessdt.AsDateTime := dp1.Date + dp2.Time;
end;

procedure TCourseSetupF.bt123Click(Sender: TObject);
begin
  inherited;
  if TypeDefF.ShowMin('CR') then
    DataM.TypedefFillCB(cbb1Vals, cbb1.Items);

end;

procedure TCourseSetupF.bt12Click(Sender: TObject);
begin
  inherited;
//  if qrMain.State = dsBrowse then
  qrMain.Append;
end;

procedure TCourseSetupF.bt13Click(Sender: TObject);
begin
  inherited;
  if qrMain.State = dsBrowse then
    qrMain.Edit;
end;

procedure TCourseSetupF.bt14Click(Sender: TObject);
begin
  inherited;
  if qrSes.State = dsBrowse then
    qrSes.Edit;

  qrSessdt.AsDateTime := dp1.Date + dp2.Time;

end;

procedure TCourseSetupF.bt15Click(Sender: TObject);
begin
  inherited;
  if qrStd.State = dsBrowse then
    qrStd.Edit;
end;

procedure TCourseSetupF.bt16Click(Sender: TObject);
begin
  inherited;
  if spnlStd.Exec() <> mrOk then
    Exit;
  if not (qrSes.state in [dsEdit, dsInsert]) then
    qrSes.Edit;
  qrSesiid.Value := spnlStd.FieldByName('id').AsInteger;
end;

procedure TCourseSetupF.btSaveClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if qrMain.State in [dsEdit, dsInsert] then
    qrMain.Post;
  if qrMain.UpdatesPending then
    qrMain.ApplyUpdates();
  if qrSes.State in [dsEdit, dsInsert] then
    qrSes.Post;
  if qrSes.UpdatesPending then
    i := qrSes.ApplyUpdates();
  if qrStd.State in [dsEdit, dsInsert] then
    qrStd.Post;
  if qrStd.UpdatesPending then
    qrStd.ApplyUpdates();

end;

procedure TCourseSetupF.cbb1Select(Sender: TObject);
begin
  inherited;
//  if qrMain.Active then
//    qrMain.Close;
  qrMain.Active := False;
  qrMain.ParamByName('ccode').Value := cbb1Vals[cbb1.ItemIndex];
  qrMain.Open;
end;

procedure TCourseSetupF.dgSession1CellClick(Column: TColumn);
begin
  inherited;
  if qrMain.State <> dsBrowse then
    exit;

//open qrstd and qr
  qrSes.Active := False;
  qrSes.ParamByName('gid').Value := qrMainid.Value;
  qrSes.Open;
  qrStd.Active := False;
  qrStd.ParamByName('gid').Value := qrMainid.Value;
  qrStd.Open;

end;

procedure TCourseSetupF.dgSession1DblClick(Sender: TObject);
begin
  inherited;
  bt13Click(nil);
end;

procedure TCourseSetupF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if qrMain.UpdatesPending or qrSes.UpdatesPending or qrStd.UpdatesPending then
    if Application.MessageBox('Un-Saved Modificatios exist!' + #13#10 + 'Save All?', 'Save Changes', MB_OKCANCEL + MB_ICONQUESTION) = mrOk then
    begin
      qrMain.ApplyUpdates();
      qrSes.ApplyUpdates();
      qrStd.ApplyUpdates();
    end;

end;

procedure TCourseSetupF.FormCreate(Sender: TObject);
begin
  inherited;
  cbb1Vals := TStringList.Create;
  DataM.TypedefFillCB(cbb1Vals, cbb1.Items, 'CR');
  spnlStd := TSQLSPanel.Create(self);
  spnlStd.Setup([-1, 80, 100, 100], 'select id,code, namef, tel,nic from profile where code like :code or namef like :namef or tel like :tel or  nic like :nic or id like :id', Point(600, 400), DataM.Con1);
  dp1.DateTime := now;
  dp2.DateTime := now;
end;

procedure TCourseSetupF.qrMainAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrMainCCode.Value := cbb1Vals[cbb1.ItemIndex];
end;

procedure TCourseSetupF.qrSesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrSesgid.Value := qrMainid.Value;
end;

end.

