inherited F_CadClientes: TF_CadClientes
  Caption = 'Cadastro de Clientes'
  ClientHeight = 374
  ClientWidth = 692
  Color = clBtnFace
  OnShow = FormShow
  ExplicitWidth = 698
  ExplicitHeight = 403
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 3
    Top = 3
    Width = 41
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel [1]
    Left = 130
    Top = 3
    Width = 35
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel [2]
    Left = 559
    Top = 3
    Width = 30
    Height = 13
    Caption = 'Data:'
  end
  object Label4: TLabel [3]
    Left = 3
    Top = 43
    Width = 52
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label5: TLabel [4]
    Left = 281
    Top = 43
    Width = 13
    Height = 13
    Caption = 'N'#186
  end
  object Label6: TLabel [5]
    Left = 343
    Top = 42
    Width = 37
    Height = 13
    Caption = 'Bairro:'
  end
  object Label7: TLabel [6]
    Left = 3
    Top = 83
    Width = 79
    Height = 13
    Caption = 'Complemento'
  end
  object Label8: TLabel [7]
    Left = 304
    Top = 84
    Width = 41
    Height = 13
    Caption = 'C'#243'd'#237'go:'
  end
  object Label9: TLabel [8]
    Left = 366
    Top = 84
    Width = 41
    Height = 13
    Caption = 'Cidade:'
  end
  object Label10: TLabel [9]
    Left = 182
    Top = 83
    Width = 42
    Height = 13
    Caption = 'Celular:'
  end
  object Label11: TLabel [10]
    Left = 3
    Top = 123
    Width = 57
    Height = 13
    Caption = 'Facebook:'
  end
  object Label12: TLabel [11]
    Left = 320
    Top = 123
    Width = 59
    Height = 13
    Caption = 'Instagran:'
  end
  object Label13: TLabel [12]
    Left = 540
    Top = 44
    Width = 17
    Height = 13
    Caption = 'UF:'
  end
  inherited Panel1: TPanel
    Top = 319
    Width = 692
    ExplicitTop = 319
    ExplicitWidth = 682
    inherited botaoNovo: TBitBtn
      Width = 80
      ExplicitWidth = 80
    end
    inherited botaofechar: TBitBtn
      Left = 583
      Top = 16
      ExplicitLeft = 583
      ExplicitTop = 16
    end
    object botaoPesquisar: TBitBtn
      Left = 371
      Top = 16
      Width = 101
      Height = 33
      Action = act_pesquisar
      Caption = 'Pesquisar - F8'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
    end
    object botaoImprimir: TBitBtn
      Left = 478
      Top = 16
      Width = 99
      Height = 33
      Action = act_imprimir
      Caption = 'Imprimir - F7'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 6
    end
  end
  object DBEdit1: TDBEdit [14]
    Left = 3
    Top = 19
    Width = 121
    Height = 21
    DataField = 'CLI_IDCLIENTE'
    DataSource = DMPrincipal.dsClientes
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [15]
    Left = 130
    Top = 19
    Width = 423
    Height = 21
    DataField = 'CLI_NOME'
    DataSource = DMPrincipal.dsClientes
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [16]
    Left = 559
    Top = 19
    Width = 86
    Height = 21
    DataField = 'CLI_DATACAD'
    DataSource = DMPrincipal.dsClientes
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [17]
    Left = 3
    Top = 59
    Width = 275
    Height = 21
    DataField = 'CLI_ENDERECO'
    DataSource = DMPrincipal.dsClientes
    TabOrder = 4
  end
  object DBEdit5: TDBEdit [18]
    Left = 281
    Top = 59
    Width = 58
    Height = 21
    DataField = 'CLI_NUMERO'
    DataSource = DMPrincipal.dsClientes
    TabOrder = 5
  end
  object DBEdit6: TDBEdit [19]
    Left = 343
    Top = 58
    Width = 194
    Height = 21
    DataField = 'CLI_BAIRRO'
    DataSource = DMPrincipal.dsClientes
    TabOrder = 6
  end
  object DBEdit7: TDBEdit [20]
    Left = 3
    Top = 99
    Width = 174
    Height = 21
    DataField = 'CLI_COMPLEMENTO'
    DataSource = DMPrincipal.dsClientes
    TabOrder = 7
  end
  object DBEdit8: TDBEdit [21]
    Left = 299
    Top = 99
    Width = 56
    Height = 21
    DataField = 'CLI_CIDADECODIGO'
    DataSource = DMPrincipal.dsClientes
    TabOrder = 8
  end
  object DBLookupComboBox1: TDBLookupComboBox [22]
    Left = 361
    Top = 99
    Width = 243
    Height = 21
    DataField = 'CLI_CIDADECODIGO'
    DataSource = DMPrincipal.dsClientes
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = DMPrincipal.dsCidade
    TabOrder = 9
  end
  object DBEdit10: TDBEdit [23]
    Left = 182
    Top = 99
    Width = 106
    Height = 21
    DataField = 'CLI_CEL'
    DataSource = DMPrincipal.dsClientes
    TabOrder = 10
  end
  object DBEdit11: TDBEdit [24]
    Left = 3
    Top = 139
    Width = 311
    Height = 21
    DataField = 'CLI_FACEBOOK'
    DataSource = DMPrincipal.dsClientes
    TabOrder = 11
  end
  object DBEdit12: TDBEdit [25]
    Left = 320
    Top = 139
    Width = 221
    Height = 21
    DataField = 'CLI_INSTAGRAM'
    DataSource = DMPrincipal.dsClientes
    TabOrder = 12
  end
  object DBComboBox1: TDBComboBox [26]
    Left = 540
    Top = 58
    Width = 49
    Height = 21
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
    TabOrder = 13
  end
  inherited ActionList1: TActionList
    Left = 408
    Top = 208
    inherited act_novo: TAction
      OnExecute = act_novoExecute
    end
    inherited act_alterar: TAction
      OnExecute = act_alterarExecute
    end
    inherited act_salvar: TAction
      OnExecute = act_salvarExecute
    end
    inherited act_Cancelar: TAction
      OnExecute = act_CancelarExecute
    end
    object act_pesquisar: TAction
      Caption = 'Pesquisar - F8'
      ShortCut = 119
      OnExecute = act_pesquisarExecute
    end
  end
  object ACBrEnterTab1: TACBrEnterTab
    Left = 512
    Top = 208
  end
end
