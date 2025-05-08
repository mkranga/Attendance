inherited CourseSetupF: TCourseSetupF
  AutoSize = True
  BorderWidth = 10
  Caption = 'Course Setup'
  ClientHeight = 593
  ClientWidth = 854
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  ExplicitWidth = 882
  ExplicitHeight = 640
  TextHeight = 16
  object lbl1: TLabel [0]
    Left = 0
    Top = 303
    Width = 44
    Height = 16
    Caption = 'Session'
  end
  object lbl11: TLabel [1]
    Left = 431
    Top = 33
    Width = 50
    Height = 16
    Caption = 'Students'
  end
  object bt11: TSpeedButton [2]
    Left = 401
    Top = 31
    Width = 22
    Height = 22
    Caption = '-'
    OnClick = bt11Click
  end
  object bt12: TSpeedButton [3]
    Left = 357
    Top = 31
    Width = 22
    Height = 22
    Hint = 'Add New'
    Caption = '+'
    ParentShowHint = False
    ShowHint = True
    OnClick = bt12Click
  end
  object bt121: TSpeedButton [4]
    Left = 778
    Top = 31
    Width = 22
    Height = 22
    Hint = 'Add New'
    Caption = '+'
    ParentShowHint = False
    ShowHint = True
    OnClick = bt121Click
  end
  object bt111: TSpeedButton [5]
    Left = 824
    Top = 31
    Width = 22
    Height = 22
    Caption = '-'
    OnClick = bt111Click
  end
  object lbl2: TLabel [6]
    Left = 3
    Top = 6
    Width = 40
    Height = 16
    Caption = 'Course'
  end
  object lbl21: TLabel [7]
    Left = 2
    Top = 33
    Width = 34
    Height = 16
    Caption = 'Group'
  end
  object bt122: TSpeedButton [8]
    Left = 357
    Top = 301
    Width = 22
    Height = 22
    Hint = 'Add New'
    Caption = '+'
    ParentShowHint = False
    ShowHint = True
    OnClick = bt122Click
  end
  object bt112: TSpeedButton [9]
    Left = 401
    Top = 301
    Width = 22
    Height = 22
    Caption = '-'
    OnClick = bt112Click
  end
  object bt123: TSpeedButton [10]
    Left = 403
    Top = 3
    Width = 20
    Height = 25
    Caption = '+'
    OnClick = bt123Click
  end
  object bt13: TSpeedButton [11]
    Left = 379
    Top = 31
    Width = 22
    Height = 22
    Hint = 'Edit'
    Caption = #9998
    ParentShowHint = False
    ShowHint = True
    OnClick = bt13Click
  end
  object bt14: TSpeedButton [12]
    Left = 379
    Top = 301
    Width = 22
    Height = 22
    Hint = 'Edit'
    Caption = #9998
    ParentShowHint = False
    ShowHint = True
    OnClick = bt14Click
  end
  object bt15: TSpeedButton [13]
    Left = 801
    Top = 31
    Width = 22
    Height = 22
    Hint = 'Edit'
    Caption = #9998
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    OnClick = bt15Click
  end
  object bt16: TSpeedButton [14]
    Left = 105
    Top = 300
    Width = 71
    Height = 22
    Hint = 'Edit'
    Caption = 'Instructor'
    ParentShowHint = False
    ShowHint = True
    OnClick = bt16Click
  end
  object dgSession: TDBGrid [15]
    Left = 0
    Top = 322
    Width = 422
    Height = 259
    DataSource = ds12
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'Session ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sdt'
        Title.Alignment = taCenter
        Title.Caption = 'Start'
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'iid'
        Title.Alignment = taCenter
        Title.Caption = 'Instructor'
        Width = 165
        Visible = True
      end>
  end
  object dgStudents: TDBGrid [16]
    Left = 431
    Top = 52
    Width = 415
    Height = 529
    DataSource = ds11
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'code'
        Title.Alignment = taCenter
        Title.Caption = 'Code'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Alignment = taCenter
        Title.Caption = 'Name'
        Width = 285
        Visible = True
      end>
  end
  object btSave: TBitBtn [17]
    Left = 738
    Top = 0
    Width = 108
    Height = 31
    Caption = '&Save All'
    TabOrder = 2
    OnClick = btSaveClick
  end
  object cbb1: TComboBox [18]
    Left = 51
    Top = 4
    Width = 351
    Height = 24
    Style = csDropDownList
    TabOrder = 3
    OnSelect = cbb1Select
  end
  object dgSession1: TDBGrid [19]
    Left = 0
    Top = 52
    Width = 422
    Height = 245
    DataSource = ds1
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dgSession1CellClick
    OnDblClick = dgSession1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'GPrefix'
        Title.Alignment = taCenter
        Title.Caption = 'Code'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Des'
        Title.Alignment = taCenter
        Title.Caption = 'Description'
        Width = 222
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SDate'
        Title.Alignment = taCenter
        Title.Caption = 'Start Date'
        Width = 87
        Visible = True
      end>
  end
  inherited btClose: TBitBtn
    Left = 0
    Top = 19
    TabOrder = 5
    ExplicitLeft = 0
    ExplicitTop = 19
  end
  object dp1: TDateTimePicker [21]
    Left = 179
    Top = 301
    Width = 86
    Height = 22
    Date = 44838.000000000000000000
    Time = 0.079558287034160460
    TabOrder = 6
  end
  object dp2: TDateTimePicker [22]
    Left = 268
    Top = 301
    Width = 86
    Height = 22
    Date = 44838.000000000000000000
    Time = 0.079166666670062110
    Kind = dtkTime
    TabOrder = 7
  end
  inherited qrMain: TFDQuery
    AfterInsert = qrMainAfterInsert
    SQL.Strings = (
      'select * from cgroup where ccode=:ccode')
    Left = 326
    Top = 61
    ParamData = <
      item
        Name = 'CCODE'
        DataType = ftString
        ParamType = ptInput
        Value = '0'
      end>
    object qrMainid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrMainCCode: TStringField
      FieldName = 'CCode'
      Origin = 'CCode'
      Required = True
      Size = 5
    end
    object qrMainGPrefix: TStringField
      FieldName = 'GPrefix'
      Origin = 'GPrefix'
      Required = True
      Size = 5
    end
    object qrMainDes: TStringField
      FieldName = 'Des'
      Origin = 'Des'
      Required = True
      Size = 50
    end
    object mtrdMainSDate: TDateField
      FieldName = 'SDate'
      Origin = 'SDate'
      Required = True
      DisplayFormat = 'yyyy-mm-dd'
      EditMask = '!99/99/00;1;_'
    end
  end
  inherited ds1: TDataSource
    AutoEdit = False
    Left = 358
    Top = 61
  end
  object qrStd: TFDQuery
    CachedUpdates = True
    Connection = DataM.Con1
    UpdateOptions.AssignedValues = [uvLockMode]
    UpdateOptions.LockMode = lmOptimistic
    UpdateOptions.UpdateTableName = 'cgstd'
    UpdateOptions.KeyFields = 'id'
    SQL.Strings = (
      'select cgstd.id, p.id as pid,p.code,p.name from cgstd '
      'left join profile p on stdid=p.id where cgstd.gid=:gid;')
    Left = 534
    Top = 157
    ParamData = <
      item
        Name = 'GID'
        DataType = ftString
        ParamType = ptInput
        Value = '0'
      end>
    object qrStdid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrStdpid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pid'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrStdcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'code'
      Origin = 'code'
    end
    object qrStdname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'name'
      Origin = 'name'
      Size = 50
    end
  end
  object ds11: TDataSource
    AutoEdit = False
    DataSet = qrStd
    Left = 566
    Top = 157
  end
  object qrSes: TFDQuery
    AfterInsert = qrSesAfterInsert
    CachedUpdates = True
    Connection = DataM.Con1
    UpdateOptions.AssignedValues = [uvLockMode]
    UpdateOptions.LockMode = lmOptimistic
    SQL.Strings = (
      'select * from session where gid=:gid')
    Left = 254
    Top = 333
    ParamData = <
      item
        Name = 'GID'
        DataType = ftString
        ParamType = ptInput
        Value = '0'
      end>
    object qrSesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrSesgid: TIntegerField
      FieldName = 'gid'
      Origin = 'gid'
      Required = True
    end
    object qrSessdt: TDateTimeField
      Alignment = taCenter
      FieldName = 'sdt'
      Origin = 'sdt'
      Required = True
      DisplayFormat = 'yyyy-mm-dd hh:nn'
    end
    object qrSesiid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iid'
      Origin = 'iid'
    end
  end
  object ds12: TDataSource
    AutoEdit = False
    DataSet = qrSes
    Left = 286
    Top = 333
  end
end
