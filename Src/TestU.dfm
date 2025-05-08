inherited TestF: TTestF
  Caption = 'Testing'
  PopupMenu = DataM.pmExport
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 16
  object chrt1: TJvChart [0]
    Left = 40
    Top = 24
    Width = 329
    Height = 449
    Options.PenLegends.Strings = (
      'test'
      'a2'
      'b2')
    Options.PenUnit.Strings = (
      'a'
      'ghj'
      'hkh')
    Options.ChartKind = ckChartBar
    Options.Title = 'dfgdfg'
    Options.XAxisValuesPerDivision = 0
    Options.XAxisLabelAlignment = taLeftJustify
    Options.XAxisDateTimeMode = False
    Options.XOrigin = 0
    Options.YOrigin = 0
    Options.YStartOffset = 20
    Options.PrimaryYAxis.YMax = 10.000000000000000000
    Options.PrimaryYAxis.YLegendDecimalPlaces = 0
    Options.SecondaryYAxis.YMax = 10.000000000000000000
    Options.SecondaryYAxis.YLegendDecimalPlaces = 0
    Options.AutoUpdateGraph = False
    Options.MouseDragObjects = False
    Options.Legend = clChartLegendBelow
    Options.LegendRowCount = 3
    Options.AxisLineWidth = 3
    Options.HeaderFont.Charset = DEFAULT_CHARSET
    Options.HeaderFont.Color = clWindowText
    Options.HeaderFont.Height = -12
    Options.HeaderFont.Name = 'Segoe UI'
    Options.HeaderFont.Style = []
    Options.LegendFont.Charset = DEFAULT_CHARSET
    Options.LegendFont.Color = clWindowText
    Options.LegendFont.Height = -12
    Options.LegendFont.Name = 'Segoe UI'
    Options.LegendFont.Style = []
    Options.AxisFont.Charset = DEFAULT_CHARSET
    Options.AxisFont.Color = clWindowText
    Options.AxisFont.Height = -12
    Options.AxisFont.Name = 'Segoe UI'
    Options.AxisFont.Style = []
    Options.PaperColor = clWhite
    Options.AxisLineColor = clBlack
    Options.CursorColor = clBlack
    Options.CursorStyle = psSolid
  end
  object Button1: TButton [2]
    Left = 864
    Top = 112
    Width = 137
    Height = 25
    Caption = 'Save'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton [3]
    Left = 864
    Top = 8
    Width = 129
    Height = 57
    Caption = 'Open'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton [4]
    Left = 864
    Top = 143
    Width = 137
    Height = 33
    Caption = 'Close'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton [5]
    Left = 864
    Top = 81
    Width = 137
    Height = 25
    Caption = 'Import'
    TabOrder = 4
    OnClick = Button4Click
  end
  inherited qrMain: TFDQuery
    SQL.Strings = (
      
        'SELECT t.Des,COUNT(*) as c FROM empmaster e LEFT JOIN typedef t ' +
        'on e.gender=t.Code GROUP BY e.gender')
    Left = 880
    Top = 192
  end
  inherited ds1: TDataSource
    Left = 952
    Top = 232
  end
end
