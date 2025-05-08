object DataFormTPL: TDataFormTPL
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  BorderWidth = 5
  ClientHeight = 643
  ClientWidth = 1037
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  TextHeight = 16
  object btClose: TBitBtn
    Left = -10
    Top = 0
    Width = 1
    Height = 1
    Cancel = True
    Caption = 'x'
    TabOrder = 0
    OnClick = btCloseClick
  end
  object qrMain: TFDQuery
    CachedUpdates = True
    Connection = DataM.Con1
    UpdateOptions.AssignedValues = [uvLockMode]
    UpdateOptions.LockMode = lmOptimistic
    Left = 888
    Top = 48
  end
  object ds1: TDataSource
    DataSet = qrMain
    Left = 920
    Top = 48
  end
end
