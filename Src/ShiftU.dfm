inherited ShiftF: TShiftF
  AlignWithMargins = True
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Shift'
  ClientHeight = 526
  ClientWidth = 581
  ExplicitWidth = 607
  ExplicitHeight = 575
  TextHeight = 16
  object dg1: TDBGrid [1]
    Left = 0
    Top = 41
    Width = 581
    Height = 485
    Align = alClient
    DataSource = ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Sname'
        Title.Alignment = taCenter
        Title.Caption = 'Name'
        Width = 181
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SDay'
        Title.Alignment = taCenter
        Title.Caption = 'Day'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InTime'
        Title.Alignment = taCenter
        Title.Caption = 'In Time'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OutTime'
        Title.Alignment = taCenter
        Title.Caption = 'Out Time'
        Width = 133
        Visible = True
      end>
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 581
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitLeft = -3
    ExplicitTop = -6
    ExplicitWidth = 483
    object bt1: TButton
      AlignWithMargins = True
      Left = 463
      Top = 4
      Width = 114
      Height = 33
      Align = alRight
      Caption = 'Save'
      TabOrder = 0
      ExplicitLeft = 360
      ExplicitTop = 9
      ExplicitHeight = 23
    end
  end
  inherited qrMain: TFDQuery
    FetchOptions.AssignedValues = [evItems]
    FetchOptions.Items = [fiBlobs, fiDetails]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvLockMode]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select * from shift order by sname,sday')
    Left = 160
    Top = 0
    object qrMainSid: TFDAutoIncField
      FieldName = 'Sid'
      Origin = 'Sid'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qrMainSname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sname'
      Origin = 'Sname'
      Size = 50
    end
    object qrMainSDay: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SDay'
      Origin = 'SDay'
      Size = 50
    end
    object qrMainInTime: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'InTime'
      Origin = 'InTime'
    end
    object qrMainOutTime: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'OutTime'
      Origin = 'OutTime'
    end
  end
  inherited ds1: TDataSource
    Left = 200
    Top = 0
  end
end
