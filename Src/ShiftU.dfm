inherited ShiftF: TShiftF
  AlignWithMargins = True
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Shift'
  ClientHeight = 538
  ClientWidth = 491
  ExplicitWidth = 507
  ExplicitHeight = 577
  PixelsPerInch = 96
  TextHeight = 16
  object dg1: TDBGrid [1]
    Left = 0
    Top = 52
    Width = 491
    Height = 486
    Align = alBottom
    DataSource = ds1
    TabOrder = 2
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
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OutTime'
        Title.Alignment = taCenter
        Title.Caption = 'Out Time'
        Width = 100
        Visible = True
      end>
  end
  object bt1: TButton [2]
    Left = 1
    Top = 2
    Width = 129
    Height = 39
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Caption = 'Save'
    TabOrder = 1
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
