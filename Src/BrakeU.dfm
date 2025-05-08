inherited BrakeF: TBrakeF
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeable
  Caption = 'Brakes'
  ClientWidth = 1204
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  ExplicitWidth = 1230
  TextHeight = 16
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 1204
    Height = 41
    Align = alTop
    TabOrder = 1
    object dpSt: TJvDateEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 100
      Height = 33
      Date = 45748.000000000000000000
      DateFormat = 'YY-MM-DD'
      Align = alLeft
      ShowNullDate = False
      TabOrder = 0
      ExplicitLeft = -50
      ExplicitTop = 2
    end
    object dped: TJvDateEdit
      AlignWithMargins = True
      Left = 110
      Top = 4
      Width = 100
      Height = 33
      Date = 45749.000000000000000000
      DateFormat = 'YY-MM-DD'
      Align = alLeft
      ShowNullDate = False
      TabOrder = 1
    end
    object btOk: TBitBtn
      AlignWithMargins = True
      Left = 216
      Top = 4
      Width = 100
      Height = 33
      Align = alLeft
      Caption = 'OK'
      TabOrder = 2
      OnClick = btOkClick
    end
    object btn5: TBitBtn
      AlignWithMargins = True
      Left = 322
      Top = 4
      Width = 100
      Height = 33
      Align = alLeft
      Caption = 'Process'
      TabOrder = 3
      OnClick = btn5Click
    end
    object btLog3: TBitBtn
      AlignWithMargins = True
      Left = 428
      Top = 4
      Width = 100
      Height = 33
      Align = alLeft
      Caption = 'Log'
      TabOrder = 4
      Visible = False
      OnClick = btLog3Click
    end
    object btSave: TBitBtn
      AlignWithMargins = True
      Left = 534
      Top = 4
      Width = 100
      Height = 33
      Align = alLeft
      Caption = 'Save'
      TabOrder = 5
      OnClick = btSaveClick
    end
  end
  object dg1: TJvDBGrid [2]
    Left = 0
    Top = 41
    Width = 794
    Height = 602
    Align = alClient
    DataSource = ds1
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
    ReadOnlyCellColor = clWhitesmoke
    Columns = <
      item
        Expanded = False
        FieldName = 'DID'
        Title.Alignment = taCenter
        Title.Caption = 'MNO'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPNo'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name_with_Initial'
        Title.Alignment = taCenter
        Title.Caption = 'Name'
        Width = 182
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Catagary'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EmGroup'
        Title.Alignment = taCenter
        Title.Caption = 'Group'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DateA'
        Title.Alignment = taCenter
        Title.Caption = 'Date'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalA'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 42
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'T1'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'T2'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'B1'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'T3'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'T4'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'B2'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'T5'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'T6'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'B3'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'T7'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'T8'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'B4'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'T9'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'T10'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'B5'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end>
  end
  object pnllog: TPanel [3]
    Left = 794
    Top = 41
    Width = 410
    Height = 602
    Align = alRight
    TabOrder = 3
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
    end
  end
  inherited qrMain: TFDQuery
    AfterOpen = qrMainAfterOpen
    AfterEdit = qrMainAfterEdit
    OnCalcFields = qrMainCalcFields
    SQL.Strings = (
      
        'SELECT b.*,e.EMPNo,e.Name_with_Initial,e.Catagary,e.EmGroup FROM' +
        ' brakes b LEFT JOIN empmaster e ON b.PID=e.ID WHERE datea BETWEE' +
        'N :st  AND :ed ORDER BY pid,DATEa;'
      '')
    ParamData = <
      item
        Name = 'ST'
        DataType = ftDate
        ParamType = ptInput
        Value = 45717d
      end
      item
        Name = 'ED'
        DataType = ftDate
        ParamType = ptInput
        Value = 45726d
      end>
    object qrMainID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qrMainPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PID'
      Origin = 'PID'
      ReadOnly = True
    end
    object qrMainDID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DID'
      Origin = 'DID'
      ReadOnly = True
    end
    object qrMainDateA: TDateField
      FieldName = 'DateA'
      Origin = 'DateA'
      ReadOnly = True
      Required = True
    end
    object qrMainT1: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'T1'
      Origin = 'T1'
      DisplayFormat = 'hh:nn'
    end
    object qrMainT2: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'T2'
      Origin = 'T2'
      DisplayFormat = 'hh:nn'
    end
    object qrMainT3: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'T3'
      Origin = 'T3'
      DisplayFormat = 'hh:nn'
    end
    object qrMainT4: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'T4'
      Origin = 'T4'
      DisplayFormat = 'hh:nn'
    end
    object qrMainT5: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'T5'
      Origin = 'T5'
      DisplayFormat = 'hh:nn'
    end
    object qrMainT6: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'T6'
      Origin = 'T6'
      DisplayFormat = 'hh:nn'
    end
    object qrMainT7: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'T7'
      Origin = 'T7'
      DisplayFormat = 'hh:nn'
    end
    object qrMainT8: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'T8'
      Origin = 'T8'
      DisplayFormat = 'hh:nn'
    end
    object qrMainT9: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'T9'
      Origin = 'T9'
      DisplayFormat = 'hh:nn'
    end
    object qrMainT10: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'T10'
      Origin = 'T10'
      DisplayFormat = 'hh:nn'
    end
    object qrMainB1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'B1'
      ReadOnly = True
      Calculated = True
    end
    object qrMainB2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'B2'
      ReadOnly = True
      Calculated = True
    end
    object qrMainB3: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'B3'
      ReadOnly = True
      Calculated = True
    end
    object qrMainB4: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'B4'
      ReadOnly = True
      Calculated = True
    end
    object qrMainB5: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'B5'
      ReadOnly = True
      Calculated = True
    end
    object qrMainEMPNo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPNo'
      Origin = 'EMPNo'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qrMainName_with_Initial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Name_with_Initial'
      Origin = 'Name_with_Initial'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object qrMainCatagary: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Catagary'
      Origin = 'Catagary'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qrMainEmGroup: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EmGroup'
      Origin = 'EmGroup'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qrMainTotalA: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotalA'
      Calculated = True
    end
  end
  object spProcBreakes: TFDStoredProc
    AfterExecute = spProcBreakesAfterExecute
    Connection = DataM.Con1
    ResourceOptions.AssignedValues = [rvCmdExecMode, rvCmdExecTimeout]
    ResourceOptions.CmdExecMode = amCancelDialog
    ResourceOptions.CmdExecTimeout = 60000
    StoredProcName = 'sserp.ProcBreakes'
    Left = 888
    Top = 376
    ParamData = <
      item
        Position = 1
        Name = 'st'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ed'
        DataType = ftDate
        ParamType = ptInput
      end>
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
  object ds3: TDataSource
    DataSet = qrLog
    Left = 928
    Top = 224
  end
end
