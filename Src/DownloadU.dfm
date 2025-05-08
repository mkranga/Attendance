object DownloadF: TDownloadF
  Left = 0
  Top = 0
  Caption = 'Download'
  ClientHeight = 547
  ClientWidth = 468
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object pb1: TProgressBar
    Left = 0
    Top = 0
    Width = 468
    Height = 17
    Align = alTop
    TabOrder = 0
  end
  object mmo1: TMemo
    Left = 0
    Top = 53
    Width = 468
    Height = 494
    Align = alBottom
    Lines.Strings = (
      'Log')
    TabOrder = 2
  end
  object pnl1: TPanel
    Left = 0
    Top = 54
    Width = 472
    Height = 494
    TabOrder = 3
    object dbnvgr1: TDBNavigator
      Left = 1
      Top = 1
      Width = 470
      Height = 25
      DataSource = ds2
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates]
      Align = alTop
      TabOrder = 0
      OnClick = dbnvgr1Click
    end
    object dbmmoConfig: TDBMemo
      Left = 1
      Top = 26
      Width = 470
      Height = 467
      Align = alClient
      DataField = 'Config'
      DataSource = ds2
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 17
    Width = 468
    Height = 41
    Align = alTop
    TabOrder = 1
    object bt1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Download'
      TabOrder = 0
      OnClick = bt1Click
    end
    object btImport: TButton
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Import'
      TabOrder = 1
      OnClick = btImportClick
    end
    object btSettings: TButton
      AlignWithMargins = True
      Left = 389
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Settings'
      TabOrder = 2
      OnClick = btSettingsClick
    end
  end
  object qrLog: TFDQuery
    CachedUpdates = True
    Connection = DataM.Con1
    SQL.Strings = (
      'SELECT * FROM attlog where 1=0')
    Left = 340
    Top = 96
    object qrLogDID: TLongWordField
      FieldName = 'DID'
      Origin = 'DID'
      Required = True
    end
    object qrLogDTime: TDateTimeField
      FieldName = 'DTime'
      Origin = 'DTime'
      Required = True
    end
    object qrLogVMod: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'VMod'
      Origin = 'VMod'
    end
    object qrLogInoutMod: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'InoutMod'
      Origin = 'InoutMod'
    end
  end
  object ds1: TDataSource
    AutoEdit = False
    DataSet = qrLog
    Left = 380
    Top = 96
  end
  object qrDevices: TFDQuery
    CachedUpdates = True
    Connection = DataM.Con1
    FetchOptions.AssignedValues = [evItems]
    FetchOptions.Items = [fiBlobs, fiDetails]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.KeyFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM devices')
    Left = 340
    Top = 152
    object qrDevicesID: TByteField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qrDevicesConfig: TStringField
      FieldName = 'Config'
      Origin = 'Config'
      Required = True
      Size = 500
    end
  end
  object ds2: TDataSource
    AutoEdit = False
    DataSet = qrDevices
    Left = 380
    Top = 152
  end
end
