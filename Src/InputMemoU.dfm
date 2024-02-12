object InputMemoF: TInputMemoF
  Left = 0
  Top = 0
  ActiveControl = Memo1
  BorderStyle = bsToolWindow
  Caption = 'caption'
  ClientHeight = 276
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    475
    276)
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 459
    Height = 33
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'txt'
    WordWrap = True
    ExplicitWidth = 417
  end
  object Memo1: TMemo
    Left = 8
    Top = 55
    Width = 459
    Height = 176
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 253
    Top = 237
    Width = 104
    Height = 32
    Anchors = [akRight, akBottom]
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 363
    Top = 237
    Width = 104
    Height = 32
    Anchors = [akRight, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
end
