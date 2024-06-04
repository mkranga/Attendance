inherited StockInF: TStockInF
  Caption = 'Stock'
  OnCreate = FormCreate
  ExplicitWidth = 1063
  ExplicitHeight = 692
  TextHeight = 16
  object dg1: TDBGrid [1]
    Left = 0
    Top = 41
    Width = 1045
    Height = 614
    Align = alClient
    DataSource = ds1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item'
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Width = 325
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'qty'
        Title.Alignment = taCenter
        Title.Caption = 'Qty'
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'price'
        Title.Alignment = taCenter
        Title.Caption = 'Cost Price'
        Width = 101
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'total'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'crdate'
        Title.Alignment = taCenter
        Title.Caption = 'Date'
        Width = 153
        Visible = True
      end>
  end
  object pnl1: TPanel [2]
    Left = 0
    Top = 0
    Width = 1045
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -3
    ExplicitTop = -6
    object bt1: TButton
      Left = 960
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = bt1Click
    end
  end
  inherited qrMain: TFDQuery
    UpdateOptions.KeyFields = 'id'
    SQL.Strings = (
      'select * from stockin')
    object qrMainid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qrMainitem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'item'
      Origin = 'item'
      Size = 250
    end
    object qrMainqty: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qty'
      Origin = 'qty'
    end
    object qrMaincrdate: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'crdate'
      Origin = 'crdate'
    end
    object qrMainprice: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'price'
      Origin = 'price'
    end
    object qrMaintotal: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
    end
  end
end
