object F_CadCliente: TF_CadCliente
  Left = 330
  Top = 257
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Clientes'
  ClientHeight = 428
  ClientWidth = 931
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 371
    Width = 931
    Height = 57
    Align = alBottom
    Color = clActiveCaption
    TabOrder = 0
    object botaoNovo: TBitBtn
      Left = 8
      Top = 16
      Width = 76
      Height = 26
      Cursor = crHandPoint
      Caption = 'Novo - F3'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      OnClick = ActNovoExecute
    end
    object botaoAlterar: TBitBtn
      Left = 96
      Top = 16
      Width = 75
      Height = 26
      Cursor = crHandPoint
      Caption = 'Alterar - F4'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = ActAlterarExecute
    end
    object botaoCancelar: TBitBtn
      Left = 184
      Top = 16
      Width = 88
      Height = 26
      Cursor = crHandPoint
      Caption = 'Cancelar - F5'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      OnClick = ActCancelarExecute
    end
    object botaoConsultar: TBitBtn
      Left = 379
      Top = 16
      Width = 102
      Height = 26
      Cursor = crHandPoint
      Caption = 'Consultar - F12'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 3
      WordWrap = True
      OnClick = ActConsultarExecute
    end
    object botaoFechar: TBitBtn
      Left = 600
      Top = 16
      Width = 84
      Height = 26
      Cursor = crHandPoint
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
      OnClick = ActFecharExecute
    end
    object botaoSalvar: TBitBtn
      Left = 278
      Top = 16
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Caption = 'Salvar - F9'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 5
      OnClick = ActSalvarExecute
    end
    object botaoImprimir: TBitBtn
      Left = 487
      Top = 16
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = 'Imprimir'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 6
      OnClick = ActImprimirExecute
    end
  end
  object JvDBNavigator1: TJvDBNavigator
    Left = 8
    Top = 340
    Width = 168
    Height = 25
    Cursor = crHandPoint
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
  end
  object JvgPageControl1: TJvgPageControl
    Left = 2
    Top = 4
    Width = 921
    Height = 330
    ActivePage = TabDiagnostico
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Style = tsFlatButtons
    TabOrder = 2
    TabStop = False
    TabStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
    TabStyle.BevelInner = bvNone
    TabStyle.BevelOuter = bvNone
    TabStyle.Bold = False
    TabStyle.BackgrColor = clBtnShadow
    TabStyle.Font.Charset = DEFAULT_CHARSET
    TabStyle.Font.Color = clBtnHighlight
    TabStyle.Font.Height = -11
    TabStyle.Font.Name = 'Arial'
    TabStyle.Font.Style = []
    TabStyle.CaptionHAlign = fhaCenter
    TabStyle.Gradient.Active = False
    TabStyle.Gradient.Orientation = fgdHorizontal
    TabSelectedStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
    TabSelectedStyle.BevelInner = bvNone
    TabSelectedStyle.BevelOuter = bvNone
    TabSelectedStyle.Bold = False
    TabSelectedStyle.BackgrColor = clBtnFace
    TabSelectedStyle.Font.Charset = DEFAULT_CHARSET
    TabSelectedStyle.Font.Color = clBtnText
    TabSelectedStyle.Font.Height = -11
    TabSelectedStyle.Font.Name = 'Arial'
    TabSelectedStyle.Font.Style = []
    TabSelectedStyle.CaptionHAlign = fhaCenter
    TabSelectedStyle.Gradient.Active = False
    TabSelectedStyle.Gradient.Orientation = fgdHorizontal
    Options = [ftoAutoFontDirection, ftoExcludeGlyphs]
    object TabDados: TTabSheet
      Caption = '&Dados'
      object Label1: TLabel
        Left = 3
        Top = 11
        Width = 44
        Height = 13
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 536
        Top = 10
        Width = 28
        Height = 13
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 255
        Top = 9
        Width = 37
        Height = 13
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 3
        Top = 50
        Width = 59
        Height = 13
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 268
        Top = 50
        Width = 48
        Height = 13
        Caption = 'N'#250'mero:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 354
        Top = 50
        Width = 38
        Height = 13
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 3
        Top = 93
        Width = 21
        Height = 13
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 7
        Top = 218
        Width = 35
        Height = 13
        Caption = 'Email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 55
        Top = 92
        Width = 55
        Height = 13
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 164
        Top = 93
        Width = 40
        Height = 13
        Caption = 'Celular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 265
        Top = 91
        Width = 40
        Height = 13
        Caption = 'Celular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 421
        Top = 93
        Width = 44
        Height = 13
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 536
        Top = 52
        Width = 51
        Height = 13
        Caption = 'Situa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 325
        Top = 220
        Width = 61
        Height = 13
        Caption = 'Facebook:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 3
        Top = 134
        Width = 69
        Height = 13
        Caption = 'Data Nasc.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 130
        Top = 134
        Width = 72
        Height = 13
        Caption = 'Estado Civil:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 269
        Top = 134
        Width = 33
        Height = 13
        Caption = 'Sexo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 580
        Top = 92
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
      object Label27: TLabel
        Left = 447
        Top = 172
        Width = 76
        Height = 13
        Caption = 'Indicado por:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 58
        Top = 176
        Width = 57
        Height = 13
        Caption = 'Profiss'#227'o:'
      end
      object Label29: TLabel
        Left = 372
        Top = 134
        Width = 82
        Height = 13
        Caption = 'Nacionalidade'
      end
      object Label30: TLabel
        Left = 366
        Top = 92
        Width = 44
        Height = 13
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 3
        Top = 176
        Width = 44
        Height = 13
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 145
        Top = 10
        Width = 28
        Height = 13
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbcodigo: TDBEdit
        Left = 3
        Top = 26
        Width = 136
        Height = 21
        TabStop = False
        Color = 9007960
        DataField = 'CLI_IDCLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object dbdatacad: TDBEdit
        Left = 536
        Top = 25
        Width = 129
        Height = 21
        TabStop = False
        Color = 9007960
        DataField = 'CLI_DATACAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object dbnome: TDBEdit
        Left = 252
        Top = 25
        Width = 278
        Height = 21
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'CLI_NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object dbendereco: TDBEdit
        Left = 3
        Top = 66
        Width = 257
        Height = 21
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'CLI_ENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object dbnumero: TDBEdit
        Left = 268
        Top = 66
        Width = 81
        Height = 21
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'CLI_NUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object dbbairro: TDBEdit
        Left = 353
        Top = 66
        Width = 149
        Height = 21
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'CLI_BAIRRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object dbemail: TDBEdit
        Left = 7
        Top = 237
        Width = 312
        Height = 21
        CharCase = ecLowerCase
        Color = 9007960
        DataField = 'CLI_EMAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
      end
      object dbtelefone: TDBEdit
        Left = 55
        Top = 108
        Width = 97
        Height = 21
        Color = 9007960
        DataField = 'CLI_TELEFONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 14
        ParentFont = False
        TabOrder = 9
      end
      object dbcelular1: TDBEdit
        Left = 161
        Top = 108
        Width = 100
        Height = 21
        Color = 9007960
        DataField = 'CLI_CEL1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 14
        ParentFont = False
        TabOrder = 10
      end
      object dbcelular2: TDBEdit
        Left = 264
        Top = 108
        Width = 99
        Height = 21
        Color = 9007960
        DataField = 'CLI_CEL2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 14
        ParentFont = False
        TabOrder = 11
      end
      object dbcbuf: TDBComboBox
        Left = 3
        Top = 109
        Width = 46
        Height = 21
        Color = 9007960
        DataField = 'CLI_UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT '
          'PA'
          'PB'
          'PE'
          'PI '
          'PR'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO')
        ParentFont = False
        TabOrder = 8
      end
      object DBComboBox1: TDBComboBox
        Left = 536
        Top = 66
        Width = 129
        Height = 21
        Cursor = crHandPoint
        Color = 9007960
        DataField = 'CLI_SITUACAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Items.Strings = (
          'Ativo'
          'Inativo')
        ParentFont = False
        TabOrder = 7
      end
      object DBfacebook: TDBEdit
        Left = 325
        Top = 237
        Width = 343
        Height = 21
        CharCase = ecLowerCase
        Color = 9007960
        DataField = 'CLI_FACEBOOK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
      end
      object JvDBDateEdit1: TJvDBDateEdit
        Left = 3
        Top = 149
        Width = 121
        Height = 21
        DataField = 'CLI_DATANASC'
        Color = 9007960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ShowNullDate = False
        TabOrder = 15
      end
      object DBCodAux: TDBEdit
        Left = 570
        Top = 108
        Width = 98
        Height = 21
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'CLI_CODIGOAUXILIAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
      object DBCBEstadoCivil: TDBComboBox
        Left = 130
        Top = 149
        Width = 134
        Height = 21
        Color = 9007960
        DataField = 'CLI_ESTADOCIVIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Items.Strings = (
          'Casado(a)'
          'Solteiro(a)'
          'Divorciado(a)'
          'Vi'#250'vo(a)'
          'Outros(a)')
        ParentFont = False
        TabOrder = 16
      end
      object DBCBSexo: TDBComboBox
        Left = 270
        Top = 149
        Width = 94
        Height = 21
        Color = 9007960
        DataField = 'CLI_SEXO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Items.Strings = (
          'Feminino'
          'Masculino')
        ParentFont = False
        TabOrder = 17
      end
      object DBIndicadopor: TDBEdit
        Left = 447
        Top = 191
        Width = 221
        Height = 21
        Color = 9007960
        DataField = 'CLI_INDICADO_POR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
      end
      object DBLCProfissao: TDBLookupComboBox
        Left = 58
        Top = 191
        Width = 383
        Height = 21
        Color = 9007960
        DataField = 'CLI_PROFISSAOID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'PROFISSAOID'
        ListField = 'PROFISSAO'
        ParentFont = False
        TabOrder = 20
      end
      object DBNacionalidade: TDBEdit
        Left = 370
        Top = 148
        Width = 298
        Height = 21
        Color = 9007960
        DataField = 'CLI_NACIONALIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
      end
      object dbcodcid: TDBEdit
        Left = 366
        Top = 108
        Width = 54
        Height = 21
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'CLI_CIDADECODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object DBLCBCidades: TDBLookupComboBox
        Left = 421
        Top = 108
        Width = 145
        Height = 21
        Color = 9007960
        DataField = 'CLI_CIDADECODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'CODIGO'
        ListField = 'NOME'
        ParentFont = False
        TabOrder = 13
      end
      object DBCodProfissao: TDBEdit
        Left = 3
        Top = 191
        Width = 54
        Height = 21
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'CLI_PROFISSAOID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
      end
      object DBCPF: TDBEdit
        Left = 144
        Top = 25
        Width = 105
        Height = 21
        CharCase = ecLowerCase
        Color = 9007960
        DataField = 'CLI_CPFCNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 15
        ParentFont = False
        TabOrder = 0
        OnExit = DBCPFExit
      end
    end
    object TabDiagnostico: TTabSheet
      Caption = '&Diagn'#243'stico'
      ImageIndex = 1
      object Label17: TLabel
        Left = 214
        Top = 82
        Width = 68
        Height = 13
        Caption = 'Tonalidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 7
        Top = 82
        Width = 77
        Height = 13
        Caption = 'Comprimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 7
        Top = 123
        Width = 44
        Height = 13
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 6
        Top = 160
        Width = 30
        Height = 13
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 6
        Top = 198
        Width = 56
        Height = 13
        Caption = 'Natureza:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 214
        Top = 162
        Width = 44
        Height = 13
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 215
        Top = 121
        Width = 30
        Height = 13
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 3
        Top = 8
        Width = 420
        Height = 17
        DataField = 'CLI_NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvDBComboBox2: TJvDBComboBox
        Left = 4
        Top = 98
        Width = 160
        Height = 21
        Cursor = crHandPoint
        Style = csDropDown
        DataField = 'CLI_CABCOMP'
        EnableValues = False
        Items.Strings = (
          'Curto'
          'M'#233'dio'
          'Longo')
        TabOrder = 0
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object JvDBComboBox3: TJvDBComboBox
        Left = 7
        Top = 136
        Width = 157
        Height = 21
        Cursor = crHandPoint
        Style = csDropDown
        DataField = 'CLI_CABESTADO'
        EnableValues = False
        Items.Strings = (
          'Seco'
          'Mal Cuidado'
          'Sem Brilho'
          'P'#233'ssimo')
        TabOrder = 1
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object JvDBComboBox4: TJvDBComboBox
        Left = 6
        Top = 174
        Width = 158
        Height = 21
        Cursor = crHandPoint
        Style = csDropDown
        DataField = 'CLI_CABTIPO'
        EnableValues = False
        Items.Strings = (
          'Liso '
          'Ondulado'
          'Afro')
        TabOrder = 2
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object JvDBComboBox5: TJvDBComboBox
        Left = 6
        Top = 212
        Width = 158
        Height = 21
        Cursor = crHandPoint
        Style = csDropDown
        DataField = 'CLI_CABNATUREZA'
        EnableValues = False
        Items.Strings = (
          'Afro'
          'Oriental'
          'Clara'
          'Ocidental')
        TabOrder = 3
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object JvDBComboBox6: TJvDBComboBox
        Left = 214
        Top = 98
        Width = 160
        Height = 21
        Cursor = crHandPoint
        Style = csDropDown
        DataField = 'CLI_PELETONALIDADE'
        EnableValues = False
        Items.Strings = (
          'Clara'
          'Morena Clara'
          'Morena'
          'Morena Escura'
          ' ')
        TabOrder = 4
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object JvDBComboBox7: TJvDBComboBox
        Left = 214
        Top = 136
        Width = 160
        Height = 21
        Cursor = crHandPoint
        Style = csDropDown
        DataField = 'CLI_PELETIPO'
        EnableValues = False
        Items.Strings = (
          'Seca '
          'Oleosa'
          'Mista'
          'Acneica'
          'Desidratada'
          'Sensivel'
          'Couperouse'
          'Normal'
          'Prematuramente Envelhecida'
          'Al'#233'rgica')
        TabOrder = 5
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object JvDBComboBox8: TJvDBComboBox
        Left = 214
        Top = 177
        Width = 160
        Height = 21
        Cursor = crHandPoint
        Style = csDropDown
        DataField = 'CLI_PELEESTADO'
        EnableValues = False
        Items.Strings = (
          'Boa'
          'Razo'#225'vel'
          #211'tima')
        TabOrder = 6
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object JvPanel1: TJvPanel
        Left = 3
        Top = 41
        Width = 185
        Height = 25
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
        BevelOuter = bvNone
        Caption = 'Cabelo'
        Color = 9007960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 7
      end
      object JvPanel2: TJvPanel
        Left = 214
        Top = 41
        Width = 185
        Height = 25
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
        BevelOuter = bvNone
        Caption = 'Pele'
        Color = 9007960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 8
      end
      object JvPanel3: TJvPanel
        Left = 420
        Top = 41
        Width = 218
        Height = 25
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
        BevelOuter = bvNone
        Caption = 'Rugas'
        Color = 9007960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 9
      end
      object JvDBCheckBox1: TJvDBCheckBox
        Left = 420
        Top = 81
        Width = 97
        Height = 17
        Cursor = crHandPoint
        Caption = 'Orbicular'
        DataField = 'CLI_RUGA_ORBICULAR'
        DragCursor = crHandPoint
        TabOrder = 10
        ValueChecked = 'SIM'
        ValueUnchecked = 'False'
      end
      object JvDBCheckBox2: TJvDBCheckBox
        Left = 420
        Top = 98
        Width = 97
        Height = 17
        Cursor = crHandPoint
        Caption = 'Perilabial'
        DataField = 'CLI_RUGA_PERILABIAL'
        DragCursor = crHandPoint
        TabOrder = 11
        ValueChecked = 'SIM'
        ValueUnchecked = 'False'
      end
      object JvDBCheckBox10: TJvDBCheckBox
        Left = 523
        Top = 83
        Width = 97
        Height = 17
        Cursor = crHandPoint
        Caption = 'Cicatriz'
        DataField = 'CLI_RUGA_CICATRIZ'
        DragCursor = crHandPoint
        TabOrder = 12
        ValueChecked = 'SIM'
        ValueUnchecked = 'False'
      end
      object JvDBCheckBox11: TJvDBCheckBox
        Left = 523
        Top = 100
        Width = 97
        Height = 17
        Cursor = crHandPoint
        Caption = 'Flacidez'
        DataField = 'CLI_RUGA_FLACIDEZ'
        DragCursor = crHandPoint
        TabOrder = 13
        ValueChecked = 'SIM'
        ValueUnchecked = 'False'
      end
      object JvDBCheckBox12: TJvDBCheckBox
        Left = 523
        Top = 118
        Width = 111
        Height = 17
        Cursor = crHandPoint
        Caption = 'Vesculariza'#231#227'o'
        DataField = 'CLI_RUGA_VESCULARIZACAO'
        DragCursor = crHandPoint
        TabOrder = 14
        ValueChecked = 'SIM'
        ValueUnchecked = 'False'
      end
      object JvDBCheckBox13: TJvDBCheckBox
        Left = 523
        Top = 135
        Width = 97
        Height = 17
        Cursor = crHandPoint
        Caption = 'Sequelas'
        DataField = 'CLI_RUGA_SEQUELAS'
        DragCursor = crHandPoint
        TabOrder = 15
        ValueChecked = 'SIM'
        ValueUnchecked = 'False'
      end
      object JvDBCheckBox14: TJvDBCheckBox
        Left = 523
        Top = 152
        Width = 97
        Height = 17
        Cursor = crHandPoint
        Caption = 'Sardas'
        DataField = 'CLI_RUGA_SARDAS'
        DragCursor = crHandPoint
        TabOrder = 16
        ValueChecked = 'SIM'
        ValueUnchecked = 'False'
      end
      object JvDBCheckBox15: TJvDBCheckBox
        Left = 523
        Top = 170
        Width = 97
        Height = 17
        Cursor = crHandPoint
        Caption = 'Hormonal'
        DataField = 'CLI_RUGA_HORMONAL'
        DragCursor = crHandPoint
        TabOrder = 17
        ValueChecked = 'SIM'
        ValueUnchecked = 'False'
      end
      object JvDBCheckBox4: TJvDBCheckBox
        Left = 420
        Top = 115
        Width = 97
        Height = 17
        Cursor = crHandPoint
        Caption = 'Testa'
        DataField = 'CLI_RUGA_TESTA'
        DragCursor = crHandPoint
        TabOrder = 18
        ValueChecked = 'SIM'
        ValueUnchecked = 'False'
      end
      object JvDBCheckBox3: TJvDBCheckBox
        Left = 420
        Top = 132
        Width = 97
        Height = 17
        Cursor = crHandPoint
        Caption = 'Pesco'#231'o'
        DataField = 'CLI_RUGA_PESCOCO'
        DragCursor = crHandPoint
        TabOrder = 19
        ValueChecked = 'SIM'
        ValueUnchecked = 'False'
      end
      object JvDBCheckBox5: TJvDBCheckBox
        Left = 420
        Top = 148
        Width = 97
        Height = 17
        Cursor = crHandPoint
        Caption = 'Face'
        DataField = 'CLI_RUGA_FACE'
        DragCursor = crHandPoint
        TabOrder = 20
        ValueChecked = 'SIM'
        ValueUnchecked = 'False'
      end
      object JvDBCheckBox6: TJvDBCheckBox
        Left = 420
        Top = 165
        Width = 97
        Height = 17
        Cursor = crHandPoint
        Caption = 'Nasogenina'
        DataField = 'CLI_RUGA_NASOGENINA'
        DragCursor = crHandPoint
        TabOrder = 21
        ValueChecked = 'SIM'
        ValueUnchecked = 'False'
      end
      object JvDBCheckBox7: TJvDBCheckBox
        Left = 420
        Top = 182
        Width = 97
        Height = 17
        Cursor = crHandPoint
        Caption = 'Profundas'
        DataField = 'CLI_RUGA_PROFUNDAS'
        DragCursor = crHandPoint
        TabOrder = 22
        ValueChecked = 'SIM'
        ValueUnchecked = 'False'
      end
      object JvDBCheckBox8: TJvDBCheckBox
        Left = 420
        Top = 199
        Width = 97
        Height = 17
        Cursor = crHandPoint
        Caption = 'Finas'
        DataField = 'CLI_RUGA_FINAS'
        DragCursor = crHandPoint
        TabOrder = 23
        ValueChecked = 'SIM'
        ValueUnchecked = 'False'
      end
      object JvDBCheckBox9: TJvDBCheckBox
        Left = 523
        Top = 187
        Width = 97
        Height = 17
        Cursor = crHandPoint
        Caption = 'Manchas'
        DataField = 'CLI_RUGA_MACHAS'
        DragCursor = crHandPoint
        TabOrder = 24
        ValueChecked = 'SIM'
        ValueUnchecked = 'False'
      end
    end
    object TabServicosUtil: TTabSheet
      Caption = '&Servicos Utilizados'
      ImageIndex = 2
      object DBText2: TDBText
        Left = 3
        Top = 9
        Width = 510
        Height = 17
        DataField = 'CLI_NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvDBGrid1: TJvDBGrid
        Left = -4
        Top = 32
        Width = 901
        Height = 377
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
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
            FieldName = 'ITEMOCUPACAOSERV_DATA'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_CLIENTE'
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_SERVICO'
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_PROFISSIONAL'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEMOCUPACAOID'
            Title.Caption = 'Ocupa'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEMOCUPACAOSERV_QUANTIDADE'
            Title.Caption = 'Qtde'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM_VALORSERVICO'
            Title.Caption = 'Valor Sevi'#231'o'
            Visible = True
          end>
      end
    end
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 544
    Top = 8
  end
  object ActionList1: TActionList
    Left = 608
    Top = 8
    object ActNovo: TAction
      Caption = 'Novo - F3'
      ShortCut = 114
      OnExecute = ActNovoExecute
    end
    object ActAlterar: TAction
      Caption = 'Alterar - F4'
      ShortCut = 115
      OnExecute = ActAlterarExecute
    end
    object ActCancelar: TAction
      Caption = 'Cancelar - F5'
      ShortCut = 116
      OnExecute = ActCancelarExecute
    end
    object ActConsultar: TAction
      Caption = 'Consultar - F12'
      ShortCut = 123
      OnExecute = ActConsultarExecute
    end
    object ActFechar: TAction
      Caption = 'Fechar - F10'
      OnExecute = ActFecharExecute
    end
    object ActSalvar: TAction
      Caption = 'Salvar - F9'
      ShortCut = 120
      OnExecute = ActSalvarExecute
    end
    object ActImprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ActImprimirExecute
    end
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
    ReportOptions.LastChange = 43715.884324606500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 672
    Top = 8
    Datasets = <
      item
        DataSet = frxDBClientes
        DataSetName = 'frxDBClientes'
      end
      item
        DataSet = frxReport1.IBXTable1
        DataSetName = 'IBXTable1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object IBXDatabase1: TfrxIBXDatabase
        DatabaseName = 'C:\Misterbeauty\DB\MISTERBEAUTY.gdb'
        Params.Strings = (
          'user_name=SYSDBA')
        SQLDialect = 3
        pLeft = 56
        pTop = 44
      end
      object IBXTable1: TfrxIBXTable
        UserName = 'IBXTable1'
        CloseDataSource = True
        BCDToCurrency = False
        Master = frxDBClientes
        TableName = 'CLIENTE'
        Database = frxReport1.IBXDatabase1
        pLeft = 96
        pTop = 108
      end
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
            'Relat'#243'rio de Clientes')
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
            'Nome:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
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
            'Celular')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 260.787570000000000000
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
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frxDBClientes
        DataSetName = 'frxDBClientes'
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 0.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_IDCLIENTE'
          DataSet = frxDBClientes
          DataSetName = 'frxDBClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBClientes."CLI_IDCLIENTE"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 0.559060000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBClientes
          DataSetName = 'frxDBClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBClientes."CLI_NOME"]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 0.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_CEL1'
          DataSet = frxDBClientes
          DataSetName = 'frxDBClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBClientes."CLI_CEL1"]')
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 21.133890000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBClientes: TfrxDBDataset
    UserName = 'frxDBClientes'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 744
    Top = 8
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    Left = 712
    Top = 136
  end
end
