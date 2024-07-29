object DownloadF: TDownloadF
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Download'
  ClientHeight = 574
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 19
  object mmo1: TMemo
    Left = 0
    Top = 80
    Width = 465
    Height = 200
    Align = alBottom
    Lines.Strings = (
      'MType=2'
      'MachineNo=2'
      'IpAddress=192.168.1.225'
      'NetPort=5005'
      'TimeOut=5000'
      'ProtocolType=0'
      'NetPassword=0'
      'License=1263'
      'MType:1=FKAttend,2=SBXPC,3=')
    TabOrder = 2
  end
  object bt1: TButton
    Left = 8
    Top = 8
    Width = 209
    Height = 57
    Caption = 'Download'
    TabOrder = 0
  end
  object bt2: TButton
    Left = 232
    Top = 8
    Width = 225
    Height = 57
    Caption = 'Close'
    TabOrder = 1
  end
  object mmo2: TMemo
    Left = 0
    Top = 280
    Width = 465
    Height = 294
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 268
    ExplicitWidth = 457
  end
end
