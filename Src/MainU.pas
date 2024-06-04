unit MainU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, SQLSPanelU,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, DataU,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, JvExMask, JvToolEdit, JvDBControls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, JvComponentBase, JvAppHotKey,
  SettingsU, System.Actions, Vcl.ActnList, Vcl.Imaging.pngimage;

type
  TMainF = class(TForm)
    Panel1: TPanel;
    btProf: TSpeedButton;
    btexit: TSpeedButton;
    btSettings: TSpeedButton;
    SpeedButton3: TSpeedButton;
    pnlProfile: TPanel;
    edSearchProf: TEdit;
    qrP: TFDQuery;
    ds1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    dbedtcode: TDBEdit;
    Label3: TLabel;
    dbedtfull_name: TDBEdit;
    Label4: TLabel;
    dbedtName_with_Initial: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    dbedtJoin_Date: TDBEdit;
    Label8: TLabel;
    dbedtAddressId: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    Label12: TLabel;
    dbedtnic_no: TDBEdit;
    btnew: TBitBtn;
    btedit: TBitBtn;
    btsave: TBitBtn;
    btdel: TBitBtn;
    Label5: TLabel;
    dbedtcontact: TDBEdit;
    Label13: TLabel;
    dbedtmail: TDBEdit;
    Label14: TLabel;
    dbedtForm_A_Number: TDBEdit;
    Label15: TLabel;
    dbedtMachineNo: TDBEdit;
    Label16: TLabel;
    imgpp: TImage;
    qrLinkedDtl: TFDQuery;
    JvDBDateEdit1: TJvDBDateEdit;
    bt2: TSpeedButton;
    bt21: TSpeedButton;
    cbstatus: TJvDBComboBox;
    cbcat: TJvDBComboBox;
    cbG: TJvDBComboBox;
    btTypeDef: TSpeedButton;
    qrFileDB: TFDQuery;
    dgFileDB: TDBGrid;
    dsfiledb: TDataSource;
    btfdbA: TSpeedButton;
    btfdbD: TSpeedButton;
    cbDocType: TJvDBComboBox;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    btPayment: TSpeedButton;
    btAtt3: TSpeedButton;
    qrPID: TFDAutoIncField;
    qrPfull_name: TStringField;
    qrPgender: TStringField;
    qrPnic_no: TStringField;
    qrPbirth_date: TDateTimeField;
    qrPnationality: TStringField;
    qrPreligion: TStringField;
    qrPcontact: TStringField;
    qrPAddressId: TStringField;
    qrPenterd_date: TSQLTimeStampField;
    qrPName_with_Initial: TStringField;
    qrPDepartment: TStringField;
    qrPCatagary: TStringField;
    qrPEmGroup: TStringField;
    qrPEMPNo: TStringField;
    qrPJoin_Date: TDateTimeField;
    qrPEmployee_type: TStringField;
    qrPForm_A_Number: TStringField;
    qrPActive: TShortintField;
    qrPmail: TStringField;
    qrPShift: TStringField;
    qrPMachineNo: TIntegerField;
    qrPImageID: TIntegerField;
    qrFileDBID: TFDAutoIncField;
    qrFileDBDoc: TBlobField;
    qrFileDBFName: TStringField;
    qrFileDBlinkid: TIntegerField;
    qrFileDBDocType: TStringField;
    cbGender: TJvDBComboBox;
    cbn: TJvDBComboBox;
    lbl1: TLabel;
    cbShift: TJvDBComboBox;
    imgLogo: TImage;
    btPos: TSpeedButton;
    btn1: TSpeedButton;
    procedure btexitClick(Sender: TObject);
    procedure btProfClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edSearchProfKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure imgppClick(Sender: TObject);
    procedure btnewClick(Sender: TObject);
    procedure bteditClick(Sender: TObject);
    procedure btsaveClick(Sender: TObject);
    procedure btdelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt2Click(Sender: TObject);
    procedure bt21Click(Sender: TObject);
    procedure btTypeDefClick(Sender: TObject);
    procedure btfdbDClick(Sender: TObject);
    procedure btfdbAClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btSettingsClick(Sender: TObject);
    procedure bt3Click(Sender: TObject);
    procedure edSearchProfDblClick(Sender: TObject);
    procedure btCMSGClick(Sender: TObject);
    procedure ds1StateChange(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure dbedtgenderDblClick(Sender: TObject);
    procedure btcdPnlCloseClick(Sender: TObject);
    procedure DuplicateCheckOnExit(Sender: TObject);
    procedure btAttClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btPaymentClick(Sender: TObject);
    procedure btPosClick(Sender: TObject);
    procedure imgLogoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    spnl: TSQLSPanel;
    spn2: TSQLSPanel;
    spn3: TSQLSPanel;
    si: TStrings; // import text
    DocTypes: TStrings;
    { Private declarations }
    function DuplicateCheck(fld, Val: string): string;
  public
    { Public declarations }
  end;

var
  MainF: TMainF;

implementation

uses
  JclShell, InputMemoU, TypeDefU, System.DateUtils, CourseSetupU, SettingsFU,
  CommonU, AttendanceU, reportsu, paymentu, posu, StockInU, aboutu;
{$R *.dfm}

procedure TMainF.btn1Click(Sender: TObject);
begin
  if not (Assigned(StockInF)) then
    StockInF := TStockInF.Create(self);
  StockInF.Show;
end;

procedure TMainF.btnewClick(Sender: TObject);
begin
  if qrp.Active = false then
    qrp.Open();
  if (qrP.State <> dsBrowse) then
    exit;
  qrP.Append;
  qrPActive.Value := 1;
  dbedtcode.SetFocus;
end;

procedure TMainF.bteditClick(Sender: TObject);
begin
  if (qrP.State <> dsBrowse) then
    exit;
  qrP.Edit;
end;

procedure TMainF.btsaveClick(Sender: TObject);
var
  s: string;
begin
  if (qrP.State in [dsInsert, dsEdit]) then
    qrP.Post;
  // validate
  datam.qr1.SQL.Text := 'select p.empno, p.full_name from empmaster p where p.empno=:empno or p.NIC_no=:nic';
  datam.qr1.ParamByName('empno').Value := qrPEMPNo.Value;
  datam.qr1.ParamByName('nic').Value := qrPnic_no.Value;
  datam.qr1.Open;
  if datam.qr1.RecordCount > 0 then
  begin
    s := 'Duplicate empno or NIC/PP';
  end;

  if s <> '' then
  begin
    Application.MessageBox(PWideChar('Cannot Save !' + sLineBreak + s), 'Save', MB_OK + MB_ICONSTOP);
    qrP.Edit;
    exit;
  end;
  // prepair
  if qrP.UpdatesPending then
  begin
    qrP.ApplyUpdates();
    qrp.CommitUpdates;
  end;
  if (qrFileDB.State in [dsInsert, dsEdit]) then
    qrFileDB.Post;
  if qrFileDB.UpdatesPending then
  begin
    qrFileDB.ApplyUpdates();
    qrFileDB.CommitUpdates;
  end;
end;

procedure TMainF.btdelClick(Sender: TObject);
begin
  if qrP.State = dsBrowse then
  begin
    if Application.MessageBox('Are you sure?', 'Delete', MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      datam.qr1.ExecSQL('insert into empmasterbk select *,0 from empmaster where id=' + qrPid.AsString);
      qrP.Delete;
      // qrP.ApplyUpdates();
      edSearchProf.SetFocus;
    end;
  end
  else
    qrP.Cancel;
end;

procedure TMainF.bt21Click(Sender: TObject);
begin
  if TypeDefF.ShowMin('EG') then
    datam.TypedefFillCB(cbG.Values, cbG.Items);
end;

procedure TMainF.bt2Click(Sender: TObject);
begin
  if TypeDefF.ShowMin('EC') then
    datam.TypedefFillCB(cbcat.Values, cbcat.Items);
end;

procedure TMainF.bt3Click(Sender: TObject);
begin
  if qrP.State <> dsBrowse then
  begin
    ShowMessage('Profile state invalid. Save First!');
    exit;
  end;
  if spn2.Exec() <> mrok then
    exit;
  datam.qr1.ExecSQL('INSERT INTO cgstd  (gid, stdid)	VALUES (:gid, :sid)', [spn2.FieldByName('id').AsInteger, qrPid.AsInteger]);
  ShowMessage('Done!');
  // refresh list
end;

procedure TMainF.btAttClick(Sender: TObject);
begin
  if Assigned(attendancef) = false then
    attendancef := TAttendanceF.Create(self);
  attendancef.ShowModal;

end;

procedure TMainF.btcdPnlCloseClick(Sender: TObject);
begin
  pnlProfile.Visible := false;
end;

procedure TMainF.btCMSGClick(Sender: TObject);
var
  _st: TStrings;
  _res: TResourceStream;
  I: Integer;
  s, tkn, v: string;
begin
  if qrP.State <> dsBrowse then
    exit;
  _st := TStringList.Create;
  try
    if FileExists(APPPath + 'res\CMSG.tpl') = false then
    begin
      _res := TResourceStream.Create(HInstance, 'CMSGtpl', RT_RCDATA);
      _st.LoadFromStream(_res);
      _st.SaveToFile(APPPath + 'res\CMSG.tpl');
      _res.Free;
    end
    else
      _st.LoadFromFile(stt.getvalue(skConfirmMsgPath, APPPath + 'res\CMSG.tpl').AsString, TEncoding.UTF8);
    // replace tokens
    s := _st.Text;
    for I := 0 to 50 do
    begin
      tkn := GetToken(s);
      if tkn = '' then
        Break;
      if tkn[2] = '_' then
      begin
        if SameText(tkn, '{_date}') then
          v := DateToStr(date)
        else if SameText(tkn, '{_time}') then
          v := TimeToStr(time)
        else
          ShowMessage('unknown : ' + tkn);
      end
      else
        v := qrP.FieldByName(Copy(tkn, 2, Length(tkn) - 2)).AsString;
      s := StringReplace(s, tkn, v, [rfReplaceAll, rfIgnoreCase]);
    end;

    TInputMemoF.ShowA('Cinfirm MSG', 'Supported Format tags' + sLineBreak + '{_date}{_time},id, empno, name, namef, Tel, Email, dob, NIC, cat1, cat2,' + sLineBreak + ' active, address, payment, epin, Sponsor, cdate,_courseName,_groupCode', s, 0, 0, 700, 600);
  finally
    _st.Free;
  end;
  //
end;

procedure TMainF.btexitClick(Sender: TObject);
begin
  Close;
end;

procedure TMainF.btfdbAClick(Sender: TObject);
begin
  qrFileDB.Append;
  qrFileDBLinkid.Value := qrPid.Value;
end;

procedure TMainF.btfdbDClick(Sender: TObject);
begin
  qrFileDB.Delete;
end;

procedure TMainF.btPaymentClick(Sender: TObject);
begin
  if Assigned(PaymentF) = false then
    PaymentF := tpaymentf.create(Self);
  PaymentF.ShowModal()
end;

procedure TMainF.btPosClick(Sender: TObject);
begin
  if Assigned(POSF) = false then
    posf := tposf.Create(self);
  posf.Show;
end;

procedure TMainF.btProfClick(Sender: TObject);
var
  qr: TFDQuery;
begin
  if pnlProfile.Visible then
    exit;
  SlideMe(pnlProfile, 0);
  edSearchProf.SetFocus;
  //load shift's
  qr := DataM.SQLExcec('select * from shift group by sname');
  try
    while qr.Eof = false do
    begin
      cbShift.Items.Add(qr.FieldByName('sname').Value);
      qr.Next;
    end;
  finally
    qr.Free;

  end;
end;

procedure TMainF.btSettingsClick(Sender: TObject);
begin
  if SettingsF = nil then
    SettingsF := TSettingsF.Create(self);
  SettingsF.ShowModal;
end;

procedure TMainF.btTypeDefClick(Sender: TObject);
begin
  TypeDefF.reset;
  TypeDefF.ShowModal;
  if TypeDefF.Tag = 0 then
    exit;

  JclShell.ShellExecEx(Application.ExeName, IntToStr(SecondOf(now) * SecondOf(now)));
  Application.Terminate;
end;

procedure TMainF.DuplicateCheckOnExit(Sender: TObject);
var
  s: string;
begin
  if not (qrP.State in [dsEdit, dsInsert]) then
    exit;
  s := DuplicateCheck(TDBEdit(Sender).DataField, TDBEdit(Sender).Text);
  if s <> '' then
    ShowMessage('Possible Duplicate : ' + sLineBreak + s);
end;

procedure TMainF.dbedtgenderDblClick(Sender: TObject);
begin
//  if not (qrP.State in [dsEdit, dsInsert]) then
//    exit;
//  if spnl.Exec() <> mrok then
//    exit;
//  qrPSponsor.Value := spnl.FieldByName('code').AsString;
//  //
end;

procedure TMainF.ds1StateChange(Sender: TObject);
begin
  btnew.Enabled := (qrP.State = dsBrowse);
  btedit.Enabled := (qrP.State = dsBrowse);
  btsave.Enabled := (qrP.State in [dsEdit, dsInsert]);
  btdel.Enabled := (qrP.State = dsBrowse);
  btfdbA.Enabled := (qrP.State = dsBrowse);
  btfdbD.Enabled := (qrP.State = dsBrowse);
  btdel.Caption := iif(qrP.State = dsBrowse, 'Delete', 'Cancel');
end;

function TMainF.DuplicateCheck(fld, Val: string): string;
begin
  Result := '';
  if Trim(Val) = '' then
    exit;

  datam.SQLExcec('select p.empno, p.full_name from empmaster p where p.' + fld + '=' + QuotedStr(Val), datam.qr1);
  if datam.qr1.RecordCount > 0 then
    Result := datam.qr1.FieldByName('empno').AsString + ' : ' + datam.qr1.FieldByName('name').AsString;

end;

procedure TMainF.edSearchProfDblClick(Sender: TObject);
begin
  if spnl.Exec(edSearchProf) <> mrok then
    exit;
  edSearchProf.Text := spnl.FieldByName('empno').AsString;
  if qrP.Active then
    qrP.Close;
  qrP.ParamByName('id').Value := spnl.FieldByName('id').AsString;
  qrP.Open;

  if qrFileDB.Active then
    qrFileDB.Close;
  qrFileDB.ParamByName('linkid').Value := qrPid.AsInteger;
  qrFileDB.Open;
end;

procedure TMainF.edSearchProfKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  edSearchProfDblClick(nil);
  Key := 0;

end;

procedure TMainF.FormActivate(Sender: TObject);
begin
  if assigned(POSF) = False then
    btPosClick(nil);
end;

procedure TMainF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  si.Free;
  DocTypes.Free;
  if Assigned(POSF) then
    FreeAndNil(posf);
end;

procedure TMainF.FormCreate(Sender: TObject);
begin
  spnl := TSQLSPanel.Create(self);
  spnl.Setup([-1, 60, 130, 100, 100], 'SELECT e.ID,e.EMPNo, e.full_name, e.contact,e.nic_no from empmaster e where e.empno like :empno or e.full_name like :namef or e.contact like :tel or  e.nic_no like :nic or id like :id', Point(600, 400), datam.Con1);
//  qrP.Open;
  datam.TypedefFillCB(cbcat.Values, cbcat.Items, 'EC');
  datam.TypedefFillCB(cbG.Values, cbG.Items, 'EG');
  datam.TypedefFillCB(cbDocType.Values, cbDocType.Items, 'DT');
  datam.TypedefFillCB(cbGender.Values, cbGender.Items, 'G');
  datam.TypedefFillCB(cbn.Values, cbn.Items, 'N');
  DocTypes := datam.GetTypedef(nil, 'DT');
  imgpp.Picture.Graphic := datam.img_logo;
  pnlProfile.Visible := false;

  //imgLogo.Picture.LoadFromFile(APPPath+'res\logo.ico');
  imgLogo.Stretch := true;
end;

procedure TMainF.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  Handled := true;
  case Msg.CharCode of
    VK_F3:
      edSearchProf.SetFocus;
  else
    Handled := false;
  end;
end;

procedure TMainF.imgLogoClick(Sender: TObject);
begin
  if Assigned(aboutf) = false then
    aboutf := taboutf.create(self);
  aboutf.show;
end;

procedure TMainF.imgppClick(Sender: TObject);
begin
  JclShell.ShellOpenAs(imgpp.Hint);
end;

procedure TMainF.SpeedButton1Click(Sender: TObject);
begin
  if Assigned(CourseSetupF) = false then
    CourseSetupF := TCourseSetupF.Create(self);
  CourseSetupF.ShowModal;
end;

procedure TMainF.SpeedButton3Click(Sender: TObject);
begin
  if Assigned(ReportsF) = False then
    ReportsF := TReportsF.Create(Self);
  ReportsF.ShowModal;
end;

end.

