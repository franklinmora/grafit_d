inherited F_CadClientes: TF_CadClientes
  Caption = 'Cadastro de Clientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox1: TScrollBox
    object PageControl1: TPageControl
      Left = 3
      Top = 3
      Width = 687
      Height = 382
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados'
        ExplicitLeft = 0
        ExplicitTop = 31
        object Label1: TLabel
          Left = 3
          Top = 3
          Width = 48
          Height = 16
          Caption = 'C'#243'digo:'
        end
        object Label2: TLabel
          Left = 130
          Top = 3
          Width = 40
          Height = 16
          Caption = 'Nome:'
        end
        object Label3: TLabel
          Left = 559
          Top = 3
          Width = 36
          Height = 16
          Caption = 'Data:'
        end
        object Label4: TLabel
          Left = 3
          Top = 43
          Width = 60
          Height = 16
          Caption = 'Endere'#231'o'
        end
        object Label5: TLabel
          Left = 399
          Top = 43
          Width = 15
          Height = 16
          Caption = 'N'#186
        end
        object Label6: TLabel
          Left = 463
          Top = 43
          Width = 44
          Height = 16
          Caption = 'Bairro:'
        end
        object Label7: TLabel
          Left = 3
          Top = 83
          Width = 87
          Height = 16
          Caption = 'Complemento'
        end
        object Label8: TLabel
          Left = 257
          Top = 83
          Width = 48
          Height = 16
          Caption = 'C'#243'd'#237'go:'
        end
        object Label9: TLabel
          Left = 346
          Top = 83
          Width = 48
          Height = 16
          Caption = 'Cidade:'
        end
        object Label10: TLabel
          Left = 3
          Top = 123
          Width = 49
          Height = 16
          Caption = 'Celular:'
        end
        object Label11: TLabel
          Left = 119
          Top = 123
          Width = 65
          Height = 16
          Caption = 'Facebook:'
        end
        object Label12: TLabel
          Left = 436
          Top = 123
          Width = 69
          Height = 16
          Caption = 'Instagran:'
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 19
          Width = 121
          Height = 24
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 130
          Top = 19
          Width = 423
          Height = 24
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 559
          Top = 19
          Width = 98
          Height = 24
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 3
          Top = 59
          Width = 390
          Height = 24
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 399
          Top = 59
          Width = 58
          Height = 24
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 463
          Top = 59
          Width = 194
          Height = 24
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 3
          Top = 99
          Width = 248
          Height = 24
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 257
          Top = 99
          Width = 83
          Height = 24
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 346
          Top = 99
          Width = 311
          Height = 24
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 3
          Top = 139
          Width = 110
          Height = 24
          TabOrder = 9
        end
        object DBEdit11: TDBEdit
          Left = 119
          Top = 139
          Width = 311
          Height = 24
          TabOrder = 10
        end
        object DBEdit12: TDBEdit
          Left = 436
          Top = 139
          Width = 221
          Height = 24
          TabOrder = 11
        end
      end
    end
  end
  object ACBrEnterTab1: TACBrEnterTab
    Left = 632
    Top = 8
  end
end
