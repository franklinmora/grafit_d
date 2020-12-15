object F_ConsultaClientes: TF_ConsultaClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'F_ConsultaClientes'
  ClientHeight = 405
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 94
    Height = 16
    Caption = 'Pesquisar por:'
  end
  object CbPesq: TComboBox
    Left = 8
    Top = 24
    Width = 145
    Height = 24
    TabOrder = 0
    OnChange = CbPesqChange
    Items.Strings = (
      'Todos'
      'C'#243'digo'
      'Nome')
  end
  object Editcon: TEdit
    Left = 159
    Top = 24
    Width = 559
    Height = 24
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 54
    Width = 791
    Height = 291
    DataSource = DMPrincipal.dsClientes
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'CLI_IDCLIENTE'
        Title.Caption = 'C'#243'digo:'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome:'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CEL'
        Title.Caption = 'Celular:'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_INSTAGRAM'
        Title.Caption = 'Instagram'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FACEBOOK'
        Title.Caption = 'Facebook'
        Visible = True
      end>
  end
  object botaoPesq: TBitBtn
    Left = 724
    Top = 23
    Width = 75
    Height = 25
    Action = act_Pesquisar
    Caption = 'Pesquisar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 364
    Width = 807
    Height = 41
    Align = alBottom
    TabOrder = 4
    ExplicitWidth = 756
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 167
      Height = 16
      Caption = 'Quantidade de  Registos: '
    end
    object Label2: TLabel
      Left = 189
      Top = 16
      Width = 24
      Height = 16
      Caption = '000'
    end
  end
  object ActionList1: TActionList
    Left = 568
    object act_Pesquisar: TAction
      Caption = 'Pesquisar'
      OnExecute = act_PesquisarExecute
    end
  end
end
