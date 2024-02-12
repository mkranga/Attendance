unit PaymentU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  DataFormTPLU, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, SQLSPanelU,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, Vcl.ComCtrls, JvExComCtrls,
  JvDateTimePicker, JvDBDateTimePicker, JvExMask, JvToolEdit, JvDBControls,
  Vcl.Mask, Vcl.DBCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TPaymentF = class(TDataFormTPL)
    qrMainid: TFDAutoIncField;
    mtrdMainpdate: TDateField;
    qrMainpid: TIntegerField;
    qrMainval: TLongWordField;
    qrMaindes: TStringField;
    qrMaincat1: TStringField;
    qrMaincat2: TStringField;
    qrMaincdate: TSQLTimeStampField;
    JvDBGrid1: TJvDBGrid;
    ed1: TEdit;
    dbnvgr1: TDBNavigator;
    lbl1: TLabel;
    lbl2: TLabel;
    edval: TDBEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    btSave: TButton;
    dbcbcat2: TJvDBComboBox;
    dbcbcat1: TJvDBComboBox;
    dbmmodes: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure ed1KeyPress(Sender: TObject; var Key: Char);
    procedure qrMainBeforePost(DataSet: TDataSet);
  private
    sp1: TSQLSPanel;
    sp2: TSQLSPanel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaymentF: TPaymentF;

implementation

{$R *.dfm}

uses
  DataU;

procedure TPaymentF.btSaveClick(Sender: TObject);
begin
  inherited;
  if not (qrMain.State in [dsEdit, dsInsert]) then
    exit;
  qrMain.Post;
  qrMain.ApplyUpdates();
end;

procedure TPaymentF.ed1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if sp1.Exec(ed1) <> mrOk then
    Exit;
  ed1.Text := sp1.FieldByName('code').AsString;

  if qrMain.Active then
    qrMain.Close;
  qrMain.ParamByName('pid').Value := sp1.FieldByName('id').AsInteger;
  qrMain.open;

end;

procedure TPaymentF.FormCreate(Sender: TObject);
begin
  inherited;
  datam.TypedefFillCB(dbcbcat2.Values, dbcbcat2.Items, 'PT');
  datam.TypedefFillCB(dbcbcat1.Values, dbcbcat1.Items, 'PC');

  sp1 := TSQLSPanel.Create(self);
  sp1.Setup([-1, 80, 100, 100], 'select id,code, namef, tel,nic from profile where code like :code or namef like :namef or tel like :tel or  nic like :nic or id like :id', Point(600, 400), datam.Con1);
  sp2 := TSQLSPanel.Create(self);
  sp2.Setup([-1, 50, 50, 200, 70], 'select * from cgroup where ccode like :ccode or des like :des or gprefix like :gp order by id desc ', Point(600, 400), datam.Con1);
end;

procedure TPaymentF.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(sp1);
  FreeAndNil(sp2);
end;

procedure TPaymentF.qrMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  qrMainpid.Value := qrMain.ParamByName('pid').Value;

end;

end.

