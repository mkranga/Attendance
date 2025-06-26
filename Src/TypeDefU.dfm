inherited TypeDefF: TTypeDefF
  ActiveControl = edCode
  Caption = 'Type Define'
  ClientHeight = 614
  ClientWidth = 347
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  ExplicitWidth = 373
  ExplicitHeight = 663
  TextHeight = 16
  object dg1: TDBGrid [0]
    Left = 0
    Top = 89
    Width = 347
    Height = 525
    Align = alClient
    DataSource = DataM.dsTypeDef
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Code'
        Title.Alignment = taCenter
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description'
        Title.Alignment = taCenter
        Width = 182
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Type'
        Title.Alignment = taCenter
        Width = 45
        Visible = True
      end>
  end
  object pnl1: TPanel [1]
    Left = 0
    Top = 0
    Width = 347
    Height = 89
    Align = alTop
    TabOrder = 1
    OnClick = pnl1Click
    ExplicitWidth = 385
    object lbl: TLabel
      Left = 16
      Top = 8
      Width = 29
      Height = 16
      Caption = 'Code'
      FocusControl = edCode
    end
    object lbl1: TLabel
      Left = 77
      Top = 8
      Width = 25
      Height = 16
      Caption = 'Text'
      FocusControl = edDes
    end
    object lbl2: TLabel
      Left = 225
      Top = 8
      Width = 28
      Height = 16
      Caption = 'Type'
      FocusControl = edTypeA
    end
    object btSave: TBitBtn
      Left = 16
      Top = 54
      Width = 94
      Height = 25
      Caption = '&Save'
      TabOrder = 3
      OnClick = btSaveClick
    end
    object btCancel: TBitBtn
      Left = 128
      Top = 54
      Width = 93
      Height = 25
      Caption = '&Cancel'
      TabOrder = 4
      OnClick = btCancelClick
    end
    object edCode: TDBEdit
      Left = 14
      Top = 24
      Width = 59
      Height = 24
      CharCase = ecUpperCase
      DataField = 'Code'
      DataSource = DataM.dsTypeDef
      TabOrder = 0
    end
    object edDes: TDBEdit
      Left = 77
      Top = 24
      Width = 144
      Height = 24
      DataField = 'Des'
      DataSource = DataM.dsTypeDef
      TabOrder = 1
    end
    object edTypeA: TDBEdit
      Left = 225
      Top = 24
      Width = 43
      Height = 24
      CharCase = ecUpperCase
      DataField = 'TypeA'
      DataSource = DataM.dsTypeDef
      TabOrder = 2
    end
    object btNew: TBitBtn
      Left = 224
      Top = 54
      Width = 44
      Height = 25
      Caption = '+'
      TabOrder = 5
      OnClick = btNewClick
    end
  end
  inherited btClose: TBitBtn
    Left = 0
    ExplicitLeft = 0
  end
  inherited qrMain: TFDQuery
    SQL.Strings = (
      'select * from typedef order by typeA')
    Left = 216
    Top = 304
    object qrMainCode: TStringField
      FieldName = 'Code'
      Origin = 'Code'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object qrMainDes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Des'
      Origin = 'Des'
      Size = 255
    end
    object qrMainTypeA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TypeA'
      Origin = 'TypeA'
      Size = 2
    end
  end
  inherited ds1: TDataSource
    Left = 216
    Top = 272
  end
end
