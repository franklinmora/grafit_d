object F_CadProfissionais: TF_CadProfissionais
  Left = 406
  Top = 214
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Profissionais'
  ClientHeight = 381
  ClientWidth = 593
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
  object Label4: TLabel
    Left = 16
    Top = 288
    Width = 194
    Height = 13
    Caption = 'Digite aqui o nome do Profissional'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 340
    Width = 593
    Height = 41
    Align = alBottom
    Color = clActiveCaption
    TabOrder = 0
    object botaoNovo: TJvBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Clique neste bot'#227'o para cadastrar um novo profissional'
      Action = ActNovo
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
      Hint = 'Clique neste bot'#227'o para alterar um profissional existente'
      Action = ActAlterar
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
      Left = 184
      Top = 8
      Width = 92
      Height = 25
      Hint = 'Clique neste bot'#227'o para cancelar a inclus'#227'o ou altera'#231#227'o atual'
      Action = ActCancelar
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
      Left = 336
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Clique neste bot'#227'o para salvar a inclus'#227'o ou altera'#231#227'o atual'
      Action = ActSalvar
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
      Left = 483
      Top = 8
      Width = 86
      Height = 25
      Hint = 'Clique neste bot'#227'o para fechar a tela de cadastro'
      Action = ActFechar
      Caption = 'Fechar - F10'
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
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 261
    Width = 224
    Height = 25
    DataSource = DMPrincipal.dsProfissionais
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
  end
  object JvPageControl1: TJvPageControl
    Left = 8
    Top = 8
    Width = 521
    Height = 245
    ActivePage = TabCon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 2
    object TabCon: TTabSheet
      Caption = 'Consulta'
      object JvDBGrid1: TJvDBGrid
        Left = -4
        Top = 3
        Width = 497
        Height = 201
        DataSource = DMPrincipal.dsProfissionais
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        AlternateRowColor = 9007960
        AlternateRowFontColor = clWhite
        ScrollBars = ssVertical
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'PROFIS_IDPROFISSIONAL'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROFIS_NOME'
            Title.Caption = 'Profissional'
            Visible = True
          end>
      end
    end
    object TabDados: TTabSheet
      Caption = 'Dados'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label3: TLabel
        Left = 264
        Top = 8
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
      object Label1: TLabel
        Left = 8
        Top = 8
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
        Left = 8
        Top = 48
        Width = 66
        Height = 13
        Caption = 'Profissional'
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
        Width = 43
        Height = 13
        Caption = 'Apelido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 64
        Width = 337
        Height = 21
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'PROFIS_NOME'
        DataSource = DMPrincipal.dsProfissionais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 24
        Width = 121
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'PROFIS_IDPROFISSIONAL'
        DataSource = DMPrincipal.dsProfissionais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 264
        Top = 24
        Width = 81
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'PROFIS_DATACAD'
        DataSource = DMPrincipal.dsProfissionais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 8
        Top = 104
        Width = 169
        Height = 21
        CharCase = ecUpperCase
        Color = 9007960
        DataField = 'PROFIS_APELIDO'
        DataSource = DMPrincipal.dsProfissionais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object EdtCon: TEdit
    Left = 16
    Top = 307
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
  object ActionList1: TActionList
    Left = 496
    Top = 80
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
    object ActSalvar: TAction
      Caption = 'Salvar - F8'
      ShortCut = 119
      OnExecute = ActSalvarExecute
    end
    object ActFechar: TAction
      Caption = 'Fechar - F10'
      ShortCut = 121
      OnExecute = ActFecharExecute
    end
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 496
    Top = 16
  end
end
