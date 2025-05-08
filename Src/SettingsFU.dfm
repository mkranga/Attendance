inherited SettingsF: TSettingsF
  ActiveControl = ed1
  Caption = 'Settings'
  ClientHeight = 502
  ClientWidth = 468
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnShortCut = FormShortCut
  ExplicitWidth = 494
  ExplicitHeight = 551
  TextHeight = 16
  object dg1: TDBGrid [0]
    Left = 0
    Top = 41
    Width = 468
    Height = 429
    Align = alClient
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'KeyN'
        Title.Alignment = taCenter
        Title.Caption = 'Name'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ValS'
        Title.Alignment = taCenter
        Title.Caption = 'Value'
        Width = 196
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Des'
        Title.Alignment = taCenter
        Title.Caption = 'Description'
        Width = 300
        Visible = True
      end>
  end
  object pnl1: TPanel [1]
    Left = 0
    Top = 0
    Width = 468
    Height = 41
    Align = alTop
    TabOrder = 1
    object ed1: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 342
      Height = 33
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = #55357#56590#65038' Search (F3)'
      OnChange = ed1Change
      ExplicitHeight = 27
    end
    object bt1: TBitBtn
      AlignWithMargins = True
      Left = 357
      Top = 4
      Width = 107
      Height = 33
      Align = alRight
      Caption = '&Save'
      TabOrder = 1
      OnClick = bt1Click
    end
  end
  inherited btClose: TBitBtn
    TabOrder = 2
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 470
    Width = 468
    Height = 32
    Align = alBottom
    TabOrder = 3
    object Label1: TLabel
      AlignWithMargins = True
      Left = 9
      Top = 4
      Width = 40
      Height = 24
      Margins.Left = 8
      Align = alLeft
      Caption = 'Theme'
      Layout = tlCenter
      ExplicitHeight = 16
    end
    object cbStyle: TComboBox
      AlignWithMargins = True
      Left = 55
      Top = 4
      Width = 154
      Height = 24
      Align = alLeft
      TabOrder = 0
      Text = 'cbStyle'
      OnSelect = cbStyleSelect
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 357
      Top = 4
      Width = 107
      Height = 24
      Align = alRight
      Caption = 'Login Users'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  inherited qrMain: TFDQuery
    Active = True
    FilterOptions = [foCaseInsensitive]
    Filter = 'keyN like '#39'%art%'#39
    SQL.Strings = (
      'Select * from Setting')
    Left = 120
    object qrMainID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qrMainKeyN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'KeyN'
      Origin = 'KeyN'
      Size = 50
    end
    object qrMainValS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ValS'
      Origin = 'ValS'
      Size = 250
    end
    object qrMainDes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Des'
      Origin = 'Des'
      Size = 250
    end
  end
  inherited ds1: TDataSource
    Left = 152
  end
end
