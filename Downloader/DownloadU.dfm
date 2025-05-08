object DownloadF: TDownloadF
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Download'
  ClientHeight = 600
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 19
  object bt1: TButton
    Left = 0
    Top = 8
    Width = 214
    Height = 50
    Caption = 'Download'
    TabOrder = 0
    OnClick = bt1Click
  end
  object bt2: TButton
    Left = 232
    Top = 8
    Width = 234
    Height = 50
    Caption = 'Close'
    TabOrder = 1
    OnClick = bt2Click
  end
  object mmo2: TMemo
    Left = 0
    Top = 306
    Width = 466
    Height = 294
    Align = alBottom
    TabOrder = 4
    ExplicitTop = 294
    ExplicitWidth = 458
  end
  object dbnvgr1: TDBNavigator
    Left = 0
    Top = 83
    Width = 466
    Height = 25
    DataSource = ds1
    Align = alBottom
    TabOrder = 2
    OnClick = dbnvgr1Click
    ExplicitTop = 71
    ExplicitWidth = 458
  end
  object dbmmoConfig: TDBMemo
    Left = 0
    Top = 108
    Width = 466
    Height = 198
    Align = alBottom
    DataField = 'Config'
    DataSource = ds1
    TabOrder = 3
    ExplicitTop = 96
    ExplicitWidth = 458
  end
  object pb1: TProgressBar
    AlignWithMargins = True
    Left = 0
    Top = 61
    Width = 466
    Height = 17
    Margins.Left = 0
    Margins.Top = 5
    Margins.Right = 0
    Margins.Bottom = 5
    Align = alBottom
    Style = pbstMarquee
    MarqueeInterval = 50
    TabOrder = 5
    Visible = False
    ExplicitTop = 49
    ExplicitWidth = 458
  end
  object dbedtConfig: TDBEdit
    Left = 416
    Top = 104
    Width = 41
    Height = 27
    DataField = 'ID'
    DataSource = ds1
    ReadOnly = True
    TabOrder = 6
  end
  object con1: TFDConnection
    Params.Strings = (
      'DriverID=MySQL'
      'Database=sserp'
      'Password=systemr'
      'User_Name=root')
    Connected = True
    LoginPrompt = False
    Left = 192
    Top = 136
  end
  object qrDevices: TFDQuery
    Active = True
    AfterInsert = qrDevicesAfterInsert
    Connection = con1
    SQL.Strings = (
      'SELECT * FROM devices')
    Left = 256
    Top = 136
    object qrDevicesID: TByteField
      AutoGenerateValue = arAutoInc
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
  object ds1: TDataSource
    DataSet = qrDevices
    Left = 312
    Top = 136
  end
  object qrAttLog: TFDQuery
    AfterInsert = qrDevicesAfterInsert
    CachedUpdates = True
    Connection = con1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM attlog where true=false')
    Left = 256
    Top = 200
    object qrAttLogDID: TLongWordField
      FieldName = 'DID'
      Origin = 'DID'
      Required = True
    end
    object qrAttLogDTime: TDateTimeField
      FieldName = 'DTime'
      Origin = 'DTime'
      Required = True
    end
  end
  object ds2: TDataSource
    DataSet = qrAttLog
    Left = 312
    Top = 200
  end
end
