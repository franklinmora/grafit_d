object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form2'
  ClientHeight = 443
  ClientWidth = 777
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 16
  object ComboBox1: TComboBox
    Left = 8
    Top = 24
    Width = 145
    Height = 24
    TabOrder = 0
    Text = 'ComboBox1'
  end
  object Edit1: TEdit
    Left = 159
    Top = 24
    Width = 596
    Height = 24
    TabOrder = 1
    Text = 'Edit1'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 54
    Width = 747
    Height = 315
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
  end
  object Panel1: TPanel
    Left = 0
    Top = 388
    Width = 777
    Height = 55
    Align = alBottom
    Color = 11043328
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 378
    ExplicitWidth = 573
    object Label1: TLabel
      Left = 8
      Top = 19
      Width = 169
      Height = 16
      Caption = 'Quantidade de Registros: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 183
      Top = 19
      Width = 24
      Height = 16
      Caption = '000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object ActionList1: TActionList
    Left = 680
    Top = 8
  end
end
