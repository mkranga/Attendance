inherited SettingsF: TSettingsF
  ActiveControl = ed1
  Caption = 'Settings'
  ClientHeight = 514
  ClientWidth = 476
  OnCreate = FormCreate
  OnShortCut = FormShortCut
  ExplicitWidth = 492
  ExplicitHeight = 553
  PixelsPerInch = 96
  TextHeight = 16
  object dg1: TDBGrid [0]
    Left = 0
    Top = 41
    Width = 476
    Height = 473
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
    Width = 476
    Height = 41
    Align = alTop
    TabOrder = 1
    object ed1: TEdit
      Left = 12
      Top = 9
      Width = 342
      Height = 24
      TabOrder = 0
      TextHint = #55357#56590#65038' Search (F3)'
      OnChange = ed1Change
    end
    object bt1: TBitBtn
      Left = 360
      Top = 9
      Width = 107
      Height = 24
      Caption = '&Save'
      TabOrder = 1
      OnClick = bt1Click
    end
  end
  inherited btClose: TBitBtn
    TabOrder = 2
  end
  inherited qrMain: TFDQuery
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
