inherited F_cadEstoque: TF_cadEstoque
  Caption = 'Cadastro de Estoque'
  ClientHeight = 300
  ClientWidth = 735
  OnShow = FormShow
  ExplicitWidth = 741
  ExplicitHeight = 329
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 8
    Width = 44
    Height = 13
    Caption = 'CODIGO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 119
    Top = 8
    Width = 55
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 16
    Top = 48
    Width = 64
    Height = 13
    Caption = 'Refer'#234'ncia:'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 227
    Top = 48
    Width = 49
    Height = 13
    Caption = 'Unidade:'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 16
    Top = 96
    Width = 84
    Height = 13
    Caption = 'Pre'#231'o de Custo'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 135
    Top = 96
    Width = 87
    Height = 13
    Caption = 'Pre'#231'o de Venda'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 16
    Top = 144
    Width = 87
    Height = 13
    Caption = 'Pre'#231'o de Venda'
    FocusControl = DBEdit7
  end
  inherited Panel1: TPanel
    Top = 245
    Width = 735
    ExplicitTop = 245
    ExplicitWidth = 735
    inherited botaofechar: TBitBtn
      Left = 597
      ExplicitLeft = 597
    end
    object botaoPesquisar: TBitBtn
      Left = 371
      Top = 16
      Width = 94
      Height = 33
      Action = act_Pesquisar
      Caption = 'Pesquisar- F8'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
    end
  end
  object DBEdit1: TDBEdit [8]
    Left = 16
    Top = 24
    Width = 97
    Height = 21
    DataField = 'CODIGO'
    DataSource = dsEstoque
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [9]
    Left = 119
    Top = 24
    Width = 386
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsEstoque
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [10]
    Left = 16
    Top = 62
    Width = 201
    Height = 21
    DataField = 'REFERENCIA'
    DataSource = dsEstoque
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [11]
    Left = 223
    Top = 62
    Width = 82
    Height = 21
    DataField = 'UNIDADE'
    DataSource = dsEstoque
    TabOrder = 4
  end
  object DBEdit5: TDBEdit [12]
    Left = 16
    Top = 112
    Width = 113
    Height = 21
    DataField = 'P_CUSTO'
    DataSource = dsEstoque
    TabOrder = 5
  end
  object DBEdit6: TDBEdit [13]
    Left = 135
    Top = 112
    Width = 134
    Height = 21
    DataField = 'P_VENDA'
    DataSource = dsEstoque
    TabOrder = 6
  end
  object DBEdit7: TDBEdit [14]
    Left = 16
    Top = 160
    Width = 134
    Height = 21
    DataField = 'P_VENDA'
    DataSource = dsEstoque
    TabOrder = 7
  end
  object DBComboBox1: TDBComboBox [15]
    Left = 344
    Top = 62
    Width = 145
    Height = 21
    DataSource = DMPrincipal.dsEstoque
    TabOrder = 8
  end
  inherited ActionList1: TActionList
    Top = 0
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
    object act_Pesquisar: TAction
      Caption = 'Pesquisar- F8'
      OnExecute = act_PesquisarExecute
    end
  end
  object dsEstoque: TDataSource
    DataSet = DMPrincipal.qryEstoque
    Left = 616
    Top = 8
  end
end
