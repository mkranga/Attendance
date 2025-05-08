inherited StockInF: TStockInF
  Caption = 'Stock'
  OnCreate = FormCreate
  ExplicitWidth = 1053
  ExplicitHeight = 682
  PixelsPerInch = 96
  TextHeight = 16
  object dg1: TDBGrid [1]
    Left = 0
    Top = 337
    Width = 1037
    Height = 306
    Align = alClient
    DataSource = ds2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'code'
        Title.Alignment = taCenter
        Title.Caption = 'Code'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Item'
        Title.Alignment = taCenter
        Width = 410
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'avg(price)'
        Title.Alignment = taCenter
        Title.Caption = 'Avarage Cost'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sum(qty)'
        Title.Alignment = taCenter
        Title.Caption = 'Qty'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sum(total)'
        Title.Alignment = taCenter
        Title.Caption = 'Total Cost'
        Width = 154
        Visible = True
      end>
  end
  object pnl1: TPanel [2]
    Left = 0
    Top = 0
    Width = 1037
    Height = 41
    Align = alTop
    TabOrder = 1
    object bt1: TButton
      AlignWithMargins = True
      Left = 950
      Top = 4
      Width = 83
      Height = 33
      Align = alRight
      Caption = 'Save'
      TabOrder = 0
      OnClick = bt1Click
    end
    object bt2: TButton
      AlignWithMargins = True
      Left = 846
      Top = 4
      Width = 98
      Height = 33
      Align = alRight
      Caption = 'Add/Clone'
      TabOrder = 1
      OnClick = bt2Click
    end
    object edSearch: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 341
      Height = 33
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TextHint = 'Search...'
      ExplicitHeight = 37
    end
  end
  object dg2: TDBGrid [3]
    Left = 0
    Top = 41
    Width = 1037
    Height = 296
    Align = alTop
    DataSource = ds1
    TabOrder = 3
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
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'code'
        Title.Alignment = taCenter
        Title.Caption = 'Code'
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
  inherited qrMain: TFDQuery
    UpdateOptions.KeyFields = 'id'
    SQL.Strings = (
      'select * from stockin')
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
      Size = 10
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
  object qrStockSummery: TFDQuery
    Connection = DataM.Con1
    SQL.Strings = (
      
        'select code,Item,sum(qty), avg(price)  ,sum(total)  from stockin' +
        ' group by code ,item')
    Left = 880
    Top = 352
    object qrStockSummeryItem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Item'
      Origin = 'item'
      Size = 250
    end
    object qrStockSummeryavgprice: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'avg(price)'
      Origin = '`avg(price)`'
      ProviderFlags = []
      ReadOnly = True
      Precision = 14
    end
    object qrStockSummerysumtotal: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'sum(total)'
      Origin = '`sum(total)`'
      ProviderFlags = []
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object qrStockSummerysumqty: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'sum(qty)'
      Origin = '`sum(qty)`'
      ProviderFlags = []
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object qrStockSummerycode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'code'
      Origin = 'code'
      Size = 10
    end
  end
  object ds2: TDataSource
    AutoEdit = False
    DataSet = qrStockSummery
    Left = 920
    Top = 352
  end
end
