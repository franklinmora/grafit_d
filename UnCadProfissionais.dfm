inherited F_cadProfissionais: TF_cadProfissionais
  Caption = 'Cadastro de Profissionais'
  ClientHeight = 439
  ClientWidth = 698
  ExplicitWidth = 704
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 384
    Width = 698
    ExplicitTop = 384
    ExplicitWidth = 698
    inherited botaoSalvar: TBitBtn
      Left = 313
      ExplicitLeft = 313
    end
    inherited botaofechar: TBitBtn
      Left = 588
      ExplicitLeft = 588
    end
    inherited botaoAlterar: TBitBtn
      Left = 114
      ExplicitLeft = 114
    end
    inherited botaoCancelar: TBitBtn
      Left = 207
      ExplicitLeft = 207
    end
  end
  object DBNavigator1: TDBNavigator [1]
    Left = 8
    Top = 335
    Width = 220
    Height = 43
    DataSource = DMPrincipal.dsProfissionais
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 1
  end
  object PageControl1: TPageControl [2]
    Left = 8
    Top = 0
    Width = 682
    Height = 329
    ActivePage = Tabcon
    TabOrder = 2
    object Tabcon: TTabSheet
      Caption = 'Consulta'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 674
        Height = 301
        Align = alClient
        DataSource = DMPrincipal.dsProfissionais
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'PROFIS_IDPROFISSIONAL'
            Title.Caption = 'C'#243'digo:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROFIS_NOME'
            Title.Caption = 'Nome:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROFIS_APELIDO'
            Title.Caption = 'Apelido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROFIS_CEL'
            Title.Caption = 'Celular'
            Visible = True
          end>
      end
    end
    object TabDados: TTabSheet
      Caption = 'Dados'
      ImageIndex = 1
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 41
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 103
        Top = 5
        Width = 23
        Height = 13
        Caption = 'CPF:'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 8
        Top = 48
        Width = 35
        Height = 13
        Caption = 'Nome:'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 304
        Top = 48
        Width = 45
        Height = 13
        Caption = 'Apelido:'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 423
        Top = 5
        Width = 99
        Height = 13
        Caption = 'Data Nascimento:'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 8
        Top = 88
        Width = 55
        Height = 13
        Caption = 'Endere'#231'o:'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 288
        Top = 88
        Width = 41
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 8
        Top = 124
        Width = 41
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 479
        Top = 48
        Width = 39
        Height = 13
        Caption = 'Celular'
        FocusControl = DBEdit9
      end
      object Label11: TLabel
        Left = 8
        Top = 165
        Width = 38
        Height = 13
        Caption = 'E-mail:'
        FocusControl = DBEdit11
      end
      object Label12: TLabel
        Left = 563
        Top = 5
        Width = 30
        Height = 13
        Caption = 'Data '
        FocusControl = DBEdit12
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 21
        Width = 89
        Height = 21
        TabStop = False
        DataField = 'PROFIS_IDPROFISSIONAL'
        DataSource = dsProfissionais
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 103
        Top = 21
        Width = 114
        Height = 21
        DataField = 'PROFIS_CPF'
        DataSource = dsProfissionais
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 64
        Width = 290
        Height = 21
        DataField = 'PROFIS_NOME'
        DataSource = dsProfissionais
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 304
        Top = 64
        Width = 169
        Height = 21
        DataField = 'PROFIS_APELIDO'
        DataSource = dsProfissionais
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 423
        Top = 21
        Width = 134
        Height = 21
        DataField = 'PROFIS_DATANASC'
        DataSource = dsProfissionais
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 8
        Top = 104
        Width = 274
        Height = 21
        DataField = 'PROFIS_ENDERECO'
        DataSource = dsProfissionais
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 288
        Top = 104
        Width = 99
        Height = 21
        DataField = 'PROFIS_IDCIDADE'
        DataSource = dsProfissionais
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 8
        Top = 143
        Width = 73
        Height = 21
        DataField = 'PROFIS_IDFUNCAO'
        DataSource = dsProfissionais
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 479
        Top = 64
        Width = 179
        Height = 21
        DataField = 'PROFIS_CEL'
        DataSource = dsProfissionais
        TabOrder = 8
      end
      object DBEdit11: TDBEdit
        Left = 8
        Top = 180
        Width = 274
        Height = 21
        DataField = 'PROFIS_EMAIL'
        DataSource = dsProfissionais
        TabOrder = 9
      end
      object DBEdit12: TDBEdit
        Left = 563
        Top = 21
        Width = 95
        Height = 21
        TabStop = False
        DataField = 'PROFIS_DATACAD'
        DataSource = dsProfissionais
        ReadOnly = True
        TabOrder = 10
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 393
        Top = 104
        Width = 265
        Height = 21
        TabOrder = 11
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 87
        Top = 143
        Width = 574
        Height = 21
        TabOrder = 12
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 640
    inherited act_novo: TAction
      OnExecute = act_novoExecute
    end
    inherited act_salvar: TAction
      OnExecute = act_salvarExecute
    end
  end
  object dsProfissionais: TDataSource
    DataSet = DMPrincipal.qryProfissionais
    Left = 368
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 584
    Top = 24
  end
  object dsCidade: TDataSource
    AutoEdit = False
    DataSet = DMPrincipal.qryCidade
    Left = 456
  end
end
