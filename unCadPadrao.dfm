object F_cadPadrao: TF_cadPadrao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'F_cadPadrao'
  ClientHeight = 242
  ClientWidth = 597
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 187
    Width = 597
    Height = 55
    Align = alBottom
    Color = 11043328
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 697
    object botaoNovo: TBitBtn
      Left = 8
      Top = 16
      Width = 84
      Height = 33
      Action = act_novo
      Caption = 'Novo - F3'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object botaoSalvar: TBitBtn
      Left = 282
      Top = 16
      Width = 83
      Height = 33
      Action = act_salvar
      Caption = 'Salvar - F6'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object botaofechar: TBitBtn
      Left = 381
      Top = 17
      Width = 97
      Height = 33
      Action = act_fechar
      Caption = 'Fechar - F10'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
    end
    object botaoAlterar: TBitBtn
      Left = 98
      Top = 16
      Width = 79
      Height = 33
      Action = act_alterar
      Caption = 'Alterar - F4'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
    end
    object botaoCancelar: TBitBtn
      Left = 183
      Top = 16
      Width = 93
      Height = 33
      Action = act_Cancelar
      Caption = 'Cancelar - F5'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
    end
  end
  object ActionList1: TActionList
    Left = 536
    Top = 32
    object act_novo: TAction
      Caption = 'Novo - F3'
      ShortCut = 114
    end
    object act_alterar: TAction
      Caption = 'Alterar - F4'
      ShortCut = 115
    end
    object act_salvar: TAction
      Caption = 'Salvar - F6'
      ShortCut = 117
    end
    object act_imprimir: TAction
      Caption = 'Imprimir - F7'
      ShortCut = 118
    end
    object act_fechar: TAction
      Caption = 'Fechar - F10'
      ShortCut = 121
      OnExecute = act_fecharExecute
    end
    object act_Cancelar: TAction
      Caption = 'Cancelar - F5'
    end
  end
end
