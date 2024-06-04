object LoginF: TLoginF
  Left = 245
  Top = 108
  ActiveControl = EdUsername
  BorderStyle = bsNone
  BorderWidth = 10
  Caption = 'Login'
  ClientHeight = 145
  ClientWidth = 362
  Color = clBtnFace
  CustomTitleBar.Height = 2
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clGray
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.Enabled = True
  GlassFrame.Left = 2
  GlassFrame.Top = 2
  GlassFrame.Right = 2
  GlassFrame.Bottom = 2
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 18
  object Image1: TImage
    Left = 0
    Top = 22
    Width = 125
    Height = 123
    Align = alLeft
    Center = True
    Stretch = True
    Transparent = True
    ExplicitTop = 0
    ExplicitHeight = 125
  end
  object Label1: TLabel
    Left = 133
    Top = 66
    Width = 61
    Height = 18
    Caption = 'Password'
  end
  object Label2: TLabel
    Left = 133
    Top = 30
    Width = 39
    Height = 18
    Caption = 'Name'
  end
  object Label3: TLabel
    Left = 0
    Top = 0
    Width = 362
    Height = 22
    Align = alTop
    Alignment = taCenter
    Caption = 'Company Name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 146
  end
  object edPassword: TEdit
    Left = 206
    Top = 62
    Width = 148
    Height = 26
    PasswordChar = '*'
    TabOrder = 1
    TextHint = 'Password'
  end
  object OKBtn: TButton
    Left = 243
    Top = 102
    Width = 111
    Height = 33
    Caption = 'OK'
    Default = True
    TabOrder = 2
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 133
    Top = 102
    Width = 104
    Height = 33
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
    OnClick = CancelBtnClick
  end
  object EdUsername: TEdit
    Left = 206
    Top = 26
    Width = 148
    Height = 26
    CharCase = ecUpperCase
    TabOrder = 0
    TextHint = 'UserName'
  end
end
