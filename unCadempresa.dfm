inherited F_cadEmpresa: TF_cadEmpresa
  Caption = 'Empresa'
  ClientHeight = 303
  OnShow = FormShow
  ExplicitHeight = 332
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 8
    Width = 41
    Height = 13
    Caption = 'C'#243'digo:'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 90
    Top = 8
    Width = 74
    Height = 13
    Caption = 'Raz'#227'o Social:'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 335
    Top = 8
    Width = 86
    Height = 13
    Caption = 'Nome Fantasia:'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 16
    Top = 49
    Width = 55
    Height = 13
    Caption = 'Endere'#231'o:'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 335
    Top = 49
    Width = 13
    Height = 13
    Caption = 'N'#186
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 423
    Top = 49
    Width = 34
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 16
    Top = 85
    Width = 20
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 116
    Top = 85
    Width = 82
    Height = 13
    Caption = 'Complemento:'
    FocusControl = DBEdit8
  end
  object Label10: TLabel [8]
    Left = 283
    Top = 85
    Width = 42
    Height = 13
    Caption = 'Celular:'
    FocusControl = DBEdit10
  end
  object Label9: TLabel [9]
    Left = 436
    Top = 85
    Width = 30
    Height = 13
    Caption = 'Data:'
    FocusControl = DBEdit9
  end
  object Label11: TLabel [10]
    Left = 17
    Top = 121
    Width = 60
    Height = 13
    Caption = 'FACEBOOK:'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [11]
    Left = 237
    Top = 121
    Width = 65
    Height = 13
    Caption = 'INSTAGRAN'
    FocusControl = DBEdit12
  end
  object Label13: TLabel [12]
    Left = 17
    Top = 161
    Width = 43
    Height = 13
    Caption = 'E-MAIL:'
    FocusControl = DBEdit13
  end
  object Label14: TLabel [13]
    Left = 476
    Top = 126
    Width = 25
    Height = 13
    Caption = 'SITE'
    FocusControl = DBEdit14
  end
  inherited Panel1: TPanel
    Top = 248
    ExplicitTop = 268
    inherited botaoCancelar: TBitBtn
      OnClick = botaoCancelarClick
    end
  end
  object DBEdit1: TDBEdit [15]
    Left = 16
    Top = 23
    Width = 68
    Height = 21
    TabStop = False
    DataField = 'EMPRESA_ID'
    DataSource = dsEmpresa
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [16]
    Left = 90
    Top = 23
    Width = 239
    Height = 21
    DataField = 'RAZAO_SOC'
    DataSource = dsEmpresa
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [17]
    Left = 335
    Top = 23
    Width = 296
    Height = 21
    DataField = 'NOME_FANT'
    DataSource = dsEmpresa
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [18]
    Left = 16
    Top = 62
    Width = 313
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsEmpresa
    TabOrder = 4
  end
  object DBEdit5: TDBEdit [19]
    Left = 335
    Top = 62
    Width = 82
    Height = 21
    DataField = 'NUMERO'
    DataSource = dsEmpresa
    TabOrder = 5
  end
  object DBEdit6: TDBEdit [20]
    Left = 422
    Top = 62
    Width = 208
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsEmpresa
    TabOrder = 6
  end
  object DBEdit7: TDBEdit [21]
    Left = 16
    Top = 98
    Width = 97
    Height = 21
    DataField = 'CEP'
    DataSource = dsEmpresa
    TabOrder = 7
  end
  object DBEdit8: TDBEdit [22]
    Left = 116
    Top = 98
    Width = 161
    Height = 21
    DataField = 'COMPLEMENTO'
    DataSource = dsEmpresa
    TabOrder = 8
  end
  object DBEdit10: TDBEdit [23]
    Left = 283
    Top = 98
    Width = 147
    Height = 21
    DataField = 'CELULAR'
    DataSource = dsEmpresa
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [24]
    Left = 436
    Top = 99
    Width = 101
    Height = 21
    TabStop = False
    DataField = 'DATACAD'
    DataSource = dsEmpresa
    ReadOnly = True
    TabOrder = 10
  end
  object DBEdit11: TDBEdit [25]
    Left = 17
    Top = 137
    Width = 214
    Height = 21
    DataField = 'FACEBOOK'
    DataSource = dsEmpresa
    TabOrder = 11
  end
  object DBEdit12: TDBEdit [26]
    Left = 237
    Top = 137
    Width = 233
    Height = 21
    DataField = 'INSTAGRAN'
    DataSource = dsEmpresa
    TabOrder = 12
  end
  object DBEdit13: TDBEdit [27]
    Left = 17
    Top = 177
    Width = 239
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsEmpresa
    TabOrder = 13
  end
  object DBEdit14: TDBEdit [28]
    Left = 476
    Top = 137
    Width = 209
    Height = 21
    DataField = 'SITE'
    DataSource = dsEmpresa
    TabOrder = 14
  end
  inherited ActionList1: TActionList
    Left = 656
    Top = 16
    inherited act_novo: TAction
      OnExecute = act_novoExecute
    end
    inherited act_alterar: TAction
      OnExecute = act_alterarExecute
    end
    inherited act_salvar: TAction
      OnExecute = act_salvarExecute
    end
  end
  object dsEmpresa: TDataSource
    AutoEdit = False
    DataSet = DMPrincipal.qryEmpresa
    Left = 600
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 632
    Top = 96
  end
end
