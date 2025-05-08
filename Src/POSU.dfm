inherited POSF: TPOSF
  BorderStyle = bsSizeable
  Caption = 'POS'
  ClientHeight = 848
  ClientWidth = 1366
  Font.Charset = ANSI_CHARSET
  Font.Color = clGray
  Font.Height = -21
  Font.Name = 'Arial'
  FormStyle = fsNormal
  Visible = True
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
        TabOrder = 0
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
            Width = 95
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
            Width = 180
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
            FieldName = 'addr1'
            Title.Alignment = taCenter
            Title.Caption = 'Address'
            Width = 215
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'addr2'
            Title.Alignment = taCenter
            Title.Caption = 'Address 2'
            Width = 176
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
        TabOrder = 1
        ExplicitLeft = -7
        ExplicitTop = -6
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
          ExplicitLeft = 756
          ExplicitTop = 2
          ExplicitHeight = 49
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
          ExplicitLeft = 912
          ExplicitTop = 2
          ExplicitHeight = 49
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
          ExplicitLeft = 1068
          ExplicitTop = 2
          ExplicitHeight = 49
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
          ExplicitLeft = 600
          ExplicitTop = 2
          ExplicitHeight = 49
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
        TabOrder = 0
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
        TabOrder = 1
        ExplicitTop = -401
        ExplicitHeight = 1239
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
        TabOrder = 2
        ExplicitTop = 781
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
          ExplicitLeft = 4
          ExplicitTop = 4
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
          ExplicitLeft = 1086
          ExplicitTop = 4
          ExplicitHeight = 49
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
          ExplicitLeft = 814
          ExplicitTop = 4
          ExplicitHeight = 49
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
          ExplicitLeft = 1222
          ExplicitTop = 4
          ExplicitHeight = 49
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
          ExplicitLeft = 950
          ExplicitTop = 4
          ExplicitHeight = 49
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
          ExplicitLeft = 1059
          ExplicitTop = 4
          ExplicitHeight = 33
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
          ExplicitLeft = 1224
          ExplicitTop = 4
          ExplicitHeight = 33
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
          ExplicitLeft = 923
          ExplicitTop = 4
          ExplicitHeight = 33
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
          ExplicitLeft = 787
          ExplicitTop = 4
          ExplicitHeight = 33
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
        ExplicitHeight = 765
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
            object RLImage2: TRLImage
              Left = 3
              Top = 3
              Width = 75
              Height = 75
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000960000
                009608060000003C0171E2000000097048597300000F6100000F6101A83FA769
                000027184944415478DAED5D07785455D37EB7A427F4DE7BEFBD7708200A4853
                F0D3CFEF0704449A8828D24210902A222262A748514069099D1042EF107A972E
                91407AB2FBCFDC92DCDDEC2624D9CDEE863B3C28C96DE79EF3DE33EFCC9933A3
                311A8DC88868349A173B0F5A1DC077371ABCE19BA733FA07D444935743B0E9EB
                30042D8D4154249FA7854E6F842189CECB58435449251A6174B43A039212F967
                2FF8E46A02FF41ADD06DF8191CFC6B1B564E8AC6F37FE93C2D8F24F7FB8BDC37
                A31811DA626B60892FA7D11AA4463740DB011DD177522194A8948038B8C1030F
                F1F79583085A72183B7E8CC2B327F29DA1822B0B92D27F3EF0CBD7081DDE6D82
                4E43A8DF2BA4F4FB9D4BDBB126E02876AFE0F3B40442FEF0D3FBA81D0E2C6AA8
                9E00257C2D6550A54957BC35BD32EAB64B403CFD893368E96A0335D31D1E5A77
                78E21FDCBB7B00418BC3B06DE9733C7DC4B7E7F7C8E611C90922F49B2F72176C
                8ACE839BC17F587E142D168FD854FDEE06775CC0895D5BB17CC20D5C38C8172B
                C7CD92380C585A61FA1567A8DCC857B423FA7DD6181DDFD3C34D1783E749343D
                6BC4E9576A287D2574BE41476AD00F79F10C11CF7FC617BDC3712C58234ED106
                478D90AB09F5AD96679CAAA8D7E91D7CBC2E17F2FA46220249A40E695CB4E6FD
                4E7D6BF482AF2E11094987B07DE976AC9EF6144FEEF171E5382A25DB81A5D4D5
                04125D33741DDA01BD26E441C122A4CBF94592B402D732156E3CFF9E3800EEE1
                C6C51D58379D38C006FAC29E1BC5094B9DB53220FC319206F0250EDBA3037A4F
                288A329589C326F7B3F9F9FC7BBA4647DC17FFE2D1839DF83D30145B96301895
                DC583E3F1B81A5D1681524B10AEA76EC82B702CBA06AA338C42011F1894CCACD
                AF350A4D3418F88B2110C511919FBF13EB66C8445E95AC0B13F6F6E8FD494B74
                1B4D60F3903406CF5CA9540D8F9F1EEE7A4FBAEA3AC28F6C21F5781127B6F331
                1E3F71F6321AB305583A8D2E79BA2C886215C8DA9B5A172DFBF3CFB1884EF325
                8840EA49CFE33C8E066DC62FE3EFE0EA49F1252C4FC14E22FC1169E5AFDF207C
                C9CE696428FBB104CAD57905EFCCAC8A06FE4CDEE96F9A1FBB27BC8599ED0442
                5692F538F911EE5E91EF99644CCAF0D8646AC6A22FC1BB0D7A8C698DEE1FF922
                57AE683C13A64D0695F9F9F280F0B4FB08F76E0561E5C4C3D8F98BD4683DAB4B
                6775355803BC337F089255AE93C97843B47F9B3EFE690551B4148D138D87657A
                22F35A6FF8699F2332722F36CEDE8B0DF3E2101B9D2D33567D4DEB37DAA3CFC4
                52A8508D79541212A9A13A0B0D9589A20F11C5C424B2FCBE0E26A248D6DF6389
                9BC15949BA4C78F91DB40277ECFC1EFDFDBF8308FE31858BA49CE3E8F65A7E07
                FEC88D42FBC85A2CD009FD2692C5F8BE1E7A32A8A2521954B2906621BEAC1726
                82DBB8727E07D6061E33EE5D95E1E7671458F3357FF1D449936B0C235F8BD46A
                CFC88D93D5DE459CDCBD05BF7E42A6ED213EE8025F7BB20FAE1A1A74E1AFBD34
                2AD7272B0A64E5E2262E1D0FC2AAC9E7707893FC3E2FE20B729428FBBB0CAA34
                EE8AFFCCA88C3A6DE353D4A30EA2BB422146235BED1EF0D2110031DAF8EA8B79
                C5957D995160CDD4AC4E1286200DB4B3B5F7007F5FDF81D50187B0E327F9059D
                7C00927D39C550BA863F71C79A68FA3A7FF371027764EBD768E4CEA6C1C0591C
                DCB88D00F637AE9D525CCF03E874EF67FEC1344687FF7640BF498551BC2C5B8F
                69691DFEEF78633F5D869F995160CDD2AC352015C24561404521F2D97E6C59B8
                07EBE7F0F281C8CA9CD737A5FCA25965B443AF8F49ED0D2732EB4916552AEEC8
                EFC13D46AA424BB3763CA9C7C53BB06EE633443C30BF9FB389ECF3E2198997D9
                DAA0E7D816E83AC207B9FC186056C4F8B1B18F3623CF119E65236019093C49A7
                7060E576AC0E248BE232FFD2B93B3985E7F1D7DA14FE83DAA3D78402285A82B9
                A3351F902C4AA3E4091EDCDB85F533897F7D435F7F82B3F32FE5B8B065DF117D
                27D646F3FED45E0B6AD141C0E2CE23EEA18DC0C35B9F634869B1E1CEBBB06CAE
                16AAA2BEBF3FDE0C288B6A8DE21143BC23DE0AEF10549C453E29FB826EE2E289
                20FC36F92C0EFD25F683F3AA7FF305EB4FB1E4665E142A455CD26046731C072C
                5E83BA875B17E663744D83A02A849B3A5D672ABFD4222855AD33DE9C520BCDFB
                7053D3F0C1094456BE963BDDFC1CD91794C2BF0EFDC904DF05FC74024DA1366B
                4763DE99A2285585D7169D0A5844624FCFC398DA8EEEA9B4DE959B4B7C227F3B
                BCFE51737419E1091F2F4B3C4A1659DDF16C14875826EE1AB6A612ADCC6AA6FC
                2B36FE10829790B93E231211F71DFDF2E9C918CC3B551CE56A3911B0842F554B
                66F8D12FF15143386184823CC33444BB77382E8C7854C968612DCDAA3594EC8D
                E6173988A0EF0E60EBA2EA68DCB3055E199E1BF90BC4A6614DA5AC850A6B71F7
                B7634DE0016C5B624C99CD9D4984F11A89D9474AA3520332480C661F59B6018B
                A774A59594E44103700DE70E2EC2274D9D2DAE4A7613B8C3D3EB332CBDE7873C
                B9899C27E8A0D7C30A67127D709EB88A33A1BC7E760567F6CA27E441FE62ADD1
                634C13741CE20D3F1FBA975174A4A622FA46025E2281D32D0109498118584472
                0E6B9C0B5CE2780DC78CB072A8DE4474AD98BC8B8180952DEE068BC0A2CE0F5D
                8C092D9CADE3E4F6B02BE1432C082735958F66148D394F52FAE0C8AABDB513EB
                02C310B48CAF9548385BBE1A992B154689CAEDD1E7D37A68F5B68E78558CE4EB
                325723FC1F22C4B1F330BAEA133CBCC9C79DC95A94FB6718A6EFAF809ACD9D0A
                58AC322EE1F4FE6FF0594B27EC38A13D6CF18CC5824B64C17A48C01780251372
                029C260ACF9E93CAFB6A37D6CF89422447B66A44DF4F0AF1365F8B2B876ACDC9
                AA9C5219753BB0773E1EB189E2ECA59129012F626301C6D6BC8B1B67A5FB395D
                FF0C45604825D46A11EB2860CDD4ACE175B2E407F1C0F07AE0459CD8B704935A
                3B1FB0C4812C8AD2354661EE195E8E82A0AB0DC29B53DBB5A4B28CC7B1EFD71D
                5833FD21FEBEC427A467C999C78DD743EB373AA1DFE462285345E9CD16D5B087
                E62B8C6F760317C234C2ECE73C16A23C5E43306D6F65D46EC533AF52AD7390C0
                78635F7D86EF6B2B605DC0F17DDF62B233024B18480E95FE0033C3C85AE31823
                C8AE810B3816148CD553AF233C8CCFCFA8EF49B9D84BF7F4698DD74673D4870F
                72E78AC1338E944D222EE6B61453BA86E3D85667733DC8E3F51EA6EEAD827AAD
                7881DA2980A5508521A40A5B391BB0E481A44EF31F88899B894BE93C4467E6B1
                ED583BED0CC236CAE719CD222733F31CFE774A9C5AABFE3473117CF549BF62F6
                801308599D5E7C79768B4215EE2355D8D25C153A03B09C9263899190498944B2
                FBD374BFE2262E5CDF830DB30E62FBF76CB5D93684C734B256F2EA075647A306
                3F61E607A1D8B2486E8FA3FB25B9C5E970AC6C04D6EA047A70F2831456E101B2
                0A9B3B9B55C83C872D3EF6619546E57A5BF0EB647171DC7E1E71B3BD007A9ABD
                264622E25108362D724255288CD7FB981E5A1E359BC5A502962171BCB19F5B86
                EF9B19AB903AC628EB6111585EBA6B382FF9B19CCF41CAC27E2B9EA1F8DFD935
                B8CAE7C80077743F581061BC443F56B5261C6727034B72F46AB2C52A0CD42C7F
                EA87BC1C8E9C241157618DEC062E1E5988718DE0A4C06271CCA230ABC794456F
                271461BC46E08BC36550B921030B827A3418C8E8D03D4344E467C6B77267F8A6
                190556114DA92ADDF0F6ACDA68FE1AE963F6DC2478C2C7ED362E9F5880B1F51C
                DD4BAA644E4661CEF192A858371651096E707723DE8C5308FD73137EF9F8BEF1
                D6858CDE2FD3FB0A9BA2F3A0AE786B862F72E74F44BCE12E6E9E998F31751CDD
                41AA644E4663DEC962285D530F77ED733CFD672B967F7A00DB96F2B16CD94CA1
                D5689383D8F2A348D9D7F0EE1C22C6AF932ABCF205865794EF0B275587AA9848
                F2388DC3A2CBA40A2B1CC1AE3FFEC48F63FFC1FDEBF2F294C198718B39D33396
                D26C6E86CE83095C03BFC68496894888830A2C5711619C78998BACC21002D532
                7996528EAF83B6D88BB3970FFCF2C621368A8015EFE8DE52256342C0727787A7
                0F19641196C2AA9D2229882AAE2B4E9314C4E4F74EE61855256392D6F8393C3F
                962A39535460A962175181A58A5D4405962A76111558AAD8455E5A60491B4DB5
                72063A47B72733A255441438BA2DE6F2D2014B19162CFFCED57C6A524CBE62E7
                B8F34543BC34C0324FC05A16559B1643D95A0711FC8398942335E09C4D2CE4C3
                7F2B06514FCFE1F05FF229728A4A47B735C703CB1C50BCF5AA155E1B5D1D0D5F
                F784B7E6262E9EDC8A95131549D19C3215A532EEBD342A37EE8AB702ABA05E87
                2424E10A4EEFDE87BFE6CB8945A4F31D3A0BE77860C95209B5DB32A068305EE5
                2C7B52EAE9444F78E9790FDF291CF87D1B564CBC8FDBE17CBEA3074616F37CF8
                1DD07702578F48C987AFD1D00722C4E05FC7F95002D88253085D6774F07A7E8E
                05969C7287F398B740D7F7CBA06A1B06542CA24DB6B72B937210D8A238DDF76E
                FC3187558CB8F3D93109E09431F01CA2DC1C5D86B647EF097951A8488C59C259
                097804302F6131F80EAE9E38841DCB0E63E78F09888F758471929381A565BED1
                02AFBCDF190302BDE0E31B8567891A69578CF9F9CAEDF2346B5D0DC6AA4947B1
                67251FCBDEF064818827EF9AE6DDD25D30603AA9F046B169E7C337F03B78C1D7
                8D37D8EEC59FF382B072523CE2A2C546672FB8722CB094C23918BAA07F406352
                2134289A583103B095BC564949EEF0D07381A2701CDFBE15CB3F231E76980FDA
                7B7F9F52ED1540D1F2BCCFB01E5A0DE09FD3CEC5C56DF6D4EBA1C76984ADDF84
                5FC673712547F6798E079672B0CAA37A0B4E905F01359A73EC3DD786B19E16DC
                28A5058F4F3A88EDDF6CC7EAE972CE2A5BF32F653C93980FBFFB68311F7EEEDC
                D17826B815D2CB877F17372FD147F009F1AB3FA4363A74936B8E0796F07C8599
                AE11D5E3B08EE833997356450B49D48C692451D3907AF443041EDEDB81B5D30F
                60EB379CADCF56213FCAFBD446F35E9CCABB38CA564D2F33B15C3889CBC01061
                9FBB136B6792AA7CE62CB94C5F0A6025B743CCC9C01D6ECC8B822589BB4C6B80
                B6EFF0DBC4215A2836945EFD986B387F680B7E9D7009A77666155CF2F5C550B6
                36BB0F6AA0713729FBCC0BE5C33F8F23DB58ED29D27B3B85252B34F46502962C
                4A35C1C5A238417E1954A92FA9C734EBC7F07E48AEDFB701CBC6EFC21FB3323B
                9872E2915A68DAF31D7CFC1BDDC7DD4ABE2C41946AEF21FEBEB10D2B271EC5EE
                E5E2FBA414477274DF26F7D7CB082CA14DA22B412B6E69D7BBB544B7E1EDD0EB
                53568F3169D48FE18D1F7EC8E37E08DB57ADC4820199E532F2C68376787D7C4F
                0C9AF114FFC4D1ACE8617E9E598EF8D8506CF98A7394920A8F7016B567495E5A
                60C9A29C71483D96E888BE9F3544FB419C2E9C7D5E16B2F825FA20977E3F367F
                B7168B07671558ADF0EAA85E18322F0A9149E633A594AE92DD0F3883431BB83E
                F35D5C3F63DE6E6794971E587213A58192974C1AF9E38DC99550A72BCD5026B9
                DA6560D1CCF1FD1A7C3D30ABC0E2DC580CACE7786AA2821954A472357770F530
                E7E2223EB545BCCE79F3C02B450596B29D668BBCEDD1EBE36EF8EF4C65623119
                5821D8B46C1DBE19640360F18C355F092C31F19A8F2E0CC13F10780719452BD4
                69D59E25518165418873B9D3A0275440CD76C3307D47F6032B2991789C7E35BE
                1EB91F9B16F2E6506953AFCB880A2C0B22F3978AA8D56E28A6ED8C436CF28C91
                5DC0F2456E02D6224EBCF6B594CEC86912AFBD88A8C0B2D4DE941CA44D3FC08C
                03F1884F26F1B6061691F791BD31748139B07C08582B30F77FBC90EC6C19FD5E
                445460596AAF04AC52A8D8907340255806D67704AC2C5B852DD16D641F0C5B60
                CEB17CE0A7FB05B3FF730C7B96ABC0B27681EB014B48225602E5EB8EC4ECE349
                48806C186617B0BCE1ABFB195FBC7902FB7E73F4BA5F66440596A5F64AC02A8E
                72B50958270900C9C7EC00AC1104AC2F2D01EB27CCE87B12A16B556059BBC045
                81550C656A8EC29CD306A458F80A602D2560BD674F60FD88CF7B7364ABB33B43
                2D890A2C4BED55819565518165A9BD2F06AC6F0958436C00AC0F08580B5560BD
                54C02A5B6B14669F7220B0FA10B0D6A9C0B276818B028BC87B1D22EF275293F7
                DCFA7DD8F8EDEFF87648665D010A600D27607D65D92A9CD5EF0442D6A8E4DDDA
                052E0AAC92285F6F04661FE3E03B8DC2DDE08D5CDA7DD8B0E40F7CF77E5681C5
                9B3DFA60E897517866340516FBB166F53F8E7DAB546059BBC0F58065D5419A88
                F8B8BC28E211828D3FFF86AFFE9B5560B5418F316F60C4DCC7B81BC7793D2115
                CE541DA42F72818B02AB342A0B65E518586274A6464303AEB9879B17D760D1A0
                6B38BF5FE88F4C441C486B8FC682285EB11F862FAB885A2DC59AD349422428F3
                B8E598FBEE11ECFA490596B50B6C0C2C7B570B93C97259546B3E1C9FEF8F4574
                02D769E6278762F3C22D583E917E1799F55AD6E2F5AC7ADBA1E7D88EE837D903
                9EDE51888CF5455E8F555830F810B62FB337B0ECD19F2E062C215ECAEE3B9365
                6095478D36C310B85B0737DCC5B5B31BF0FDA84B38B95368898DCAE94A832A6C
                F162F7460F0C5AC051153AE841C01A1A86A025D93163D9DAF274196029CBD716
                44B1F28F71FFBABD0026777275347A6D0802360663F5EC60AC9ACA39E9ED15C1
                A9044F2BBC3AA21786CCFE0B3F4DDB81B581F60416C79EE54181E25C5542EC67
                DBCC5E2E012CB96339E0AD2706CD2360D5588C896D3499E437E9B657EADC52A8
                D4803855FE701C0B12DB615F7F92CCBB18B46438D0B37309CFB693EA172A4C70
                DF8EC6DC136771786D10560628FB3B2B37776A6089EAC6281067AECFDC138317
                5541BDFA47B16BE77708E8905D955935D22C955DDBABB2DB213A165F9E2F8FEA
                554F236CE71F58FAC103DC0ECF6A28B433034BFAA2B45A4EDDD3117D26D20033
                814EBA88E3BB09581DED0D2CF318F8EC94EC4A04C7FEB931987FA6304A56E5D4
                486C946CC12FE3F763CB37C9A764A2C69153024BDA218C62285BA317067F5D11
                B5C9147F8E4424C6936A723F8F233BB203582F8348C03A4B8643F558C424E8A1
                77E38C3BA770E0CF0D5836EA091EDCE0F332CA299D0E5832A8985F7C848517F2
                A060FE283C4DE414439C3381137510B0B25515E66451022B1E71DC971AE657B9
                91CFED062E9E9B8FB175E5F2C519A102CE0A2C632EE42D42C0BAEC060F6FFA59
                7033B04A12817574D77798DA5E0556D64502D6390256350696DCA7F4211B23F0
                F0F66C8CA82C5567CB904A745A60D18C95EF237C79D99BFE4F5F8C5109AC0BC4
                B1BEC5E4762AB0B2240250B85FC7600101AB745525B0DCE0AE25127F692E4657
                930A9EE70C6079C137CF387C75990056C01458DEBA8B38B9770926B5C9066039
                BA38A73D9F9F6C1C7D8805E18551AA52820258EEF0D0DEC58D0BF3085812BFCA
                29C0F2C945AAF0921FF2144E9480C50E520F02D6159C09598C09ADB2A32C9D23
                76206753EE5301283AE8F463F1E58582285E3E01F126C0BA836B5CB3BB56666E
                EEB4C0F284B72FA9C28BB990AF9839B0AEE16CD8227CDACCDEC0F280976F1C62
                9EF3BFB32B4DB7D287E5014F1FF6F6DBE749E23A25475410B02E1640D13229C0
                3210B0BCB4B770F9C497185B2F3377775A60F1622C7F4964159624F228BF7012
                E7A7BA810B4716E2E346B093AA903DCF4DD069603534E8B801DF8F23B3FBA678
                4C187883AD9F2BF9AD04AFBB37D180EEF8BF59F771EBF26EAC9F639F251D1158
                3433798DC5C28B794DFB99F38069C92A3CBA10E31A66A69F9D0E58F20B1379F4
                6060E5479132A653B4A7F6362E9F5C4066B06D3B3A45E4C0BA3A68D177280257
                13898D3880AD0B39877A349EFD2B9D6313EFB8B913B621DABFCD692CCBA25AB9
                1F30DD6E8BD00ACDE04794833443DEA2A69AC14B771DE107BFC2F8A6C819C092
                75BF9BDB582C20DD5FAC9CB9EE2752799E4865757B25C997415319753B0DC2A4
                2DF4252767D2DB853F661EC2F6EFD9B723E5624726B99049EAA432A8D298D36E
                5741BDF69C76DB0D6E49BF6076FF93D86F97D0E4142EEB97771C7159A5912453
                8EAB38B3FF6B4C689919CAE1B4C0E2441863313FBC104A5654028BCDE047B87B
                6D0E4656E11A38B0833A5404FA35FE00330FB2B5243E9B737F7AE2262E1EDF8E
                35016710B691CF97221E8C2F4AF04DAB4DE42FDA117D273446C7E46A13FC3E64
                BCE8BFC594CE17703CC81E6B8732587C91BB205BDF3473E5A659D128172DF014
                ACEF537B966062DBCC58DF4E0B2CD1BF2238EE4CFC2B9C69EF5F3CBE43C0AA4C
                C43ADA1E045E8EB52A8252D54663EE5976D0428A3AE06CC5AC2608F8E0410FC6
                6F53496584F175E2CC62B49A0B54B9FEC7A4B939BA0EE35491C4230B2BD3538A
                99FCDC35AC8688E71C54860CD9EE1DC5FE646EF521BEBC4433A4A758512CC55F
                188E633B97624AA656389C1158C9321AF34E9740B99A0A60918AD46BA210F978
                36465422BE13611F60A5743A5B4C04022FB9D3854E93F28252E76B9390603C86
                BD3FD30C36ED31EE5DE3E3E6338CB27C09FF5C0BCD7A7642BFC9A550B1B68584
                BA82CF88AE31128FAC790F37CFD9C35F27DFB3104A541E8379E7C0A159D2B365
                609DC3E1E06598E69FE380C509394AA152DD78C41864AB892B4BD04C15453356
                C567F8F7614654D00BB737C5FB9F9F0D08E257F9A8B335A9F39172DE788D968E
                6B9EE3E95322F7F3F660C33C7651F0EF5332D48880E2CA631DD16F6215D4F737
                109CE83C4BD526846852025BEC5C8CAA1A8147B7EC032C4E3D0E1445E99A2331
                E704B72725F189B8FDEC340E6CF9019FBF929919D3598125A89E11F8E2481954
                6E200D40F217451D9DC41C8BB8D61579006DCB41924D71CF4FF1ED1D9AB9F213
                70127856B192073EB90E0F191617B761D5C49308592B1F27755EA31D7A8FAF83
                E60338E4380651060D64D5A8180C7A26DF8B06554F33595C200617A3D9F989AD
                676525272C8F1AADDFC7E77BE2848F574E2E2702EB044236FC8C593D33C3F19C
                1A58C33133AC1CAA3651000BA23AD4B1857666375968A486568917D8D6432E03
                A82A1A74ED8AB7A68B6A2BB948920E8A84B7725772E7734D1BCE034FD6DC9FA1
                D8BAB0269AF46984F6EF9295E54EC4DCA4F29852D89D4096B0DE0BDE0CCEF06D
                583999B7D7CBBE2DDBBC534AC022733C3218FED71ADDC7E641FE725CF75031C3
                267AC34F7F14BBD72EC79CBE390658F2173A0CD3432AA0668B38B14051F26030
                FDE5CA0C5C94E82ACE8532BF51860FDB30265D00B89268D3EC559863C3E484FE
                A93A541C38700D4122E3E08F800169B052BE4452A7823B23124FFED98B3FE790
                4A5D188FD868D8C8E235E77875D1B22F97A82B898AB5E839506EC895DA94E843
                C03A8C1DAB56607EFF9C042C81530C41C0AE8AA8D58A5F5E63368832783CC942
                E32BCEE2E0FA60AC0EB883AB27F9B8AD7C3FE68528DBA3CF274DD071881B3CDC
                ACA934160930C20722962F319DE14C0B4125188E60D7F73BB026F0091EDE327F
                6EE64523F9CA44E72AA9BD96FE78634A25D4699794C2F15255C2E07EA3766908
                582B57E1CBB7731CB08622702FA99256117898A015C8A6C5011406D74BA8DC10
                1B7F1041DFECC4BA19918878C0C76DE4033271669644857A9DD13FA01A1ABEC2
                791DAC9070CB1D2EBA2CA432706EECB208E6C2003770E190D4DE345D162F2A66
                25EACA91153AA91EDABCA3A323E99556E1361640113D1922BF10B0DEC9CC47EA
                ACC0122E288EF275BB60000D6083740750596BE6091EDCDB89DFA713C759C264
                D8BC2E7466C57CF9A5169AF6F0C79B530968B5D2E65F721B859D467A5293F81B
                D7CE7361004EFAC1C76CA5C295BE325EC4260E352AA5449D758E275714F3A419
                940B6912475C4946C894C7642049C75DDEF39E4A68D6EA4E66FA24B210EB11B8
                B83E96B50114AC2A45A5AEC3DBB0E2B30B38B19D0FDA6A36307574BA7BB4C42B
                EFB745CF8F73A340A1180BFC2B8547F9E129FE211EB5717688C0A3E262B2B82C
                A4689329E8EBA0456F027DC00B94A8338AD10C9E3A9E412FE3F4DE20FC36E50A
                4EEFC94A7B9C1A584A4B8F0B293543E7C13480E3696A2F21E63948BBB3785982
                7FA65961255B598FA4AFCF564B24664B33C57869A6113A0C26AB50CFFC0B927B
                841DA95C74F308762E2343637A041EDDB6573B68F6ACDB1903A65527352D95A8
                4B14416EB1441DAF00E83C454BF4222F531DB351B962A70696A58EF345AE026D
                F1FAD8A6E83CDC07BE3E04B034A6776116D0D04CC1DEFA487660EEC21F73E26D
                1BE364C2BF78A329F3AFAA68D04538487FD8620D127894B20470D6674EA5F821
                7741B1C2BDFF50B298DD6384F2C46997A8235ECA33E8639A41E7ECC7A6451CFB
                A5AC8A9695F6B804B0E4DB2807B0304A54662F3699CE5CDA2D1D429A24CC6CFC
                65FE8BC7F769AA9FCC110ACC296CE9F752AA22AE96DA0C5D068661DB0FC45704
                67A9ADB7E7F3337570736F83EE635815D307943B16D106C912B5F6A109860E7D
                5C0964F52DDD81DF67FE8B4777E4F6D9CAD1EC4AC04AEE4C8DA2CA7B05D46C4D
                5C624A45D46A23572755127C695D8F030705B7C4DFB87A94AC9DB93CD8F6C8C1
                A00CD833ED01DB871A8BC0D2BB374687FFB5C02BC379D19C1D9D521F68145442
                2AE2E9ADD30AAE99C31B83F15BC06D5C39CEC7ED3183BA1CB0149D6AB294531F
                6DFAF36EE962285B8517761390C0F1521A8E4460272507AD11A066CBC5B8ED2D
                F2B289ED979BAC3D4FA76B88B6FF6985D73E2C81F235F8136380D121A31CEE73
                03E147D8123D87C39B156DB44B893A970556F2BD455782410A67F669816EEFB7
                C66B1FE541C102ECA2B8898B3C437D4133D43A79B7093B2C5D2D596C5AA25461
                BC4AD010EDDE26808DE19023EA1F5EFEBAB90BBFCF3888E065A2FBC53696685A
                E2F2C092C5DC4223CEF1E15D5C3F7D04BB7E91BF4857CC3E9C0131F960C832F5
                6C0AFFC17EC85B7837FE981D8DE7360DA94E4F720CB0E427692D24F1C8E1804A
                D5099666E4ECEE831C062CE97902FF1249B43D76D4B886881F19C41C6276DFB6
                662E391258CE2032B845ABF4E54B03A002CBE6925A1D8B6A28FB12B73983A8C0
                B2A128794C7E142ED3006DDF388A3DABE5FC9E2F13D753816503318F2820537F
                24FB93F2A260BE7FF128621F36CDDF878DF36385EDFAA287DED6BB6E9C4D5460
                6541CC9771EAA1F51B9DD077323B696384DD37F1891C69C1E1C6F770F3122FF2
                1EC5EE157C6E46F722BA9AA8C0CA9C98AC5B9645D5A61C975505F53ACA1105E2
                2E1831825419D87709A7760761E5E4AB3817C2D7DA6339C5194405560645C993
                F2A150A98EE8FB5943B4FB3F1DDCB46945142803E97845E018F6FC94D65E4457
                1715582FFA0E0A1EC5195A5AE1D591ADD1636C2EE4CDCF9B2B8CD22EE6F4EE63
                692FE25E817F453FCB49FC4B05567A6D37E351BCC38577311747B96ACCA3924C
                7731278B344319A4480B8BA13CF25EC47BB8757907CD5E47B0EB573E9613F897
                0AAC17144E10D219FDA756457D7F731E657E2E83C60D1E3A8E2820026F75378C
                F95E44E25F7BB609FCEBEC3E47BF6F564505569AAD36220F0A96E8803E1C723C
                50CC06935E6426C7B6E7C203DCBA4D3CEAC7AA68D09DC87D6D869779AC982CE6
                1B19C45C10AB031FE1EE558D1085E07AC45E0596951643D86CEAA61F8D392709
                18D52211914664A6728F607C6218821613310F7C867F1F71184B03B47BBB2D7A
                8C2B8AD215D3DACD23A95B8D1FF270C6E2DB7331AA0601F9992B824B0596A5F6
                4A6E026F2129D95757387794946B3E55AE05E50E97701C0BE65D413771E9081F
                5766E2E37CA6CDD175686BBCFA611E142A1C637537B5D0BB06BA2E61364654E4
                944DAE98765C0596A5F64A03C9715D9CC68880E36B94929249A7986C33BB836B
                E7B75BDF236812C6920BF98AB4C3EBE39AA0D35002AC2701CC203E337933AE9C
                FADA301F63AA3FC09D0B2AB0AC5DE0A2C09272479D0763253977146FCCD0138F
                F2C1133C7CB0177FCE0EC5E6C5D21EC134D2680B8BD3C94E55CE40C34ED59A68
                FA3AF32AE5665CA39083D54DC3097C6FE1F2117B245EB3B7A8C0B2D4DEE42AF6
                151B8CC4AC230948104C7FD9FF148DE7D10711FC0D67348EC493FB7CCD8B3A38
                CDDD17D5D0B02B599BD37833AE94848D8D03F0C6876F30B1C3659CDAE98ACE53
                155816441E482EA13B0401DB69C0395F945B92B0F53C64C50EAC9D7E1FB7C2A5
                7333B524A38C3BE7CDB8BC9BBA1D7A7D4AEAB7E0734426D28CA8FD0933FB722A
                231558D62E705160D544931EEF61EA7A76155CC2A91DC4A302AEE2ACBCC66793
                1D2E4AD0E4418112A41E27D5479B8164196A7EC074B58A7D9A17B81CB0C4816C
                8E2EC33AA2EF87EBB16CDC2984FE2E1EB38B57DC6451BB3CAAB7E88BE18B8E62
                CFEF04E6692AB0AC5DE062C092097401142DFF1C4F1F932A7C6AABADE7E93D57
                E65F7AB879E643A1920FF1F7E5ECA819646B5181F50292DD1CC715AD40735181
                9556BB93B7E93B62B6107A4DE36AFE2B595460A962175181A58A5D4405962A76
                111558AAD8455460A523F64CF59386B87C461C15586908D74B4E921C93D9E572
                503E4702976A155ABDC0C580250F6E43B47DBB242AD6D98A1553621015A93C66
                EB672A13C9F133FCF1E6846778FACF7E6CFA5A5D2BB47681CB014B5C42A987D6
                FD872060C575845FDD83F5330F61C78FB64F5C665A3DA232EA76E88CFE8135D0
                B8F14F983922145BBE529774AC5DE072C01267882AA8E73F101337D3A0EA3CE0
                052E72CE6555CEE1F026F9BCACAC1B9AE67A28528E0035A53E5AFF87F71D6AA1
                4FFA15B3079C40C86A1558D62E703160C94B2A6550A5C90798191627E4F23442
                4C0EABC5791CD9128C35013715654A329283CA6C8FA237E77A68831EE3FC9027
                4F349E1BC4D2727E6E4B31A56B388E6D5555A1B50B5C0F5842A05F5194AE310A
                73CF70842784802B8351AEACCA85958E63EFCF1C9BC5BB69F884F400609E90B7
                0E5AF4E1A249E21EC594EA1162E95E0F2EDDDB8C66C9301558D62E703960C9A5
                7B0B951A8B0597F470F390E3D7F9B8B214DC7344468662F3424EF12DE6F94CBD
                9BD93C8578599A093BE1CD2956F628CA71F25880B1B5EEE2C61919E88EEE978C
                880A2C4BED4DA9F05EE0432C08B75EBA376537F343FC7D8366AF690711FC031F
                53A4E3D6CA802A88E2153BA0F778320ADE25B06AC4B2741A98EDFE113A974BF7
                CEC3E8AA4FF0F0A6BA99C2DA052E0A2C77787A7F86EFEE11C072C5E079028148
                0F2B9555C55CEA1E5CE428642B967F7A15E7F6CB67F0CE9CD6E83EBA293A0DF5
                412EBF34723D18591D92A1A04FA4FF076260118E0753E3B1AC5DE062C012DA2C
                CD4E8DD0E17FBCB53E1F0A178F49A7B2AA7237F3016C5B72005B17D540E39E2D
                D16D446E1428189B4615AE94FA363E788A270FB9985328B62C364AF5031DDD1F
                19151558E9349DFEB24A2CD81EBD3E6E86CEEF9365E8C9965B5A955519205CB7
                87EBDA70095F8E99B7B6FB592AC922180409884B3824D4B759FBF953FC73577E
                BEA33B2133A2022B1D515A64E25EC0FE536BA1C9EB5CEF59AA556DA930A79006
                5CBE56B6064D4E48AE6FE3A523C0B10B63332704B98D2BC7CC9FEB8AA202EB45
                DA6F712FE09B01A551A57E5CDA95558D967EA7DC457D0B974F07E3B7C9A711B6
                810F3A68D1DBE6A2022B23EF615A98534FAAF13DDE0B981F858BA555D95E1665
                79E1083C7AB01BEB67EDC7E6C56401C665477D9BEC1415589910A59AF2439E42
                EDD17B7C53F80F23B5E661897FC93C8A37A1C6093C6AFB929D583B8348FA3DF3
                FBE5145181957931D90B581CE56A716555B202BBB355188B1883EC262095A765
                1E7516873773A555D33A8102A05C5AED59121558591473FEC5B5983BE18D29A5
                50A901FBD4DDE80F1372DE457D0687FEE473720A8F4A4B5460D948940BCB9C8B
                A10DBA8F6A816E4343B179E91E6C9C473C2A3EA7F1A8B42433C0FA7FE8D2924C
                BC3EBF6E0000000049454E44AE426082}
              Stretch = True
              Transparent = False
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
          object rlmg1: TRLImage
            Left = 29
            Top = 18
            Width = 60
            Height = 60
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000960000
              009608060000003C0171E2000000097048597300000F6100000F6101A83FA769
              000027184944415478DAED5D07785455D37EB7A427F4DE7BEFBD7708200A4853
              F0D3CFEF0704449A8828D24210902A222262A748514069099D1042EF107A972E
              91407AB2FBCFDC92DCDDEC2624D9CDEE863B3C28C96DE79EF3DE33EFCC9933A3
              311A8DC88868349A173B0F5A1DC077371ABCE19BA733FA07D444935743B0E9EB
              30042D8D4154249FA7854E6F842189CECB58435449251A6174B43A039212F967
              2FF8E46A02FF41ADD06DF8191CFC6B1B564E8AC6F37FE93C2D8F24F7FB8BDC37
              A31811DA626B60892FA7D11AA4463740DB011DD177522194A8948038B8C1030F
              F1F79583085A72183B7E8CC2B327F29DA1822B0B92D27F3EF0CBD7081DDE6D82
              4E43A8DF2BA4F4FB9D4BDBB126E02876AFE0F3B40442FEF0D3FBA81D0E2C6AA8
              9E00257C2D6550A54957BC35BD32EAB64B403CFD893368E96A0335D31D1E5A77
              78E21FDCBB7B00418BC3B06DE9733C7DC4B7E7F7C8E611C90922F49B2F72176C
              8ACE839BC17F587E142D168FD854FDEE06775CC0895D5BB17CC20D5C38C8172B
              C7CD92380C585A61FA1567A8DCC857B423FA7DD6181DDFD3C34D1783E749343D
              6BC4E9576A287D2574BE41476AD00F79F10C11CF7FC617BDC3712C58234ED106
              478D90AB09F5AD96679CAAA8D7E91D7CBC2E17F2FA46220249A40E695CB4E6FD
              4E7D6BF482AF2E11094987B07DE976AC9EF6144FEEF171E5382A25DB81A5D4D5
              04125D33741DDA01BD26E441C122A4CBF94592B402D732156E3CFF9E3800EEE1
              C6C51D58379D38C006FAC29E1BC5094B9DB53220FC319206F0250EDBA3037A4F
              288A329589C326F7B3F9F9FC7BBA4647DC17FFE2D1839DF83D30145B96301895
              DC583E3F1B81A5D1681524B10AEA76EC82B702CBA06AA338C42011F1894CCACD
              AF350A4D3418F88B2110C511919FBF13EB66C8445E95AC0B13F6F6E8FD494B74
              1B4D60F3903406CF5CA9540D8F9F1EEE7A4FBAEA3AC28F6C21F5781127B6F331
              1E3F71F6321AB305583A8D2E79BA2C886215C8DA9B5A172DFBF3CFB1884EF325
              8840EA49CFE33C8E066DC62FE3EFE0EA49F1252C4FC14E22FC1169E5AFDF207C
              C9CE696428FBB104CAD57905EFCCAC8A06FE4CDEE96F9A1FBB27BC8599ED0442
              5692F538F911EE5E91EF99644CCAF0D8646AC6A22FC1BB0D7A8C698DEE1FF922
              57AE683C13A64D0695F9F9F280F0B4FB08F76E0561E5C4C3D8F98BD4683DAB4B
              6775355803BC337F089255AE93C97843B47F9B3EFE690551B4148D138D87657A
              22F35A6FF8699F2332722F36CEDE8B0DF3E2101B9D2D33567D4DEB37DAA3CFC4
              52A8508D79541212A9A13A0B0D9589A20F11C5C424B2FCBE0E26A248D6DF6389
              9BC15949BA4C78F91DB40277ECFC1EFDFDBF8308FE31858BA49CE3E8F65A7E07
              FEC88D42FBC85A2CD009FD2692C5F8BE1E7A32A8A2521954B2906621BEAC1726
              82DBB8727E07D6061E33EE5D95E1E7671458F3357FF1D449936B0C235F8BD46A
              CFC88D93D5DE459CDCBD05BF7E42A6ED213EE8025F7BB20FAE1A1A74E1AFBD34
              2AD7272B0A64E5E2262E1D0FC2AAC9E7707893FC3E2FE20B729428FBBB0CAA34
              EE8AFFCCA88C3A6DE353D4A30EA2BB422146235BED1EF0D2110031DAF8EA8B79
              C5957D995160CDD4AC4E1286200DB4B3B5F7007F5FDF81D50187B0E327F9059D
              7C00927D39C550BA863F71C79A68FA3A7FF371027764EBD768E4CEA6C1C0591C
              DCB88D00F637AE9D525CCF03E874EF67FEC1344687FF7640BF498551BC2C5B8F
              69691DFEEF78633F5D869F995160CDD2AC352015C24561404521F2D97E6C59B8
              07EBE7F0F281C8CA9CD737A5FCA25965B443AF8F49ED0D2732EB4916552AEEC8
              EFC13D46AA424BB3763CA9C7C53BB06EE633443C30BF9FB389ECF3E2198997D9
              DAA0E7D816E83AC207B9FC186056C4F8B1B18F3623CF119E65236019093C49A7
              7060E576AC0E248BE232FFD2B93B3985E7F1D7DA14FE83DAA3D78402285A82B9
              A3351F902C4AA3E4091EDCDB85F533897F7D435F7F82B3F32FE5B8B065DF117D
              27D646F3FED45E0B6AD141C0E2CE23EEA18DC0C35B9F634869B1E1CEBBB06CAE
              16AAA2BEBF3FDE0C288B6A8DE21143BC23DE0AEF10549C453E29FB826EE2E289
              20FC36F92C0EFD25F683F3AA7FF305EB4FB1E4665E142A455CD26046731C072C
              5E83BA875B17E663744D83A02A849B3A5D672ABFD4222855AD33DE9C520BCDFB
              7053D3F0C1094456BE963BDDFC1CD91794C2BF0EFDC904DF05FC74024DA1366B
              4763DE99A2285585D7169D0A5844624FCFC398DA8EEEA9B4DE959B4B7C227F3B
              BCFE51737419E1091F2F4B3C4A1659DDF16C14875826EE1AB6A612ADCC6AA6FC
              2B36FE10829790B93E231211F71DFDF2E9C918CC3B551CE56A3911B0842F554B
              66F8D12FF15143386184823CC33444BB77382E8C7854C968612DCDAA3594EC8D
              E6173988A0EF0E60EBA2EA68DCB3055E199E1BF90BC4A6614DA5AC850A6B71F7
              B7634DE0016C5B624C99CD9D4984F11A89D9474AA3520332480C661F59B6018B
              A774A59594E44103700DE70E2EC2274D9D2DAE4A7613B8C3D3EB332CBDE7873C
              B9899C27E8A0D7C30A67127D709EB88A33A1BC7E760567F6CA27E441FE62ADD1
              634C13741CE20D3F1FBA975174A4A622FA46025E2281D32D0109498118584472
              0E6B9C0B5CE2780DC78CB072A8DE4474AD98BC8B8180952DEE068BC0A2CE0F5D
              8C092D9CADE3E4F6B02BE1432C082735958F66148D394F52FAE0C8AABDB513EB
              02C310B48CAF9548385BBE1A992B154689CAEDD1E7D37A68F5B68E78558CE4EB
              325723FC1F22C4B1F330BAEA133CBCC9C79DC95A94FB6718A6EFAF809ACD9D0A
              58AC322EE1F4FE6FF0594B27EC38A13D6CF18CC5824B64C17A48C01780251372
              029C260ACF9E93CAFB6A37D6CF89422447B66A44DF4F0AF1365F8B2B876ACDC9
              AA9C5219753BB0773E1EB189E2ECA59129012F626301C6D6BC8B1B67A5FB395D
              FF0C45604825D46A11EB2860CDD4ACE175B2E407F1C0F07AE0459CD8B704935A
              3B1FB0C4812C8AD2354661EE195E8E82A0AB0DC29B53DBB5A4B28CC7B1EFD71D
              5833FD21FEBEC427A467C999C78DD743EB373AA1DFE462285345E9CD16D5B087
              E62B8C6F760317C234C2ECE73C16A23C5E43306D6F65D46EC533AF52AD7390C0
              78635F7D86EF6B2B605DC0F17DDF62B233024B18480E95FE0033C3C85AE31823
              C8AE810B3816148CD553AF233C8CCFCFA8EF49B9D84BF7F4698DD74673D4870F
              72E78AC1338E944D222EE6B61453BA86E3D85667733DC8E3F51EA6EEAD827AAD
              7881DA2980A5508521A40A5B391BB0E481A44EF31F88899B894BE93C4467E6B1
              ED583BED0CC236CAE719CD222733F31CFE774A9C5AABFE3473117CF549BF62F6
              801308599D5E7C79768B4215EE2355D8D25C153A03B09C9263899190498944B2
              FBD374BFE2262E5CDF830DB30E62FBF76CB5D93684C734B256F2EA075647A306
              3F61E607A1D8B2486E8FA3FB25B9C5E970AC6C04D6EA047A70F2831456E101B2
              0A9B3B9B55C83C872D3EF6619546E57A5BF0EB647171DC7E1E71B3BD007A9ABD
              264622E25108362D724255288CD7FB981E5A1E359BC5A502962171BCB19F5B86
              EF9B19AB903AC628EB6111585EBA6B382FF9B19CCF41CAC27E2B9EA1F8DFD935
              B8CAE7C80077743F581061BC443F56B5261C6727034B72F46AB2C52A0CD42C7F
              EA87BC1C8E9C241157618DEC062E1E5988718DE0A4C06271CCA230ABC794456F
              271461BC46E08BC36550B921030B827A3418C8E8D03D4344E467C6B77267F8A6
              190556114DA92ADDF0F6ACDA68FE1AE963F6DC2478C2C7ED362E9F5880B1F51C
              DD4BAA644E4661CEF192A858371651096E707723DE8C5308FD73137EF9F8BEF1
              D6858CDE2FD3FB0A9BA2F3A0AE786B862F72E74F44BCE12E6E9E998F31751CDD
              41AA644E4663DEC962285D530F77ED733CFD672B967F7A00DB96F2B16CD94CA1
              D5689383D8F2A348D9D7F0EE1C22C6AF932ABCF205865794EF0B275587AA9848
              F2388DC3A2CBA40A2B1CC1AE3FFEC48F63FFC1FDEBF2F294C198718B39D33396
              D26C6E86CE83095C03BFC68496894888830A2C5711619C78998BACC21002D532
              7996528EAF83B6D88BB3970FFCF2C621368A8015EFE8DE52256342C0727787A7
              0F19641196C2AA9D2229882AAE2B4E9314C4E4F74EE61855256392D6F8393C3F
              962A39535460A962175181A58A5D4405962A76111558AAD8455E5A60491B4DB5
              72063A47B72733A255441438BA2DE6F2D2014B19162CFFCED57C6A524CBE62E7
              B8F34543BC34C0324FC05A16559B1643D95A0711FC8398942335E09C4D2CE4C3
              7F2B06514FCFE1F05FF229728A4A47B735C703CB1C50BCF5AA155E1B5D1D0D5F
              F784B7E6262E9EDC8A95131549D19C3215A532EEBD342A37EE8AB702ABA05E87
              2424E10A4EEFDE87BFE6CB8945A4F31D3A0BE77860C95209B5DB32A068305EE5
              2C7B52EAE9444F78E9790FDF291CF87D1B564CBC8FDBE17CBEA3074616F37CF8
              1DD07702578F48C987AFD1D00722C4E05FC7F95002D88253085D6774F07A7E8E
              05969C7287F398B740D7F7CBA06A1B06542CA24DB6B72B937210D8A238DDF76E
              FC3187558CB8F3D93109E09431F01CA2DC1C5D86B647EF097951A8488C59C259
              097804302F6131F80EAE9E38841DCB0E63E78F09888F758471929381A565BED1
              02AFBCDF190302BDE0E31B8567891A69578CF9F9CAEDF2346B5D0DC6AA4947B1
              67251FCBDEF064818827EF9AE6DDD25D30603AA9F046B169E7C337F03B78C1D7
              8D37D8EEC59FF382B072523CE2A2C546672FB8722CB094C23918BAA07F406352
              2134289A583103B095BC564949EEF0D07381A2701CDFBE15CB3F231E76980FDA
              7B7F9F52ED1540D1F2BCCFB01E5A0DE09FD3CEC5C56DF6D4EBA1C76984ADDF84
              5FC673712547F6798E079672B0CAA37A0B4E905F01359A73EC3DD786B19E16DC
              28A5058F4F3A88EDDF6CC7EAE972CE2A5BF32F653C93980FBFFB68311F7EEEDC
              D17826B815D2CB877F17372FD147F009F1AB3FA4363A74936B8E0796F07C8599
              AE11D5E3B08EE833997356450B49D48C692451D3907AF443041EDEDB81B5D30F
              60EB379CADCF56213FCAFBD446F35E9CCABB38CA564D2F33B15C3889CBC01061
              9FBB136B6792AA7CE62CB94C5F0A6025B743CCC9C01D6ECC8B822589BB4C6B80
              B6EFF0DBC4215A2836945EFD986B387F680B7E9D7009A77666155CF2F5C550B6
              36BB0F6AA0713729FBCC0BE5C33F8F23DB58ED29D27B3B85252B34F46502962C
              4A35C1C5A238417E1954A92FA9C734EBC7F07E48AEDFB701CBC6EFC21FB3323B
              9872E2915A68DAF31D7CFC1BDDC7DD4ABE2C41946AEF21FEBEB10D2B271EC5EE
              E5E2FBA414477274DF26F7D7CB082CA14DA22B412B6E69D7BBB544B7E1EDD0EB
              53568F3169D48FE18D1F7EC8E37E08DB57ADC4820199E532F2C68376787D7C4F
              0C9AF114FFC4D1ACE8617E9E598EF8D8506CF98A7394920A8F7016B567495E5A
              60C9A29C71483D96E888BE9F3544FB419C2E9C7D5E16B2F825FA20977E3F367F
              B7168B07671558ADF0EAA85E18322F0A9149E633A594AE92DD0F3883431BB83E
              F35D5C3F63DE6E6794971E587213A58192974C1AF9E38DC99550A72BCD5026B9
              DA6560D1CCF1FD1A7C3D30ABC0E2DC580CACE7786AA2821954A472357770F530
              E7E2223EB545BCCE79F3C02B450596B29D668BBCEDD1EBE36EF8EF4C65623119
              5821D8B46C1DBE19640360F18C355F092C31F19A8F2E0CC13F10780719452BD4
              69D59E25518165418873B9D3A0275440CD76C3307D47F6032B2991789C7E35BE
              1EB91F9B16F2E6506953AFCB880A2C0B22F3978AA8D56E28A6ED8C436CF28C91
              5DC0F2456E02D6224EBCF6B594CEC86912AFBD88A8C0B2D4DE941CA44D3FC08C
              03F1884F26F1B6061691F791BD31748139B07C08582B30F77FBC90EC6C19FD5E
              445460596AAF04AC52A8D8907340255806D67704AC2C5B852DD16D641F0C5B60
              CEB17CE0A7FB05B3FF730C7B96ABC0B27681EB014B48225602E5EB8EC4ECE349
              48806C186617B0BCE1ABFB195FBC7902FB7E73F4BA5F66440596A5F64AC02A8E
              72B50958270900C9C7EC00AC1104AC2F2D01EB27CCE87B12A16B556059BBC045
              81550C656A8EC29CD306A458F80A602D2560BD674F60FD88CF7B7364ABB33B43
              2D890A2C4BED55819565518165A9BD2F06AC6F0958436C00AC0F08580B5560BD
              54C02A5B6B14669F7220B0FA10B0D6A9C0B276818B028BC87B1D22EF275293F7
              DCFA7DD8F8EDEFF87648665D010A600D27607D65D92A9CD5EF0442D6A8E4DDDA
              052E0AAC92285F6F04661FE3E03B8DC2DDE08D5CDA7DD8B0E40F7CF77E5681C5
              9B3DFA60E897517866340516FBB166F53F8E7DAB546059BBC0F58065D5419A88
              F8B8BC28E211828D3FFF86AFFE9B5560B5418F316F60C4DCC7B81BC7793D2115
              CE541DA42F72818B02AB342A0B65E518586274A6464303AEB9879B17D760D1A0
              6B38BF5FE88F4C441C486B8FC682285EB11F862FAB885A2DC59AD349422428F3
              B8E598FBEE11ECFA490596B50B6C0C2C7B570B93C97259546B3E1C9FEF8F4574
              02D769E6278762F3C22D583E917E1799F55AD6E2F5AC7ADBA1E7D88EE837D903
              9EDE51888CF5455E8F555830F810B62FB337B0ECD19F2E062C215ECAEE3B9365
              6095478D36C310B85B0737DCC5B5B31BF0FDA84B38B95368898DCAE94A832A6C
              F162F7460F0C5AC051153AE841C01A1A86A025D93163D9DAF274196029CBD716
              44B1F28F71FFBABD0026777275347A6D0802360663F5EC60AC9ACA39E9ED15C1
              A9044F2BBC3AA21786CCFE0B3F4DDB81B581F60416C79EE54181E25C5542EC67
              DBCC5E2E012CB96339E0AD2706CD2360D5588C896D3499E437E9B657EADC52A8
              D4803855FE701C0B12DB615F7F92CCBB18B46438D0B37309CFB693EA172A4C70
              DF8EC6DC136771786D10560628FB3B2B37776A6089EAC6281067AECFDC138317
              5541BDFA47B16BE77708E8905D955935D22C955DDBABB2DB213A165F9E2F8FEA
              554F236CE71F58FAC103DC0ECF6A28B433034BFAA2B45A4EDDD3117D26D20033
              814EBA88E3BB09581DED0D2CF318F8EC94EC4A04C7FEB931987FA6304A56E5D4
              486C946CC12FE3F763CB37C9A764A2C69153024BDA218C62285BA317067F5D11
              B5C9147F8E4424C6936A723F8F233BB203582F8348C03A4B8643F558C424E8A1
              77E38C3BA770E0CF0D5836EA091EDCE0F332CA299D0E5832A8985F7C848517F2
              A060FE283C4DE414439C3381137510B0B25515E66451022B1E71DC971AE657B9
              91CFED062E9E9B8FB175E5F2C519A102CE0A2C632EE42D42C0BAEC060F6FFA59
              7033B04A12817574D77798DA5E0556D64502D6390256350696DCA7F4211B23F0
              F0F66C8CA82C5567CB904A745A60D18C95EF237C79D99BFE4F5F8C5109AC0BC4
              B1BEC5E4762AB0B2240250B85FC7600101AB745525B0DCE0AE25127F692E4657
              930A9EE70C6079C137CF387C75990056C01458DEBA8B38B9770926B5C9066039
              BA38A73D9F9F6C1C7D8805E18551AA52820258EEF0D0DEC58D0BF3085812BFCA
              29C0F2C945AAF0921FF2144E9480C50E520F02D6159C09598C09ADB2A32C9D23
              76206753EE5301283AE8F463F1E58582285E3E01F126C0BA836B5CB3BB56666E
              EEB4C0F284B72FA9C28BB990AF9839B0AEE16CD8227CDACCDEC0F280976F1C62
              9EF3BFB32B4DB7D287E5014F1FF6F6DBE749E23A25475410B02E1640D13229C0
              3210B0BCB4B770F9C497185B2F3377775A60F1622C7F4964159624F228BF7012
              E7A7BA810B4716E2E346B093AA903DCF4DD069603534E8B801DF8F23B3FBA678
              4C187883AD9F2BF9AD04AFBB37D180EEF8BF59F771EBF26EAC9F639F251D1158
              3433798DC5C28B794DFB99F38069C92A3CBA10E31A66A69F9D0E58F20B1379F4
              6060E5479132A653B4A7F6362E9F5C4066B06D3B3A45E4C0BA3A68D177280257
              13898D3880AD0B39877A349EFD2B9D6313EFB8B913B621DABFCD692CCBA25AB9
              1F30DD6E8BD00ACDE04794833443DEA2A69AC14B771DE107BFC2F8A6C819C092
              75BF9BDB582C20DD5FAC9CB9EE2752799E4865757B25C997415319753B0DC2A4
              2DF4252767D2DB853F661EC2F6EFD9B723E5624726B99049EAA432A8D298D36E
              5741BDF69C76DB0D6E49BF6076FF93D86F97D0E4142EEB97771C7159A5912453
              8EAB38B3FF6B4C689919CAE1B4C0E2441863313FBC104A5654028BCDE047B87B
              6D0E4656E11A38B0833A5404FA35FE00330FB2B5243E9B737F7AE2262E1EDF8E
              35016710B691CF97221E8C2F4AF04DAB4DE42FDA117D273446C7E46A13FC3E64
              BCE8BFC594CE17703CC81E6B8732587C91BB205BDF3473E5A659D128172DF014
              ACEF537B966062DBCC58DF4E0B2CD1BF2238EE4CFC2B9C69EF5F3CBE43C0AA4C
              C43ADA1E045E8EB52A8252D54663EE5976D0428A3AE06CC5AC2608F8E0410FC6
              6F53496584F175E2CC62B49A0B54B9FEC7A4B939BA0EE35491C4230B2BD3538A
              99FCDC35AC8688E71C54860CD9EE1DC5FE646EF521BEBC4433A4A758512CC55F
              188E633B97624AA656389C1158C9321AF34E9740B99A0A60918AD46BA210F978
              36465422BE13611F60A5743A5B4C04022FB9D3854E93F28252E76B9390603C86
              BD3FD30C36ED31EE5DE3E3E6338CB27C09FF5C0BCD7A7642BFC9A550B1B68584
              BA82CF88AE31128FAC790F37CFD9C35F27DFB3104A541E8379E7C0A159D2B365
              609DC3E1E06598E69FE380C509394AA152DD78C41864AB892B4BD04C15453356
              C567F8F7614654D00BB737C5FB9F9F0D08E257F9A8B335A9F39172DE788D968E
              6B9EE3E95322F7F3F660C33C7651F0EF5332D48880E2CA631DD16F6215D4F737
              109CE83C4BD526846852025BEC5C8CAA1A8147B7EC032C4E3D0E1445E99A2331
              E704B72725F189B8FDEC340E6CF9019FBF929919D3598125A89E11F8E2481954
              6E200D40F217451D9DC41C8BB8D61579006DCB41924D71CF4FF1ED1D9AB9F213
              70127856B192073EB90E0F191617B761D5C49308592B1F27755EA31D7A8FAF83
              E60338E4380651060D64D5A8180C7A26DF8B06554F33595C200617A3D9F989AD
              676525272C8F1AADDFC7E77BE2848F574E2E2702EB044236FC8C593D33C3F19C
              1A58C33133AC1CAA3651000BA23AD4B1857666375968A486568917D8D6432E03
              A82A1A74ED8AB7A68B6A2BB948920E8A84B7725772E7734D1BCE034FD6DC9FA1
              D8BAB0269AF46984F6EF9295E54EC4DCA4F29852D89D4096B0DE0BDE0CCEF06D
              583999B7D7CBBE2DDBBC534AC022733C3218FED71ADDC7E641FE725CF75031C3
              267AC34F7F14BBD72EC79CBE390658F2173A0CD3432AA0668B38B14051F26030
              FDE5CA0C5C94E82ACE8532BF51860FDB30265D00B89268D3EC559863C3E484FE
              A93A541C38700D4122E3E08F800169B052BE4452A7823B23124FFED98B3FE790
              4A5D188FD868D8C8E235E77875D1B22F97A82B898AB5E839506EC895DA94E843
              C03A8C1DAB56607EFF9C042C81530C41C0AE8AA8D58A5F5E63368832783CC942
              E32BCEE2E0FA60AC0EB883AB27F9B8AD7C3FE68528DBA3CF274DD071881B3CDC
              ACA934160930C20722962F319DE14C0B4125188E60D7F73BB026F0091EDE327F
              6EE64523F9CA44E72AA9BD96FE78634A25D4699794C2F15255C2E07EA3766908
              582B57E1CBB7731CB08622702FA99256117898A015C8A6C5011406D74BA8DC10
              1B7F1041DFECC4BA19918878C0C76DE4033271669644857A9DD13FA01A1ABEC2
              791DAC9070CB1D2EBA2CA432706EECB208E6C2003770E190D4DE345D162F2A66
              25EACA91153AA91EDABCA3A323E99556E1361640113D1922BF10B0DEC9CC47EA
              ACC0122E288EF275BB60000D6083740750596BE6091EDCDB89DFA713C759C264
              D8BC2E7466C57CF9A5169AF6F0C79B530968B5D2E65F721B859D467A5293F81B
              D7CE7361004EFAC1C76CA5C295BE325EC4260E352AA5449D758E275714F3A419
              940B6912475C4946C894C7642049C75DDEF39E4A68D6EA4E66FA24B210EB11B8
              B83E96B50114AC2A45A5AEC3DBB0E2B30B38B19D0FDA6A36307574BA7BB4C42B
              EFB745CF8F73A340A1180BFC2B8547F9E129FE211EB5717688C0A3E262B2B82C
              A4689329E8EBA0456F027DC00B94A8338AD10C9E3A9E412FE3F4DE20FC36E50A
              4EEFC94A7B9C1A584A4B8F0B293543E7C13480E3696A2F21E63948BBB3785982
              7FA65961255B598FA4AFCF564B24664B33C57869A6113A0C26AB50CFFC0B927B
              841DA95C74F308762E2343637A041EDDB6573B68F6ACDB1903A65527352D95A8
              4B14416EB1441DAF00E83C454BF4222F531DB351B962A70696A58EF345AE026D
              F1FAD8A6E83CDC07BE3E04B034A6776116D0D04CC1DEFA487660EEC21F73E26D
              1BE364C2BF78A329F3AFAA68D04538487FD8620D127894B20470D6674EA5F821
              7741B1C2BDFF50B298DD6384F2C46997A8235ECA33E8639A41E7ECC7A6451CFB
              A5AC8A9695F6B804B0E4DB2807B0304A54662F3699CE5CDA2D1D429A24CC6CFC
              65FE8BC7F769AA9FCC110ACC296CE9F752AA22AE96DA0C5D068661DB0FC45704
              67A9ADB7E7F3337570736F83EE635815D307943B16D106C912B5F6A109860E7D
              5C0964F52DDD81DF67FE8B4777E4F6D9CAD1EC4AC04AEE4C8DA2CA7B05D46C4D
              5C624A45D46A23572755127C695D8F030705B7C4DFB87A94AC9DB93CD8F6C8C1
              A00CD833ED01DB871A8BC0D2BB374687FFB5C02BC379D19C1D9D521F68145442
              2AE2E9ADD30AAE99C31B83F15BC06D5C39CEC7ED3183BA1CB0149D6AB294531F
              6DFAF36EE962285B8517761390C0F1521A8E4460272507AD11A066CBC5B8ED2D
              F2B289ED979BAC3D4FA76B88B6FF6985D73E2C81F235F8136380D121A31CEE73
              03E147D8123D87C39B156DB44B893A970556F2BD455782410A67F669816EEFB7
              C66B1FE541C102ECA2B8898B3C437D4133D43A79B7093B2C5D2D596C5AA25461
              BC4AD010EDDE26808DE19023EA1F5EFEBAB90BBFCF3888E065A2FBC53696685A
              E2F2C092C5DC4223CEF1E15D5C3F7D04BB7E91BF4857CC3E9C0131F960C832F5
              6C0AFFC17EC85B7837FE981D8DE7360DA94E4F720CB0E427692D24F1C8E1804A
              D5099666E4ECEE831C062CE97902FF1249B43D76D4B886881F19C41C6276DFB6
              662E391258CE2032B845ABF4E54B03A002CBE6925A1D8B6A28FB12B73983A8C0
              B2A128794C7E142ED3006DDF388A3DABE5FC9E2F13D753816503318F2820537F
              24FB93F2A260BE7FF128621F36CDDF878DF36385EDFAA287DED6BB6E9C4D5460
              6541CC9771EAA1F51B9DD077323B696384DD37F1891C69C1E1C6F770F3122FF2
              1EC5EE157C6E46F722BA9AA8C0CA9C98AC5B9645D5A61C975505F53ACA1105E2
              2E1831825419D87709A7760761E5E4AB3817C2D7DA6339C5194405560645C993
              F2A150A98EE8FB5943B4FB3F1DDCB46945142803E97845E018F6FC94D65E4457
              1715582FFA0E0A1EC5195A5AE1D591ADD1636C2EE4CDCF9B2B8CD22EE6F4EE63
              692FE25E817F453FCB49FC4B05567A6D37E351BCC38577311747B96ACCA3924C
              7731278B344319A4480B8BA13CF25EC47BB8757907CD5E47B0EB573E9613F897
              0AAC17144E10D219FDA756457D7F731E657E2E83C60D1E3A8E2820026F75378C
              F95E44E25F7BB609FCEBEC3E47BF6F564505569AAD36220F0A96E8803E1C723C
              50CC06935E6426C7B6E7C203DCBA4D3CEAC7AA68D09DC87D6D869779AC982CE6
              1B19C45C10AB031FE1EE558D1085E07AC45E0596951643D86CEAA61F8D392709
              18D52211914664A6728F607C6218821613310F7C867F1F71184B03B47BBB2D7A
              8C2B8AD215D3DACD23A95B8D1FF270C6E2DB7331AA0601F9992B824B0596A5F6
              4A6E026F2129D95757387794946B3E55AE05E50E97701C0BE65D413771E9081F
              5766E2E37CA6CDD175686BBCFA611E142A1C637537B5D0BB06BA2E61364654E4
              944DAE98765C0596A5F64A03C9715D9CC68880E36B94929249A7986C33BB836B
              E7B75BDF236812C6920BF98AB4C3EBE39AA0D35002AC2701CC203E337933AE9C
              FADA301F63AA3FC09D0B2AB0AC5DE0A2C09272479D0763253977146FCCD0138F
              F2C1133C7CB0177FCE0EC5E6C5D21EC134D2680B8BD3C94E55CE40C34ED59A68
              FA3AF32AE5665CA39083D54DC3097C6FE1F2117B245EB3B7A8C0B2D4DEE42AF6
              151B8CC4AC230948104C7FD9FF148DE7D10711FC0D67348EC493FB7CCD8B3A38
              CDDD17D5D0B02B599BD37833AE94848D8D03F0C6876F30B1C3659CDAE98ACE53
              155816441E482EA13B0401DB69C0395F945B92B0F53C64C50EAC9D7E1FB7C2A5
              7333B524A38C3BE7CDB8BC9BBA1D7A7D4AEAB7E0734426D28CA8FD0933FB722A
              231558D62E705160D544931EEF61EA7A76155CC2A91DC4A302AEE2ACBCC66793
              1D2E4AD0E4418112A41E27D5479B8164196A7EC074B58A7D9A17B81CB0C4816C
              8E2EC33AA2EF87EBB16CDC2984FE2E1EB38B57DC6451BB3CAAB7E88BE18B8E62
              CFEF04E6692AB0AC5DE062C092097401142DFF1C4F1F932A7C6AABADE7E93D57
              E65F7AB879E643A1920FF1F7E5ECA819646B5181F50292DD1CC715AD40735181
              9556BB93B7E93B62B6107A4DE36AFE2B595460A962175181A58A5D4405962A76
              111558AAD8455460A523F64CF59386B87C461C15586908D74B4E921C93D9E572
              503E4702976A155ABDC0C580250F6E43B47DBB242AD6D98A1553621015A93C66
              EB672A13C9F133FCF1E6846778FACF7E6CFA5A5D2BB47681CB014B5C42A987D6
              FD872060C575845FDD83F5330F61C78FB64F5C665A3DA232EA76E88CFE8135D0
              B8F14F983922145BBE529774AC5DE072C01267882AA8E73F101337D3A0EA3CE0
              052E72CE6555CEE1F026F9BCACAC1B9AE67A28528E0035A53E5AFF87F71D6AA1
              4FFA15B3079C40C86A1558D62E703160C94B2A6550A5C90798191627E4F23442
              4C0EABC5791CD9128C35013715654A329283CA6C8FA237E77A68831EE3FC9027
              4F349E1BC4D2727E6E4B31A56B388E6D5555A1B50B5C0F5842A05F5194AE310A
              73CF70842784802B8351AEACCA85958E63EFCF1C9BC5BB69F884F400609E90B7
              0E5AF4E1A249E21EC594EA1162E95E0F2EDDDB8C66C9301558D62E703960C9A5
              7B0B951A8B0597F470F390E3D7F9B8B214DC7344468662F3424EF12DE6F94CBD
              9BD93C8578599A093BE1CD2956F628CA71F25880B1B5EEE2C61919E88EEE978C
              880A2C4BED4DA9F05EE0432C08B75EBA376537F343FC7D8366AF690711FC031F
              53A4E3D6CA802A88E2153BA0F778320ADE25B06AC4B2741A98EDFE113A974BF7
              CEC3E8AA4FF0F0A6BA99C2DA052E0A2C77787A7F86EFEE11C072C5E079028148
              0F2B9555C55CEA1E5CE428642B967F7A15E7F6CB67F0CE9CD6E83EBA293A0DF5
              412EBF34723D18591D92A1A04FA4FF076260118E0753E3B1AC5DE062C012DA2C
              CD4E8DD0E17FBCB53E1F0A178F49A7B2AA7237F3016C5B72005B17D540E39E2D
              D16D446E1428189B4615AE94FA363E788A270FB9985328B62C364AF5031DDD1F
              19151558E9349DFEB24A2CD81EBD3E6E86CEEF9365E8C9965B5A955519205CB7
              87EBDA70095F8E99B7B6FB592AC922180409884B3824D4B759FBF953FC73577E
              BEA33B2133A2022B1D515A64E25EC0FE536BA1C9EB5CEF59AA556DA930A79006
              5CBE56B6064D4E48AE6FE3A523C0B10B63332704B98D2BC7CC9FEB8AA202EB45
              DA6F712FE09B01A551A57E5CDA95558D967EA7DC457D0B974F07E3B7C9A711B6
              810F3A68D1DBE6A2022B23EF615A98534FAAF13DDE0B981F858BA555D95E1665
              79E1083C7AB01BEB67EDC7E6C56401C665477D9BEC1415589910A59AF2439E42
              EDD17B7C53F80F23B5E661897FC93C8A37A1C6093C6AFB929D583B8348FA3DF3
              FBE5145181957931D90B581CE56A716555B202BBB355188B1883EC262095A765
              1E7516873773A555D33A8102A05C5AED59121558591473FEC5B5983BE18D29A5
              50A901FBD4DDE80F1372DE457D0687FEE473720A8F4A4B5460D948940BCB9C8B
              A10DBA8F6A816E4343B179E91E6C9C473C2A3EA7F1A8B42433C0FA7FE8D2924C
              BC3EBF6E0000000049454E44AE426082}
            Stretch = True
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
          PreviewOptions.Position = poMainFormCenter
          PreviewOptions.FormStyle = fsStayOnTop
          PrintEmpty = False
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
            object rlmg2: TRLImage
              Left = 3
              Top = 2
              Width = 75
              Height = 75
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000960000
                009608060000003C0171E2000000097048597300000F6100000F6101A83FA769
                000027184944415478DAED5D07785455D37EB7A427F4DE7BEFBD7708200A4853
                F0D3CFEF0704449A8828D24210902A222262A748514069099D1042EF107A972E
                91407AB2FBCFDC92DCDDEC2624D9CDEE863B3C28C96DE79EF3DE33EFCC9933A3
                311A8DC88868349A173B0F5A1DC077371ABCE19BA733FA07D444935743B0E9EB
                30042D8D4154249FA7854E6F842189CECB58435449251A6174B43A039212F967
                2FF8E46A02FF41ADD06DF8191CFC6B1B564E8AC6F37FE93C2D8F24F7FB8BDC37
                A31811DA626B60892FA7D11AA4463740DB011DD177522194A8948038B8C1030F
                F1F79583085A72183B7E8CC2B327F29DA1822B0B92D27F3EF0CBD7081DDE6D82
                4E43A8DF2BA4F4FB9D4BDBB126E02876AFE0F3B40442FEF0D3FBA81D0E2C6AA8
                9E00257C2D6550A54957BC35BD32EAB64B403CFD893368E96A0335D31D1E5A77
                78E21FDCBB7B00418BC3B06DE9733C7DC4B7E7F7C8E611C90922F49B2F72176C
                8ACE839BC17F587E142D168FD854FDEE06775CC0895D5BB17CC20D5C38C8172B
                C7CD92380C585A61FA1567A8DCC857B423FA7DD6181DDFD3C34D1783E749343D
                6BC4E9576A287D2574BE41476AD00F79F10C11CF7FC617BDC3712C58234ED106
                478D90AB09F5AD96679CAAA8D7E91D7CBC2E17F2FA46220249A40E695CB4E6FD
                4E7D6BF482AF2E11094987B07DE976AC9EF6144FEEF171E5382A25DB81A5D4D5
                04125D33741DDA01BD26E441C122A4CBF94592B402D732156E3CFF9E3800EEE1
                C6C51D58379D38C006FAC29E1BC5094B9DB53220FC319206F0250EDBA3037A4F
                288A329589C326F7B3F9F9FC7BBA4647DC17FFE2D1839DF83D30145B96301895
                DC583E3F1B81A5D1681524B10AEA76EC82B702CBA06AA338C42011F1894CCACD
                AF350A4D3418F88B2110C511919FBF13EB66C8445E95AC0B13F6F6E8FD494B74
                1B4D60F3903406CF5CA9540D8F9F1EEE7A4FBAEA3AC28F6C21F5781127B6F331
                1E3F71F6321AB305583A8D2E79BA2C886215C8DA9B5A172DFBF3CFB1884EF325
                8840EA49CFE33C8E066DC62FE3EFE0EA49F1252C4FC14E22FC1169E5AFDF207C
                C9CE696428FBB104CAD57905EFCCAC8A06FE4CDEE96F9A1FBB27BC8599ED0442
                5692F538F911EE5E91EF99644CCAF0D8646AC6A22FC1BB0D7A8C698DEE1FF922
                57AE683C13A64D0695F9F9F280F0B4FB08F76E0561E5C4C3D8F98BD4683DAB4B
                6775355803BC337F089255AE93C97843B47F9B3EFE690551B4148D138D87657A
                22F35A6FF8699F2332722F36CEDE8B0DF3E2101B9D2D33567D4DEB37DAA3CFC4
                52A8508D79541212A9A13A0B0D9589A20F11C5C424B2FCBE0E26A248D6DF6389
                9BC15949BA4C78F91DB40277ECFC1EFDFDBF8308FE31858BA49CE3E8F65A7E07
                FEC88D42FBC85A2CD009FD2692C5F8BE1E7A32A8A2521954B2906621BEAC1726
                82DBB8727E07D6061E33EE5D95E1E7671458F3357FF1D449936B0C235F8BD46A
                CFC88D93D5DE459CDCBD05BF7E42A6ED213EE8025F7BB20FAE1A1A74E1AFBD34
                2AD7272B0A64E5E2262E1D0FC2AAC9E7707893FC3E2FE20B729428FBBB0CAA34
                EE8AFFCCA88C3A6DE353D4A30EA2BB422146235BED1EF0D2110031DAF8EA8B79
                C5957D995160CDD4AC4E1286200DB4B3B5F7007F5FDF81D50187B0E327F9059D
                7C00927D39C550BA863F71C79A68FA3A7FF371027764EBD768E4CEA6C1C0591C
                DCB88D00F637AE9D525CCF03E874EF67FEC1344687FF7640BF498551BC2C5B8F
                69691DFEEF78633F5D869F995160CDD2AC352015C24561404521F2D97E6C59B8
                07EBE7F0F281C8CA9CD737A5FCA25965B443AF8F49ED0D2732EB4916552AEEC8
                EFC13D46AA424BB3763CA9C7C53BB06EE633443C30BF9FB389ECF3E2198997D9
                DAA0E7D816E83AC207B9FC186056C4F8B1B18F3623CF119E65236019093C49A7
                7060E576AC0E248BE232FFD2B93B3985E7F1D7DA14FE83DAA3D78402285A82B9
                A3351F902C4AA3E4091EDCDB85F533897F7D435F7F82B3F32FE5B8B065DF117D
                27D646F3FED45E0B6AD141C0E2CE23EEA18DC0C35B9F634869B1E1CEBBB06CAE
                16AAA2BEBF3FDE0C288B6A8DE21143BC23DE0AEF10549C453E29FB826EE2E289
                20FC36F92C0EFD25F683F3AA7FF305EB4FB1E4665E142A455CD26046731C072C
                5E83BA875B17E663744D83A02A849B3A5D672ABFD4222855AD33DE9C520BCDFB
                7053D3F0C1094456BE963BDDFC1CD91794C2BF0EFDC904DF05FC74024DA1366B
                4763DE99A2285585D7169D0A5844624FCFC398DA8EEEA9B4DE959B4B7C227F3B
                BCFE51737419E1091F2F4B3C4A1659DDF16C14875826EE1AB6A612ADCC6AA6FC
                2B36FE10829790B93E231211F71DFDF2E9C918CC3B551CE56A3911B0842F554B
                66F8D12FF15143386184823CC33444BB77382E8C7854C968612DCDAA3594EC8D
                E6173988A0EF0E60EBA2EA68DCB3055E199E1BF90BC4A6614DA5AC850A6B71F7
                B7634DE0016C5B624C99CD9D4984F11A89D9474AA3520332480C661F59B6018B
                A774A59594E44103700DE70E2EC2274D9D2DAE4A7613B8C3D3EB332CBDE7873C
                B9899C27E8A0D7C30A67127D709EB88A33A1BC7E760567F6CA27E441FE62ADD1
                634C13741CE20D3F1FBA975174A4A622FA46025E2281D32D0109498118584472
                0E6B9C0B5CE2780DC78CB072A8DE4474AD98BC8B8180952DEE068BC0A2CE0F5D
                8C092D9CADE3E4F6B02BE1432C082735958F66148D394F52FAE0C8AABDB513EB
                02C310B48CAF9548385BBE1A992B154689CAEDD1E7D37A68F5B68E78558CE4EB
                325723FC1F22C4B1F330BAEA133CBCC9C79DC95A94FB6718A6EFAF809ACD9D0A
                58AC322EE1F4FE6FF0594B27EC38A13D6CF18CC5824B64C17A48C01780251372
                029C260ACF9E93CAFB6A37D6CF89422447B66A44DF4F0AF1365F8B2B876ACDC9
                AA9C5219753BB0773E1EB189E2ECA59129012F626301C6D6BC8B1B67A5FB395D
                FF0C45604825D46A11EB2860CDD4ACE175B2E407F1C0F07AE0459CD8B704935A
                3B1FB0C4812C8AD2354661EE195E8E82A0AB0DC29B53DBB5A4B28CC7B1EFD71D
                5833FD21FEBEC427A467C999C78DD743EB373AA1DFE462285345E9CD16D5B087
                E62B8C6F760317C234C2ECE73C16A23C5E43306D6F65D46EC533AF52AD7390C0
                78635F7D86EF6B2B605DC0F17DDF62B233024B18480E95FE0033C3C85AE31823
                C8AE810B3816148CD553AF233C8CCFCFA8EF49B9D84BF7F4698DD74673D4870F
                72E78AC1338E944D222EE6B61453BA86E3D85667733DC8E3F51EA6EEAD827AAD
                7881DA2980A5508521A40A5B391BB0E481A44EF31F88899B894BE93C4467E6B1
                ED583BED0CC236CAE719CD222733F31CFE774A9C5AABFE3473117CF549BF62F6
                801308599D5E7C79768B4215EE2355D8D25C153A03B09C9263899190498944B2
                FBD374BFE2262E5CDF830DB30E62FBF76CB5D93684C734B256F2EA075647A306
                3F61E607A1D8B2486E8FA3FB25B9C5E970AC6C04D6EA047A70F2831456E101B2
                0A9B3B9B55C83C872D3EF6619546E57A5BF0EB647171DC7E1E71B3BD007A9ABD
                264622E25108362D724255288CD7FB981E5A1E359BC5A502962171BCB19F5B86
                EF9B19AB903AC628EB6111585EBA6B382FF9B19CCF41CAC27E2B9EA1F8DFD935
                B8CAE7C80077743F581061BC443F56B5261C6727034B72F46AB2C52A0CD42C7F
                EA87BC1C8E9C241157618DEC062E1E5988718DE0A4C06271CCA230ABC794456F
                271461BC46E08BC36550B921030B827A3418C8E8D03D4344E467C6B77267F8A6
                190556114DA92ADDF0F6ACDA68FE1AE963F6DC2478C2C7ED362E9F5880B1F51C
                DD4BAA644E4661CEF192A858371651096E707723DE8C5308FD73137EF9F8BEF1
                D6858CDE2FD3FB0A9BA2F3A0AE786B862F72E74F44BCE12E6E9E998F31751CDD
                41AA644E4663DEC962285D530F77ED733CFD672B967F7A00DB96F2B16CD94CA1
                D5689383D8F2A348D9D7F0EE1C22C6AF932ABCF205865794EF0B275587AA9848
                F2388DC3A2CBA40A2B1CC1AE3FFEC48F63FFC1FDEBF2F294C198718B39D33396
                D26C6E86CE83095C03BFC68496894888830A2C5711619C78998BACC21002D532
                7996528EAF83B6D88BB3970FFCF2C621368A8015EFE8DE52256342C0727787A7
                0F19641196C2AA9D2229882AAE2B4E9314C4E4F74EE61855256392D6F8393C3F
                962A39535460A962175181A58A5D4405962A76111558AAD8455E5A60491B4DB5
                72063A47B72733A255441438BA2DE6F2D2014B19162CFFCED57C6A524CBE62E7
                B8F34543BC34C0324FC05A16559B1643D95A0711FC8398942335E09C4D2CE4C3
                7F2B06514FCFE1F05FF229728A4A47B735C703CB1C50BCF5AA155E1B5D1D0D5F
                F784B7E6262E9EDC8A95131549D19C3215A532EEBD342A37EE8AB702ABA05E87
                2424E10A4EEFDE87BFE6CB8945A4F31D3A0BE77860C95209B5DB32A068305EE5
                2C7B52EAE9444F78E9790FDF291CF87D1B564CBC8FDBE17CBEA3074616F37CF8
                1DD07702578F48C987AFD1D00722C4E05FC7F95002D88253085D6774F07A7E8E
                05969C7287F398B740D7F7CBA06A1B06542CA24DB6B72B937210D8A238DDF76E
                FC3187558CB8F3D93109E09431F01CA2DC1C5D86B647EF097951A8488C59C259
                097804302F6131F80EAE9E38841DCB0E63E78F09888F758471929381A565BED1
                02AFBCDF190302BDE0E31B8567891A69578CF9F9CAEDF2346B5D0DC6AA4947B1
                67251FCBDEF064818827EF9AE6DDD25D30603AA9F046B169E7C337F03B78C1D7
                8D37D8EEC59FF382B072523CE2A2C546672FB8722CB094C23918BAA07F406352
                2134289A583103B095BC564949EEF0D07381A2701CDFBE15CB3F231E76980FDA
                7B7F9F52ED1540D1F2BCCFB01E5A0DE09FD3CEC5C56DF6D4EBA1C76984ADDF84
                5FC673712547F6798E079672B0CAA37A0B4E905F01359A73EC3DD786B19E16DC
                28A5058F4F3A88EDDF6CC7EAE972CE2A5BF32F653C93980FBFFB68311F7EEEDC
                D17826B815D2CB877F17372FD147F009F1AB3FA4363A74936B8E0796F07C8599
                AE11D5E3B08EE833997356450B49D48C692451D3907AF443041EDEDB81B5D30F
                60EB379CADCF56213FCAFBD446F35E9CCABB38CA564D2F33B15C3889CBC01061
                9FBB136B6792AA7CE62CB94C5F0A6025B743CCC9C01D6ECC8B822589BB4C6B80
                B6EFF0DBC4215A2836945EFD986B387F680B7E9D7009A77666155CF2F5C550B6
                36BB0F6AA0713729FBCC0BE5C33F8F23DB58ED29D27B3B85252B34F46502962C
                4A35C1C5A238417E1954A92FA9C734EBC7F07E48AEDFB701CBC6EFC21FB3323B
                9872E2915A68DAF31D7CFC1BDDC7DD4ABE2C41946AEF21FEBEB10D2B271EC5EE
                E5E2FBA414477274DF26F7D7CB082CA14DA22B412B6E69D7BBB544B7E1EDD0EB
                53568F3169D48FE18D1F7EC8E37E08DB57ADC4820199E532F2C68376787D7C4F
                0C9AF114FFC4D1ACE8617E9E598EF8D8506CF98A7394920A8F7016B567495E5A
                60C9A29C71483D96E888BE9F3544FB419C2E9C7D5E16B2F825FA20977E3F367F
                B7168B07671558ADF0EAA85E18322F0A9149E633A594AE92DD0F3883431BB83E
                F35D5C3F63DE6E6794971E587213A58192974C1AF9E38DC99550A72BCD5026B9
                DA6560D1CCF1FD1A7C3D30ABC0E2DC580CACE7786AA2821954A472357770F530
                E7E2223EB545BCCE79F3C02B450596B29D668BBCEDD1EBE36EF8EF4C65623119
                5821D8B46C1DBE19640360F18C355F092C31F19A8F2E0CC13F10780719452BD4
                69D59E25518165418873B9D3A0275440CD76C3307D47F6032B2991789C7E35BE
                1EB91F9B16F2E6506953AFCB880A2C0B22F3978AA8D56E28A6ED8C436CF28C91
                5DC0F2456E02D6224EBCF6B594CEC86912AFBD88A8C0B2D4DE941CA44D3FC08C
                03F1884F26F1B6061691F791BD31748139B07C08582B30F77FBC90EC6C19FD5E
                445460596AAF04AC52A8D8907340255806D67704AC2C5B852DD16D641F0C5B60
                CEB17CE0A7FB05B3FF730C7B96ABC0B27681EB014B48225602E5EB8EC4ECE349
                48806C186617B0BCE1ABFB195FBC7902FB7E73F4BA5F66440596A5F64AC02A8E
                72B50958270900C9C7EC00AC1104AC2F2D01EB27CCE87B12A16B556059BBC045
                81550C656A8EC29CD306A458F80A602D2560BD674F60FD88CF7B7364ABB33B43
                2D890A2C4BED55819565518165A9BD2F06AC6F0958436C00AC0F08580B5560BD
                54C02A5B6B14669F7220B0FA10B0D6A9C0B276818B028BC87B1D22EF275293F7
                DCFA7DD8F8EDEFF87648665D010A600D27607D65D92A9CD5EF0442D6A8E4DDDA
                052E0AAC92285F6F04661FE3E03B8DC2DDE08D5CDA7DD8B0E40F7CF77E5681C5
                9B3DFA60E897517866340516FBB166F53F8E7DAB546059BBC0F58065D5419A88
                F8B8BC28E211828D3FFF86AFFE9B5560B5418F316F60C4DCC7B81BC7793D2115
                CE541DA42F72818B02AB342A0B65E518586274A6464303AEB9879B17D760D1A0
                6B38BF5FE88F4C441C486B8FC682285EB11F862FAB885A2DC59AD349422428F3
                B8E598FBEE11ECFA490596B50B6C0C2C7B570B93C97259546B3E1C9FEF8F4574
                02D769E6278762F3C22D583E917E1799F55AD6E2F5AC7ADBA1E7D88EE837D903
                9EDE51888CF5455E8F555830F810B62FB337B0ECD19F2E062C215ECAEE3B9365
                6095478D36C310B85B0737DCC5B5B31BF0FDA84B38B95368898DCAE94A832A6C
                F162F7460F0C5AC051153AE841C01A1A86A025D93163D9DAF274196029CBD716
                44B1F28F71FFBABD0026777275347A6D0802360663F5EC60AC9ACA39E9ED15C1
                A9044F2BBC3AA21786CCFE0B3F4DDB81B581F60416C79EE54181E25C5542EC67
                DBCC5E2E012CB96339E0AD2706CD2360D5588C896D3499E437E9B657EADC52A8
                D4803855FE701C0B12DB615F7F92CCBB18B46438D0B37309CFB693EA172A4C70
                DF8EC6DC136771786D10560628FB3B2B37776A6089EAC6281067AECFDC138317
                5541BDFA47B16BE77708E8905D955935D22C955DDBABB2DB213A165F9E2F8FEA
                554F236CE71F58FAC103DC0ECF6A28B433034BFAA2B45A4EDDD3117D26D20033
                814EBA88E3BB09581DED0D2CF318F8EC94EC4A04C7FEB931987FA6304A56E5D4
                486C946CC12FE3F763CB37C9A764A2C69153024BDA218C62285BA317067F5D11
                B5C9147F8E4424C6936A723F8F233BB203582F8348C03A4B8643F558C424E8A1
                77E38C3BA770E0CF0D5836EA091EDCE0F332CA299D0E5832A8985F7C848517F2
                A060FE283C4DE414439C3381137510B0B25515E66451022B1E71DC971AE657B9
                91CFED062E9E9B8FB175E5F2C519A102CE0A2C632EE42D42C0BAEC060F6FFA59
                7033B04A12817574D77798DA5E0556D64502D6390256350696DCA7F4211B23F0
                F0F66C8CA82C5567CB904A745A60D18C95EF237C79D99BFE4F5F8C5109AC0BC4
                B1BEC5E4762AB0B2240250B85FC7600101AB745525B0DCE0AE25127F692E4657
                930A9EE70C6079C137CF387C75990056C01458DEBA8B38B9770926B5C9066039
                BA38A73D9F9F6C1C7D8805E18551AA52820258EEF0D0DEC58D0BF3085812BFCA
                29C0F2C945AAF0921FF2144E9480C50E520F02D6159C09598C09ADB2A32C9D23
                76206753EE5301283AE8F463F1E58582285E3E01F126C0BA836B5CB3BB56666E
                EEB4C0F284B72FA9C28BB990AF9839B0AEE16CD8227CDACCDEC0F280976F1C62
                9EF3BFB32B4DB7D287E5014F1FF6F6DBE749E23A25475410B02E1640D13229C0
                3210B0BCB4B770F9C497185B2F3377775A60F1622C7F4964159624F228BF7012
                E7A7BA810B4716E2E346B093AA903DCF4DD069603534E8B801DF8F23B3FBA678
                4C187883AD9F2BF9AD04AFBB37D180EEF8BF59F771EBF26EAC9F639F251D1158
                3433798DC5C28B794DFB99F38069C92A3CBA10E31A66A69F9D0E58F20B1379F4
                6060E5479132A653B4A7F6362E9F5C4066B06D3B3A45E4C0BA3A68D177280257
                13898D3880AD0B39877A349EFD2B9D6313EFB8B913B621DABFCD692CCBA25AB9
                1F30DD6E8BD00ACDE04794833443DEA2A69AC14B771DE107BFC2F8A6C819C092
                75BF9BDB582C20DD5FAC9CB9EE2752799E4865757B25C997415319753B0DC2A4
                2DF4252767D2DB853F661EC2F6EFD9B723E5624726B99049EAA432A8D298D36E
                5741BDF69C76DB0D6E49BF6076FF93D86F97D0E4142EEB97771C7159A5912453
                8EAB38B3FF6B4C689919CAE1B4C0E2441863313FBC104A5654028BCDE047B87B
                6D0E4656E11A38B0833A5404FA35FE00330FB2B5243E9B737F7AE2262E1EDF8E
                35016710B691CF97221E8C2F4AF04DAB4DE42FDA117D273446C7E46A13FC3E64
                BCE8BFC594CE17703CC81E6B8732587C91BB205BDF3473E5A659D128172DF014
                ACEF537B966062DBCC58DF4E0B2CD1BF2238EE4CFC2B9C69EF5F3CBE43C0AA4C
                C43ADA1E045E8EB52A8252D54663EE5976D0428A3AE06CC5AC2608F8E0410FC6
                6F53496584F175E2CC62B49A0B54B9FEC7A4B939BA0EE35491C4230B2BD3538A
                99FCDC35AC8688E71C54860CD9EE1DC5FE646EF521BEBC4433A4A758512CC55F
                188E633B97624AA656389C1158C9321AF34E9740B99A0A60918AD46BA210F978
                36465422BE13611F60A5743A5B4C04022FB9D3854E93F28252E76B9390603C86
                BD3FD30C36ED31EE5DE3E3E6338CB27C09FF5C0BCD7A7642BFC9A550B1B68584
                BA82CF88AE31128FAC790F37CFD9C35F27DFB3104A541E8379E7C0A159D2B365
                609DC3E1E06598E69FE380C509394AA152DD78C41864AB892B4BD04C15453356
                C567F8F7614654D00BB737C5FB9F9F0D08E257F9A8B335A9F39172DE788D968E
                6B9EE3E95322F7F3F660C33C7651F0EF5332D48880E2CA631DD16F6215D4F737
                109CE83C4BD526846852025BEC5C8CAA1A8147B7EC032C4E3D0E1445E99A2331
                E704B72725F189B8FDEC340E6CF9019FBF929919D3598125A89E11F8E2481954
                6E200D40F217451D9DC41C8BB8D61579006DCB41924D71CF4FF1ED1D9AB9F213
                70127856B192073EB90E0F191617B761D5C49308592B1F27755EA31D7A8FAF83
                E60338E4380651060D64D5A8180C7A26DF8B06554F33595C200617A3D9F989AD
                676525272C8F1AADDFC7E77BE2848F574E2E2702EB044236FC8C593D33C3F19C
                1A58C33133AC1CAA3651000BA23AD4B1857666375968A486568917D8D6432E03
                A82A1A74ED8AB7A68B6A2BB948920E8A84B7725772E7734D1BCE034FD6DC9FA1
                D8BAB0269AF46984F6EF9295E54EC4DCA4F29852D89D4096B0DE0BDE0CCEF06D
                583999B7D7CBBE2DDBBC534AC022733C3218FED71ADDC7E641FE725CF75031C3
                267AC34F7F14BBD72EC79CBE390658F2173A0CD3432AA0668B38B14051F26030
                FDE5CA0C5C94E82ACE8532BF51860FDB30265D00B89268D3EC559863C3E484FE
                A93A541C38700D4122E3E08F800169B052BE4452A7823B23124FFED98B3FE790
                4A5D188FD868D8C8E235E77875D1B22F97A82B898AB5E839506EC895DA94E843
                C03A8C1DAB56607EFF9C042C81530C41C0AE8AA8D58A5F5E63368832783CC942
                E32BCEE2E0FA60AC0EB883AB27F9B8AD7C3FE68528DBA3CF274DD071881B3CDC
                ACA934160930C20722962F319DE14C0B4125188E60D7F73BB026F0091EDE327F
                6EE64523F9CA44E72AA9BD96FE78634A25D4699794C2F15255C2E07EA3766908
                582B57E1CBB7731CB08622702FA99256117898A015C8A6C5011406D74BA8DC10
                1B7F1041DFECC4BA19918878C0C76DE4033271669644857A9DD13FA01A1ABEC2
                791DAC9070CB1D2EBA2CA432706EECB208E6C2003770E190D4DE345D162F2A66
                25EACA91153AA91EDABCA3A323E99556E1361640113D1922BF10B0DEC9CC47EA
                ACC0122E288EF275BB60000D6083740750596BE6091EDCDB89DFA713C759C264
                D8BC2E7466C57CF9A5169AF6F0C79B530968B5D2E65F721B859D467A5293F81B
                D7CE7361004EFAC1C76CA5C295BE325EC4260E352AA5449D758E275714F3A419
                940B6912475C4946C894C7642049C75DDEF39E4A68D6EA4E66FA24B210EB11B8
                B83E96B50114AC2A45A5AEC3DBB0E2B30B38B19D0FDA6A36307574BA7BB4C42B
                EFB745CF8F73A340A1180BFC2B8547F9E129FE211EB5717688C0A3E262B2B82C
                A4689329E8EBA0456F027DC00B94A8338AD10C9E3A9E412FE3F4DE20FC36E50A
                4EEFC94A7B9C1A584A4B8F0B293543E7C13480E3696A2F21E63948BBB3785982
                7FA65961255B598FA4AFCF564B24664B33C57869A6113A0C26AB50CFFC0B927B
                841DA95C74F308762E2343637A041EDDB6573B68F6ACDB1903A65527352D95A8
                4B14416EB1441DAF00E83C454BF4222F531DB351B962A70696A58EF345AE026D
                F1FAD8A6E83CDC07BE3E04B034A6776116D0D04CC1DEFA487660EEC21F73E26D
                1BE364C2BF78A329F3AFAA68D04538487FD8620D127894B20470D6674EA5F821
                7741B1C2BDFF50B298DD6384F2C46997A8235ECA33E8639A41E7ECC7A6451CFB
                A5AC8A9695F6B804B0E4DB2807B0304A54662F3699CE5CDA2D1D429A24CC6CFC
                65FE8BC7F769AA9FCC110ACC296CE9F752AA22AE96DA0C5D068661DB0FC45704
                67A9ADB7E7F3337570736F83EE635815D307943B16D106C912B5F6A109860E7D
                5C0964F52DDD81DF67FE8B4777E4F6D9CAD1EC4AC04AEE4C8DA2CA7B05D46C4D
                5C624A45D46A23572755127C695D8F030705B7C4DFB87A94AC9DB93CD8F6C8C1
                A00CD833ED01DB871A8BC0D2BB374687FFB5C02BC379D19C1D9D521F68145442
                2AE2E9ADD30AAE99C31B83F15BC06D5C39CEC7ED3183BA1CB0149D6AB294531F
                6DFAF36EE962285B8517761390C0F1521A8E4460272507AD11A066CBC5B8ED2D
                F2B289ED979BAC3D4FA76B88B6FF6985D73E2C81F235F8136380D121A31CEE73
                03E147D8123D87C39B156DB44B893A970556F2BD455782410A67F669816EEFB7
                C66B1FE541C102ECA2B8898B3C437D4133D43A79B7093B2C5D2D596C5AA25461
                BC4AD010EDDE26808DE19023EA1F5EFEBAB90BBFCF3888E065A2FBC53696685A
                E2F2C092C5DC4223CEF1E15D5C3F7D04BB7E91BF4857CC3E9C0131F960C832F5
                6C0AFFC17EC85B7837FE981D8DE7360DA94E4F720CB0E427692D24F1C8E1804A
                D5099666E4ECEE831C062CE97902FF1249B43D76D4B886881F19C41C6276DFB6
                662E391258CE2032B845ABF4E54B03A002CBE6925A1D8B6A28FB12B73983A8C0
                B2A128794C7E142ED3006DDF388A3DABE5FC9E2F13D753816503318F2820537F
                24FB93F2A260BE7FF128621F36CDDF878DF36385EDFAA287DED6BB6E9C4D5460
                6541CC9771EAA1F51B9DD077323B696384DD37F1891C69C1E1C6F770F3122FF2
                1EC5EE157C6E46F722BA9AA8C0CA9C98AC5B9645D5A61C975505F53ACA1105E2
                2E1831825419D87709A7760761E5E4AB3817C2D7DA6339C5194405560645C993
                F2A150A98EE8FB5943B4FB3F1DDCB46945142803E97845E018F6FC94D65E4457
                1715582FFA0E0A1EC5195A5AE1D591ADD1636C2EE4CDCF9B2B8CD22EE6F4EE63
                692FE25E817F453FCB49FC4B05567A6D37E351BCC38577311747B96ACCA3924C
                7731278B344319A4480B8BA13CF25EC47BB8757907CD5E47B0EB573E9613F897
                0AAC17144E10D219FDA756457D7F731E657E2E83C60D1E3A8E2820026F75378C
                F95E44E25F7BB609FCEBEC3E47BF6F564505569AAD36220F0A96E8803E1C723C
                50CC06935E6426C7B6E7C203DCBA4D3CEAC7AA68D09DC87D6D869779AC982CE6
                1B19C45C10AB031FE1EE558D1085E07AC45E0596951643D86CEAA61F8D392709
                18D52211914664A6728F607C6218821613310F7C867F1F71184B03B47BBB2D7A
                8C2B8AD215D3DACD23A95B8D1FF270C6E2DB7331AA0601F9992B824B0596A5F6
                4A6E026F2129D95757387794946B3E55AE05E50E97701C0BE65D413771E9081F
                5766E2E37CA6CDD175686BBCFA611E142A1C637537B5D0BB06BA2E61364654E4
                944DAE98765C0596A5F64A03C9715D9CC68880E36B94929249A7986C33BB836B
                E7B75BDF236812C6920BF98AB4C3EBE39AA0D35002AC2701CC203E337933AE9C
                FADA301F63AA3FC09D0B2AB0AC5DE0A2C09272479D0763253977146FCCD0138F
                F2C1133C7CB0177FCE0EC5E6C5D21EC134D2680B8BD3C94E55CE40C34ED59A68
                FA3AF32AE5665CA39083D54DC3097C6FE1F2117B245EB3B7A8C0B2D4DEE42AF6
                151B8CC4AC230948104C7FD9FF148DE7D10711FC0D67348EC493FB7CCD8B3A38
                CDDD17D5D0B02B599BD37833AE94848D8D03F0C6876F30B1C3659CDAE98ACE53
                155816441E482EA13B0401DB69C0395F945B92B0F53C64C50EAC9D7E1FB7C2A5
                7333B524A38C3BE7CDB8BC9BBA1D7A7D4AEAB7E0734426D28CA8FD0933FB722A
                231558D62E705160D544931EEF61EA7A76155CC2A91DC4A302AEE2ACBCC66793
                1D2E4AD0E4418112A41E27D5479B8164196A7EC074B58A7D9A17B81CB0C4816C
                8E2EC33AA2EF87EBB16CDC2984FE2E1EB38B57DC6451BB3CAAB7E88BE18B8E62
                CFEF04E6692AB0AC5DE062C092097401142DFF1C4F1F932A7C6AABADE7E93D57
                E65F7AB879E643A1920FF1F7E5ECA819646B5181F50292DD1CC715AD40735181
                9556BB93B7E93B62B6107A4DE36AFE2B595460A962175181A58A5D4405962A76
                111558AAD8455460A523F64CF59386B87C461C15586908D74B4E921C93D9E572
                503E4702976A155ABDC0C580250F6E43B47DBB242AD6D98A1553621015A93C66
                EB672A13C9F133FCF1E6846778FACF7E6CFA5A5D2BB47681CB014B5C42A987D6
                FD872060C575845FDD83F5330F61C78FB64F5C665A3DA232EA76E88CFE8135D0
                B8F14F983922145BBE529774AC5DE072C01267882AA8E73F101337D3A0EA3CE0
                052E72CE6555CEE1F026F9BCACAC1B9AE67A28528E0035A53E5AFF87F71D6AA1
                4FFA15B3079C40C86A1558D62E703160C94B2A6550A5C90798191627E4F23442
                4C0EABC5791CD9128C35013715654A329283CA6C8FA237E77A68831EE3FC9027
                4F349E1BC4D2727E6E4B31A56B388E6D5555A1B50B5C0F5842A05F5194AE310A
                73CF70842784802B8351AEACCA85958E63EFCF1C9BC5BB69F884F400609E90B7
                0E5AF4E1A249E21EC594EA1162E95E0F2EDDDB8C66C9301558D62E703960C9A5
                7B0B951A8B0597F470F390E3D7F9B8B214DC7344468662F3424EF12DE6F94CBD
                9BD93C8578599A093BE1CD2956F628CA71F25880B1B5EEE2C61919E88EEE978C
                880A2C4BED4DA9F05EE0432C08B75EBA376537F343FC7D8366AF690711FC031F
                53A4E3D6CA802A88E2153BA0F778320ADE25B06AC4B2741A98EDFE113A974BF7
                CEC3E8AA4FF0F0A6BA99C2DA052E0A2C77787A7F86EFEE11C072C5E079028148
                0F2B9555C55CEA1E5CE428642B967F7A15E7F6CB67F0CE9CD6E83EBA293A0DF5
                412EBF34723D18591D92A1A04FA4FF076260118E0753E3B1AC5DE062C012DA2C
                CD4E8DD0E17FBCB53E1F0A178F49A7B2AA7237F3016C5B72005B17D540E39E2D
                D16D446E1428189B4615AE94FA363E788A270FB9985328B62C364AF5031DDD1F
                19151558E9349DFEB24A2CD81EBD3E6E86CEEF9365E8C9965B5A955519205CB7
                87EBDA70095F8E99B7B6FB592AC922180409884B3824D4B759FBF953FC73577E
                BEA33B2133A2022B1D515A64E25EC0FE536BA1C9EB5CEF59AA556DA930A79006
                5CBE56B6064D4E48AE6FE3A523C0B10B63332704B98D2BC7CC9FEB8AA202EB45
                DA6F712FE09B01A551A57E5CDA95558D967EA7DC457D0B974F07E3B7C9A711B6
                810F3A68D1DBE6A2022B23EF615A98534FAAF13DDE0B981F858BA555D95E1665
                79E1083C7AB01BEB67EDC7E6C56401C665477D9BEC1415589910A59AF2439E42
                EDD17B7C53F80F23B5E661897FC93C8A37A1C6093C6AFB929D583B8348FA3DF3
                FBE5145181957931D90B581CE56A716555B202BBB355188B1883EC262095A765
                1E7516873773A555D33A8102A05C5AED59121558591473FEC5B5983BE18D29A5
                50A901FBD4DDE80F1372DE457D0687FEE473720A8F4A4B5460D948940BCB9C8B
                A10DBA8F6A816E4343B179E91E6C9C473C2A3EA7F1A8B42433C0FA7FE8D2924C
                BC3EBF6E0000000049454E44AE426082}
              Stretch = True
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
            end
            object RLDBText3: TRLDBText
              Left = 377
              Top = 0
              Width = 72
              Height = 40
              Align = faLeft
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'price'
              DataSource = ds3
              Layout = tlCenter
              Text = ''
            end
            object RLDBText4: TRLDBText
              Left = 449
              Top = 0
              Width = 69
              Height = 40
              Align = faLeft
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'totalval'
              DataSource = ds3
              Layout = tlCenter
              Text = ''
            end
            object RLDBMemo1: TRLDBText
              Left = 45
              Top = 0
              Width = 332
              Height = 40
              Align = faLeft
              AutoSize = False
              Behavior = [beSiteExpander]
              DataField = 'name'
              DataSource = ds3
              Layout = tlCenter
              Text = ''
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
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 728
    Top = 601
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
end
