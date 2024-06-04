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
    TabOrder = 3
    object btn4: TBitBtn
      Left = 1
      Top = 130
      Width = 107
      Height = 27
      Align = alTop
      Caption = 'Shift'
      TabOrder = 5
      OnClick = btn4Click
    end
    object btn5: TBitBtn
      Left = 1
      Top = 28
      Width = 107
      Height = 27
      Align = alTop
      Caption = 'Proccess'
      TabOrder = 1
      OnClick = btn5Click
    end
    object btdownload: TBitBtn
      Left = 1
      Top = 1
      Width = 107
      Height = 27
      Align = alTop
      Caption = 'Download'
      TabOrder = 0
      OnClick = btdownloadClick
    end
    object dped: TJvDateEdit
      Left = 1
      Top = 79
      Width = 107
      Height = 24
      Align = alTop
      ShowNullDate = False
      TabOrder = 3
    end
    object dpSt: TJvDateEdit
      Left = 1
      Top = 55
      Width = 107
      Height = 24
      Align = alTop
      ShowNullDate = False
      TabOrder = 2
    end
    object btLog3: TBitBtn
      Left = 1
      Top = 157
      Width = 107
      Height = 27
      Align = alTop
      Caption = 'Log'
      TabOrder = 6
      OnClick = btLogClick
    end
    object btn6: TBitBtn
      Left = 1
      Top = 103
      Width = 107
      Height = 27
      Align = alTop
      Caption = 'OK'
      TabOrder = 4
      OnClick = btn6Click
    end
  end
  object dgatt: TJvDBGrid [2]
    Left = 0
    Top = 43
    Width = 1074
    Height = 612
    Align = alClient
    DataSource = ds1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 20
    TitleRowHeight = 20
    Columns = <
      item
        Expanded = False
        FieldName = 'DID'
        Title.Alignment = taCenter
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPNo'
        Title.Alignment = taCenter
        Title.Caption = 'EMP No'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WorkingDate'
        Title.Alignment = taCenter
        Title.Caption = 'Work Date'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WrdIn'
        Title.Alignment = taCenter
        Title.Caption = 'In'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WrdOut'
        Title.Alignment = taCenter
        Title.Caption = 'Out'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShiftDate'
        Title.Alignment = taCenter
        Title.Caption = 'Shift Date'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShiftIn'
        Title.Alignment = taCenter
        Title.Caption = 'In'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShiftOut'
        Title.Alignment = taCenter
        Title.Caption = 'Out'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Late'
        Title.Alignment = taCenter
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OT'
        Title.Alignment = taCenter
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OTR'
        Title.Alignment = taCenter
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EarlyOT'
        Title.Alignment = taCenter
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShortLV'
        Title.Alignment = taCenter
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalHrs'
        Title.Alignment = taCenter
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOL'
        Title.Alignment = taCenter
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HType'
        Title.Alignment = taCenter
        Width = 48
        Visible = True
      end>
  end
  object pnl2: TPanel [3]
    Left = 0
    Top = 0
    Width = 1183
    Height = 43
    Align = alTop
    TabOrder = 1
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
      Left = 1103
      Top = 7
      Width = 71
      Height = 30
      Caption = 'Edit'
      TabOrder = 1
      OnClick = btEditSaveClick
    end
    object dbedtWrdIn: TDBEdit
      Left = 40
      Top = 9
      Width = 201
      Height = 24
      DataField = 'WrdIn'
      DataSource = ds1
      TabOrder = 2
    end
    object dbedtWrdIn1: TDBEdit
      Left = 328
      Top = 9
      Width = 209
      Height = 24
      DataField = 'WrdOut'
      DataSource = ds1
      TabOrder = 3
    end
    object btEditCancel: TBitBtn
      Left = 1032
      Top = 7
      Width = 70
      Height = 30
      Caption = 'Cancel'
      TabOrder = 0
      Visible = False
      OnClick = btEditCancelClick
    end
  end
  object pnllog: TPanel [4]
    Left = 664
    Top = 64
    Width = 410
    Height = 590
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 4
    Visible = False
    object dgLog: TJvDBGrid
      Left = 1
      Top = 1
      Width = 408
      Height = 588
      Align = alClient
      DataSource = ds3
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      PopupMenu = DataM.pmExport
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 20
      TitleRowHeight = 20
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
          FieldName = 'DTime'
          Title.Alignment = taCenter
          Width = 154
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VMod'
          Title.Alignment = taCenter
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InoutMod'
          Title.Alignment = taCenter
          Width = 63
          Visible = True
        end>
    end
    object btLog1: TBitBtn
      Left = 362
      Top = 2
      Width = 29
      Height = 27
      Caption = 'X'
      TabOrder = 1
      OnClick = btLog1Click
    end
  end
  inherited qrMain: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT * FROM attdtl a WHERE a.ShiftDate BETWEEN :st AND :ed')
    Top = 104
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
        Value = 48214d
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
      DisplayFormat = 'yyyy-mm-dd'
    end
    object qrMainWrdIn: TDateTimeField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      FieldName = 'WrdIn'
      Origin = 'WrdIn'
      DisplayFormat = 'HH:M'
    end
    object qrMainWrdOut: TDateTimeField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      FieldName = 'WrdOut'
      Origin = 'WrdOut'
      DisplayFormat = 'HH:MM'
    end
    object qrMainShiftDate: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ShiftDate'
      Origin = 'ShiftDate'
      DisplayFormat = 'yyyy-mm-dd'
    end
    object qrMainShiftIn: TDateTimeField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      FieldName = 'ShiftIn'
      Origin = 'ShiftIn'
      DisplayFormat = 'HH:MM'
    end
    object qrMainShiftOut: TDateTimeField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      FieldName = 'ShiftOut'
      Origin = 'ShiftOut'
      DisplayFormat = 'HH:MM'
    end
    object qrMainLate: TTimeField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      FieldName = 'Late'
      Origin = 'Late'
      DisplayFormat = 'HH:MM'
    end
    object qrMainOT: TTimeField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      FieldName = 'OT'
      Origin = 'OT'
      DisplayFormat = 'HH:MM'
    end
    object qrMainOTR: TTimeField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      FieldName = 'OTR'
      Origin = 'OTR'
      DisplayFormat = 'HH:MM'
    end
    object qrMainEarlyOT: TTimeField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      FieldName = 'EarlyOT'
      Origin = 'EarlyOT'
      DisplayFormat = 'HH:MM'
    end
    object qrMainShortLV: TTimeField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      FieldName = 'ShortLV'
      Origin = 'ShortLV'
      DisplayFormat = 'HH:MM'
    end
    object qrMainTotalHrs: TTimeField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      FieldName = 'TotalHrs'
      Origin = 'TotalHrs'
      DisplayFormat = 'HH:MM'
    end
    object qrMainTOL: TTimeField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      FieldName = 'TOL'
      Origin = 'TOL'
      DisplayFormat = 'HH:MM'
    end
    object qrMainHType: TStringField
      Alignment = taCenter
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
    Top = 120
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
    object qrLogDID: TLongWordField
      FieldName = 'DID'
      Origin = 'DID'
      Required = True
    end
    object qrLogDTime: TDateTimeField
      FieldName = 'DTime'
      Origin = 'DTime'
      Required = True
      DisplayFormat = 'yyyy-mm-dd HH:MM'
    end
    object qrLogVMod: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'VMod'
      Origin = 'VMod'
    end
    object qrLogInoutMod: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'InoutMod'
      Origin = 'InoutMod'
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
