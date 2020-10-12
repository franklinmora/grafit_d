object f_Principal: Tf_Principal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Grafit V.01'
  ClientHeight = 404
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 385
    Width = 784
    Height = 19
    Panels = <>
    ExplicitTop = 423
    ExplicitWidth = 774
  end
  object MainMenu1: TMainMenu
    Left = 328
    Top = 168
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
    end
  end
  object ActionList1: TActionList
    Left = 424
    Top = 168
    object act_Clientes: TAction
      Caption = 'act_Clientes'
    end
    object act_Produtos: TAction
      Caption = 'act_Produtos'
    end
    object act_Servicos: TAction
      Caption = 'act_Servicos'
    end
    object act_Profissionais: TAction
      Caption = 'act_Profissionais'
    end
  end
end
