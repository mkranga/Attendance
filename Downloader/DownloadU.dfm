object DownloadF: TDownloadF
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  BorderWidth = 10
  Caption = 'Download'
  ClientHeight = 580
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'System'
  Font.Style = [fsBold]
  FormStyle = fsStayOnTop
  Position = poScreenCenter
  ShowInTaskBar = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 16
  object mmolog: TMemo
    Left = 0
    Top = 324
    Width = 473
    Height = 256
    Align = alClient
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 5
  end
  object dbnvgr1: TDBNavigator
    AlignWithMargins = True
    Left = 50
    Top = 61
    Width = 420
    Height = 25
    Margins.Left = 50
    DataSource = ds1
    Align = alTop
    TabOrder = 3
    OnClick = dbnvgr1Click
  end
  object pb1: TProgressBar
    Left = 0
    Top = 41
    Width = 473
    Height = 17
    Margins.Left = 0
    Margins.Top = 5
    Margins.Right = 0
    Margins.Bottom = 5
    Align = alTop
    Style = pbstMarquee
    MarqueeInterval = 50
    TabOrder = 1
    Visible = False
  end
  object dbedtConfig: TDBEdit
    Left = 0
    Top = 59
    Width = 41
    Height = 24
    DataField = 'ID'
    DataSource = ds1
    ReadOnly = True
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 473
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object bt1: TButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 214
      Height = 35
      Align = alLeft
      Caption = 'Download'
      TabOrder = 0
      OnClick = bt1Click
    end
    object bt2: TButton
      AlignWithMargins = True
      Left = 236
      Top = 3
      Width = 234
      Height = 35
      Align = alRight
      Caption = 'Close'
      TabOrder = 1
      OnClick = bt2Click
    end
  end
  object mmoDC: TDBMemo
    AlignWithMargins = True
    Left = 0
    Top = 92
    Width = 473
    Height = 229
    Margins.Left = 0
    Margins.Right = 0
    Align = alTop
    DataField = 'Config'
    DataSource = ds1
    TabOrder = 4
  end
  object con1: TFDConnection
    Params.Strings = (
      'DriverID=MySQL'
      'Database=sserp'
      'Password=systemr'
      'User_Name=root')
    LoginPrompt = False
    BeforeConnect = con1BeforeConnect
    Left = 192
    Top = 136
  end
  object qrDevices: TFDQuery
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
