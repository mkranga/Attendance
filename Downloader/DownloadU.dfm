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
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object mmo1: TMemo
    Left = 0
    Top = 111
    Width = 465
    Height = 169
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
    ExplicitTop = 88
  end
  object bt1: TButton
    Left = 8
    Top = 8
    Width = 177
    Height = 73
    Caption = 'Download'
    TabOrder = 0
  end
  object bt2: TButton
    Left = 272
    Top = 8
    Width = 185
    Height = 73
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
  end
end
