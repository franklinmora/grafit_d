object F_CadProdutos: TF_CadProdutos
  Left = 373
  Top = 441
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro do Estoque'
  ClientHeight = 325
  ClientWidth = 691
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
  object Label1: TLabel
    Left = 8
    Top = 3
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
  object Label3: TLabel
    Left = 520
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
  object Label4: TLabel
    Left = 520
    Top = 48
    Width = 48
    Height = 13
    Caption = 'Unidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 88
    Width = 63
    Height = 13
    Caption = 'Refer'#234'ncia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 128
    Top = 3
    Width = 85
    Height = 13
    Caption = 'C'#243'digo Auxiliar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 131
    Top = 88
    Width = 28
    Height = 13
    Caption = 'NCM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 459
    Top = 87
    Width = 18
    Height = 13
    Caption = 'OX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 261
    Top = 87
    Width = 26
    Height = 13
    Caption = 'EAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 8
    Top = 128
    Width = 83
    Height = 13
    Caption = 'Valor de custo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 135
    Top = 129
    Width = 100
    Height = 13
    Caption = 'Valor Perc. Lucro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 258
    Top = 127
    Width = 88
    Height = 13
    Caption = 'Valor de Venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 382
    Top = 127
    Width = 65
    Height = 13
    Caption = 'Fornecedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 8
    Top = 168
    Width = 86
    Height = 13
    Caption = 'Data Altera'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 379
    Top = 164
    Width = 61
    Height = 13
    Caption = 'Fabricante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LbDescricao: TLabel
    Left = 8
    Top = 48
    Width = 58
    Height = 13
    Caption = 'Descri'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 101
    Top = 168
    Width = 78
    Height = 13
    Caption = 'Valor Anterior'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 284
    Width = 691
    Height = 41
    Align = alBottom
    Color = clActiveCaption
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
    object botaonovo: TJvBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = 'Clique neste bot'#227'o para cadastrar um novo produto'
      Action = Act_Novo
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
    object botaoAlterar: TJvBitBtn
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = 'Clique neste bot'#227'o para alterar um produto existente'
      Action = Act_Alterar
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
    object botaoCancelar: TJvBitBtn
      Left = 176
      Top = 8
      Width = 94
      Height = 25
      Cursor = crHandPoint
      Hint = 'Clique neste bot'#227'o para cancelar a inclus'#227'o ou altera'#231#227'o atual'
      Action = Act_Cancelar
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
    object botaoSalvar: TJvBitBtn
      Left = 280
      Top = 8
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Hint = 'Clique neste bot'#227'o para salvar a inclus'#227'o ou altera'#231#227'o atual'
      Action = Act_Salvar
      Caption = 'Salvar - F9'
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
      Left = 592
      Top = 8
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = 'Clique neste bot'#227'o para fechar a tela de cadastro'
      Action = Act_Fechar
      Caption = 'Fechar - F10'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 4
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object botaoConsultar: TJvBitBtn
      Left = 368
      Top = 8
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Action = Act_ConsultarProduto
      Caption = 'Consultar - F12'
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
    object JvBitBtn1: TJvBitBtn
      Left = 480
      Top = 8
      Width = 105
      Height = 25
      Cursor = crHandPoint
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
      TabOrder = 6
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
  end
  object dbcodigo: TDBEdit
    Left = 8
    Top = 19
    Width = 121
    Height = 21
    TabStop = False
    Color = 9007960
    DataField = 'PD_IDPRODUTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object dbcodigoauxiliar: TDBEdit
    Left = 130
    Top = 19
    Width = 121
    Height = 21
    Color = 9007960
    DataField = 'PD_CODIGOAUXILIAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnEnter = dbcodigoauxiliarEnter
    OnExit = dbcodigoauxiliarExit
  end
  object dbdata: TDBEdit
    Left = 520
    Top = 16
    Width = 81
    Height = 21
    Color = 9007960
    DataField = 'PD_DATACAD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object dbdescricao: TDBEdit
    Left = 8
    Top = 65
    Width = 511
    Height = 21
    CharCase = ecUpperCase
    Color = 9007960
    DataField = 'PD_DESCRICAO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnEnter = dbdescricaoEnter
    OnExit = dbdescricaoExit
  end
  object dbunidade: TDBEdit
    Left = 522
    Top = 64
    Width = 81
    Height = 21
    CharCase = ecUpperCase
    Color = 9007960
    DataField = 'PD_UNIDADE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnEnter = dbunidadeEnter
    OnExit = dbunidadeExit
  end
  object dbreferencia: TDBEdit
    Left = 8
    Top = 104
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    Color = 9007960
    DataField = 'PD_REFERENCIA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnEnter = dbreferenciaEnter
    OnExit = dbreferenciaExit
  end
  object dbncm: TDBEdit
    Left = 133
    Top = 103
    Width = 123
    Height = 21
    CharCase = ecUpperCase
    Color = 9007960
    DataField = 'PD_NCM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnEnter = dbncmEnter
    OnExit = dbncmExit
  end
  object dbox: TDBEdit
    Left = 459
    Top = 103
    Width = 147
    Height = 21
    CharCase = ecUpperCase
    Color = 9007960
    DataField = 'PD_OX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnEnter = dboxEnter
    OnExit = dboxExit
  end
  object dbean: TDBEdit
    Left = 261
    Top = 103
    Width = 193
    Height = 21
    CharCase = ecUpperCase
    Color = 9007960
    DataField = 'PD_EAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnEnter = dbeanEnter
    OnExit = dbeanExit
  end
  object dbvalorcusto: TDBEdit
    Left = 8
    Top = 144
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    Color = 9007960
    DataField = 'PD_VLR_CUSTOLIQUIDO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnEnter = dbvalorcustoEnter
    OnExit = dbvalorcustoExit
  end
  object dbperclucro: TDBEdit
    Left = 134
    Top = 144
    Width = 123
    Height = 21
    CharCase = ecUpperCase
    Color = 9007960
    DataField = 'PD_PERC_LUCRO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnEnter = dbperclucroEnter
    OnExit = dbperclucroExit
  end
  object dbvalorvenda: TDBEdit
    Left = 258
    Top = 143
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    Color = 9007960
    DataField = 'C_PD_VLR_VENDA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object dbforncedor: TDBEdit
    Left = 382
    Top = 143
    Width = 226
    Height = 21
    Color = 9007960
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
  end
  object dbdataaltera: TDBEdit
    Left = 8
    Top = 184
    Width = 89
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    Color = 9007960
    DataField = 'PD_DATAALT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 12
  end
  object dbfabricante: TDBEdit
    Left = 379
    Top = 180
    Width = 224
    Height = 21
    Color = 9007960
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 248
    Width = 224
    Height = 25
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 16
  end
  object DBEdit1: TDBEdit
    Left = 101
    Top = 184
    Width = 89
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    Color = 9007960
    DataField = 'PD_VLR_VENDA_ANT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 17
  end
  object ActionList1: TActionList
    Left = 384
    object Act_Novo: TAction
      Caption = 'Novo - F3'
      ShortCut = 114
      OnExecute = Act_NovoExecute
    end
    object Act_Alterar: TAction
      Caption = 'Alterar - F4'
      ShortCut = 115
      OnExecute = Act_AlterarExecute
    end
    object Act_Cancelar: TAction
      Caption = 'Cancelar - F5'
      ShortCut = 116
      OnExecute = Act_CancelarExecute
    end
    object Act_Salvar: TAction
      Caption = 'Salvar - F9'
      ShortCut = 120
      OnExecute = Act_SalvarExecute
    end
    object Act_ConsultarProduto: TAction
      Caption = 'Consultar - F12'
      ShortCut = 123
      OnExecute = Act_ConsultarProdutoExecute
    end
    object Act_Fechar: TAction
      Caption = 'Fechar - F10'
      ShortCut = 121
      OnExecute = Act_FecharExecute
    end
    object Act_Imprimir: TAction
      Caption = 'Imprimir - F6'
      ShortCut = 117
      OnExecute = Act_ImprimirExecute
    end
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 304
    Top = 8
  end
  object frxDBProdutos: TfrxDBDataset
    UserName = 'frxDBProdutos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PD_IDPRODUTO=PD_IDPRODUTO'
      'PD_DESCRICAO=PD_DESCRICAO'
      'PD_UNIDADE=PD_UNIDADE'
      'PD_VLR_VENDA=PD_VLR_VENDA'
      '-PD_VLR_VENDA_ANT=PD_VLR_VENDA_ANT'
      '-PD_PERC_LUCRO=PD_PERC_LUCRO'
      '-PD_VLR_CUSTOLIQUIDO=PD_VLR_CUSTOLIQUIDO'
      '-PD_EAN=PD_EAN'
      '-PD_NCM=PD_NCM'
      '-PD_OX=PD_OX'
      '-PD_QUANTIDADE=PD_QUANTIDADE'
      '-PD_DATACAD=PD_DATACAD'
      '-PD_DATAALT=PD_DATAALT'
      '-PD_CODIGOAUXILIAR=PD_CODIGOAUXILIAR'
      'PD_REFERENCIA=PD_REFERENCIA')
    BCDToCurrency = False
    Left = 496
    Top = 16
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
    ReportOptions.LastChange = 42425.413155011600000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 600
    Top = 16
  end
end
