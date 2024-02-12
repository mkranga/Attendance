object DataM: TDataM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 254
  Width = 368
  object ds1: TDataSource
    Left = 256
    Top = 72
  end
  object Con1: TFDConnection
    ConnectionName = 'cmcon'
    Params.Strings = (
      'Database=sserp'
      'User_Name=root'
      'Password=systemr'
      'Server=localhost'
      'DriverID=MySQL')
    ConnectedStoredUsage = [auDesignTime]
    Connected = True
    LoginPrompt = False
    OnError = MySQLerr
    AfterConnect = Con1AfterConnect
    BeforeConnect = Con1BeforeConnect
    Left = 24
    Top = 24
  end
  object qr1: TFDQuery
    Connection = Con1
    SQL.Strings = (
      'select * from settings;')
    Left = 256
    Top = 24
  end
  object qrTypeDef: TFDQuery
    CachedUpdates = True
    Connection = Con1
    UpdateOptions.AssignedValues = [uvLockMode]
    UpdateOptions.LockMode = lmOptimistic
    SQL.Strings = (
      'select * from typedef order by typeA')
    Left = 80
    Top = 176
    object qrTypeDefCode: TStringField
      FieldName = 'Code'
      Origin = 'Code'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object qrTypeDefDes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Des'
      Origin = 'Des'
      Size = 255
    end
    object qrTypeDefTypeA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TypeA'
      Origin = 'TypeA'
      Size = 2
    end
  end
  object dsTypeDef: TDataSource
    DataSet = qrTypeDef
    Left = 136
    Top = 176
  end
end
