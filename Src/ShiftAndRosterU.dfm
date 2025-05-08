inherited ShiftAndRosterF: TShiftAndRosterF
  BorderStyle = bsSizeable
  Caption = 'Shift and Roster'
  ClientWidth = 1209
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  ExplicitWidth = 1235
  TextHeight = 16
  object pgc1: TPageControl [1]
    Left = 0
    Top = 0
    Width = 1209
    Height = 643
    ActivePage = tsHolidays
    Align = alClient
    TabOrder = 1
    object tsShift: TTabSheet
      Caption = 'Shift'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1201
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          AlignWithMargins = True
          Left = 9
          Top = 4
          Width = 26
          Height = 16
          Margins.Left = 8
          Align = alLeft
          Caption = 'Shift'
          Layout = tlCenter
        end
        object bt1: TButton
          AlignWithMargins = True
          Left = 1083
          Top = 4
          Width = 114
          Height = 33
          Align = alRight
          Caption = 'Save'
          TabOrder = 1
          OnClick = bt1Click
        end
        object cbShift: TComboBox
          Left = 48
          Top = 11
          Width = 145
          Height = 24
          TabOrder = 2
          OnSelect = cbShiftSelect
        end
        object btNewShift: TButton
          AlignWithMargins = True
          Left = 963
          Top = 4
          Width = 114
          Height = 33
          Align = alRight
          Caption = 'New Shift'
          TabOrder = 0
          OnClick = btNewShiftClick
        end
      end
      object dg1: TDBGrid
        Left = 0
        Top = 41
        Width = 1201
        Height = 571
        Align = alClient
        DataSource = ds3
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Sname'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Name'
            Width = 181
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SDay'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Day'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InTime'
            Title.Alignment = taCenter
            Title.Caption = 'In Time'
            Width = 134
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OutTime'
            Title.Alignment = taCenter
            Title.Caption = 'Out Time'
            Width = 133
            Visible = True
          end>
      end
    end
    object tsRoster: TTabSheet
      Caption = 'Roster'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1201
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          AlignWithMargins = True
          Left = 7
          Top = 4
          Width = 35
          Height = 16
          Margins.Left = 6
          Align = alLeft
          Caption = 'Month'
          Layout = tlCenter
        end
        object dpRMonth: TDateTimePicker
          AlignWithMargins = True
          Left = 48
          Top = 4
          Width = 121
          Height = 33
          Align = alLeft
          CalAlignment = dtaRight
          Date = 45771.000000000000000000
          Format = 'yyy-MM'
          Time = 0.532000624996726400
          TabOrder = 0
          OnChange = dpRMonthChange
        end
        object BitBtn1: TBitBtn
          AlignWithMargins = True
          Left = 175
          Top = 4
          Width = 75
          Height = 33
          Align = alLeft
          Caption = 'OK'
          Default = True
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BitBtn1Click
        end
        object btClone: TBitBtn
          AlignWithMargins = True
          Left = 256
          Top = 4
          Width = 105
          Height = 33
          Align = alLeft
          Caption = 'Copy Roster'
          NumGlyphs = 2
          TabOrder = 2
          OnClick = btCloneClick
        end
        object mtSave: TBitBtn
          AlignWithMargins = True
          Left = 1122
          Top = 4
          Width = 75
          Height = 33
          Align = alRight
          Caption = 'Save'
          NumGlyphs = 2
          TabOrder = 5
          OnClick = mtSaveClick
        end
        object DBEdit2: TDBEdit
          Left = 399
          Top = 9
          Width = 258
          Height = 24
          DataField = 'Name_with_Initial'
          DataSource = ds1
          TabOrder = 6
        end
        object btImport: TBitBtn
          AlignWithMargins = True
          Left = 1041
          Top = 4
          Width = 75
          Height = 33
          Align = alRight
          Caption = 'Import'
          NumGlyphs = 2
          TabOrder = 4
          OnClick = btImportClick
        end
        object btExport: TBitBtn
          AlignWithMargins = True
          Left = 960
          Top = 4
          Width = 75
          Height = 33
          Align = alRight
          Caption = 'Export'
          NumGlyphs = 2
          TabOrder = 3
          OnClick = btExportClick
        end
      end
      object dgRoster: TJvDBGrid
        Left = 0
        Top = 41
        Width = 1201
        Height = 571
        Align = alClient
        DataSource = ds1
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = DataM.pmExport
        TabOrder = 1
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
            FieldName = 'EMPNo'
            Title.Alignment = taCenter
            Title.Caption = 'EMPNO'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D1'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D2'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D3'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D4'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D5'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D6'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D7'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D8'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D9'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D10'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D11'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D12'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D13'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D14'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D15'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D16'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D17'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D18'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D19'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D20'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D21'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D22'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D23'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D24'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D25'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D26'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D27'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D28'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D29'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D30'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D31'
            Title.Alignment = taCenter
            Width = 35
            Visible = True
          end>
      end
    end
    object tsHolidays: TTabSheet
      Caption = 'Holidays'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1201
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          AlignWithMargins = True
          Left = 16
          Top = 9
          Width = 26
          Height = 23
          Margins.Left = 15
          Margins.Top = 8
          Margins.Bottom = 8
          Align = alLeft
          Caption = 'Date'
          Layout = tlCenter
          ExplicitHeight = 16
        end
        object Label4: TLabel
          AlignWithMargins = True
          Left = 199
          Top = 9
          Width = 36
          Height = 23
          Margins.Left = 15
          Margins.Top = 8
          Margins.Bottom = 8
          Align = alLeft
          Caption = 'TypeA'
          Layout = tlCenter
          ExplicitHeight = 16
        end
        object Label5: TLabel
          AlignWithMargins = True
          Left = 334
          Top = 9
          Width = 21
          Height = 23
          Margins.Left = 15
          Margins.Top = 8
          Margins.Bottom = 8
          Align = alLeft
          Caption = 'Des'
          FocusControl = DBEdit4
          Layout = tlCenter
          ExplicitHeight = 16
        end
        object Button1: TButton
          AlignWithMargins = True
          Left = 1083
          Top = 4
          Width = 114
          Height = 33
          Align = alRight
          Caption = 'Save'
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button2: TButton
          AlignWithMargins = True
          Left = 963
          Top = 4
          Width = 114
          Height = 33
          Align = alRight
          Caption = 'New'
          TabOrder = 0
          OnClick = Button2Click
        end
        object DBEdit4: TDBEdit
          AlignWithMargins = True
          Left = 373
          Top = 9
          Width = 348
          Height = 23
          Margins.Left = 15
          Margins.Top = 8
          Margins.Bottom = 8
          Align = alLeft
          DataField = 'Des'
          DataSource = ds4
          TabOrder = 4
          ExplicitHeight = 24
        end
        object dpHd: TJvDBDateEdit
          AlignWithMargins = True
          Left = 60
          Top = 9
          Width = 121
          Height = 23
          Margins.Left = 15
          Margins.Top = 8
          Margins.Bottom = 8
          Align = alLeft
          DataField = 'HDate'
          DataSource = ds4
          ShowNullDate = False
          TabOrder = 2
          ExplicitHeight = 24
        end
        object cbHType: TJvDBComboBox
          AlignWithMargins = True
          Left = 253
          Top = 9
          Width = 63
          Height = 24
          Margins.Left = 15
          Margins.Top = 8
          Margins.Bottom = 8
          Align = alLeft
          DataField = 'TypeA'
          DataSource = ds4
          Items.Strings = (
            'Normal Holiday'
            'Mercantile Holiday'
            'Public holidays'
            'Other Holiday')
          TabOrder = 3
          Values.Strings = (
            'N'
            'M'
            'P'
            'X')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -12
          ListSettings.OutfilteredValueFont.Name = 'Segoe UI'
          ListSettings.OutfilteredValueFont.Style = []
        end
      end
      object dgHolidays: TDBGrid
        Left = 0
        Top = 41
        Width = 1201
        Height = 571
        Align = alClient
        DataSource = ds4
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HDate'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TypeA'
            Title.Alignment = taCenter
            Title.Caption = 'Type'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Des'
            Title.Alignment = taCenter
            Title.Caption = 'Description'
            Width = 344
            Visible = True
          end>
      end
    end
  end
  inherited qrMain: TFDQuery
    SQL.Strings = (
      'SELECT EMPNo,Name_with_Initial,r.*'
      'FROM roster r left join empmaster e on r.empid=e.id'
      'WHERE r.YM=:p1  order by e.EMPNo')
    ParamData = <
      item
        Name = 'P1'
        DataType = ftDate
        ParamType = ptInput
        Value = 43160d
      end>
    object qrMainEMPNo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPNo'
      Origin = 'EMPNo'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qrMainD1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D1'
      Origin = 'D1'
      OnValidate = qrMainRosterShiftValidate
      Size = 50
    end
    object qrMainD2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D2'
      Origin = 'D2'
      Size = 50
    end
    object qrMainD3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D3'
      Origin = 'D3'
      Size = 50
    end
    object qrMainD4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D4'
      Origin = 'D4'
      Size = 50
    end
    object qrMainD5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D5'
      Origin = 'D5'
      Size = 50
    end
    object qrMainD6: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D6'
      Origin = 'D6'
      Size = 50
    end
    object qrMainD7: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D7'
      Origin = 'D7'
      Size = 50
    end
    object qrMainD8: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D8'
      Origin = 'D8'
      Size = 50
    end
    object qrMainD9: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D9'
      Origin = 'D9'
      Size = 50
    end
    object qrMainD10: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D10'
      Origin = 'D10'
      Size = 50
    end
    object qrMainD11: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D11'
      Origin = 'D11'
      Size = 50
    end
    object qrMainD12: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D12'
      Origin = 'D12'
      Size = 50
    end
    object qrMainD13: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D13'
      Origin = 'D13'
      Size = 50
    end
    object qrMainD14: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D14'
      Origin = 'D14'
      Size = 50
    end
    object qrMainD15: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D15'
      Origin = 'D15'
      Size = 50
    end
    object qrMainD16: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D16'
      Origin = 'D16'
      Size = 50
    end
    object qrMainD17: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D17'
      Origin = 'D17'
      Size = 50
    end
    object qrMainD18: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D18'
      Origin = 'D18'
      Size = 50
    end
    object qrMainD19: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D19'
      Origin = 'D19'
      Size = 50
    end
    object qrMainD20: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D20'
      Origin = 'D20'
      Size = 50
    end
    object qrMainD21: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D21'
      Origin = 'D21'
      Size = 50
    end
    object qrMainD22: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D22'
      Origin = 'D22'
      Size = 50
    end
    object qrMainD23: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D23'
      Origin = 'D23'
      Size = 50
    end
    object qrMainD24: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D24'
      Origin = 'D24'
      Size = 50
    end
    object qrMainD25: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D25'
      Origin = 'D25'
      Size = 50
    end
    object qrMainD26: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D26'
      Origin = 'D26'
      Size = 50
    end
    object qrMainD27: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D27'
      Origin = 'D27'
      Size = 50
    end
    object qrMainD28: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D28'
      Origin = 'D28'
      Size = 50
    end
    object qrMainD29: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D29'
      Origin = 'D29'
      Size = 50
    end
    object qrMainD30: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D30'
      Origin = 'D30'
      Size = 50
    end
    object qrMainD31: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'D31'
      Origin = 'D31'
      Size = 50
    end
    object qrMainYM: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'YM'
      Origin = 'YM'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object qrMainRName: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RName'
      Origin = 'RName'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Size = 50
    end
    object qrMainempid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'empid'
      Origin = 'empid'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object qrMainName_with_Initial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Name_with_Initial'
      Origin = 'Name_with_Initial'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Size = 255
    end
    object qrMainID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
  end
  object qrShifts: TFDQuery
    CachedUpdates = True
    Connection = DataM.Con1
    UpdateOptions.AssignedValues = [uvLockMode]
    UpdateOptions.LockMode = lmOptimistic
    SQL.Strings = (
      'SELECT * FROM shift      order by sname,sday')
    Left = 688
    Top = 144
    object qrShiftsSid: TFDAutoIncField
      FieldName = 'Sid'
      ReadOnly = False
    end
    object qrShiftsSname: TStringField
      FieldName = 'Sname'
      Size = 50
    end
    object qrShiftsInTime: TTimeField
      FieldName = 'InTime'
    end
    object qrShiftsOutTime: TTimeField
      FieldName = 'OutTime'
    end
    object qrShiftsSDay: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'SDay'
      Origin = 'SDay'
    end
  end
  object ds3: TDataSource
    DataSet = qrShifts
    Left = 736
    Top = 144
  end
  object qrHol: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = DataM.Con1
    UpdateOptions.AssignedValues = [uvLockMode]
    UpdateOptions.LockMode = lmOptimistic
    SQL.Strings = (
      'SELECT * FROM holidays   order by id desc')
    Left = 688
    Top = 200
    object qrHolID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object qrHolHDate: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'HDate'
      Origin = 'HDate'
    end
    object qrHolTypeA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TypeA'
      Origin = 'TypeA'
      Size = 5
    end
    object qrHolDes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Des'
      Origin = 'Des'
      Size = 50
    end
  end
  object ds4: TDataSource
    DataSet = qrHol
    Left = 736
    Top = 200
  end
end
