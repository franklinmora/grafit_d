object F_cadPadrao: TF_cadPadrao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'F_cadPadrao'
  ClientHeight = 448
  ClientWidth = 697
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
    Top = 393
    Width = 697
    Height = 55
    Align = alBottom
    Color = 11043328
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 573
    object BitBtn1: TBitBtn
      Left = 176
      Top = 16
      Width = 84
      Height = 33
      Action = act_novo
      Caption = 'Novo - F3'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 266
      Top = 16
      Width = 83
      Height = 33
      Action = act_salvar
      Caption = 'Salvar - F6'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      Left = 355
      Top = 16
      Width = 87
      Height = 33
      Action = act_imprimir
      Caption = 'Imprimir - F7'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      Left = 448
      Top = 16
      Width = 97
      Height = 33
      Action = act_fechar
      Caption = 'Fechar - F10'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
    end
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 697
    Height = 393
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 573
  end
  object ActionList1: TActionList
    Left = 472
    Top = 32
    object act_novo: TAction
      Caption = 'Novo - F3'
      ShortCut = 114
    end
    object act_alterar: TAction
      Caption = 'Alterar - F4'
      ShortCut = 115
    end
    object act_cancelar: TAction
      Caption = 'Cancelar - F5'
      ShortCut = 116
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
    end
  end
end
