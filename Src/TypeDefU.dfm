inherited TypeDefF: TTypeDefF
  ActiveControl = edCode
  AutoSize = True
  Caption = 'Type Define'
  ClientHeight = 443
  ClientWidth = 270
  OnCreate = FormCreate
  ExplicitWidth = 286
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 16
  object dg1: TDBGrid [0]
    Left = 0
    Top = 97
    Width = 270
    Height = 346
    Align = alClient
    DataSource = DataM.dsTypeDef
    TabOrder = 0
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
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Des'
        Title.Alignment = taCenter
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TypeA'
        Title.Alignment = taCenter
        Width = 45
        Visible = True
      end>
  end
  object pnl1: TPanel [1]
    Left = 0
    Top = 0
    Width = 270
    Height = 97
    Align = alTop
    TabOrder = 1
    OnClick = pnl1Click
    object lbl: TLabel
      Left = 16
      Top = 8
      Width = 29
      Height = 16
      Caption = 'Code'
      FocusControl = edCode
    end
    object lbl1: TLabel
      Left = 65
      Top = 8
      Width = 25
      Height = 16
      Caption = 'Text'
      FocusControl = edDes
    end
    object lbl2: TLabel
      Left = 194
      Top = 8
      Width = 36
      Height = 16
      Caption = 'TypeA'
      FocusControl = edTypeA
    end
    object btSave: TBitBtn
      Left = 16
      Top = 54
      Width = 94
      Height = 25
      Caption = '&Save'
      TabOrder = 0
      OnClick = btSaveClick
    end
    object btCancel: TBitBtn
      Left = 115
      Top = 54
      Width = 93
      Height = 25
      Caption = '&Cancel'
      TabOrder = 1
      OnClick = btCancelClick
    end
    object edCode: TDBEdit
      Left = 16
      Top = 27
      Width = 45
      Height = 24
      CharCase = ecUpperCase
      DataField = 'Code'
      DataSource = DataM.dsTypeDef
      TabOrder = 2
    end
    object edDes: TDBEdit
      Left = 64
      Top = 27
      Width = 144
      Height = 24
      DataField = 'Des'
      DataSource = DataM.dsTypeDef
      TabOrder = 3
    end
    object edTypeA: TDBEdit
      Left = 214
      Top = 27
      Width = 43
      Height = 24
      CharCase = ecUpperCase
      DataField = 'TypeA'
      DataSource = DataM.dsTypeDef
      TabOrder = 4
    end
    object btNew: TBitBtn
      Left = 213
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
    TabOrder = 2
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
