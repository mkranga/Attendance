object MainF: TMainF
  Left = 0
  Top = 0
  Caption = 'SSERP - 2.0'
  ClientHeight = 788
  ClientWidth = 1604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShortCut = FormShortCut
  PixelsPerInch = 96
  TextHeight = 18
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 99
    Height = 788
    Align = alLeft
    BevelKind = bkFlat
    BevelOuter = bvNone
    BorderWidth = 3
    TabOrder = 0
    object btProf: TSpeedButton
      Left = 3
      Top = 3
      Width = 89
      Height = 40
      Align = alTop
      Caption = '&Profile'
      OnClick = btProfClick
      ExplicitLeft = 0
      ExplicitTop = -5
      ExplicitWidth = 87
    end
    object btexit: TSpeedButton
      Left = 3
      Top = 741
      Width = 89
      Height = 40
      Align = alBottom
      Caption = 'Exit'
      OnClick = btexitClick
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 87
    end
    object btSettings: TSpeedButton
      Left = 3
      Top = 683
      Width = 89
      Height = 40
      Align = alBottom
      Caption = 'Settings'
      OnClick = btSettingsClick
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 87
    end
    object SpeedButton3: TSpeedButton
      Left = 3
      Top = 141
      Width = 89
      Height = 40
      Align = alTop
      Caption = 'Report'
      OnClick = SpeedButton3Click
      ExplicitLeft = 2
      ExplicitTop = 223
    end
    object btTypeDef: TSpeedButton
      Left = 3
      Top = 643
      Width = 89
      Height = 40
      Align = alBottom
      Caption = 'Types'
      OnClick = btTypeDefClick
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 87
    end
    object lbl3: TLabel
      Left = 3
      Top = 723
      Width = 89
      Height = 18
      Align = alBottom
      ExplicitWidth = 5
    end
    object lbl4: TLabel
      Left = 3
      Top = 123
      Width = 89
      Height = 18
      Align = alTop
      ExplicitWidth = 5
    end
    object btPayment: TSpeedButton
      Left = 3
      Top = 83
      Width = 89
      Height = 40
      Hint = 'Attendance & homework'
      Align = alTop
      Caption = 'Payroll'
      OnClick = btPaymentClick
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 87
    end
    object btAtt3: TSpeedButton
      Left = 3
      Top = 43
      Width = 89
      Height = 40
      Hint = 'Attendance & homework'
      Align = alTop
      Caption = 'Attendance'
      OnClick = btAttClick
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 87
    end
  end
  object pnlProfile: TPanel
    Left = 99
    Top = 0
    Width = 992
    Height = 788
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 583
      Width = 16
      Height = 18
      Caption = 'ID'
    end
    object Label2: TLabel
      Left = 24
      Top = 79
      Width = 33
      Height = 18
      Caption = 'Code'
      FocusControl = dbedtcode
    end
    object Label3: TLabel
      Left = 24
      Top = 135
      Width = 64
      Height = 18
      Caption = 'Full Name'
      FocusControl = dbedtfull_name
    end
    object Label4: TLabel
      Left = 24
      Top = 191
      Width = 78
      Height = 18
      Caption = 'Short Name'
      FocusControl = dbedtName_with_Initial
    end
    object Label6: TLabel
      Left = 364
      Top = 302
      Width = 30
      Height = 18
      Caption = 'DOB'
    end
    object Label7: TLabel
      Left = 364
      Top = 583
      Width = 87
      Height = 18
      Caption = 'Created Date'
      FocusControl = dbedtJoin_Date
    end
    object Label8: TLabel
      Left = 24
      Top = 527
      Width = 52
      Height = 18
      Caption = 'Address'
      FocusControl = dbedtAddressId
    end
    object Label9: TLabel
      Left = 24
      Top = 359
      Width = 59
      Height = 18
      Caption = 'Category'
    end
    object Label10: TLabel
      Left = 364
      Top = 358
      Width = 39
      Height = 18
      Caption = 'Group'
    end
    object Label11: TLabel
      Left = 24
      Top = 303
      Width = 41
      Height = 18
      Caption = 'Status'
    end
    object Label12: TLabel
      Left = 364
      Top = 79
      Width = 57
      Height = 18
      Caption = 'NIC / PP'
      FocusControl = dbedtnic_no
    end
    object Label5: TLabel
      Left = 24
      Top = 247
      Width = 20
      Height = 18
      Caption = 'Tel'
      FocusControl = dbedtcontact
    end
    object Label13: TLabel
      Left = 364
      Top = 246
      Width = 33
      Height = 18
      Caption = 'Email'
      FocusControl = dbedtmail
    end
    object Label14: TLabel
      Left = 24
      Top = 415
      Width = 71
      Height = 18
      Caption = 'Form A No'
      FocusControl = dbedtForm_A_Number
    end
    object Label15: TLabel
      Left = 364
      Top = 414
      Width = 76
      Height = 18
      Caption = 'Machine No'
      FocusControl = dbedtMachineNo
    end
    object Label16: TLabel
      Left = 24
      Top = 471
      Width = 47
      Height = 18
      Caption = 'Gender'
    end
    object imgpp: TImage
      Left = 688
      Top = 8
      Width = 289
      Height = 257
      Hint = 'd:\MyDoc\Projects\Github\CourseManagement\Res\logo.png'
      Center = True
      Stretch = True
      OnClick = imgppClick
    end
    object bt2: TSpeedButton
      Left = 296
      Top = 358
      Width = 32
      Height = 28
      Caption = '...'
      OnClick = bt2Click
    end
    object bt21: TSpeedButton
      Left = 639
      Top = 358
      Width = 32
      Height = 28
      Caption = '...'
      OnClick = bt21Click
    end
    object btfdbA: TSpeedButton
      Left = 905
      Top = 382
      Width = 32
      Height = 28
      Caption = '+'
      OnClick = btfdbAClick
    end
    object btfdbD: TSpeedButton
      Left = 943
      Top = 382
      Width = 32
      Height = 28
      Caption = '-'
      OnClick = btfdbDClick
    end
    object lbl5: TLabel
      Left = 364
      Top = 470
      Width = 66
      Height = 18
      Caption = 'Nationality'
    end
    object edSearchProf: TEdit
      Left = 16
      Top = 16
      Width = 207
      Height = 26
      TabOrder = 4
      Text = #55357#56590#65038' Search (F3)'
      OnDblClick = edSearchProfDblClick
      OnKeyDown = edSearchProfKeyDown
    end
    object dbedtcode: TDBEdit
      Left = 128
      Top = 75
      Width = 200
      Height = 26
      CharCase = ecUpperCase
      DataField = 'EMPNo'
      DataSource = ds1
      TabOrder = 5
      OnExit = DuplicateCheckOnExit
    end
    object dbedtfull_name: TDBEdit
      Left = 128
      Top = 131
      Width = 543
      Height = 26
      DataField = 'full_name'
      DataSource = ds1
      TabOrder = 7
    end
    object dbedtName_with_Initial: TDBEdit
      Left = 128
      Top = 187
      Width = 543
      Height = 26
      CharCase = ecUpperCase
      DataField = 'Name_with_Initial'
      DataSource = ds1
      TabOrder = 8
    end
    object dbedtJoin_Date: TDBEdit
      Left = 469
      Top = 579
      Width = 202
      Height = 26
      DataField = 'enterd_date'
      DataSource = ds1
      Enabled = False
      ReadOnly = True
      TabOrder = 23
    end
    object dbedtAddressId: TDBEdit
      Left = 128
      Top = 523
      Width = 543
      Height = 26
      DataField = 'AddressId'
      DataSource = ds1
      TabOrder = 21
    end
    object DBEdit1: TDBEdit
      Left = 128
      Top = 579
      Width = 200
      Height = 26
      DataField = 'id'
      DataSource = ds1
      Enabled = False
      ReadOnly = True
      TabOrder = 22
    end
    object dbedtnic_no: TDBEdit
      Left = 469
      Top = 75
      Width = 202
      Height = 26
      CharCase = ecUpperCase
      DataField = 'nic_no'
      DataSource = ds1
      TabOrder = 6
      OnExit = DuplicateCheckOnExit
    end
    object btnew: TBitBtn
      Left = 241
      Top = 8
      Width = 103
      Height = 40
      Caption = '&New'
      TabOrder = 0
      OnClick = btnewClick
    end
    object btedit: TBitBtn
      Left = 350
      Top = 8
      Width = 103
      Height = 40
      Caption = '&Edit'
      TabOrder = 1
      OnClick = bteditClick
    end
    object btsave: TBitBtn
      Left = 459
      Top = 8
      Width = 103
      Height = 40
      Caption = '&Save'
      TabOrder = 2
      OnClick = btsaveClick
    end
    object btdel: TBitBtn
      Left = 568
      Top = 8
      Width = 103
      Height = 40
      Caption = '&Delete'
      TabOrder = 3
      OnClick = btdelClick
    end
    object dbedtcontact: TDBEdit
      Left = 128
      Top = 243
      Width = 200
      Height = 26
      CharCase = ecUpperCase
      DataField = 'contact'
      DataSource = ds1
      TabOrder = 9
      OnExit = DuplicateCheckOnExit
    end
    object dbedtmail: TDBEdit
      Left = 469
      Top = 246
      Width = 202
      Height = 26
      DataField = 'mail'
      DataSource = ds1
      TabOrder = 10
      OnExit = DuplicateCheckOnExit
    end
    object dbedtForm_A_Number: TDBEdit
      Left = 128
      Top = 411
      Width = 200
      Height = 26
      DataField = 'Form_A_Number'
      DataSource = ds1
      TabOrder = 17
    end
    object dbedtMachineNo: TDBEdit
      Left = 469
      Top = 411
      Width = 202
      Height = 26
      DataField = 'MachineNo'
      DataSource = ds1
      TabOrder = 18
    end
    object JvDBDateEdit1: TJvDBDateEdit
      Left = 469
      Top = 299
      Width = 202
      Height = 26
      DataField = 'birth_date'
      DataSource = ds1
      ShowNullDate = False
      TabOrder = 13
    end
    object cbstatus: TJvDBComboBox
      Left = 128
      Top = 299
      Width = 200
      Height = 26
      DataField = 'Active'
      DataSource = ds1
      Items.Strings = (
        'Inactive'
        'Active'
        'Suspend')
      TabOrder = 12
      Values.Strings = (
        '0'
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object cbcat: TJvDBComboBox
      Left = 128
      Top = 359
      Width = 171
      Height = 26
      DataField = 'Catagary'
      DataSource = ds1
      Items.Strings = (
        'Inactive'
        'Active'
        'Suspend')
      TabOrder = 14
      Values.Strings = (
        '0'
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object cbG: TJvDBComboBox
      Left = 469
      Top = 359
      Width = 171
      Height = 26
      DataField = 'EmGroup'
      DataSource = ds1
      Items.Strings = (
        'Inactive'
        'Active'
        'Suspend')
      TabOrder = 15
      Values.Strings = (
        '0'
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object dgFileDB: TDBGrid
      Left = 688
      Top = 271
      Width = 289
      Height = 105
      TabStop = False
      DataSource = dsfiledb
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DocType'
          Title.Alignment = taCenter
          Title.Caption = 'Doc Type'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FName'
          Title.Alignment = taCenter
          Title.Caption = 'Path'
          Width = 150
          Visible = True
        end>
    end
    object cbDocType: TJvDBComboBox
      Left = 688
      Top = 382
      Width = 211
      Height = 26
      DataField = 'DocType'
      DataSource = dsfiledb
      Items.Strings = (
        'Inactive'
        'Active'
        'Suspend')
      TabOrder = 16
      TabStop = False
      Values.Strings = (
        '0'
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object cbGender: TJvDBComboBox
      Left = 128
      Top = 467
      Width = 200
      Height = 26
      DataField = 'gender'
      DataSource = ds1
      Items.Strings = (
        'Inactive'
        'Active'
        'Suspend')
      TabOrder = 19
      Values.Strings = (
        '0'
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object cbn: TJvDBComboBox
      Left = 469
      Top = 467
      Width = 202
      Height = 26
      DataField = 'nationality'
      DataSource = ds1
      Items.Strings = (
        'Inactive'
        'Active'
        'Suspend')
      TabOrder = 20
      Values.Strings = (
        '0'
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  object qrP: TFDQuery
    CachedUpdates = True
    Connection = DataM.Con1
    SQL.Strings = (
      'SELECT * FROM empmaster'
      'where id=:id')
    Left = 824
    Top = 112
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Value = '0'
      end>
    object qrPID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrPfull_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'full_name'
      Origin = 'full_name'
      Size = 255
    end
    object qrPgender: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'gender'
      Origin = 'gender'
      Size = 10
    end
    object qrPnic_no: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nic_no'
      Origin = 'nic_no'
      Size = 50
    end
    object qrPbirth_date: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'birth_date'
      Origin = 'birth_date'
    end
    object qrPnationality: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nationality'
      Origin = 'nationality'
      Size = 10
    end
    object qrPreligion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'religion'
      Origin = 'religion'
      Size = 10
    end
    object qrPcontact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contact'
      Origin = 'contact'
      Size = 50
    end
    object qrPAddressId: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AddressId'
      Origin = 'AddressId'
      Size = 50
    end
    object qrPenterd_date: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'enterd_date'
      Origin = 'enterd_date'
    end
    object qrPName_with_Initial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Name_with_Initial'
      Origin = 'Name_with_Initial'
      Size = 255
    end
    object qrPDepartment: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Department'
      Origin = 'Department'
      Size = 10
    end
    object qrPCatagary: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Catagary'
      Origin = 'Catagary'
      Size = 10
    end
    object qrPEmGroup: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EmGroup'
      Origin = 'EmGroup'
      Size = 10
    end
    object qrPEMPNo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPNo'
      Origin = 'EMPNo'
      Size = 50
    end
    object qrPJoin_Date: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Join_Date'
      Origin = 'Join_Date'
    end
    object qrPEmployee_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Employee_type'
      Origin = 'Employee_type'
      Size = 5
    end
    object qrPForm_A_Number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Form_A_Number'
      Origin = 'Form_A_Number'
      Size = 50
    end
    object qrPActive: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'Active'
      Origin = 'Active'
    end
    object qrPmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = 'mail'
      Size = 255
    end
    object qrPShift: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Shift'
      Origin = 'Shift'
      Size = 50
    end
    object qrPMachineNo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MachineNo'
      Origin = 'MachineNo'
    end
    object qrPImageID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ImageID'
      Origin = 'ImageID'
    end
  end
  object ds1: TDataSource
    AutoEdit = False
    DataSet = qrP
    OnStateChange = ds1StateChange
    Left = 873
    Top = 112
  end
  object qrLinkedDtl: TFDQuery
    Connection = DataM.Con1
    SQL.Strings = (
      'SELECT * FROM profile'
      'where code=:code')
    Left = 832
    Top = 168
    ParamData = <
      item
        Name = 'CODE'
        DataType = ftString
        ParamType = ptInput
        Value = ' '
      end>
  end
  object qrFileDB: TFDQuery
    Connection = DataM.Con1
    SQL.Strings = (
      'SELECT * FROM filedb'
      'where linkid=:linkid')
    Left = 832
    Top = 216
    ParamData = <
      item
        Name = 'LINKID'
        ArrayType = atTable
        DataType = ftString
        ParamType = ptInput
      end>
    object qrFileDBID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrFileDBDoc: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Doc'
      Origin = 'Doc'
    end
    object qrFileDBFName: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FName'
      Origin = 'FName'
      Size = 250
    end
    object qrFileDBlinkid: TIntegerField
      FieldName = 'linkid'
      Origin = 'linkid'
      Required = True
    end
    object qrFileDBDocType: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DocType'
      Origin = 'DocType'
      Size = 5
    end
  end
  object dsfiledb: TDataSource
    AutoEdit = False
    DataSet = qrFileDB
    Left = 873
    Top = 216
  end
end
