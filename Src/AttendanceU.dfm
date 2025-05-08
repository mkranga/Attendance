inherited AttendanceF: TAttendanceF
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeable
  Caption = 'Attendance'
  ClientHeight = 655
  ClientWidth = 1183
  WindowState = wsMaximized
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  ExplicitWidth = 1209
  ExplicitHeight = 704
  TextHeight = 16
  object pnl1: TPanel [1]
    Left = 1075
    Top = 43
    Width = 108
    Height = 612
    Align = alRight
    TabOrder = 3
    object btAdvance: TJvArrowButton
      AlignWithMargins = True
      Left = 4
      Top = 521
      Width = 100
      Height = 41
      Align = alBottom
      DropDown = popAdv
      DropOnButtonClick = True
      Caption = 'Advance'
      Flat = True
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -12
      FillFont.Name = 'Segoe UI'
      FillFont.Style = []
      ExplicitTop = 567
    end
    object btn5: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 146
      Width = 100
      Height = 35
      Align = alTop
      Caption = 'Process'
      TabOrder = 4
      OnClick = btn5Click
    end
    object btdownload: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 100
      Height = 35
      Align = alTop
      Caption = 'Download'
      TabOrder = 0
      OnClick = btdownloadClick
    end
    object dped: TJvDateEdit
      AlignWithMargins = True
      Left = 4
      Top = 75
      Width = 100
      Height = 24
      Date = 45749.000000000000000000
      DateFormat = 'YY-MM-DD'
      Align = alTop
      ShowNullDate = False
      TabOrder = 2
    end
    object dpSt: TJvDateEdit
      AlignWithMargins = True
      Left = 4
      Top = 45
      Width = 100
      Height = 24
      Date = 45748.000000000000000000
      DateFormat = 'YY-MM-DD'
      Align = alTop
      ShowNullDate = False
      TabOrder = 1
    end
    object btLog3: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 187
      Width = 100
      Height = 35
      Align = alTop
      Caption = 'Log'
      TabOrder = 5
      OnClick = btLogClick
    end
    object btn6: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 105
      Width = 100
      Height = 35
      Align = alTop
      Caption = 'OK'
      TabOrder = 3
      OnClick = btnOkClick
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 568
      Width = 100
      Height = 40
      Align = alBottom
      Caption = 'Close (ESC)'
      TabOrder = 8
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 228
      Width = 100
      Height = 35
      Align = alTop
      Caption = 'Brakes'
      TabOrder = 6
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 269
      Width = 100
      Height = 35
      Align = alTop
      Caption = 'Reports'
      TabOrder = 7
      OnClick = BitBtn3Click
      ExplicitLeft = 6
      ExplicitTop = 303
    end
  end
  object dgatt: TJvDBGrid [2]
    Left = 0
    Top = 43
    Width = 1075
    Height = 612
    Align = alClient
    DataSource = ds1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    PopupMenu = DataM.pmExport
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
        FieldName = 'MachineNo'
        Title.Alignment = taCenter
        Title.Caption = 'M NO'
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
        FieldName = 'ShiftDate'
        Title.Alignment = taCenter
        Title.Caption = 'Shift Date'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShiftIn'
        Title.Alignment = taCenter
        Title.Caption = 'S In'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShiftOut'
        Title.Alignment = taCenter
        Title.Caption = 'S Out'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WorkingDate'
        Title.Alignment = taCenter
        Title.Caption = 'Work Date'
        Visible = False
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
        Title.Caption = 'Early OT'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShortLV'
        Title.Alignment = taCenter
        Title.Caption = 'Early LV'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalHrs'
        Title.Alignment = taCenter
        Title.Caption = 'Total Hrs'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOL'
        Title.Alignment = taCenter
        Title.Caption = 'TLoss'
        Width = 53
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
      AlignWithMargins = True
      Left = 1079
      Top = 4
      Width = 100
      Height = 35
      Align = alRight
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
      Width = 207
      Height = 24
      DataField = 'WrdOut'
      DataSource = ds1
      TabOrder = 3
    end
    object btEditCancel: TBitBtn
      AlignWithMargins = True
      Left = 973
      Top = 4
      Width = 100
      Height = 35
      Align = alRight
      Caption = 'Cancel'
      TabOrder = 0
      Visible = False
      OnClick = btEditCancelClick
    end
  end
  object pnllog: TPanel [4]
    Left = 656
    Top = 64
    Width = 410
    Height = 602
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 4
    Visible = False
    object dgLog: TJvDBGrid
      Left = 1
      Top = 1
      Width = 408
      Height = 600
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
          Title.Caption = 'InOutMod'
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
  object pnlAttProcReport: TPanel [5]
    Left = 370
    Top = 161
    Width = 442
    Height = 334
    TabOrder = 5
    Visible = False
    object dgAttProcReport: TJvDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 434
      Height = 326
      Align = alClient
      DataSource = ds2
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
          FieldName = 'empno'
          Title.Alignment = taCenter
          Title.Caption = 'EMP No'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Title.Alignment = taCenter
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Note'
          Title.Alignment = taCenter
          Width = 130
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 411
      Top = 6
      Width = 25
      Height = 25
      Caption = 'X'
      TabOrder = 1
      OnClick = btCloseProcREportClick
    end
  end
  inherited qrMain: TFDQuery
    SQL.Strings = (
      
        'SELECT * FROM attdtl a WHERE a.ShiftDate BETWEEN :st AND :ed  or' +
        'der by a. empno,shiftdate')
    Top = 104
    ParamData = <
      item
        Name = 'ST'
        DataType = ftDate
        ParamType = ptInput
        Value = 45748d
      end
      item
        Name = 'ED'
        DataType = ftDate
        ParamType = ptInput
        Value = 45750d
      end>
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
      DisplayFormat = 'HH:nn'
    end
    object qrMainWrdOut: TDateTimeField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      FieldName = 'WrdOut'
      Origin = 'WrdOut'
      DisplayFormat = 'HH:nn'
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
    object qrMainID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object qrMainMachineNo: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'MachineNo'
      Origin = 'MachineNo'
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
  object spProcAttDtl: TFDStoredProc
    AfterOpen = spProcAttDtlAfterOpen
    Connection = DataM.Con1
    ResourceOptions.AssignedValues = [rvCmdExecMode, rvCmdExecTimeout]
    ResourceOptions.CmdExecMode = amCancelDialog
    ResourceOptions.CmdExecTimeout = 60000
    StoredProcName = 'sserp.ProcAttDtl'
    Left = 888
    Top = 376
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
  object popAdv: TPopupMenu
    Left = 896
    Top = 304
    object mniShift1: TMenuItem
      Caption = 'Shift'
      OnClick = mniShift1Click
    end
    object mniRoster1: TMenuItem
      Caption = 'Roster'
      OnClick = mniRoster1Click
    end
    object Holidays1: TMenuItem
      Caption = 'Holidays'
      OnClick = Holidays1Click
    end
  end
  object ds2: TDataSource
    AutoEdit = False
    DataSet = spProcAttDtl
    Left = 944
    Top = 376
  end
  object excDlg1: TFDGUIxAsyncExecuteDialog
    Provider = 'Forms'
    Caption = 'Working'
    CancelCaption = '&Cancel'
    Left = 328
    Top = 256
  end
end
