inherited POSF: TPOSF
  BorderStyle = bsSizeable
  Caption = 'POS'
  ClientHeight = 848
  ClientWidth = 1366
  Font.Charset = ANSI_CHARSET
  Font.Color = clGray
  Font.Height = -21
  Font.Name = 'Arial'
  Visible = True
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  ExplicitWidth = 1392
  ExplicitHeight = 897
  TextHeight = 24
  inherited btClose: TBitBtn
    Cancel = False
  end
  object pgc1: TPageControl [1]
    Left = 0
    Top = 0
    Width = 1366
    Height = 848
    ActivePage = tsPrint
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 1
    object tsMain: TTabSheet
      Caption = 'tsMain'
      TabVisible = False
      object dgInv: TJvDBGrid
        Left = 0
        Top = 57
        Width = 1358
        Height = 781
        Align = alClient
        DataSource = ds1
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clGray
        TitleFont.Height = -21
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDblClick = acteditInvExecute
        OnKeyDown = dgInvKeyDown
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 22
        TitleRowHeight = 28
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Title.Alignment = taCenter
            Title.Caption = 'No'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cname'
            Title.Alignment = taCenter
            Title.Caption = 'Name'
            Width = 267
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tel'
            Title.Alignment = taCenter
            Title.Caption = 'Tel'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date'
            Title.Alignment = taCenter
            Title.Caption = 'Date'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'payment'
            Title.Alignment = taCenter
            Title.Caption = 'Payment'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'paytype'
            Title.Alignment = taCenter
            Title.Caption = 'Pay Type'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cancel'
            Title.Alignment = taCenter
            Title.Caption = 'X'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'addr2'
            Title.Alignment = taCenter
            Title.Caption = 'Address 2'
            Width = 176
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'addr1'
            Title.Alignment = taCenter
            Title.Caption = 'Address'
            Width = 215
            Visible = True
          end>
      end
      object pnl02: TPanel
        Left = 0
        Top = 0
        Width = 1358
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object edItSearchinv: TEdit
          Left = 16
          Top = 13
          Width = 361
          Height = 32
          TabOrder = 4
          TextHint = 'Search Invoice No or Name or Tel'
          OnChange = edItSearchinvChange
        end
        object Button1: TButton
          AlignWithMargins = True
          Left = 893
          Top = 3
          Width = 150
          Height = 51
          Align = alRight
          Caption = 'NEW (F1)'
          TabOrder = 1
          OnClick = actnewInExecute
        end
        object Button2: TButton
          AlignWithMargins = True
          Left = 1049
          Top = 3
          Width = 150
          Height = 51
          Align = alRight
          Caption = 'Edit(F2)'
          TabOrder = 2
          OnClick = acteditInvExecute
        end
        object Button3: TButton
          AlignWithMargins = True
          Left = 1205
          Top = 3
          Width = 150
          Height = 51
          Align = alRight
          Caption = 'Close (Esc)'
          TabOrder = 3
          OnClick = btCloseClick
        end
        object Button5: TButton
          AlignWithMargins = True
          Left = 737
          Top = 3
          Width = 150
          Height = 51
          Align = alRight
          Caption = 'Clone'
          TabOrder = 0
          OnClick = actCloneExecute
        end
      end
    end
    object tsInvoice: TTabSheet
      Caption = 'tsInvoice'
      ImageIndex = 1
      TabVisible = False
      object dgitems: TJvDBGrid
        Left = 0
        Top = 57
        Width = 1009
        Height = 781
        Align = alClient
        DataSource = ds3
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clGray
        TitleFont.Height = -21
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDblClick = dgitemsDblClick
        OnExit = dgitemsExit
        OnKeyPress = dgitemsKeyPress
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 28
        TitleRowHeight = 28
        Columns = <
          item
            Expanded = False
            FieldName = 'name'
            Title.Alignment = taCenter
            Title.Caption = 'Name'
            Width = 378
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qty'
            Title.Alignment = taCenter
            Title.Caption = 'Qty'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'price'
            Title.Alignment = taCenter
            Title.Caption = 'Price'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'discount'
            Title.Alignment = taCenter
            Title.Caption = 'Discount'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'totalval'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 1009
        Top = 57
        Width = 349
        Height = 781
        Align = alRight
        TabOrder = 2
        object Label5: TLabel
          Left = 6
          Top = 58
          Width = 54
          Height = 24
          Caption = 'Name'
          FocusControl = DBEdit2
        end
        object Label6: TLabel
          Left = 6
          Top = 211
          Width = 26
          Height = 24
          Caption = 'Tel'
          FocusControl = DBEdit3
        end
        object Label7: TLabel
          Left = 6
          Top = 98
          Width = 42
          Height = 24
          Caption = 'Addr'
        end
        object Label9: TLabel
          Left = 6
          Top = 20
          Width = 45
          Height = 24
          Caption = 'Date'
          FocusControl = DBEdit6
        end
        object Label10: TLabel
          Left = 6
          Top = 267
          Width = 44
          Height = 24
          Caption = 'Total'
          FocusControl = DBEdit7
        end
        object Label3: TLabel
          Left = 6
          Top = 305
          Width = 81
          Height = 24
          Caption = 'Advance'
        end
        object Label8: TLabel
          Left = 6
          Top = 343
          Width = 82
          Height = 24
          Caption = 'PayType'
        end
        object Label1: TLabel
          Left = 6
          Top = 507
          Width = 100
          Height = 24
          Caption = 'Invoice No'
          FocusControl = DBEdit1
        end
        object lbl1: TLabel
          Left = 6
          Top = 387
          Width = 86
          Height = 24
          Caption = 'Warrenty'
        end
        object lbl2: TLabel
          Left = 6
          Top = 427
          Width = 60
          Height = 24
          Caption = 'Status'
        end
        object lbl3: TLabel
          Left = 6
          Top = 467
          Width = 49
          Height = 24
          Caption = 'UUID'
        end
        object DBEdit7: TDBEdit
          Left = 96
          Top = 263
          Width = 240
          Height = 32
          DataField = 'total'
          DataSource = ds1
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnMouseUp = SelectOnMouseUp
        end
        object DBEdit2: TDBEdit
          Left = 96
          Top = 54
          Width = 240
          Height = 32
          DataField = 'cname'
          DataSource = ds1
          TabOrder = 1
          OnMouseUp = SelectOnMouseUp
        end
        object DBEdit3: TDBEdit
          Left = 96
          Top = 208
          Width = 240
          Height = 32
          DataField = 'tel'
          DataSource = ds1
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnMouseUp = SelectOnMouseUp
        end
        object DBEdit5: TDBEdit
          Left = 96
          Top = 166
          Width = 240
          Height = 32
          CharCase = ecUpperCase
          DataField = 'addr2'
          DataSource = ds1
          TabOrder = 3
          OnMouseUp = SelectOnMouseUp
        end
        object DBEdit6: TDBEdit
          Left = 96
          Top = 16
          Width = 240
          Height = 32
          DataField = 'date'
          DataSource = ds1
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 96
          Top = 303
          Width = 240
          Height = 32
          DataField = 'payment'
          DataSource = ds1
          TabOrder = 6
          OnMouseUp = SelectOnMouseUp
        end
        object JvDBComboBox1: TJvDBComboBox
          Left = 96
          Top = 343
          Width = 240
          Height = 32
          DataField = 'paytype'
          DataSource = ds1
          Items.Strings = (
            'COD'
            'CASH')
          TabOrder = 7
          UpdateFieldImmediatelly = True
          Values.Strings = (
            '0'
            '1')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -12
          ListSettings.OutfilteredValueFont.Name = 'Segoe UI'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object DBEdit1: TDBEdit
          Left = 116
          Top = 503
          Width = 88
          Height = 32
          DataField = 'id'
          DataSource = ds1
          TabOrder = 11
          OnMouseUp = SelectOnMouseUp
        end
        object JvDBCheckBox1: TJvDBCheckBox
          Left = 218
          Top = 511
          Width = 118
          Height = 17
          Caption = 'Cancelled '
          DataField = 'cancel'
          DataSource = ds1
          TabOrder = 12
        end
        object dbedtpayment: TDBEdit
          Left = 96
          Top = 383
          Width = 240
          Height = 32
          DataField = 'warrenty'
          DataSource = ds1
          TabOrder = 8
          OnMouseUp = SelectOnMouseUp
        end
        object dbedtpayment1: TJvDBComboBox
          Left = 96
          Top = 423
          Width = 240
          Height = 32
          DataField = 'status'
          DataSource = ds1
          Items.Strings = (
            'Complete'
            'Pending'
            'Return'
            'Canceled')
          TabOrder = 9
          UpdateFieldImmediatelly = True
          Values.Strings = (
            '0'
            '1'
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -12
          ListSettings.OutfilteredValueFont.Name = 'Segoe UI'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object dbedtpayment2: TDBEdit
          Left = 96
          Top = 463
          Width = 240
          Height = 32
          DataField = 'guid'
          DataSource = ds1
          TabOrder = 10
          OnMouseUp = SelectOnMouseUp
        end
        object dbmmoaddr1: TDBMemo
          Left = 96
          Top = 92
          Width = 240
          Height = 71
          DataField = 'addr1'
          DataSource = ds1
          TabOrder = 2
          OnMouseUp = SelectOnMouseUp
        end
      end
      object pnltop1: TPanel
        Left = 0
        Top = 0
        Width = 1358
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        Caption = 'pnltop1'
        TabOrder = 0
        object EdItemSearch: TEdit
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 724
          Height = 51
          Align = alLeft
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -37
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = 'Search Item (F3)'
          OnDblClick = EdItemSearchDblClick
          OnKeyDown = EdItemSearchKeyDown
          ExplicitHeight = 50
        end
        object btQout: TButton
          AlignWithMargins = True
          Left = 1089
          Top = 3
          Width = 130
          Height = 51
          Align = alRight
          Caption = 'Qoutation'
          TabOrder = 3
          OnClick = actPrintExecute
        end
        object btSave: TButton
          AlignWithMargins = True
          Left = 817
          Top = 3
          Width = 130
          Height = 51
          Align = alRight
          Caption = 'Save (F5)'
          TabOrder = 1
          OnClick = actSaveExecute
        end
        object Button4: TButton
          AlignWithMargins = True
          Left = 1225
          Top = 3
          Width = 130
          Height = 51
          Align = alRight
          Cancel = True
          Caption = 'Close'
          TabOrder = 4
          OnClick = btCloseInvoiceClick
        end
        object btPrint2: TButton
          AlignWithMargins = True
          Left = 953
          Top = 3
          Width = 130
          Height = 51
          Align = alRight
          Caption = 'Print (F6)'
          TabOrder = 2
          OnClick = actPrintExecute
        end
      end
    end
    object tsPrint: TTabSheet
      Caption = 'tsPrint'
      ImageIndex = 2
      TabVisible = False
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 1358
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cbb1: TComboBox
          AlignWithMargins = True
          Left = 6
          Top = 3
          Width = 334
          Height = 32
          Margins.Left = 10
          Margins.Top = 10
          TabOrder = 0
          Text = 'cbbPrinters'
          OnChange = cbb1Change
        end
        object btPrint1: TButton
          AlignWithMargins = True
          Left = 1060
          Top = 3
          Width = 159
          Height = 35
          Align = alRight
          Caption = 'Shipping Label'
          TabOrder = 3
          OnClick = onPrintSL
        end
        object bt1: TButton
          AlignWithMargins = True
          Left = 1225
          Top = 3
          Width = 130
          Height = 35
          Align = alRight
          Cancel = True
          Caption = 'Close'
          TabOrder = 4
          OnClick = bt1Click
        end
        object btPrint3: TButton
          AlignWithMargins = True
          Left = 924
          Top = 3
          Width = 130
          Height = 35
          Align = alRight
          Caption = 'Print (F6)'
          TabOrder = 2
          OnClick = btPrintInvClick
        end
        object btPrint4: TButton
          AlignWithMargins = True
          Left = 788
          Top = 3
          Width = 130
          Height = 35
          Align = alRight
          Caption = 'Print Combo'
          TabOrder = 1
          OnClick = btPrint4Click
        end
      end
      object RLPreview1: TRLPreview
        Left = 0
        Top = 41
        Width = 1358
        Height = 797
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        TabOrder = 1
        object rpCombo: TRLReport
          Left = 639
          Top = 237
          Width = 1123
          Height = 794
          Margins.LeftMargin = 5.000000000000000000
          Margins.TopMargin = 5.000000000000000000
          Margins.RightMargin = 5.000000000000000000
          Margins.BottomMargin = 5.000000000000000000
          AllowedBands = [btHeader, btDetail, btFooter]
          AdjustableMargins = True
          CompositeOptions.NumberPages = False
          DataSource = ds3
          DefaultFilter = RLPDFFilter2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          FriendlyName = 'invoice'
          PageSetup.Orientation = poLandscape
          PreviewOptions.Position = poMainFormCenter
          PreviewOptions.FormStyle = fsStayOnTop
          PrintEmpty = False
          Title = 'Invoice'
          Visible = False
          object RLBand7: TRLBand
            Left = 19
            Top = 19
            Width = 1085
            Height = 175
            BandType = btTitle
            Transparent = False
            object RLDBText24: TRLDBText
              Left = 921
              Top = 3
              Width = 161
              Height = 43
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdAll
              DataField = 'total'
              DataSource = ds1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -29
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Text = ''
              Transparent = False
            end
            object RLLabel13: TRLLabel
              Left = 85
              Top = -2
              Width = 415
              Height = 42
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Lion Technology Solutions'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -35
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rlmgLogo3: TRLImage
              Left = 0
              Top = 0
              Width = 75
              Height = 75
              Center = True
              Scaled = True
            end
            object RLDraw8: TRLDraw
              Left = 80
              Top = 1
              Width = 5
              Height = 77
              Brush.Color = 11141256
              Color = clWhite
              ParentColor = False
              Pen.Style = psClear
              Transparent = False
            end
            object RLLabel20: TRLLabel
              Left = 92
              Top = 45
              Width = 337
              Height = 16
              Caption = 'No:166/A, metikotamulla, Essella, (veyangoda),  Sri Lanka'
              Transparent = False
            end
            object RLLabel21: TRLLabel
              Left = 92
              Top = 62
              Width = 347
              Height = 16
              Caption = 'Tel : (+94) 719466644           E-Mail : mkranga@gmail.com'
              Transparent = False
            end
            object RLLabel22: TRLLabel
              Left = 1
              Top = 121
              Width = 68
              Height = 16
              Caption = 'Customer :'
              Transparent = False
            end
            object RLDBText12: TRLDBText
              Left = 72
              Top = 121
              Width = 335
              Height = 21
              AutoSize = False
              DataField = 'cname'
              DataSource = ds1
              Text = ''
              Transparent = False
            end
            object RLLabel23: TRLLabel
              Left = 2
              Top = 140
              Width = 67
              Height = 16
              Caption = 'Address   :'
              Transparent = False
            end
            object RLDBText15: TRLDBText
              Left = 72
              Top = 139
              Width = 335
              Height = 18
              AutoSize = False
              DataField = 'addr1'
              DataSource = ds1
              Text = ''
              Transparent = False
            end
            object RLLabel24: TRLLabel
              Left = 402
              Top = 121
              Width = 19
              Height = 16
              Caption = 'No'
              Transparent = False
            end
            object RLLabel25: TRLLabel
              Left = 402
              Top = 140
              Width = 30
              Height = 16
              Caption = 'Date'
              Transparent = False
            end
            object RLDBText16: TRLDBText
              Left = 438
              Top = 139
              Width = 80
              Height = 18
              AutoSize = False
              DataField = 'date'
              DataSource = ds1
              Text = ''
              Transparent = False
            end
            object RLDBText17: TRLDBText
              Left = 438
              Top = 121
              Width = 80
              Height = 21
              AutoSize = False
              DataField = 'id'
              DataSource = ds1
              Text = ''
              Transparent = False
            end
            object RLDBText18: TRLDBText
              Left = 72
              Top = 156
              Width = 449
              Height = 20
              AutoSize = False
              DataField = 'addr2'
              DataSource = ds1
              Text = ''
              Transparent = False
            end
            object RLDraw9: TRLDraw
              Left = 3
              Top = 79
              Width = 515
              Height = 4
              Borders.Color = clCream
              Borders.Style = bsClear
              Brush.Color = clSilver
              DrawHeight = 5
              DrawKind = dkLine
              DrawWidth = 0
            end
            object RLLabel26: TRLLabel
              Left = 204
              Top = 83
              Width = 112
              Height = 36
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'INVOICE'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -27
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object RLDBMemo4: TRLDBMemo
              Left = 778
              Top = 102
              Width = 303
              Height = 47
              AutoSize = False
              Behavior = [beSiteExpander]
              DataField = 'addr1'
              DataSource = ds1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText25: TRLDBText
              Left = 778
              Top = 71
              Width = 304
              Height = 30
              AutoSize = False
              DataField = 'cname'
              DataSource = ds1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Text = ''
              Transparent = False
            end
            object RLDBText26: TRLDBText
              Left = 778
              Top = 148
              Width = 304
              Height = 30
              AutoSize = False
              DataField = 'addr2'
              DataSource = ds1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Text = ''
              Transparent = False
            end
            object RLLabel33: TRLLabel
              Left = 567
              Top = 76
              Width = 52
              Height = 19
              Caption = 'From:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel34: TRLLabel
              Left = 567
              Top = 96
              Width = 185
              Height = 19
              Caption = 'Lion Technology Solution'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel35: TRLLabel
              Left = 567
              Top = 116
              Width = 157
              Height = 19
              Caption = '166/A, Metikotamulla'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel36: TRLLabel
              Left = 567
              Top = 136
              Width = 155
              Height = 19
              Caption = 'Essella   (veyangoda)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel38: TRLLabel
              Left = 778
              Top = 53
              Width = 49
              Height = 19
              Caption = 'TO: *'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel37: TRLLabel
              Left = 567
              Top = 156
              Width = 95
              Height = 19
              Caption = '0719466644'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel32: TRLLabel
              Left = 926
              Top = 7
              Width = 61
              Height = 33
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'COD'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -27
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rlmgLogo4: TRLImage
              Left = 565
              Top = 10
              Width = 60
              Height = 60
              Center = True
              Scaled = True
            end
          end
          object RLBand8: TRLBand
            Left = 19
            Top = 194
            Width = 1085
            Height = 26
            BandType = btColumnHeader
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            object RLLabel27: TRLLabel
              Left = 0
              Top = 0
              Width = 45
              Height = 26
              Align = faLeft
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdAll
              Caption = 'QTY'
              Transparent = False
            end
            object RLLabel28: TRLLabel
              Left = 449
              Top = 0
              Width = 69
              Height = 26
              Align = faLeft
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Caption = 'Total'
              Transparent = False
            end
            object RLLabel29: TRLLabel
              Left = 45
              Top = 0
              Width = 332
              Height = 26
              Align = faLeft
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Caption = 'Product Description'
              Transparent = False
            end
            object RLLabel30: TRLLabel
              Left = 377
              Top = 0
              Width = 72
              Height = 26
              Align = faLeft
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Caption = 'Price'
              Transparent = False
            end
            object RLDBText27: TRLDBText
              Left = 778
              Top = -4
              Width = 304
              Height = 30
              AutoSize = False
              DataField = 'tel'
              DataSource = ds1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Text = ''
              Transparent = False
            end
          end
          object RLBand9: TRLBand
            Left = 19
            Top = 220
            Width = 1085
            Height = 39
            Margins.TopMargin = 2.000000000000000000
            object RLDBText19: TRLDBText
              Left = 0
              Top = 8
              Width = 45
              Height = 31
              Align = faLeft
              Alignment = taCenter
              AutoSize = False
              DataField = 'qty'
              DataSource = ds3
              Text = ''
            end
            object RLDBText20: TRLDBText
              Left = 377
              Top = 8
              Width = 72
              Height = 31
              Align = faLeft
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'price'
              DataSource = ds3
              Text = ''
            end
            object RLDBText21: TRLDBText
              Left = 449
              Top = 8
              Width = 69
              Height = 31
              Align = faLeft
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'totalval'
              DataSource = ds3
              Text = ''
            end
            object RLDBMemo3: TRLDBMemo
              Left = 45
              Top = 8
              Width = 332
              Height = 31
              Align = faLeft
              Behavior = [beSiteExpander]
              DataField = 'name'
              DataSource = ds3
            end
          end
          object RLBand10: TRLBand
            Left = 19
            Top = 259
            Width = 1085
            Height = 42
            BandType = btFooter
            Transparent = False
            object RLDBText22: TRLDBText
              Left = 377
              Top = 0
              Width = 142
              Height = 33
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              DataField = 'total'
              DataSource = ds1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Text = ''
              Transparent = False
            end
            object RLLabel31: TRLLabel
              Left = 0
              Top = 0
              Width = 378
              Height = 33
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdAll
              Caption = 'Total'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
            end
          end
          object RLBand11: TRLBand
            Left = 19
            Top = 301
            Width = 1085
            Height = 143
            BandType = btFooter
            Transparent = False
            object RLMemo3: TRLMemo
              Left = 3
              Top = 43
              Width = 510
              Height = 96
              Behavior = [beSiteExpander]
              Lines.Strings = (
                
                  'Payment'#9':     Cheque should be drawn to name "K R M Kapuge"'#9#9#9#9#9 +
                  #9
                #9#9#9#9#9#9#9#9
                'Bank Details:  K R M Kapuge       77848696         BOC, Naiwala'
                #9#9#9#9#9#9#9
                'Prepared by :- K.R.M. Kapuge'#9#9#9#9#9#9#9#9
                
                  'This is a computer-generated document. No signature is required.' +
                  #9#9#9#9#9#9)
              Transparent = False
            end
            object RLMemo4: TRLMemo
              Left = 2
              Top = 5
              Width = 516
              Height = 32
              Behavior = [beSiteExpander]
              Lines.Strings = (
                
                  'Warranty'#9':     Month full warranty. No warranty for lightning, B' +
                  'urn marks or drop/physical damages')
              Transparent = False
            end
            object RLAngleLabel2: TRLAngleLabel
              Left = 403
              Top = 33
              Width = 107
              Height = 107
              Angle = 45.000000000000000000
              AngleBorders = True
              Caption = 'PAID'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -37
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object RLDBText23: TRLDBText
              Left = 62
              Top = 5
              Width = 20
              Height = 21
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'warrenty'
              DataSource = ds1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Text = ''
              Transparent = False
            end
            object RLDraw17: TRLDraw
              Left = 540
              Top = 135
              Width = 2
              Height = 8
              Angle = 90.000000000000000000
              Borders.Color = clCream
              Borders.Style = bsClear
              Brush.Color = clSilver
              DrawHeight = 20
              DrawKind = dkLine
              DrawWidth = 0
            end
          end
          object RLDraw10: TRLDraw
            Left = 535
            Top = 195
            Width = 8
            Height = 390
            Angle = 90.000000000000000000
            Borders.Color = clCream
            Borders.Style = bsClear
            Brush.Color = clSilver
            DrawHeight = 500
            DrawKind = dkLine
            DrawWidth = 5
          end
          object RLDraw11: TRLDraw
            Left = 468
            Top = 195
            Width = 1
            Height = 390
            Angle = 90.000000000000000000
            Borders.Color = clCream
            Borders.Style = bsClear
            Brush.Color = clSilver
            DrawHeight = 500
            DrawKind = dkLine
            DrawWidth = 0
          end
          object RLDraw12: TRLDraw
            Left = 396
            Top = 195
            Width = 1
            Height = 390
            Angle = 90.000000000000000000
            Borders.Color = clCream
            Borders.Style = bsClear
            Brush.Color = clSilver
            DrawHeight = 500
            DrawKind = dkLine
            DrawWidth = 0
          end
          object RLDraw13: TRLDraw
            Left = 64
            Top = 195
            Width = 1
            Height = 390
            Angle = 90.000000000000000000
            Borders.Color = clCream
            Borders.Style = bsClear
            Brush.Color = clSilver
            DrawHeight = 500
            DrawKind = dkLine
            DrawWidth = 0
          end
          object RLDraw14: TRLDraw
            Left = 18
            Top = 195
            Width = 3
            Height = 390
            Angle = 90.000000000000000000
            Borders.Color = clCream
            Borders.Style = bsClear
            Brush.Color = clSilver
            DrawHeight = 500
            DrawKind = dkLine
            DrawWidth = 0
          end
          object RLDraw15: TRLDraw
            Left = 561
            Top = 22
            Width = 3
            Height = 5
            Angle = 90.000000000000000000
            Borders.Color = clCream
            Borders.Style = bsClear
            Brush.Color = clSilver
            DrawHeight = 20
            DrawKind = dkLine
            DrawWidth = 0
          end
        end
        object rpShippingLbl: TRLReport
          Left = 639
          Top = 5
          Width = 472
          Height = 219
          Margins.LeftMargin = 0.000000000000000000
          Margins.TopMargin = 3.000000000000000000
          Margins.RightMargin = 0.000000000000000000
          Margins.BottomMargin = 0.000000000000000000
          AllowedBands = [btHeader, btDetail, btFooter]
          CompositeOptions.NumberPages = False
          DataSource = ds1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial Narrow'
          Font.Style = []
          PageSetup.PaperSize = fpCustom
          PageSetup.Orientation = poLandscape
          PageSetup.PaperWidth = 58.000000000000000000
          PageSetup.PaperHeight = 125.000000000000000000
          PageSetup.ForceEmulation = True
          PreviewOptions.Position = poMainFormCenter
          PreviewOptions.FormStyle = fsStayOnTop
          RecordRange = rrCurrentOnly
          JobTitle = 'ShippingLabel'
          Visible = False
          object codval: TRLDBText
            Left = 310
            Top = 18
            Width = 153
            Height = 39
            Margins.Left = 5
            Margins.Right = 5
            Alignment = taRightJustify
            Borders.Sides = sdAll
            Borders.Width = 2
            DataField = 'total'
            DataSource = ds1
            DisplayMask = ' COD 0/='
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -29
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
          object RLDBMemo2: TRLDBMemo
            Left = 212
            Top = 97
            Width = 265
            Height = 51
            AutoSize = False
            Behavior = [beSiteExpander]
            DataField = 'addr1'
            DataSource = ds1
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -21
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 212
            Top = 71
            Width = 257
            Height = 24
            AutoSize = False
            Behavior = [beSiteExpander]
            DataField = 'cname'
            DataSource = ds1
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -20
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
          object RLDBText13: TRLDBText
            Left = 212
            Top = 147
            Width = 265
            Height = 24
            AutoSize = False
            Behavior = [beSiteExpander]
            DataField = 'addr2'
            DataSource = ds1
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -21
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText13BeforePrint
          end
          object RLDBText14: TRLDBText
            Left = 212
            Top = 171
            Width = 265
            Height = 24
            AutoSize = False
            Behavior = [beSiteExpander]
            DataField = 'tel'
            DataSource = ds1
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -21
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
          object RLLabel14: TRLLabel
            Left = 29
            Top = 84
            Width = 49
            Height = 23
            Caption = 'From:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 29
            Top = 107
            Width = 178
            Height = 23
            Caption = 'Lion Technology Solution'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 29
            Top = 130
            Width = 147
            Height = 23
            Caption = '166/A, Metikotamulla'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 29
            Top = 150
            Width = 153
            Height = 23
            Caption = 'Essella  (Veyangoda)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 29
            Top = 172
            Width = 94
            Height = 23
            Caption = '0719466644'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 197
            Top = 45
            Width = 42
            Height = 24
            Caption = 'TO:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText28: TRLDBText
            AlignWithMargins = True
            Left = 122
            Top = 87
            Width = 42
            Height = 20
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Alignment = taCenter
            Behavior = [beSiteExpander]
            Borders.Sides = sdAll
            DataField = 'id'
            DataSource = ds1
            DisplayMask = 'OID 0'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object rlmgLogo1: TRLImage
            Left = 29
            Top = 18
            Width = 60
            Height = 60
            Center = True
            Scaled = True
          end
        end
        object RptPrintInv: TRLReport
          Left = 3
          Top = 7
          Width = 559
          Height = 794
          Margins.LeftMargin = 5.000000000000000000
          Margins.TopMargin = 5.000000000000000000
          Margins.RightMargin = 5.000000000000000000
          Margins.BottomMargin = 5.000000000000000000
          AllowedBands = [btHeader, btDetail, btFooter]
          AdjustableMargins = True
          CompositeOptions.NumberPages = False
          DataSource = ds3
          DefaultFilter = RLPDFFilter2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          PageSetup.PaperSize = fpA5
          PageSetup.ForceEmulation = True
          PreviewOptions.Position = poMainFormCenter
          PreviewOptions.FormStyle = fsStayOnTop
          PrintEmpty = False
          JobTitle = 'Invoice'
          Visible = False
          object RLDraw4: TRLDraw
            Left = 468
            Top = 220
            Width = 72
            Height = 352
            Align = faRightOnly
            Borders.Sides = sdAll
            Brush.Style = bsClear
            DrawData.Strings = (
              '00'
              '00')
            DrawKind = dkCustom
            Transparent = False
          end
          object RLDraw5: TRLDraw
            Left = 396
            Top = 220
            Width = 73
            Height = 352
            Borders.Sides = sdAll
            Brush.Style = bsClear
            DrawData.Strings = (
              '00'
              '00')
            DrawKind = dkCustom
            Transparent = False
          end
          object RLDraw3: TRLDraw
            Left = 64
            Top = 220
            Width = 333
            Height = 352
            Borders.Sides = sdAll
            Brush.Style = bsClear
            DrawData.Strings = (
              '00'
              '00')
            DrawKind = dkCustom
            Transparent = False
          end
          object RLDraw6: TRLDraw
            Left = 19
            Top = 220
            Width = 46
            Height = 352
            Borders.Sides = sdAll
            Brush.Style = bsClear
            DrawData.Strings = (
              '00'
              '00')
            DrawKind = dkCustom
            Transparent = False
          end
          object RLBand1: TRLBand
            Left = 19
            Top = 19
            Width = 521
            Height = 176
            BandType = btTitle
            Transparent = False
            object RLLabel1: TRLLabel
              Left = 85
              Top = -2
              Width = 415
              Height = 42
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Lion Technology Solutions'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -35
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rlmgLogo2: TRLImage
              Left = 0
              Top = 1
              Width = 74
              Height = 78
              Center = True
              Scaled = True
              Transparent = False
            end
            object RLDraw1: TRLDraw
              Left = 80
              Top = 1
              Width = 4
              Height = 77
              Brush.Color = 11141256
              Color = clWhite
              ParentColor = False
              Transparent = False
            end
            object RLLabel2: TRLLabel
              Left = 92
              Top = 45
              Width = 337
              Height = 16
              Caption = 'No:166/A, metikotamulla, Essella, (veyangoda),  Sri Lanka'
              Transparent = False
            end
            object RLLabel3: TRLLabel
              Left = 92
              Top = 62
              Width = 347
              Height = 16
              Caption = 'Tel : (+94) 719466644           E-Mail : mkranga@gmail.com'
              Transparent = False
            end
            object RLLabel9: TRLLabel
              Left = 1
              Top = 121
              Width = 68
              Height = 16
              Caption = 'Customer :'
              Transparent = False
            end
            object RLDBText5: TRLDBText
              Left = 72
              Top = 121
              Width = 335
              Height = 21
              AutoSize = False
              DataField = 'cname'
              DataSource = ds1
              Text = ''
              Transparent = False
            end
            object RLLabel10: TRLLabel
              Left = 2
              Top = 140
              Width = 67
              Height = 16
              Caption = 'Address   :'
              Transparent = False
            end
            object RLDBText6: TRLDBText
              Left = 72
              Top = 139
              Width = 335
              Height = 18
              AutoSize = False
              DataField = 'addr1'
              DataSource = ds1
              Text = ''
              Transparent = False
            end
            object RLLabel11: TRLLabel
              Left = 402
              Top = 121
              Width = 19
              Height = 16
              Caption = 'No'
              Transparent = False
            end
            object RLLabel12: TRLLabel
              Left = 402
              Top = 140
              Width = 30
              Height = 16
              Caption = 'Date'
              Transparent = False
            end
            object RLDBText7: TRLDBText
              Left = 438
              Top = 139
              Width = 80
              Height = 18
              AutoSize = False
              DataField = 'date'
              DataSource = ds1
              Text = ''
              Transparent = False
            end
            object RLDBText9: TRLDBText
              Left = 438
              Top = 121
              Width = 80
              Height = 21
              AutoSize = False
              DataField = 'id'
              DataSource = ds1
              Text = ''
              Transparent = False
            end
            object RLDBText10: TRLDBText
              Left = 72
              Top = 156
              Width = 449
              Height = 20
              AutoSize = False
              DataField = 'addr2'
              DataSource = ds1
              Text = ''
              Transparent = False
            end
            object RLDraw2: TRLDraw
              Left = 3
              Top = 79
              Width = 515
              Height = 4
              Borders.Color = clCream
              Borders.Style = bsClear
              Brush.Color = clSilver
              DrawHeight = 5
              DrawKind = dkLine
              DrawWidth = 0
              Pen.Width = 2
              Transparent = False
            end
            object rlTitle: TRLLabel
              Left = 204
              Top = 83
              Width = 112
              Height = 36
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'INVOICE'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -27
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
          end
          object RLBand2: TRLBand
            Left = 19
            Top = 195
            Width = 521
            Height = 26
            BandType = btColumnHeader
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = False
            object RLLabel4: TRLLabel
              Left = 0
              Top = 0
              Width = 45
              Height = 26
              Align = faLeft
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdAll
              Caption = 'QTY'
              Transparent = False
            end
            object RLLabel5: TRLLabel
              Left = 449
              Top = 0
              Width = 72
              Height = 26
              Align = faClient
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Caption = 'Total'
              Transparent = False
            end
            object RLLabel6: TRLLabel
              Left = 45
              Top = 0
              Width = 332
              Height = 26
              Align = faLeft
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Caption = 'Product Description'
              Transparent = False
            end
            object RLLabel7: TRLLabel
              Left = 377
              Top = 0
              Width = 72
              Height = 26
              Align = faLeft
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Caption = 'Price'
              Transparent = False
            end
          end
          object RLBand3: TRLBand
            Left = 19
            Top = 221
            Width = 521
            Height = 40
            AutoExpand = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Transparent = False
            object RLDBText1: TRLDBText
              Left = 1
              Top = 0
              Width = 44
              Height = 40
              Align = faLeft
              Alignment = taCenter
              AutoSize = False
              DataField = 'qty'
              DataSource = ds3
              Layout = tlCenter
              Text = ''
              Transparent = False
            end
            object RLDBText3: TRLDBText
              Left = 377
              Top = 0
              Width = 72
              Height = 40
              Align = faLeft
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'price'
              DataSource = ds3
              Layout = tlCenter
              Text = ''
              Transparent = False
            end
            object RLDBText4: TRLDBText
              Left = 449
              Top = 0
              Width = 69
              Height = 40
              Align = faLeft
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'totalval'
              DataSource = ds3
              Layout = tlCenter
              Text = ''
              Transparent = False
            end
            object RLDBMemo1: TRLDBText
              Left = 45
              Top = 0
              Width = 332
              Height = 40
              Align = faLeft
              AutoSize = False
              Behavior = [beSiteExpander]
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'name'
              DataSource = ds3
              Layout = tlCenter
              Text = ''
              Transparent = False
            end
          end
          object RLBand5: TRLBand
            Left = 19
            Top = 261
            Width = 521
            Height = 61
            AlignToBottom = True
            AutoExpand = False
            BandType = btFooter
            Transparent = False
            object RLDBText8: TRLDBText
              Left = 377
              Top = 28
              Width = 144
              Height = 33
              Align = faRightBottom
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              DataField = 'total'
              DataSource = ds1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
              Text = ''
              Transparent = False
            end
            object RLLabel8: TRLLabel
              Left = 0
              Top = 28
              Width = 378
              Height = 33
              Align = faLeftBottom
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Caption = 'Total'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
              Transparent = False
            end
            object RLLabel39: TRLLabel
              Left = 0
              Top = 0
              Width = 378
              Height = 28
              Align = faLeftTop
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Caption = 'Advance'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
              Transparent = False
            end
            object RLDBText29: TRLDBText
              Left = 377
              Top = 0
              Width = 144
              Height = 28
              Align = faRightTop
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              DataField = 'payment'
              DataSource = ds1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
              Text = ''
              Transparent = False
            end
          end
          object RLBand4: TRLBand
            Left = 19
            Top = 322
            Width = 521
            Height = 143
            AlignToBottom = True
            AutoExpand = False
            BandType = btFooter
            Transparent = False
            object RLMemo1: TRLMemo
              Left = 3
              Top = 43
              Width = 510
              Height = 96
              Behavior = [beSiteExpander]
              Lines.Strings = (
                
                  'Payment'#9':     Cheque should be drawn to name "K R M Kapuge"'#9#9#9#9#9 +
                  #9
                #9#9#9#9#9#9#9#9
                'Bank Details:  K R M Kapuge       77848696         BOC, Naiwala'
                #9#9#9#9#9#9#9
                'Prepared by :- K.R.M. Kapuge'#9#9#9#9#9#9#9#9
                
                  'This is a computer-generated document. No signature is required.' +
                  #9#9#9#9#9#9)
              Transparent = False
            end
            object RLMemo2: TRLMemo
              Left = 2
              Top = 5
              Width = 516
              Height = 32
              Behavior = [beSiteExpander]
              Lines.Strings = (
                
                  'Warranty'#9':     Month full warranty. No warranty for lightning, B' +
                  'urn marks or drop/physical damages')
              Transparent = False
            end
            object RLAngleLabel1: TRLAngleLabel
              Left = 403
              Top = 33
              Width = 107
              Height = 107
              Angle = 45.000000000000000000
              AngleBorders = True
              Caption = 'PAID'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -37
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              Visible = False
            end
            object RLDBText2: TRLDBText
              Left = 62
              Top = 5
              Width = 20
              Height = 21
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'warrenty'
              DataSource = ds1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Text = ''
              Transparent = False
            end
          end
        end
      end
    end
  end
  inherited qrMain: TFDQuery
    AfterInsert = qrMainAfterInsert
    BeforePost = qrMainBeforePost
    SQL.Strings = (
      'select * from invoice order by id desc;')
    Left = 789
    Top = 392
    object qrMainid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qrMaincname: TStringField
      FieldName = 'cname'
      Origin = 'cname'
      Required = True
      OnSetText = qrMaincnameSetText
      Size = 200
    end
    object qrMainaddr1: TStringField
      FieldName = 'addr1'
      Origin = 'addr1'
      Required = True
      OnSetText = qrMaincnameSetText
      Size = 150
    end
    object qrMainaddr2: TStringField
      FieldName = 'addr2'
      Origin = 'addr2'
      Required = True
      OnSetText = qrMaincnameSetText
      Size = 150
    end
    object qrMaindate: TDateTimeField
      FieldName = 'date'
      Origin = 'date'
      Required = True
      DisplayFormat = 'yyyy-mm-dd'
    end
    object qrMaintotal: TLongWordField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'total'
      Origin = 'total'
    end
    object qrMainpayment: TLongWordField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'payment'
      Origin = 'payment'
    end
    object qrMainpaytype: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'paytype'
      Origin = 'paytype'
      Size = 5
    end
    object qrMaincancel: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'cancel'
      Origin = 'cancel'
    end
    object qrMainstatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 1
    end
    object qrMainwarrenty: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'warrenty'
      Origin = 'warrenty'
    end
    object qrMainguid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'guid'
      Origin = 'guid'
      Size = 36
    end
    object qrMaintel: TStringField
      FieldName = 'tel'
      Origin = 'tel'
      Required = True
      Size = 30
    end
  end
  inherited ds1: TDataSource
    Left = 783
    Top = 464
  end
  object qrItem: TFDQuery
    BeforePost = qrItemBeforePost
    AfterPost = qrItemAfterPost
    CachedUpdates = True
    Aggregates = <
      item
        Name = 'billtotal'
        Expression = 'sum(totalval)'
        Active = True
      end>
    AggregatesActive = True
    Connection = DataM.Con1
    UpdateOptions.AssignedValues = [uvLockMode]
    UpdateOptions.LockMode = lmOptimistic
    SQL.Strings = (
      'select * from invitems where invid=:id'
      'order by id')
    Left = 731
    Top = 392
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrItemid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qrItemname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'name'
      Origin = 'name'
      Size = 250
    end
    object qrItemqty: TLongWordField
      AutoGenerateValue = arDefault
      DefaultExpression = '1'
      FieldName = 'qty'
      Origin = 'qty'
    end
    object qrItemprice: TLongWordField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'price'
      Origin = 'price'
    end
    object qrItemdiscount: TLongWordField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'discount'
      Origin = 'discount'
    end
    object qrItemtotalval: TLongWordField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'totalval'
      Origin = 'totalval'
    end
    object qrIteminvid: TIntegerField
      DefaultExpression = '-1'
      FieldName = 'invid'
      Origin = 'invid'
      Required = True
    end
  end
  object ds3: TDataSource
    DataSet = qrItem
    Left = 729
    Top = 464
  end
  object spClone: TFDStoredProc
    Connection = DataM.Con1
    StoredProcName = 'sserp.cloneInv'
    Left = 784
    Top = 528
    ParamData = <
      item
        Position = 1
        Name = 'id1'
        DataType = ftInteger
        ParamType = ptInput
        Value = '0'
      end>
  end
  object RLPDFFilter2: TRLPDFFilter
    DocumentInfo.Title = 'Invoice'
    DocumentInfo.Subject = 'invoice'
    DocumentInfo.Author = 'Ranga'
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DocumentInfo.Producer = 'SSERP'
    FileName = 'D:\MYDOC\Projects\Github\SSERP\Res\RepMain.pdf'
    DisplayName = 'Invoice'#13#10
    Left = 789
    Top = 604
  end
  object alMain: TActionList
    Images = DataM.imglst1
    Left = 728
    Top = 528
    object actnewIn: TAction
      Category = 'Main'
      Caption = 'NEW (F1)'
      ShortCut = 112
      OnExecute = actnewInExecute
    end
    object acteditInv: TAction
      Category = 'Main'
      Caption = 'Edit(F2)'
      ShortCut = 113
      OnExecute = acteditInvExecute
    end
    object actSave: TAction
      Category = 'Main'
      Caption = 'Save (F5)'
      ShortCut = 116
      OnExecute = actSaveExecute
    end
    object actPrint: TAction
      Category = 'Main'
      Caption = 'Print (F6)'
      ShortCut = 117
      OnExecute = actPrintExecute
    end
    object actClone: TAction
      Category = 'Main'
      Caption = 'Clone'
      OnExecute = actCloneExecute
    end
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 524
    Top = 254
  end
end
