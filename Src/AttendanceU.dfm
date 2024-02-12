inherited AttendanceF: TAttendanceF
  Caption = 'Attendance'
  ClientWidth = 1183
  OnCreate = FormCreate
  ExplicitWidth = 1199
  PixelsPerInch = 96
  TextHeight = 16
  object pnl1: TPanel [1]
    Left = 1074
    Top = 43
    Width = 109
    Height = 612
    Align = alRight
    TabOrder = 2
    ExplicitLeft = 1120
    ExplicitTop = 41
    ExplicitHeight = 614
    object btn4: TBitBtn
      Left = 1
      Top = 103
      Width = 107
      Height = 27
      Align = alTop
      Caption = 'Shift'
      TabOrder = 0
      ExplicitTop = 55
    end
    object btn5: TBitBtn
      Left = 1
      Top = 76
      Width = 107
      Height = 27
      Align = alTop
      Caption = 'Proccess'
      TabOrder = 1
      OnClick = btn5Click
      ExplicitTop = 28
    end
    object btdownload: TBitBtn
      Left = 1
      Top = 1
      Width = 107
      Height = 27
      Align = alTop
      Caption = 'Download'
      TabOrder = 2
      OnClick = btdownloadClick
    end
    object dped: TJvDateEdit
      Left = 1
      Top = 52
      Width = 107
      Height = 24
      Align = alTop
      ShowNullDate = False
      TabOrder = 3
      ExplicitTop = 49
    end
    object dpSt: TJvDateEdit
      Left = 1
      Top = 28
      Width = 107
      Height = 24
      Align = alTop
      ShowNullDate = False
      TabOrder = 4
      ExplicitLeft = 6
      ExplicitTop = 25
    end
    object btLog3: TBitBtn
      Left = 1
      Top = 130
      Width = 107
      Height = 27
      Align = alTop
      Caption = 'Log'
      TabOrder = 5
      OnClick = btLogClick
      ExplicitTop = 82
    end
  end
  object dgStudents: TDBGrid [2]
    Left = 0
    Top = 43
    Width = 1074
    Height = 612
    Align = alClient
    DataSource = ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DID'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPNo'
        Title.Alignment = taCenter
        Title.Caption = 'EMP No'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WorkingDate'
        Title.Alignment = taCenter
        Title.Caption = 'Work Date'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WrdIn'
        Title.Alignment = taCenter
        Title.Caption = 'In'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WrdOut'
        Title.Alignment = taCenter
        Title.Caption = 'Out'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShiftDate'
        Title.Alignment = taCenter
        Title.Caption = 'Shift Date'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShiftIn'
        Title.Alignment = taCenter
        Title.Caption = 'In'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShiftOut'
        Title.Alignment = taCenter
        Title.Caption = 'Out'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Late'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OT'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OTR'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EarlyOT'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShortLV'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalHrs'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOL'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HType'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end>
  end
  object pnl2: TPanel [3]
    Left = 0
    Top = 0
    Width = 1183
    Height = 43
    Align = alTop
    TabOrder = 4
    object lbl1: TLabel
      Left = 8
      Top = 12
      Width = 11
      Height = 16
      Caption = 'In'
    end
    object lbl2: TLabel
      Left = 296
      Top = 12
      Width = 20
      Height = 16
      Caption = 'Out'
    end
    object btEditSave: TBitBtn
      Left = 1104
      Top = 8
      Width = 71
      Height = 27
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btEditSaveClick
    end
    object dbedtWrdIn: TDBEdit
      Left = 40
      Top = 9
      Width = 201
      Height = 24
      DataField = 'WrdIn'
      DataSource = ds1
      TabOrder = 1
    end
    object dbedtWrdIn1: TDBEdit
      Left = 328
      Top = 9
      Width = 209
      Height = 24
      DataField = 'WrdOut'
      DataSource = ds1
      TabOrder = 2
    end
  end
  object pnllog: TPanel [4]
    Left = 570
    Top = 42
    Width = 504
    Height = 612
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 3
    ExplicitLeft = 616
    object dgLog: TDBGrid
      Left = 1
      Top = 1
      Width = 502
      Height = 610
      Align = alClient
      DataSource = ds3
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object btLog1: TBitBtn
      Left = 474
      Top = 3
      Width = 28
      Height = 27
      Caption = 'X'
      TabOrder = 1
      OnClick = btLog1Click
    end
  end
  inherited qrMain: TFDQuery
    SQL.Strings = (
      'SELECT * FROM attdtl a WHERE a.ShiftDate BETWEEN :st AND :ed')
    Top = 64
    ParamData = <
      item
        Name = 'ST'
        DataType = ftDate
        ParamType = ptInput
        Value = 36892d
      end
      item
        Name = 'ED'
        DataType = ftDate
        ParamType = ptInput
        Value = 36892d
      end>
    object qrMainID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrMainMachineNo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MachineNo'
      Origin = 'MachineNo'
      Size = 50
    end
    object qrMainEMPNo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPNo'
      Origin = 'EMPNo'
      Size = 50
    end
    object qrMainWorkingDate: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'WorkingDate'
      Origin = 'WorkingDate'
    end
    object qrMainWrdIn: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'WrdIn'
      Origin = 'WrdIn'
    end
    object qrMainWrdOut: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'WrdOut'
      Origin = 'WrdOut'
    end
    object qrMainShiftDate: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ShiftDate'
      Origin = 'ShiftDate'
    end
    object qrMainShiftIn: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ShiftIn'
      Origin = 'ShiftIn'
    end
    object qrMainShiftOut: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ShiftOut'
      Origin = 'ShiftOut'
    end
    object qrMainLate: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Late'
      Origin = 'Late'
    end
    object qrMainOT: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'OT'
      Origin = 'OT'
    end
    object qrMainOTR: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'OTR'
      Origin = 'OTR'
    end
    object qrMainEarlyOT: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'EarlyOT'
      Origin = 'EarlyOT'
    end
    object qrMainShortLV: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ShortLV'
      Origin = 'ShortLV'
    end
    object qrMainTotalHrs: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'TotalHrs'
      Origin = 'TotalHrs'
    end
    object qrMainTOL: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'TOL'
      Origin = 'TOL'
    end
    object qrMainHType: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'HType'
      Origin = 'HType'
      Size = 5
    end
  end
  inherited ds1: TDataSource
    AutoEdit = False
    OnStateChange = ds1StateChange
    Left = 928
    Top = 64
  end
  object ds3: TDataSource
    DataSet = qrLog
    Left = 928
    Top = 224
  end
  object qrLog: TFDQuery
    CachedUpdates = True
    Connection = DataM.Con1
    SQL.Strings = (
      'select * from attlog where dtime between :st and :ed')
    Left = 888
    Top = 224
    ParamData = <
      item
        Name = 'ST'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 36892d
      end
      item
        Name = 'ED'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 36892d
      end>
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pid'
      Origin = 'pid'
    end
    object StringField1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cid'
      Origin = 'cid'
      Size = 5
    end
    object IntegerField2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'gid'
      Origin = 'gid'
    end
    object IntegerField3: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'sid'
      Origin = 'sid'
    end
    object SQLTimeStampField1: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'st'
      Origin = 'st'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'ed'
      Origin = 'ed'
    end
  end
  object spProc: TFDStoredProc
    Connection = DataM.Con1
    StoredProcName = 'sserp.ProcAttDtl'
    Left = 896
    Top = 456
    ParamData = <
      item
        Position = 1
        Name = 'St'
        DataType = ftDate
        FDDataType = dtDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Ed'
        DataType = ftDate
        FDDataType = dtDate
        ParamType = ptInput
      end>
  end
end
