object F_CadServicos: TF_CadServicos
  Left = 645
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Servi'#231'os'
  ClientHeight = 369
  ClientWidth = 626
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 16
    Top = 284
    Width = 172
    Height = 13
    Caption = 'Digite aqui o nome do Servi'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 267
    Top = 162
    Width = 117
    Height = 13
    Caption = 'Valor Venda Servico'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 328
    Width = 626
    Height = 41
    Align = alBottom
    Color = clActiveCaption
    TabOrder = 0
    object BotaoNovo: TJvBitBtn
      Left = 8
      Top = 8
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Hint = 'Clique neste bot'#227'o para cadastrar um novo servi'#231'o'
      Action = ActNovoServico
      Caption = 'Novo - F3'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object BotaoAlterar: TJvBitBtn
      Left = 96
      Top = 8
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Hint = 'Clique neste bot'#227'o para alterar um servi'#231'o existente'
      Action = ActAlterarServico
      Caption = 'Alterar - F4'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object BotaoCancelar: TJvBitBtn
      Left = 187
      Top = 8
      Width = 92
      Height = 25
      Cursor = crHandPoint
      Hint = 'Clique neste bot'#227'o para cancelar a inclus'#227'o ou altera'#231#227'o atual'
      Action = ActCancelarServico
      Caption = 'Cancelar - F5'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object BotaoSalvar: TJvBitBtn
      Left = 296
      Top = 8
      Width = 86
      Height = 25
      Cursor = crHandPoint
      Hint = 'Clique neste bot'#227'o para salvar a inclus'#227'o ou altera'#231#227'o atual'
      Action = ActSalvarServico
      Caption = 'Salvar - F8'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object botaoFechar: TJvBitBtn
      Left = 528
      Top = 8
      Width = 86
      Height = 25
      Cursor = crHandPoint
      Hint = 'Clique neste bot'#227'o para fechar a tela de cadastro'
      Action = ActFechar
      Caption = '&Fechar - F10'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object JvBitBtn1: TJvBitBtn
      Left = 408
      Top = 8
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Hint = 
        'Clique neste bot'#227'o para imprimir relat'#243'rio de servi'#231'os cadastrad' +
        'os'
      Action = Act_Imprimir
      Caption = 'Imprimir - F6'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 5
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 577
    Height = 257
    ActivePage = TabCon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 1
    object TabCon: TTabSheet
      Caption = '&Consulta'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object JvDBGrid1: TJvDBGrid
        Left = -4
        Top = 3
        Width = 561
        Height = 209
        DataSource = DMPrincipal.dsServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        AlternateRowColor = 9007960
        AlternateRowFontColor = clWhite
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'SERV_IDSERVICO'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERV_SERVICO'
            Title.Caption = 'Servi'#231'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 339
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_VALORSERVVENDA'
            Title.Caption = 'Valor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 115
            Visible = True
          end>
      end
    end
    object TabDados: TTabSheet
      Caption = '&Dados'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 4
        Top = 4
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 4
        Top = 43
        Width = 44
        Height = 13
        Caption = 'Servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 141
        Top = 83
        Width = 95
        Height = 13
        Caption = 'Valor do Servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 291
        Top = 0
        Width = 32
        Height = 13
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 4
        Top = 83
        Width = 132
        Height = 13
        Caption = 'Custo com Produto(R$)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 4
        Top = 125
        Width = 117
        Height = 13
        Caption = 'Valor Venda Servico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 316
        Top = 80
        Width = 54
        Height = 13
        Caption = 'Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 142
        Top = 125
        Width = 134
        Height = 13
        Caption = 'Valor Comiss'#227'o Servico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 4
        Top = 16
        Width = 121
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'SERV_IDSERVICO'
        DataSource = DMPrincipal.dsServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 4
        Top = 56
        Width = 373
        Height = 21
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'SERV_SERVICO'
        DataSource = DMPrincipal.dsServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 141
        Top = 97
        Width = 135
        Height = 21
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'SERV_VALOR'
        DataSource = DMPrincipal.dsServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 288
        Top = 16
        Width = 89
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'SERV_DATACAD'
        DataSource = DMPrincipal.dsServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 4
        Top = 98
        Width = 132
        Height = 21
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'SERV_CUSTOPROD'
        DataSource = DMPrincipal.dsServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 315
        Top = 96
        Width = 62
        Height = 21
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'SERV_PERCENTCOM'
        DataSource = DMPrincipal.dsServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 3
        Top = 137
        Width = 133
        Height = 21
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'C_VALORSERVVENDA'
        DataSource = DMPrincipal.dsServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 142
        Top = 137
        Width = 135
        Height = 21
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'C_SERVVALORCOM'
        DataSource = DMPrincipal.dsServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 253
    Width = 220
    Height = 25
    DataSource = DMPrincipal.dsServico
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 2
  end
  object EdtCon: TEdit
    Left = 8
    Top = 303
    Width = 553
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnChange = EdtConChange
  end
  object acoesCadServico: TActionList
    Left = 392
    object ActNovoServico: TAction
      Caption = 'Novo - F3'
      ShortCut = 114
      OnExecute = ActNovoServicoExecute
    end
    object ActAlterarServico: TAction
      Caption = 'Alterar - F4'
      ShortCut = 115
      OnExecute = ActAlterarServicoExecute
    end
    object ActCancelarServico: TAction
      Caption = 'Cancelar - F5'
      ShortCut = 116
      OnExecute = ActCancelarServicoExecute
    end
    object ActSalvarServico: TAction
      Caption = 'Salvar - F8'
      ShortCut = 119
      OnExecute = ActSalvarServicoExecute
    end
    object ActFechar: TAction
      Caption = '&Fechar'
      ShortCut = 121
      OnExecute = ActFecharExecute
    end
    object Act_Imprimir: TAction
      Caption = 'Imprimir - F6'
      ShortCut = 117
      OnExecute = Act_ImprimirExecute
    end
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 336
    Top = 65528
  end
  object frxReport1: TfrxReport
    Version = '6.3.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42195.946116250000000000
    ReportOptions.LastChange = 42480.402848981480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 552
    Top = 80
    Datasets = <
      item
        DataSet = frxDBServicos
        DataSetName = 'frxDBServico'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 37.795300000000000000
          Width = 211.653680000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Servi'#231'os')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 94.488250000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 41.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 41.574830000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'g.:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Impresso em :')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Servico:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Misterbeauty - Sistema para Gest'#227'o de Sal'#227'o de Beleza')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frxDBServicos
        DataSetName = 'frxDBServico'
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 0.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'SERV_IDSERVICO'
          DataSet = frxDBServicos
          DataSetName = 'frxDBServico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBServico."SERV_IDSERVICO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 0.559060000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          DataField = 'SERV_SERVICO'
          DataSet = frxDBServicos
          DataSetName = 'frxDBServico'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBServico."SERV_SERVICO"]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 0.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'C_VALORSERVVENDA'
          DataSet = frxDBServicos
          DataSetName = 'frxDBServico'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBServico."C_VALORSERVVENDA"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBServicos: TfrxDBDataset
    UserName = 'frxDBServico'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SERV_IDSERVICO=SERV_IDSERVICO'
      'SERV_SERVICO=SERV_SERVICO'
      'SERV_VALOR=SERV_VALOR'
      'SERV_DATACAD=SERV_DATACAD'
      'C_ITEMSERVVLR=C_ITEMSERVVLR'
      'SERV_CUSTOPROD=SERV_CUSTOPROD'
      'SERV_PERCENTUAL=SERV_PERCENTUAL'
      'C_VALORSERVVENDA=C_VALORSERVVENDA')
    DataSource = DMPrincipal.dsServico
    BCDToCurrency = False
    Left = 560
    Top = 160
  end
end
