object ChequeF: TChequeF
  Left = 0
  Top = 0
  Caption = 'Cheque Printing'
  ClientHeight = 497
  ClientWidth = 947
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 16
  object grdCheque: TDBGrid
    Left = 83
    Top = 41
    Width = 864
    Height = 456
    Hint = 'Ctrl+Click to multy select'
    Align = alClient
    DataSource = dsView
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnDblClick = grdChequeDblClick
    OnTitleClick = grdChequeTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Franklin Gothic Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Franklin Gothic Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Cheque No'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CName'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Franklin Gothic Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Name'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CValue'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Franklin Gothic Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Amount'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CDate'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Franklin Gothic Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = ' Date'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'APOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Franklin Gothic Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Acc Pay'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CanC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Franklin Gothic Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Canceled'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNote'
        Title.Alignment = taCenter
        Title.Caption = 'Note'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 399
        Visible = True
      end>
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 947
    Height = 41
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 8
      Top = 12
      Width = 41
      Height = 16
      Caption = 'Search'
    end
    object edtSearch: TEdit
      Left = 77
      Top = 8
      Width = 313
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 0
      TextHint = 'Search Cheque By Cheque No or Name'
      OnChange = edtSearchChange
      OnEnter = edtSearchEnter
      OnExit = edtSearchExit
    end
    object btnSearch: TButton
      Left = 395
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Search'
      TabOrder = 1
      OnClick = btnSearchClick
    end
    object btnRefresh: TButton
      Left = 476
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Refresh'
      TabOrder = 2
      OnClick = btnRefreshClick
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 41
    Width = 83
    Height = 456
    Align = alLeft
    TabOrder = 1
    DesignSize = (
      83
      456)
    object btnCredit: TButton
      Left = 1
      Top = 8
      Width = 75
      Height = 65
      Caption = 'New'
      TabOrder = 0
      OnClick = btnCreditClick
    end
    object bt1: TButton
      Left = 1
      Top = 77
      Width = 75
      Height = 65
      Caption = 'Duplicate'
      TabOrder = 1
      OnClick = bt1Click
    end
    object btnPrintMain: TButton
      Left = 1
      Top = 146
      Width = 75
      Height = 66
      Caption = 'Print'
      TabOrder = 2
      OnClick = btnPrintClick
    end
    object btnDeposit: TButton
      Left = 1
      Top = 216
      Width = 75
      Height = 66
      Caption = 'Deposit'
      TabOrder = 3
      Visible = False
      OnClick = btnDepositClick
    end
    object btReport: TButton
      Left = 1
      Top = 286
      Width = 75
      Height = 66
      Caption = 'Reports'
      TabOrder = 4
      OnClick = btReportClick
    end
    object btnClose: TButton
      Left = 1
      Top = 382
      Width = 75
      Height = 66
      Anchors = [akLeft, akBottom]
      Caption = 'Close'
      TabOrder = 5
      OnClick = btnCloseClick
      ExplicitTop = 423
    end
  end
  object qrView: TFDQuery
    OnCalcFields = qrViewCalcFields
    Connection = DataM.Con1
    SQL.Strings = (
      'SELECT top 1000 *  FROM Cheque order by id desc')
    Left = 483
    Top = 211
    object qrViewID: TIntegerField
      FieldName = 'ID'
    end
    object qrViewCType: TWideStringField
      FieldName = 'CType'
      Size = 255
    end
    object qrViewCName: TWideStringField
      FieldName = 'CName'
      Size = 255
    end
    object qrViewCNo: TIntegerField
      FieldName = 'CNo'
    end
    object qrViewCValue: TBCDField
      FieldName = 'CValue'
      Precision = 19
    end
    object qrViewCDate: TDateTimeField
      FieldName = 'CDate'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = 'ddmmyyy'
    end
    object qrViewAccPay: TBooleanField
      FieldName = 'AccPay'
    end
    object qrViewUserID: TIntegerField
      FieldName = 'UserID'
    end
    object qrViewAddDate: TDateTimeField
      FieldName = 'AddDate'
    end
    object qrViewCurrentBalance: TBCDField
      FieldName = 'CurrentBalance'
      Precision = 19
    end
    object qrViewCancel: TBooleanField
      FieldName = 'Cancel'
    end
    object qrViewAPOC: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'APOC'
      Size = 2
      Calculated = True
    end
    object qrViewCanC: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'CanC'
      Size = 2
      Calculated = True
    end
    object qrViewCNote: TWideStringField
      FieldName = 'CNote'
      Size = 255
    end
  end
  object dsView: TDataSource
    DataSet = qrView
    Left = 523
    Top = 211
  end
  object Ge1: TJvDBGridExcelExport
    Caption = 'Exporting to MS Excel...'
    Grid = grdCheque
    Visible = True
    AutoFit = True
    Left = 128
    Top = 160
  end
  object dlgSave1: TSaveDialog
    DefaultExt = 'xlsx'
    FileName = 'CData'
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Title = 'Save'
    Left = 304
    Top = 136
  end
end
