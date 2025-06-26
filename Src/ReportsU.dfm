inherited ReportsF: TReportsF
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeable
  Caption = 'Reports'
  ClientHeight = 716
  ClientWidth = 1145
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  ExplicitWidth = 1171
  ExplicitHeight = 765
  TextHeight = 16
  inherited btClose: TBitBtn
    TabOrder = 1
  end
  object bt1: TButton [1]
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
  object pgc: TPageControl [2]
    Left = 0
    Top = 0
    Width = 1145
    Height = 716
    ActivePage = tsAtt
    Align = alClient
    TabOrder = 2
    OnChange = pgcChange
    object tsProfile: TTabSheet
      Caption = 'Profiles'
      object pnl1: TPanel
        Left = 968
        Top = 0
        Width = 169
        Height = 685
        Align = alRight
        Padding.Left = 4
        Padding.Top = 4
        Padding.Right = 4
        Padding.Bottom = 4
        TabOrder = 1
        object lbl1: TLabel
          Left = 5
          Top = 182
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
          Top = 166
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
          AlignWithMargins = True
          Left = 8
          Top = 201
          Width = 153
          Height = 106
          Align = alTop
          DoubleBuffered = False
          ItemHeight = 17
          Items.Strings = (
            'test'
            'test2'
            'test3')
          ParentDoubleBuffered = False
          ScrollWidth = 57
          TabOrder = 2
          OnClickCheck = clbGClickCheck
        end
        object clbCat: TJvCheckListBox
          AlignWithMargins = True
          Left = 8
          Top = 57
          Width = 153
          Height = 106
          Align = alTop
          DoubleBuffered = False
          ItemHeight = 17
          Items.Strings = (
            'test'
            'test2'
            'test3')
          ParentDoubleBuffered = False
          ScrollWidth = 57
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
          AlignWithMargins = True
          Left = 8
          Top = 313
          Width = 153
          Height = 30
          Align = alTop
          Caption = 'OK'
          TabOrder = 3
          OnClick = bt2Click
        end
        object Button3: TButton
          AlignWithMargins = True
          Left = 8
          Top = 349
          Width = 153
          Height = 30
          Align = alTop
          Caption = 'Print'
          TabOrder = 4
          OnClick = Button2Click
        end
        object Button4: TButton
          AlignWithMargins = True
          Left = 8
          Top = 647
          Width = 153
          Height = 30
          Align = alBottom
          Caption = 'Close'
          TabOrder = 5
          OnClick = Button4Click
        end
      end
      object dgProfile: TJvDBGrid
        Left = 0
        Top = 0
        Width = 968
        Height = 685
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
            FieldName = 'EMPNo'
            Title.Alignment = taCenter
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Name_with_Initial'
            Title.Alignment = taCenter
            Title.Caption = 'Name'
            Width = 178
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gender'
            Title.Alignment = taCenter
            Title.Caption = 'Sex'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nic_no'
            Title.Alignment = taCenter
            Title.Caption = 'NIC/PP'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'birth_date'
            Title.Alignment = taCenter
            Title.Caption = 'DOB'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nationality'
            Title.Alignment = taCenter
            Title.Caption = 'Nationality'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'religion'
            Title.Alignment = taCenter
            Title.Caption = 'Religion'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contact'
            Title.Alignment = taCenter
            Title.Caption = 'Contact'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Department'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Catagary'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EmGroup'
            Title.Alignment = taCenter
            Title.Caption = 'Group'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Join_Date'
            Title.Alignment = taCenter
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Active'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Shift'
            Title.Alignment = taCenter
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MachineNo'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
    object tsAtt: TTabSheet
      Caption = 'Attendance'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 968
        Top = 0
        Width = 169
        Height = 685
        Align = alRight
        BevelOuter = bvNone
        Padding.Left = 4
        Padding.Top = 4
        Padding.Right = 4
        Padding.Bottom = 4
        TabOrder = 1
        object Label1: TLabel
          AlignWithMargins = True
          Left = 7
          Top = 165
          Width = 155
          Height = 16
          Margins.Top = 8
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Group'
          ExplicitWidth = 34
        end
        object Label2: TLabel
          AlignWithMargins = True
          Left = 7
          Top = 29
          Width = 155
          Height = 16
          Margins.Top = 8
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Category'
          ExplicitWidth = 51
        end
        object Label5: TLabel
          AlignWithMargins = True
          Left = 7
          Top = 301
          Width = 155
          Height = 16
          Margins.Top = 8
          Margins.Bottom = 0
          Align = alTop
          AutoSize = False
          Caption = 'Range'
          ExplicitLeft = 6
          ExplicitTop = 351
          ExplicitWidth = 159
        end
        object clbAttGroup: TJvCheckListBox
          AlignWithMargins = True
          Left = 7
          Top = 184
          Width = 155
          Height = 106
          Align = alTop
          DoubleBuffered = False
          ItemHeight = 17
          Items.Strings = (
            'test'
            'test2'
            'test3')
          ParentDoubleBuffered = False
          ScrollWidth = 57
          TabOrder = 2
          OnClickCheck = clbGClickCheck
        end
        object clbAttCat: TJvCheckListBox
          AlignWithMargins = True
          Left = 7
          Top = 48
          Width = 155
          Height = 106
          Align = alTop
          DoubleBuffered = False
          ItemHeight = 17
          Items.Strings = (
            'test'
            'test2'
            'test3'
            'test'
            'test2'
            'test3'
            'test'
            'test2'
            'test3')
          ParentDoubleBuffered = False
          ScrollWidth = 57
          TabOrder = 1
        end
        object chk2: TCheckBox
          Left = 4
          Top = 4
          Width = 161
          Height = 17
          Align = alTop
          Caption = 'Active'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object btAttDetails: TButton
          AlignWithMargins = True
          Left = 7
          Top = 380
          Width = 155
          Height = 30
          Align = alTop
          Caption = 'Details'
          TabOrder = 5
          OnClick = btAttDetailsClick
        end
        object Button1: TButton
          AlignWithMargins = True
          Left = 7
          Top = 416
          Width = 155
          Height = 30
          Align = alTop
          Caption = 'Summery'
          TabOrder = 6
          OnClick = AttSumClick
        end
        object Button2: TButton
          AlignWithMargins = True
          Left = 7
          Top = 452
          Width = 155
          Height = 30
          Align = alTop
          Caption = 'Print'
          TabOrder = 7
          OnClick = Button2Click
        end
        object Button5: TButton
          AlignWithMargins = True
          Left = 7
          Top = 632
          Width = 155
          Height = 46
          Align = alBottom
          Caption = 'Close'
          TabOrder = 8
          OnClick = Button4Click
        end
        object dpSt: TJvDateEdit
          AlignWithMargins = True
          Left = 7
          Top = 320
          Width = 155
          Height = 24
          Date = 45748.000000000000000000
          DateFormat = 'YY-MM-DD'
          Align = alTop
          ShowNullDate = False
          TabOrder = 3
        end
        object dpEd: TJvDateEdit
          AlignWithMargins = True
          Left = 7
          Top = 350
          Width = 155
          Height = 24
          Date = 45748.000000000000000000
          DateFormat = 'YY-MM-DD'
          Align = alTop
          ShowNullDate = False
          TabOrder = 4
        end
      end
      object pgcAtt: TPageControl
        Left = 0
        Top = 0
        Width = 968
        Height = 685
        ActivePage = tsAttSum
        Align = alClient
        TabOrder = 0
        object tsAttDtl: TTabSheet
          Caption = 'Details'
          object dgdtl: TJvDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 954
            Height = 648
            Align = alClient
            DataSource = ds5
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
                FieldName = 'EMPNo'
                Title.Alignment = taCenter
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MachineNo'
                Title.Alignment = taCenter
                Title.Caption = 'M No'
                Width = 47
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Name_with_Initial'
                Title.Alignment = taCenter
                Title.Caption = 'Name'
                Width = 135
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'WorkingDate'
                Title.Alignment = taCenter
                Title.Caption = 'Date'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'WrdIn'
                Title.Alignment = taCenter
                Title.Caption = 'IN'
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'WrdOut'
                Title.Alignment = taCenter
                Title.Caption = 'OUT'
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ShiftIn'
                Title.Alignment = taCenter
                Title.Caption = 'Shift In'
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ShiftOut'
                Title.Alignment = taCenter
                Title.Caption = 'Shift Out'
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Late'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OT'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OTR'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EarlyOT'
                Title.Alignment = taCenter
                Title.Caption = 'Early OT'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ShortLV'
                Title.Alignment = taCenter
                Title.Caption = 'Short LV'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TotalHrs'
                Title.Alignment = taCenter
                Title.Caption = 'Total Hrs'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOL'
                Title.Alignment = taCenter
                Title.Caption = 'Total Loss'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HType'
                Title.Alignment = taCenter
                Title.Caption = 'Holiday'
                Width = 74
                Visible = True
              end>
          end
        end
        object tsAttSum: TTabSheet
          Caption = 'Summery'
          ImageIndex = 1
          object JvDBGrid1: TJvDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 954
            Height = 648
            Align = alClient
            DataSource = ds6
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
                FieldName = 'MachineNo'
                Title.Alignment = taCenter
                Title.Caption = 'DID'
                Width = 39
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMPNo'
                Title.Alignment = taCenter
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Name_with_Initial'
                Title.Alignment = taCenter
                Title.Caption = 'Name'
                Width = 206
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'sftD'
                Title.Alignment = taCenter
                Title.Caption = 'ShiftD'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'wrKD'
                Title.Alignment = taCenter
                Title.Caption = 'WorkD'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'absn'
                Title.Alignment = taCenter
                Title.Caption = 'Absent'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EarlyOT'
                Title.Alignment = taCenter
                Title.Caption = 'Early OT'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Late'
                Title.Alignment = taCenter
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ShortLV'
                Title.Alignment = taCenter
                Title.Caption = 'Leave early'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ot'
                Title.Alignment = taCenter
                Title.Caption = 'OT'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TotalHrs'
                Title.Alignment = taCenter
                Title.Caption = 'Total Hrs'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOL'
                Title.Alignment = taCenter
                Title.Caption = 'T LOSS'
                Width = 75
                Visible = True
              end>
          end
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
        Width = 968
        Height = 685
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
        Left = 968
        Top = 0
        Width = 169
        Height = 685
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
          TabOrder = 3
          OnClick = btPayokClick
        end
        object cbbdbcbpcat2: TComboBox
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
        object cbbdbcbpcat1: TComboBox
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
          TabOrder = 1
        end
        object Button6: TButton
          AlignWithMargins = True
          Left = 8
          Top = 647
          Width = 153
          Height = 30
          Align = alBottom
          Caption = 'Close'
          TabOrder = 4
          OnClick = Button4Click
        end
      end
    end
    object ts1: TTabSheet
      Caption = 'POS'
      ImageIndex = 3
      object dgPos: TJvDBGrid
        Left = 0
        Top = 89
        Width = 1137
        Height = 596
        Align = alClient
        DataSource = ds4
        PopupMenu = pm1
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
      end
      object pnl4: TPanel
        Left = 0
        Top = 0
        Width = 1137
        Height = 89
        Align = alTop
        Padding.Left = 4
        Padding.Top = 4
        Padding.Right = 4
        Padding.Bottom = 4
        TabOrder = 0
        object btPayok1: TButton
          AlignWithMargins = True
          Left = 1058
          Top = 8
          Width = 71
          Height = 73
          Align = alRight
          Caption = 'OK'
          TabOrder = 1
          OnClick = btPayok1Click
        end
        object mmoPOSSQL: TMemo
          Left = 5
          Top = 5
          Width = 1050
          Height = 79
          Align = alClient
          Lines.Strings = (
            'mmoPOSSQL')
          TabOrder = 0
        end
      end
    end
  end
  inherited qrMain: TFDQuery
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvLockMode]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select * from empmaster p where p.active=:active'
      '!macro1')
    Left = 611
    Top = 317
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
    object qrMainID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object qrMainfull_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'full_name'
      Origin = 'full_name'
      Size = 255
    end
    object qrMaingender: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'gender'
      Origin = 'gender'
      Size = 10
    end
    object qrMainnic_no: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nic_no'
      Origin = 'nic_no'
      Size = 50
    end
    object qrMainbirth_date: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'birth_date'
      Origin = 'birth_date'
    end
    object qrMainnationality: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nationality'
      Origin = 'nationality'
      Size = 10
    end
    object qrMainreligion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'religion'
      Origin = 'religion'
      Size = 10
    end
    object qrMaincontact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contact'
      Origin = 'contact'
      Size = 50
    end
    object qrMainAddressId: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AddressId'
      Origin = 'AddressId'
      Size = 50
    end
    object qrMainenterd_date: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'enterd_date'
      Origin = 'enterd_date'
    end
    object qrMainName_with_Initial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Name_with_Initial'
      Origin = 'Name_with_Initial'
      Size = 255
    end
    object qrMainDepartment: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Department'
      Origin = 'Department'
      Size = 10
    end
    object qrMainCatagary: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Catagary'
      Origin = 'Catagary'
      Size = 10
    end
    object qrMainEmGroup: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EmGroup'
      Origin = 'EmGroup'
      Size = 10
    end
    object qrMainEMPNo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPNo'
      Origin = 'EMPNo'
      Size = 50
    end
    object qrMainJoin_Date: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Join_Date'
      Origin = 'Join_Date'
    end
    object qrMainEmployee_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Employee_type'
      Origin = 'Employee_type'
      Size = 5
    end
    object qrMainForm_A_Number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Form_A_Number'
      Origin = 'Form_A_Number'
      Size = 50
    end
    object qrMainActive: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'Active'
      Origin = 'Active'
    end
    object qrMainmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = 'mail'
      Size = 255
    end
    object qrMainShift: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Shift'
      Origin = 'Shift'
      Size = 50
    end
    object qrMainImageID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ImageID'
      Origin = 'ImageID'
    end
    object qrMainMachineNo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MachineNo'
      Origin = 'MachineNo'
    end
  end
  inherited ds1: TDataSource
    AutoEdit = False
    Left = 452
    Top = 264
  end
  object ExpExcel: TJvDBGridExcelExport
    Caption = 'Exporting to MS Excel...'
    FileName = 'Report'
    AutoFit = True
    Left = 558
    Top = 370
  end
  object ExpCSV: TJvDBGridCSVExport
    Caption = 'Exporting to CSV/Text...'
    FileName = 'Report'
    Left = 505
    Top = 370
  end
  object expXML: TJvDBGridXMLExport
    FileName = 'Report'
    Left = 611
    Top = 370
  end
  object pm1: TPopupMenu
    Left = 664
    Top = 370
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
  object ds2: TDataSource
    AutoEdit = False
    Left = 505
    Top = 264
  end
  object ds3: TDataSource
    AutoEdit = False
    DataSet = qrPay
    Left = 558
    Top = 264
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
    Left = 664
    Top = 317
    MacroData = <
      item
        Value = Null
        Name = 'MACRO1'
      end>
    object qrPayid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
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
  object qrPOS: TFDQuery
    CachedUpdates = True
    Connection = DataM.Con1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvLockMode]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    UpdateOptions.LockMode = lmOptimistic
    SQL.Strings = (
      
        'SELECT d.`NAME`,SUM(d.price),i.cancel  FROM invitems d left join' +
        ' invoice i ON d.invid=i.id  GROUP BY `NAME`,i.cancel')
    Left = 452
    Top = 370
  end
  object ds4: TDataSource
    AutoEdit = False
    DataSet = qrPOS
    Left = 611
    Top = 264
  end
  object qrAttDtl: TFDQuery
    CachedUpdates = True
    Connection = DataM.Con1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvLockMode]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    UpdateOptions.LockMode = lmOptimistic
    SQL.Strings = (
      
        'SELECT e.id,e.Name_with_Initial , a.* FROM attdtl a LEFT JOIN em' +
        'pmaster e  '
      
        'ON a.EMPNo=e.EMPNo WHERE a.ShiftDate BETWEEN :st AND :ed !macro1' +
        ' order by e.empno,a.ShiftDate')
    Left = 505
    Top = 317
    ParamData = <
      item
        Name = 'ST'
        DataType = ftDate
        ParamType = ptInput
        Value = 43831d
      end
      item
        Name = 'ED'
        DataType = ftDate
        ParamType = ptInput
        Value = 46022d
      end>
    MacroData = <
      item
        Value = Null
        Name = 'MACRO1'
      end>
    object qrAttDtlEMPNo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPNo'
      Origin = 'EMPNo'
      Size = 50
    end
    object qrAttDtlName_with_Initial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Name_with_Initial'
      Origin = 'Name_with_Initial'
      Size = 255
    end
    object qrAttDtlWorkingDate: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'WorkingDate'
      Origin = 'WorkingDate'
      DisplayFormat = 'YYYY-MM-DD'
    end
    object qrAttDtlWrdIn: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'WrdIn'
      Origin = 'WrdIn'
      DisplayFormat = 'HH:nn'
    end
    object qrAttDtlWrdOut: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'WrdOut'
      Origin = 'WrdOut'
      DisplayFormat = 'HH:nn'
    end
    object qrAttDtlShiftDate: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ShiftDate'
      Origin = 'ShiftDate'
      DisplayFormat = 'YYYY-MM-DD'
    end
    object qrAttDtlShiftIn: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ShiftIn'
      Origin = 'ShiftIn'
      DisplayFormat = 'HH:nn'
    end
    object qrAttDtlShiftOut: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ShiftOut'
      Origin = 'ShiftOut'
      DisplayFormat = 'HH:nn'
    end
    object qrAttDtlLate: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Late'
      Origin = 'Late'
      DisplayFormat = 'HH:nn'
    end
    object qrAttDtlOT: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'OT'
      Origin = 'OT'
      DisplayFormat = 'HH:nn'
    end
    object qrAttDtlOTR: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'OTR'
      Origin = 'OTR'
      DisplayFormat = 'HH:nn'
    end
    object qrAttDtlEarlyOT: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'EarlyOT'
      Origin = 'EarlyOT'
      DisplayFormat = 'HH:nn'
    end
    object qrAttDtlShortLV: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ShortLV'
      Origin = 'ShortLV'
      DisplayFormat = 'HH:nn'
    end
    object qrAttDtlTOL: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'TOL'
      Origin = 'TOL'
      DisplayFormat = 'HH:nn'
    end
    object qrAttDtlHType: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'HType'
      Origin = 'HType'
      Size = 5
    end
    object qrAttDtlid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object qrAttDtlID_1: TFDAutoIncField
      FieldName = 'ID_1'
      Origin = 'ID'
      ReadOnly = False
    end
    object qrAttDtlTotalHrs: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'TotalHrs'
      Origin = 'TotalHrs'
    end
    object qrAttDtlMachineNo: TIntegerField
      FieldName = 'MachineNo'
    end
  end
  object ds5: TDataSource
    AutoEdit = False
    DataSet = qrAttDtl
    Left = 664
    Top = 264
  end
  object ds6: TDataSource
    AutoEdit = False
    DataSet = spAttSum
    Left = 452
    Top = 317
  end
  object spAttSum: TFDStoredProc
    OnCalcFields = spAttSumCalcFields
    Connection = DataM.Con1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    StoredProcName = 'sserp.AttSummary'
    Left = 560
    Top = 318
    ParamData = <
      item
        Position = 1
        Name = 'st'
        DataType = ftDate
        FDDataType = dtDate
        ParamType = ptInput
        Value = 45748d
      end
      item
        Position = 2
        Name = 'ed'
        DataType = ftDate
        FDDataType = dtDate
        ParamType = ptInput
        Value = 45757d
      end>
    object spAttSumMachineNo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MachineNo'
      Origin = 'MachineNo'
    end
    object spAttSumEMPNo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPNo'
      Origin = 'EMPNo'
      Size = 50
    end
    object spAttSumwrKD: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'wrKD'
      Origin = 'wrKD'
    end
    object spAttSumsftD: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'sftD'
      Origin = 'sftD'
    end
    object spAttSumEarlyOT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EarlyOT'
      Origin = 'EarlyOT'
      Size = 255
    end
    object spAttSumLate: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Late'
      Origin = 'Late'
      Size = 255
    end
    object spAttSumShortLV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ShortLV'
      Origin = 'ShortLV'
      Size = 255
    end
    object spAttSumot: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ot'
      Origin = 'ot'
      Size = 255
    end
    object spAttSumTotalHrs: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TotalHrs'
      Origin = 'TotalHrs'
      Size = 255
    end
    object spAttSumTOL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TOL'
      Origin = 'TOL'
      Size = 255
    end
    object spAttSumName_with_Initial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Name_with_Initial'
      Origin = 'Name_with_Initial'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object spAttSumCatagary: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Catagary'
      Origin = 'Catagary'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object spAttSumEmGroup: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EmGroup'
      Origin = 'EmGroup'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object spAttSumabsn: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'absn'
      Calculated = True
    end
  end
end
