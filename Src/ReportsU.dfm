inherited ReportsF: TReportsF
  Caption = 'ReportsF'
  ClientHeight = 728
  ClientWidth = 1153
  OnCreate = FormCreate
  ExplicitWidth = 1169
  ExplicitHeight = 767
  PixelsPerInch = 96
  TextHeight = 16
  inherited btClose: TBitBtn
    TabOrder = 1
  end
  object pgc: TPageControl [1]
    Left = 0
    Top = 0
    Width = 1153
    Height = 728
    ActivePage = tsProfile
    Align = alClient
    TabOrder = 2
    OnChange = pgcChange
    object tsProfile: TTabSheet
      Caption = 'Profiles'
      object pnl1: TPanel
        Left = 976
        Top = 0
        Width = 169
        Height = 697
        Align = alRight
        Padding.Left = 4
        Padding.Top = 4
        Padding.Right = 4
        Padding.Bottom = 4
        TabOrder = 1
        object lbl1: TLabel
          Left = 5
          Top = 167
          Width = 159
          Height = 16
          Align = alTop
          Caption = 'Profile Group'
          ExplicitWidth = 74
        end
        object lbl2: TLabel
          Left = 5
          Top = 38
          Width = 159
          Height = 16
          Align = alTop
          Caption = 'Profile Category'
          ExplicitWidth = 91
        end
        object lbl3: TLabel
          Left = 5
          Top = 151
          Width = 159
          Height = 16
          Align = alTop
          ExplicitWidth = 4
        end
        object lbl4: TLabel
          Left = 5
          Top = 22
          Width = 159
          Height = 16
          Align = alTop
          ExplicitWidth = 4
        end
        object clbG: TJvCheckListBox
          Left = 5
          Top = 183
          Width = 159
          Height = 97
          OnClickCheck = clbGClickCheck
          Align = alTop
          DoubleBuffered = False
          Items.Strings = (
            'test'
            'test2'
            'test3')
          ParentDoubleBuffered = False
          ScrollWidth = 47
          TabOrder = 2
        end
        object clbCat: TJvCheckListBox
          Left = 5
          Top = 54
          Width = 159
          Height = 97
          Align = alTop
          DoubleBuffered = False
          Items.Strings = (
            'test'
            'test2'
            'test3')
          ParentDoubleBuffered = False
          ScrollWidth = 47
          TabOrder = 1
        end
        object chk1: TCheckBox
          Left = 5
          Top = 5
          Width = 159
          Height = 17
          Align = alTop
          Caption = 'Active'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object bt2: TButton
          Left = 5
          Top = 280
          Width = 159
          Height = 25
          Align = alTop
          Caption = 'OK'
          TabOrder = 3
          OnClick = bt2Click
        end
      end
      object dgProfile: TJvDBGrid
        Left = 0
        Top = 0
        Width = 976
        Height = 697
        Align = alClient
        DataSource = ds1
        PopupMenu = pm1
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
            FieldName = 'id'
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'code'
            Title.Alignment = taCenter
            Title.Caption = 'CODE'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name'
            Title.Alignment = taCenter
            Title.Caption = 'Name'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tel'
            Title.Alignment = taCenter
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email'
            Title.Alignment = taCenter
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dob'
            Title.Alignment = taCenter
            Title.Caption = 'DOB'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NIC'
            Title.Alignment = taCenter
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat1'
            Title.Alignment = taCenter
            Title.Caption = 'Cat'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat2'
            Title.Alignment = taCenter
            Title.Caption = 'Group'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'active'
            Title.Alignment = taCenter
            Title.Caption = 'Active'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'address'
            Title.Alignment = taCenter
            Title.Caption = 'Address'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'payment'
            Title.Alignment = taCenter
            Title.Caption = 'Payment'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'epin'
            Title.Alignment = taCenter
            Title.Caption = 'E-Pin'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sponsor'
            Title.Alignment = taCenter
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cdate'
            Title.Alignment = taCenter
            Title.Caption = 'CDate'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telegram'
            Title.Alignment = taCenter
            Title.Caption = 'Telegram'
            Width = 60
            Visible = True
          end>
      end
    end
    object tsAtt: TTabSheet
      Caption = 'Attendance'
      ImageIndex = 1
      object dgAtt: TJvDBGrid
        Left = 0
        Top = 0
        Width = 976
        Height = 697
        Align = alClient
        DataSource = ds2
        PopupMenu = pm1
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
            FieldName = 'id'
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'code'
            Title.Alignment = taCenter
            Title.Caption = 'CODE'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name'
            Title.Alignment = taCenter
            Title.Caption = 'NAME'
            Width = 201
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cid'
            Title.Alignment = taCenter
            Title.Caption = 'COURSE'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gid'
            Title.Alignment = taCenter
            Title.Caption = 'GROUP'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sid'
            Title.Alignment = taCenter
            Title.Caption = 'SESSION'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st'
            Title.Alignment = taCenter
            Title.Caption = 'START'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ed'
            Title.Alignment = taCenter
            Title.Caption = 'END'
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'note'
            Title.Alignment = taCenter
            Title.Caption = 'Notes'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cdate'
            Title.Alignment = taCenter
            Title.Caption = 'CDate'
            Width = 113
            Visible = True
          end>
      end
      object pnl2: TPanel
        Left = 976
        Top = 0
        Width = 169
        Height = 697
        Align = alRight
        Padding.Left = 4
        Padding.Top = 4
        Padding.Right = 4
        Padding.Bottom = 4
        TabOrder = 1
        object edPid: TEdit
          AlignWithMargins = True
          Left = 8
          Top = 10
          Width = 153
          Height = 24
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alTop
          ReadOnly = True
          TabOrder = 0
          TextHint = 'Profile ID '
          OnEnter = edPidEnter
        end
        object btAttok: TButton
          AlignWithMargins = True
          Left = 8
          Top = 132
          Width = 153
          Height = 25
          Align = alTop
          Caption = 'OK'
          TabOrder = 3
          OnClick = btAttokClick
        end
        object edGid: TEdit
          AlignWithMargins = True
          Left = 8
          Top = 72
          Width = 153
          Height = 24
          Align = alTop
          ReadOnly = True
          TabOrder = 1
          TextHint = 'Group ID'
          OnEnter = edGidEnter
        end
        object edSid: TEdit
          AlignWithMargins = True
          Left = 8
          Top = 102
          Width = 153
          Height = 24
          Align = alTop
          ReadOnly = True
          TabOrder = 2
          TextHint = 'Session ID'
          OnEnter = edSidEnter
        end
        object cbbCID: TComboBox
          AlignWithMargins = True
          Left = 8
          Top = 42
          Width = 153
          Height = 24
          Align = alTop
          Style = csDropDownList
          TabOrder = 4
        end
      end
    end
    object tsPayment: TTabSheet
      Caption = 'Payment'
      ImageIndex = 2
      OnEnter = tsPaymentEnter
      object dgPay: TJvDBGrid
        Left = 0
        Top = 0
        Width = 976
        Height = 697
        Align = alClient
        DataSource = ds3
        PopupMenu = pm1
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
            FieldName = 'id'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pdate'
            Title.Alignment = taCenter
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pid'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'val'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'des'
            Title.Alignment = taCenter
            Width = 165
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat1'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat2'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cdate'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end>
      end
      object pnl3: TPanel
        Left = 976
        Top = 0
        Width = 169
        Height = 697
        Align = alRight
        Padding.Left = 4
        Padding.Top = 4
        Padding.Right = 4
        Padding.Bottom = 4
        TabOrder = 1
        object edPid1: TEdit
          AlignWithMargins = True
          Left = 8
          Top = 10
          Width = 153
          Height = 24
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alTop
          ReadOnly = True
          TabOrder = 0
          TextHint = 'Profile ID '
          OnEnter = edPidEnter
        end
        object btPayok: TButton
          AlignWithMargins = True
          Left = 8
          Top = 110
          Width = 153
          Height = 25
          Align = alTop
          Caption = 'OK'
          TabOrder = 1
          OnClick = btPayokClick
        end
        object dbcbpcat2: TComboBox
          AlignWithMargins = True
          Left = 8
          Top = 78
          Width = 153
          Height = 24
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alTop
          Style = csDropDownList
          TabOrder = 2
        end
        object dbcbpcat1: TComboBox
          AlignWithMargins = True
          Left = 8
          Top = 44
          Width = 153
          Height = 24
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alTop
          AutoDropDown = True
          Style = csDropDownList
          TabOrder = 3
        end
      end
    end
  end
  object bt1: TButton [2]
    Left = 1070
    Top = -4
    Width = 75
    Height = 25
    Caption = 'Export'
    DropDownMenu = pm1
    PopupMenu = pm1
    Style = bsSplitButton
    TabOrder = 0
  end
  inherited qrMain: TFDQuery
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvLockMode]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select * from profile p where p.active=:active'
      '!macro1')
    Left = 88
    Top = 104
    ParamData = <
      item
        Name = 'ACTIVE'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    MacroData = <
      item
        Value = Null
        Name = 'MACRO1'
      end>
    object qrMainid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrMaincode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'code'
      Origin = 'code'
    end
    object qrMainname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'name'
      Origin = 'name'
      Size = 50
    end
    object qrMainnamef: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'namef'
      Origin = 'namef'
      Size = 50
    end
    object qrMainTel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tel'
      Origin = 'Tel'
    end
    object qrMainEmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Email'
      Origin = 'Email'
      Size = 50
    end
    object mtrdMaindob: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dob'
      Origin = 'dob'
    end
    object qrMainNIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NIC'
      Origin = 'NIC'
    end
    object qrMaincat1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cat1'
      Origin = 'cat1'
      Size = 5
    end
    object qrMaincat2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cat2'
      Origin = 'cat2'
      Size = 5
    end
    object qrMainactive: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'active'
      Origin = 'active'
    end
    object qrMainaddress: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'address'
      Origin = 'address'
      Size = 250
    end
    object qrMainpayment: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'payment'
      Origin = 'payment'
      Size = 50
    end
    object qrMainepin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'epin'
      Origin = 'epin'
    end
    object qrMainSponsor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sponsor'
      Origin = 'Sponsor'
    end
    object qrMaincdate: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'cdate'
      Origin = 'cdate'
    end
    object qrMaintelegram: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telegram'
      Origin = 'telegram'
      Size = 50
    end
  end
  inherited ds1: TDataSource
    AutoEdit = False
    Left = 152
    Top = 112
  end
  object ExpExcel: TJvDBGridExcelExport
    Caption = 'Exporting to MS Excel...'
    Grid = dgProfile
    FileName = 'Report'
    AutoFit = True
    Left = 1092
    Top = 65531
  end
  object ExpCSV: TJvDBGridCSVExport
    Caption = 'Exporting to CSV/Text...'
    Grid = dgProfile
    FileName = 'Report'
    Left = 1092
    Top = 43
  end
  object expXML: TJvDBGridXMLExport
    Grid = dgProfile
    FileName = 'Report'
    Left = 1092
    Top = 91
  end
  object pm1: TPopupMenu
    Left = 740
    Top = 163
    object mniExportClipbord: TMenuItem
      Caption = 'Copy to Clipbord'
      OnClick = mniExportClipbordClick
    end
    object mniExportCSV: TMenuItem
      Caption = 'Export CSV'
      OnClick = mniExportCSVClick
    end
    object mniExportXML: TMenuItem
      Caption = 'Export XML'
      OnClick = mniExportXMLClick
    end
    object mniExportExcel: TMenuItem
      Caption = 'Export Excel'
      OnClick = mniExportExcelClick
    end
  end
  object qrAtt: TFDQuery
    CachedUpdates = True
    Connection = DataM.Con1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvLockMode]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    UpdateOptions.LockMode = lmOptimistic
    SQL.Strings = (
      'SELECT a.*,p.code,p.name,n.*'
      'FROM att a'
      'LEFT JOIN profile p ON a.pid=p.id'
      'LEFT JOIN notes n ON a.id=n.lid AND n.typeA="ATT" '
      ' !macro1 '
      ''
      '')
    Left = 256
    Top = 112
    MacroData = <
      item
        Value = Null
        Name = 'MACRO1'
      end>
    object qrAttid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrAttpid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pid'
      Origin = 'pid'
    end
    object qrAttsid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'sid'
      Origin = 'sid'
    end
    object qrAttst: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'st'
      Origin = 'st'
    end
    object qrAtted: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'ed'
      Origin = 'ed'
    end
    object qrAttcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'code'
      Origin = 'code'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrAttname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'name'
      Origin = 'name'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qrAttid_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrAttlid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'lid'
      Origin = 'lid'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrAtttypeA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'typeA'
      Origin = 'typeA'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object qrAttnote: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'note'
      Origin = 'note'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object qrAttcdate: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'cdate'
      Origin = 'cdate'
    end
    object qrAttgid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'gid'
      Origin = 'gid'
    end
    object qrAttcid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cid'
      Origin = 'cid'
      Size = 5
    end
  end
  object ds2: TDataSource
    AutoEdit = False
    DataSet = qrAtt
    Left = 304
    Top = 112
  end
  object ds3: TDataSource
    AutoEdit = False
    DataSet = qrPay
    Left = 304
    Top = 160
  end
  object qrPay: TFDQuery
    CachedUpdates = True
    Connection = DataM.Con1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvLockMode]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    UpdateOptions.LockMode = lmOptimistic
    SQL.Strings = (
      'select* from payments'
      '!macro1')
    Left = 256
    Top = 160
    MacroData = <
      item
        Value = Null
        Name = 'MACRO1'
      end>
    object qrPayid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object mtrdPaypdate: TDateField
      FieldName = 'pdate'
      Origin = 'pdate'
      Required = True
    end
    object qrPaypid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pid'
      Origin = 'pid'
    end
    object qrPayval: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'val'
      Origin = 'val'
    end
    object qrPaydes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'des'
      Origin = 'des'
      Size = 255
    end
    object qrPaycat1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cat1'
      Origin = 'cat1'
      Size = 3
    end
    object qrPaycat2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cat2'
      Origin = 'cat2'
      Size = 3
    end
    object qrPaycdate: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'cdate'
      Origin = 'cdate'
    end
  end
end
