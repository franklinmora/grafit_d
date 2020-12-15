object f_ConsultaEstoque: Tf_ConsultaEstoque
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Estoque'
  ClientHeight = 453
  ClientWidth = 843
  Color = clBtnFace
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
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 80
    Height = 13
    Caption = 'Pesquisar por:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 412
    Width = 843
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 240
    ExplicitTop = 312
    ExplicitWidth = 185
    object Label2: TLabel
      Left = 11
      Top = 16
      Width = 142
      Height = 13
      Caption = 'Quantidade de Registros:'
    end
    object Label3: TLabel
      Left = 158
      Top = 17
      Width = 35
      Height = 13
      Caption = '00000'
    end
  end
  object Cbpesq: TComboBox
    Left = 8
    Top = 24
    Width = 145
    Height = 21
    ItemIndex = 2
    TabOrder = 1
    Text = 'Descri'#231#227'o'
    OnChange = CbpesqChange
    Items.Strings = (
      'Todos'
      'C'#243'digo'
      'Descri'#231#227'o'
      'Refer'#234'ncia')
  end
  object EditCon: TEdit
    Left = 157
    Top = 24
    Width = 597
    Height = 21
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 760
    Top = 22
    Width = 75
    Height = 25
    Action = act_Pesquisar
    Caption = 'Pesquisar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 53
    Width = 827
    Height = 355
    TabStop = False
    DataSource = DMPrincipal.dsEstoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo:'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Caption = 'Refer'#234'cnia'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M3'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Title.Caption = 'Unidade'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_VENDA'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Venda'
        Width = 120
        Visible = True
      end>
  end
  object ActionList1: TActionList
    Left = 448
    Top = 408
    object act_Pesquisar: TAction
      Caption = 'Pesquisar'
      OnExecute = act_PesquisarExecute
    end
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 448
    Top = 16
  end
  object dsEstoque: TDataSource
    AutoEdit = False
    DataSet = DMPrincipal.qryEstoque
    Left = 520
    Top = 408
  end
end
