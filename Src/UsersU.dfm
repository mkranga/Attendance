inherited UsersF: TUsersF
  Top = 35
  Caption = 'Users'
  ClientHeight = 369
  ClientWidth = 508
  Position = poScreenCenter
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  ExplicitWidth = 534
  ExplicitHeight = 418
  TextHeight = 16
  object Label2: TLabel [0]
    Left = 0
    Top = 8
    Width = 63
    Height = 16
    Caption = 'User Name'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [1]
    Left = 0
    Top = 38
    Width = 55
    Height = 16
    Caption = 'Password'
  end
  object Label4: TLabel [2]
    Left = 280
    Top = 8
    Width = 43
    Height = 16
    Caption = 'EMP No'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [3]
    Left = 280
    Top = 38
    Width = 29
    Height = 16
    Caption = 'Level'
    FocusControl = DBEdit5
  end
  inherited btClose: TBitBtn
    Left = 413
    Top = 47
    Width = 91
    Height = 40
    Caption = 'Close'
    TabOrder = 5
    ExplicitLeft = 413
    ExplicitTop = 47
    ExplicitWidth = 91
    ExplicitHeight = 40
  end
  object DBEdit2: TDBEdit [5]
    Left = 78
    Top = 4
    Width = 185
    Height = 24
    CharCase = ecUpperCase
    DataField = 'user_name'
    DataSource = ds1
    TabOrder = 0
  end
  object DBEdit4: TDBEdit [6]
    Left = 341
    Top = 4
    Width = 50
    Height = 24
    DataField = 'EMPNo'
    DataSource = ds1
    TabOrder = 1
  end
  object DBEdit5: TDBEdit [7]
    Left = 341
    Top = 34
    Width = 50
    Height = 24
    DataField = 'ULvl'
    DataSource = ds1
    TabOrder = 4
  end
  object DBGrid1: TDBGrid [8]
    Left = 0
    Top = 93
    Width = 508
    Height = 276
    Align = alBottom
    DataSource = ds1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_name'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Name'
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPNo'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'EMP No'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ULvl'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Level'
        Visible = True
      end>
  end
  object btSave: TButton [9]
    Left = 413
    Top = 4
    Width = 91
    Height = 37
    Caption = 'Save'
    TabOrder = 2
    OnClick = btSaveClick
  end
  object edPwd: TEdit [10]
    Left = 78
    Top = 34
    Width = 185
    Height = 24
    PasswordChar = '*'
    TabOrder = 3
    TextHint = 'Password'
  end
  object edPwd2: TEdit [11]
    Left = 78
    Top = 64
    Width = 185
    Height = 24
    PasswordChar = '*'
    TabOrder = 6
    TextHint = 'Confirm Password'
  end
  inherited qrMain: TFDQuery
    Active = True
    BeforeDelete = qrMainBeforeDelete
    SQL.Strings = (
      
        '                                                       select * ' +
        'from users')
    Left = 224
    Top = 208
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
  inherited ds1: TDataSource
    Left = 256
    Top = 208
  end
end
