object ChequeF: TChequeF
  Left = 0
  Top = 0
  ActiveControl = edtSearch
  Caption = 'Cheque Printing'
  ClientHeight = 746
  ClientWidth = 1156
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Arial'
  Font.Style = []
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  DesignSize = (
    1156
    746)
  TextHeight = 22
  object grdCheque: TDBGrid
    Left = 89
    Top = 41
    Width = 1067
    Height = 705
    Hint = 'Ctrl+Click to multy select'
    Align = alClient
    DataSource = ds1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentShowHint = False
    PopupMenu = DataM.pmExport
    ReadOnly = True
    ShowHint = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = grdChequeDblClick
    OnTitleClick = grdChequeTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CNo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Cheque No'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CName'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Name'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CValue'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Amount'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CDate'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = ' Date'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 94
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'APOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Acc Pay'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 84
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CanC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Canceled'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNote'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Note'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 399
        Visible = True
      end>
  end
  object pnltop: TPanel
    Left = 0
    Top = 0
    Width = 1156
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1152
    object lbl1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 60
      Height = 33
      Align = alLeft
      Caption = 'Search'
      Layout = tlCenter
      ExplicitHeight = 22
    end
    object edtSearch: TEdit
      AlignWithMargins = True
      Left = 70
      Top = 4
      Width = 387
      Height = 33
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 0
      TextHint = 'Search Cheque By Cheque No or Name'
      OnChange = edtSearchChange
      OnEnter = edtSearchEnter
      OnExit = edtSearchExit
      ExplicitHeight = 31
    end
    object btnSearch: TButton
      AlignWithMargins = True
      Left = 463
      Top = 4
      Width = 106
      Height = 33
      Align = alLeft
      Caption = 'Search'
      TabOrder = 1
      OnClick = btnSearchClick
    end
    object btnRefresh: TButton
      AlignWithMargins = True
      Left = 575
      Top = 4
      Width = 43
      Height = 33
      Align = alLeft
      Caption = 'X'
      TabOrder = 2
      OnClick = btnRefreshClick
    end
  end
  object pnlleft: TPanel
    Left = 0
    Top = 41
    Width = 89
    Height = 705
    Align = alLeft
    TabOrder = 2
    ExplicitHeight = 704
    object btnCredit: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 81
      Height = 65
      Align = alTop
      Caption = 'New'
      TabOrder = 0
      OnClick = btnCreditClick
    end
    object bt1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 75
      Width = 81
      Height = 65
      Align = alTop
      Caption = 'Clone'
      TabOrder = 1
      OnClick = bt1Click
    end
    object btnPrintMain: TButton
      AlignWithMargins = True
      Left = 4
      Top = 146
      Width = 81
      Height = 66
      Align = alTop
      Caption = 'Print'
      TabOrder = 2
      OnClick = btnPrintClick
    end
    object btnDeposit: TButton
      AlignWithMargins = True
      Left = 4
      Top = 218
      Width = 81
      Height = 66
      Align = alTop
      Caption = 'Deposit'
      TabOrder = 3
      Visible = False
      OnClick = btnDepositClick
    end
    object btnClose: TButton
      AlignWithMargins = True
      Left = 4
      Top = 635
      Width = 81
      Height = 66
      Align = alBottom
      Caption = 'Close'
      TabOrder = 4
      OnClick = btnCloseClick
      ExplicitTop = 634
    end
    object btReport: TButton
      AlignWithMargins = True
      Left = 4
      Top = 290
      Width = 81
      Height = 66
      Align = alTop
      Caption = 'Export'
      TabOrder = 5
    end
  end
  object pnlEdit: TPanel
    Left = 1
    Top = 4
    Width = 1150
    Height = 741
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    ExplicitWidth = 1146
    ExplicitHeight = 740
    object lbl4: TLabel
      Left = 11
      Top = 73
      Width = 50
      Height = 22
      Caption = 'Name'
      FocusControl = dbedtCName
    end
    object lbl5: TLabel
      Left = 11
      Top = 12
      Width = 96
      Height = 22
      Caption = 'Cheque No'
      FocusControl = dbedtCNo
    end
    object lbl6: TLabel
      Left = 161
      Top = 12
      Width = 47
      Height = 22
      Caption = 'Value'
      FocusControl = dbedtCValue
    end
    object lbl7: TLabel
      Left = 332
      Top = 12
      Width = 40
      Height = 22
      Caption = 'Date'
      FocusControl = dbedtCDate
    end
    object lbl13: TLabel
      Left = 11
      Top = 129
      Width = 40
      Height = 22
      Caption = 'Note'
      FocusControl = dbedtCNote
    end
    object lbl8: TLabel
      Left = 643
      Top = 100
      Width = 38
      Height = 22
      Caption = 'Print'
    end
    object dbedtCName: TDBEdit
      Left = 12
      Top = 96
      Width = 605
      Height = 30
      DataField = 'CName'
      DataSource = ds1
      TabOrder = 3
      OnExit = dbedtCNoExit
    end
    object dbedtCNo: TDBEdit
      Left = 12
      Top = 35
      Width = 97
      Height = 30
      DataField = 'CNo'
      DataSource = ds1
      TabOrder = 0
      OnExit = dbedtCNoExit
    end
    object dbedtCValue: TDBEdit
      Left = 161
      Top = 35
      Width = 108
      Height = 30
      DataField = 'CValue'
      DataSource = ds1
      TabOrder = 1
      OnExit = dbedtCNoExit
    end
    object dbedtCDate: TDBEdit
      Left = 332
      Top = 35
      Width = 117
      Height = 30
      DataField = 'CDate'
      DataSource = ds1
      MaxLength = 10
      TabOrder = 2
      OnExit = dbedtCNoExit
    end
    object dbchkAccPay: TDBCheckBox
      Left = 477
      Top = 12
      Width = 144
      Height = 33
      Caption = 'Acc Pay Only'
      DataField = 'AccPay'
      DataSource = ds1
      TabOrder = 7
      OnClick = dbchkAccPayClick
    end
    object dbedtCNote: TDBEdit
      Left = 12
      Top = 151
      Width = 605
      Height = 30
      DataField = 'CNote'
      DataSource = ds1
      TabOrder = 4
    end
    object btnsave: TButton
      Left = 973
      Top = 74
      Width = 168
      Height = 50
      Caption = 'Save'
      TabOrder = 5
      OnClick = btnsaveClick
    end
    object btnCredit2: TButton
      Left = 973
      Top = 15
      Width = 168
      Height = 50
      Caption = 'Close'
      TabOrder = 6
      OnClick = btnCredit2Click
    end
    object dbchkCancel1: TDBCheckBox
      Left = 477
      Top = 63
      Width = 144
      Height = 27
      Caption = 'Canceled'
      Color = clBtnFace
      DataField = 'Canceled'
      DataSource = ds1
      ParentColor = False
      TabOrder = 8
    end
    object RLPreview1: TRLPreview
      Left = 1
      Top = 187
      Width = 1148
      Height = 553
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      Align = alBottom
      TabOrder = 10
      ExplicitTop = 186
      ExplicitWidth = 1144
      object RptVoucher: TRLReport
        Left = 347
        Top = 3
        Width = 794
        Height = 559
        Margins.LeftMargin = 5.000000000000000000
        Margins.TopMargin = 5.000000000000000000
        Margins.RightMargin = 5.000000000000000000
        Margins.BottomMargin = 5.000000000000000000
        Borders.Sides = sdAll
        Borders.Width = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        PageSetup.PaperSize = fpA5
        PageSetup.Orientation = poLandscape
        PreviewOptions.WindowState = wsNormal
        PreviewOptions.FormStyle = fsStayOnTop
        PreviewOptions.ShowModal = True
        PreviewOptions.Defaults = pdIgnoreDefaults
        RecordRange = rrCurrentOnly
        ShowProgress = False
        Visible = False
        object rlblCompName: TRLLabel
          Left = 21
          Top = 21
          Width = 752
          Height = 36
          Align = faTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'comp name'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlblCompAddr: TRLLabel
          Left = 21
          Top = 57
          Width = 752
          Height = 26
          Align = faTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'comp Addr'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 21
          Top = 83
          Width = 752
          Height = 28
          Align = faTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'CHEQUE PAYMENT VOUCHER'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlpnl1: TRLPanel
          Left = 21
          Top = 111
          Width = 752
          Height = 26
          Align = faTop
          object RLLabel5: TRLLabel
            Left = 0
            Top = 0
            Width = 74
            Height = 26
            Align = faLeftTop
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdAll
            Caption = 'PAYEE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 74
            Top = 0
            Width = 273
            Height = 26
            Align = faLeftTop
            AutoSize = False
            Borders.Sides = sdAll
            DataField = 'CName'
            DataSource = ds1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLDBText7: TRLDBText
            Left = 347
            Top = 0
            Width = 110
            Height = 26
            Align = faLeftTop
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdAll
            DataField = 'CDate'
            DataSource = ds1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLDBText6: TRLDBText
            Left = 457
            Top = 0
            Width = 295
            Height = 26
            Align = faClientTop
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdAll
            DataField = 'CNo'
            DataSource = ds1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = 'BANK & CHEQUE NO: BOC '
          end
        end
        object rlpnl2: TRLPanel
          Left = 21
          Top = 137
          Width = 752
          Height = 60
          Align = faTop
          Borders.Sides = sdAll
          object RLMemo2: TRLMemo
            Left = 1
            Top = 24
            Width = 528
            Height = 35
            Align = faLeftBottom
            AutoSize = False
            Behavior = [beSiteExpander]
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLMemo1BeforePrint
          end
          object RLDBText4: TRLDBText
            Left = 531
            Top = 1
            Width = 220
            Height = 58
            Align = faRight
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'CValue'
            DataSource = ds1
            DisplayMask = 'Rs 0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLLabel4: TRLLabel
            Left = 1
            Top = 1
            Width = 528
            Height = 26
            Align = faLeftTop
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'AMOUNT PAYABLE:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
        end
        object rlpnl3: TRLPanel
          Left = 21
          Top = 197
          Width = 752
          Height = 162
          Align = faTop
          Borders.Sides = sdAll
          object RLDraw1: TRLDraw
            Left = 1
            Top = 26
            Width = 43
            Height = 108
            Align = faLeftOnly
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Borders.Width = 2
            Brush.Style = bsClear
            DrawData.Strings = (
              '0 0'
              '0 0')
            DrawKind = dkCustom
          end
          object RLDraw10: TRLDraw
            Left = 663
            Top = 27
            Width = 88
            Height = 134
            Align = faRightBottom
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Brush.Style = bsClear
            DrawData.Strings = (
              '0 0'
              '0 0')
            DrawKind = dkCustom
          end
          object RLDraw11: TRLDraw
            Left = 577
            Top = 27
            Width = 86
            Height = 134
            Align = faRightBottom
            Borders.Sides = sdAll
            Brush.Style = bsClear
            DrawData.Strings = (
              '0 0'
              '0 0')
            DrawKind = dkCustom
          end
          object RLDraw9: TRLDraw
            Left = 489
            Top = 27
            Width = 88
            Height = 134
            Align = faRightBottom
            Borders.Sides = sdAll
            Brush.Style = bsClear
            DrawData.Strings = (
              '0 0'
              '0 0')
            DrawKind = dkCustom
          end
          object RLDraw8: TRLDraw
            Left = 415
            Top = 27
            Width = 74
            Height = 134
            Align = faRightBottom
            Borders.Sides = sdAll
            Brush.Style = bsClear
            DrawData.Strings = (
              '0 0'
              '0 0')
            DrawKind = dkCustom
          end
          object RLDraw7: TRLDraw
            Left = 42
            Top = 26
            Width = 374
            Height = 109
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Borders.Width = 2
            Brush.Style = bsClear
            DrawData.Strings = (
              '0 0'
              '0 0')
            DrawKind = dkCustom
          end
          object RLDraw5: TRLDraw
            Left = 1
            Top = 104
            Width = 750
            Height = 6
            Align = faWidth
            DrawKind = dkLine
          end
          object RLDraw4: TRLDraw
            Left = 1
            Top = 78
            Width = 750
            Height = 6
            Align = faWidth
            DrawKind = dkLine
          end
          object RLLabel11: TRLLabel
            Left = 1
            Top = 133
            Width = 414
            Height = 28
            Align = faLeftBottom
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'TOTAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 1
            Top = 1
            Width = 42
            Height = 26
            Align = faLeftTop
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'LINE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 43
            Top = 1
            Width = 372
            Height = 26
            Align = faLeftTop
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'NARRATION'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object QUANTITY12: TRLLabel
            Left = 415
            Top = 1
            Width = 74
            Height = 26
            Align = faLeftTop
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'QUANTITY'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = 16
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 489
            Top = 1
            Width = 88
            Height = 26
            Align = faLeftTop
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'Rs'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 577
            Top = 1
            Width = 86
            Height = 26
            Align = faLeftTop
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'DEBIT A/C'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 663
            Top = 1
            Width = 90
            Height = 26
            Align = faLeftTop
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'CREDIT A/C'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 495
            Top = 28
            Width = 81
            Height = 26
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CValue'
            DataSource = ds1
            DisplayMask = '0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLDBText8: TRLDBText
            Left = 495
            Top = 134
            Width = 81
            Height = 26
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CValue'
            DataSource = ds1
            DisplayMask = '0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLDBText9: TRLDBText
            Left = 46
            Top = 28
            Width = 365
            Height = 24
            AutoSize = False
            DataField = 'CNote'
            DataSource = ds1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLDraw3: TRLDraw
            Left = 1
            Top = 51
            Width = 750
            Height = 6
            Align = faWidth
            DrawKind = dkLine
          end
          object RLLabel23: TRLLabel
            Left = 12
            Top = 30
            Width = 13
            Height = 19
            Caption = '1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel24: TRLLabel
            Left = 12
            Top = 57
            Width = 13
            Height = 19
            Caption = '2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel25: TRLLabel
            Left = 12
            Top = 83
            Width = 13
            Height = 19
            Caption = '3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel26: TRLLabel
            Left = 12
            Top = 110
            Width = 13
            Height = 19
            Caption = '4'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw6: TRLDraw
            Left = 1
            Top = 133
            Width = 750
            Height = 3
            Align = faWidth
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Borders.Width = 2
            DrawData.Strings = (
              '0 0'
              '1 0')
            DrawKind = dkCustom
          end
        end
        object rlpnl4: TRLPanel
          Left = 21
          Top = 359
          Width = 752
          Height = 50
          Align = faTop
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object RLLabel12: TRLLabel
            Left = 1
            Top = 0
            Width = 160
            Height = 49
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'PREPARED BY'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 161
            Top = 0
            Width = 160
            Height = 49
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'CHECKED BY'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 545
            Top = 0
            Width = 206
            Height = 49
            Align = faClient
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'CHEQUSE SIGNED BY'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 321
            Top = 0
            Width = 224
            Height = 49
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'PAYMENT APPROVED BY'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 544
            Top = 21
            Width = 210
            Height = 28
            Align = faBottomOnly
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = '1...................   2...................'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlBottom
            ParentFont = False
          end
        end
        object RLLabel17: TRLLabel
          Left = 21
          Top = 418
          Width = 96
          Height = 24
          Caption = 'RECEIPT'
        end
        object RLMemo3: TRLMemo
          Left = 25
          Top = 446
          Width = 275
          Height = 48
          Behavior = [beSiteExpander]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'I/ We Here by Declare That I/ We Have'
            'Supplied/ Rendered Goods/ Services Specified'
            'Above And Received The Above Amount To:')
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 22
          Top = 513
          Width = 231
          Height = 24
          Caption = 'Rs.  ..............................'
        end
        object RLLabel19: TRLLabel
          Left = 334
          Top = 434
          Width = 145
          Height = 80
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdAll
          Caption = 'STAMP'
          Layout = tlCenter
        end
        object RLLabel20: TRLLabel
          Left = 505
          Top = 433
          Width = 259
          Height = 24
          Caption = 'NAME:  .............................'
        end
        object RLLabel21: TRLLabel
          Left = 503
          Top = 473
          Width = 261
          Height = 24
          Caption = 'ID-CARD NO  ....................'
        end
        object RLLabel22: TRLLabel
          Left = 502
          Top = 513
          Width = 262
          Height = 24
          Caption = 'Date  .................................'
        end
      end
      object RptCheque: TRLReport
        Left = 5
        Top = 3
        Width = 794
        Height = 559
        Margins.LeftMargin = 0.000000000000000000
        Margins.TopMargin = 0.000000000000000000
        Margins.RightMargin = 0.000000000000000000
        Margins.BottomMargin = 0.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        NextReport = RptVoucher
        PageSetup.PaperSize = fpA5
        PageSetup.Orientation = poLandscape
        PreviewOptions.WindowState = wsNormal
        PreviewOptions.FormStyle = fsStayOnTop
        PreviewOptions.ShowModal = True
        PreviewOptions.Defaults = pdIgnoreDefaults
        RecordRange = rrCurrentOnly
        ShowProgress = False
        Visible = False
        object rlpnl5: TRLPanel
          Left = 0
          Top = 134
          Width = 794
          Height = 177
          Align = faWidth
          object RLLabel27: TRLLabel
            Left = 723
            Top = 2
            Width = 30
            Height = 24
            Alignment = taRightJustify
            Caption = '24'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            ParentFont = False
            BeforePrint = RLLabel2BeforePrint
          end
          object RLDBText10: TRLDBText
            Left = 584
            Top = 112
            Width = 179
            Height = 39
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CValue'
            DataSource = ds1
            DisplayMask = 'Rs 0/='
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
          object RLMemo4: TRLMemo
            Left = 162
            Top = 94
            Width = 432
            Height = 74
            AutoSize = False
            Behavior = [beSiteExpander]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            BeforePrint = RLMemo1BeforePrint
          end
          object RLDBText11: TRLDBText
            Left = 158
            Top = 53
            Width = 605
            Height = 24
            AutoSize = False
            DataField = 'CName'
            DataSource = ds1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
          object RLLabel28: TRLLabel
            Left = 372
            Top = 2
            Width = 174
            Height = 30
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdAll
            Borders.Width = 2
            Caption = 'A/C Payee Only'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
            BeforePrint = RLLabel1BeforePrint
          end
        end
      end
    end
    object cbbPrinter: TComboBox
      Left = 643
      Top = 151
      Width = 319
      Height = 30
      TabOrder = 9
      Text = 'cbbPrinter'
      OnChange = cbbPrinterChange
    end
    object btnPC: TButton
      Left = 973
      Top = 133
      Width = 168
      Height = 48
      Caption = 'Print'
      TabOrder = 11
      OnClick = btnPCClick
    end
    object chk1: TCheckBox
      Left = 728
      Top = 96
      Width = 97
      Height = 30
      Caption = 'Cheque'
      Checked = True
      State = cbChecked
      TabOrder = 12
    end
    object chk2: TCheckBox
      Left = 850
      Top = 96
      Width = 97
      Height = 30
      Caption = 'Voucher'
      TabOrder = 13
    end
  end
  object qrMain: TFDQuery
    Active = True
    AfterInsert = qrMainAfterInsert
    OnCalcFields = qrMainCalcFields
    Connection = DataM.Con1
    SQL.Strings = (
      'SELECT  *  FROM Cheque  order by id desc   Limit 1000')
    Left = 506
    Top = 274
    object qrMainid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrMainCNo: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'CNo'
      Origin = 'CNo'
    end
    object qrMainCName: TStringField
      FieldName = 'CName'
      Origin = 'CName'
      Required = True
      OnSetText = qrMainCNameSetText
      Size = 255
    end
    object qrMainCNote: TStringField
      FieldName = 'CNote'
      Origin = 'CNote'
      Size = 500
    end
    object qrMainCValue: TSingleField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'CValue'
      Origin = 'CValue'
    end
    object qrMainCDate: TDateField
      FieldName = 'CDate'
      Origin = 'CDate'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object qrMainAccPay: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'False'
      FieldName = 'AccPay'
      Origin = 'AccPay'
    end
    object qrMainCanceled: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'False'
      FieldName = 'Canceled'
      Origin = 'Canceled'
    end
    object qrMainUserID: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'UserID'
      Origin = 'UserID'
    end
    object qrMainCrDate: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'CrDate'
      Origin = 'CrDate'
    end
    object qrMainMdDate: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'MdDate'
      Origin = 'MdDate'
    end
    object qrMainAPOC: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'APOC'
      Size = 2
      Calculated = True
    end
    object qrMainCanC: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'CanC'
      Size = 2
      Calculated = True
    end
  end
  object ds1: TDataSource
    AutoEdit = False
    DataSet = qrMain
    OnStateChange = ds1StateChange
    Left = 448
    Top = 274
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 622
    Top = 274
  end
end
