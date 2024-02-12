inherited PaymentF: TPaymentF
  ActiveControl = ed1
  Caption = 'Payments'
  ClientHeight = 552
  ClientWidth = 772
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 788
  ExplicitHeight = 591
  PixelsPerInch = 96
  TextHeight = 16
  object lbl1: TLabel [0]
    Left = 8
    Top = 104
    Width = 26
    Height = 16
    Caption = 'Date'
  end
  object lbl2: TLabel [1]
    Left = 8
    Top = 139
    Width = 32
    Height = 16
    Caption = 'Value'
    FocusControl = edval
  end
  object lbl3: TLabel [2]
    Left = 8
    Top = 238
    Width = 63
    Height = 16
    Caption = 'Description'
  end
  object lbl4: TLabel [3]
    Left = 8
    Top = 211
    Width = 51
    Height = 16
    Caption = 'Category'
  end
  object lbl5: TLabel [4]
    Left = 8
    Top = 176
    Width = 28
    Height = 16
    Caption = 'Type'
  end
  object JvDBGrid1: TJvDBGrid [6]
    Left = 271
    Top = 8
    Width = 498
    Height = 536
    DataSource = ds1
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
        FieldName = 'pdate'
        Title.Alignment = taCenter
        Title.Caption = 'DATE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'val'
        Title.Alignment = taCenter
        Title.Caption = 'VALUE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'des'
        Title.Alignment = taCenter
        Title.Caption = 'DESCRIPTION'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cat1'
        Title.Alignment = taCenter
        Title.Caption = 'CAT'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cat2'
        Title.Alignment = taCenter
        Title.Caption = 'TYPE'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cdate'
        Title.Alignment = taCenter
        Title.Caption = 'CRDATE'
        Width = 74
        Visible = True
      end>
  end
  object ed1: TEdit [7]
    Left = 5
    Top = 8
    Width = 257
    Height = 24
    ReadOnly = True
    TabOrder = 2
    TextHint = 'Search (F3)'
    OnKeyPress = ed1KeyPress
  end
  object dbnvgr1: TDBNavigator [8]
    Left = 5
    Top = 38
    Width = 258
    Height = 43
    DataSource = ds1
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 3
  end
  object edval: TDBEdit [9]
    Left = 70
    Top = 135
    Width = 193
    Height = 24
    DataField = 'val'
    DataSource = ds1
    TabOrder = 4
  end
  object JvDBDatePickerEdit1: TJvDBDatePickerEdit [10]
    Left = 70
    Top = 99
    Width = 193
    Height = 24
    AllowNoDate = True
    DataField = 'pdate'
    DataSource = ds1
    DateFormat = 'yyyy-MM-dd'
    DateSeparator = '-'
    StoreDateFormat = True
    TabOrder = 5
  end
  object btSave: TButton [11]
    Left = 8
    Top = 327
    Width = 255
    Height = 36
    Caption = 'Save'
    TabOrder = 6
    OnClick = btSaveClick
  end
  object dbcbcat2: TJvDBComboBox [12]
    Left = 70
    Top = 172
    Width = 192
    Height = 24
    DataField = 'cat2'
    DataSource = ds1
    TabOrder = 7
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Tahoma'
    ListSettings.OutfilteredValueFont.Style = []
  end
  object dbcbcat1: TJvDBComboBox [13]
    Left = 70
    Top = 208
    Width = 192
    Height = 24
    DataField = 'cat1'
    DataSource = ds1
    TabOrder = 8
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Tahoma'
    ListSettings.OutfilteredValueFont.Style = []
  end
  object dbmmodes: TDBMemo [14]
    Left = 8
    Top = 260
    Width = 254
    Height = 61
    DataField = 'des'
    DataSource = ds1
    TabOrder = 9
  end
  inherited qrMain: TFDQuery
    BeforePost = qrMainBeforePost
    SQL.Strings = (
      'select * from payments p where p.pid=:pid')
    Left = 584
    Top = 24
    ParamData = <
      item
        Name = 'PID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrMainid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object mtrdMainpdate: TDateField
      FieldName = 'pdate'
      Origin = 'pdate'
      Required = True
    end
    object qrMainpid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pid'
      Origin = 'pid'
    end
    object qrMainval: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'val'
      Origin = 'val'
    end
    object qrMaindes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'des'
      Origin = 'des'
      Size = 255
    end
    object qrMaincat1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cat1'
      Origin = 'cat1'
      Size = 3
    end
    object qrMaincat2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cat2'
      Origin = 'cat2'
      Size = 3
    end
    object qrMaincdate: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'cdate'
      Origin = 'cdate'
    end
  end
  inherited ds1: TDataSource
    AutoEdit = False
    Left = 616
    Top = 24
  end
end
