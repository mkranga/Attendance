object LoginF: TLoginF
  Left = 245
  Top = 108
  ActiveControl = EdUsername
  BorderStyle = bsNone
  BorderWidth = 10
  Caption = 'Login'
  ClientHeight = 155
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
    AlignWithMargins = True
    Left = 10
    Top = 3
    Width = 113
    Height = 149
    Margins.Left = 10
    Align = alLeft
    Center = True
    Proportional = True
    Stretch = True
    Transparent = True
    ExplicitLeft = 0
    ExplicitTop = 22
    ExplicitHeight = 132
  end
  object Label1: TLabel
    Left = 133
    Top = 74
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
  object lbCompanyN: TLabel
    Left = 144
    Top = -2
    Width = 146
    Height = 22
    Alignment = taCenter
    Caption = 'Company Name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edPassword: TEdit
    Left = 206
    Top = 70
    Width = 148
    Height = 26
    PasswordChar = '*'
    TabOrder = 1
    TextHint = 'Password'
  end
  object OKBtn: TButton
    Left = 243
    Top = 112
    Width = 111
    Height = 33
    Caption = 'OK'
    Default = True
    TabOrder = 3
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 133
    Top = 112
    Width = 104
    Height = 33
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
    OnClick = CancelBtnClick
  end
  object EdUsername: TEdit
    Left = 206
    Top = 26
    Width = 148
    Height = 26
    CharCase = ecUpperCase
    TabOrder = 0
    TextHint = 'User Name'
  end
  object qrMain: TFDQuery
    CachedUpdates = True
    Connection = DataM.Con1
    UpdateOptions.AssignedValues = [uvLockMode]
    UpdateOptions.LockMode = lmOptimistic
    SQL.Strings = (
      'select * from users where user_name=:un')
    Left = 136
    Top = 61
    ParamData = <
      item
        Name = 'UN'
        DataType = ftString
        ParamType = ptInput
        Value = 'Admin'
      end>
    object qrMainID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object qrMainuser_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_name'
      Origin = 'user_name'
      Size = 255
    end
    object qrMainuser_password: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_password'
      Origin = 'user_password'
      Size = 255
    end
    object qrMainEMPNo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPNo'
      Origin = 'EMPNo'
      Size = 15
    end
    object qrMainULvl: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ULvl'
      Origin = 'ULvl'
    end
  end
end
