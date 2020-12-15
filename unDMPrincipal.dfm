object DMPrincipal: TDMPrincipal
  OldCreateOrder = False
  Height = 448
  Width = 770
  object dsEstoque: TDataSource
    DataSet = qryEstoque
    Left = 248
    Top = 168
  end
  object dsProfissionais: TDataSource
    DataSet = qryProfissionais
    Left = 352
    Top = 168
  end
  object dsOrdens: TDataSource
    Left = 464
    Top = 168
  end
  object dsUsuarios: TDataSource
    Left = 568
    Top = 168
  end
  object dsCidade: TDataSource
    AutoEdit = False
    DataSet = qryCidade
    Left = 176
    Top = 168
  end
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'grafit'
    DefaultTransaction = UniTransaction1
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 8
    EncryptedPassword = 'DCFFCEFFCDFFCCFFCBFFCAFFC9FF'
  end
  object UniTransaction1: TUniTransaction
    DefaultConnection = UniConnection1
    Left = 152
    Top = 8
  end
  object qryClientes: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO clientes'
      
        '  (CLI_IDCLIENTE, CLI_INSTAGRAM, CLI_CPFCNPJ, CLI_NOME, CLI_ANIV' +
        'ERSARIO, CLI_ENDERECO, CLI_CEP, CLI_UF, CLI_CEL, CLI_EMAIL, CLI_' +
        'DATACAD, CLI_NUMERO, CLI_BAIRRO, CLI_SITUACAO, CLI_FACEBOOK, CLI' +
        '_SEXO, CLI_DATANASC, CLI_ESTADOCIVIL, CLI_CODIGOAUXILIAR, CLI_CO' +
        'DIGO, CLI_INDICADO_POR, CLI_CIDADECODIGO, CLI_CIDADENOME, CLI_CO' +
        'MPLEMENTO)'
      'VALUES'
      
        '  (:CLI_IDCLIENTE, :CLI_INSTAGRAM, :CLI_CPFCNPJ, :CLI_NOME, :CLI' +
        '_ANIVERSARIO, :CLI_ENDERECO, :CLI_CEP, :CLI_UF, :CLI_CEL, :CLI_E' +
        'MAIL, :CLI_DATACAD, :CLI_NUMERO, :CLI_BAIRRO, :CLI_SITUACAO, :CL' +
        'I_FACEBOOK, :CLI_SEXO, :CLI_DATANASC, :CLI_ESTADOCIVIL, :CLI_COD' +
        'IGOAUXILIAR, :CLI_CODIGO, :CLI_INDICADO_POR, :CLI_CIDADECODIGO, ' +
        ':CLI_CIDADENOME, :CLI_COMPLEMENTO)')
    SQLDelete.Strings = (
      'DELETE FROM clientes'
      'WHERE'
      '  CLI_IDCLIENTE = :Old_CLI_IDCLIENTE')
    SQLUpdate.Strings = (
      'UPDATE clientes'
      'SET'
      
        '  CLI_IDCLIENTE = :CLI_IDCLIENTE, CLI_INSTAGRAM = :CLI_INSTAGRAM' +
        ', CLI_CPFCNPJ = :CLI_CPFCNPJ, CLI_NOME = :CLI_NOME, CLI_ANIVERSA' +
        'RIO = :CLI_ANIVERSARIO, CLI_ENDERECO = :CLI_ENDERECO, CLI_CEP = ' +
        ':CLI_CEP, CLI_UF = :CLI_UF, CLI_CEL = :CLI_CEL, CLI_EMAIL = :CLI' +
        '_EMAIL, CLI_DATACAD = :CLI_DATACAD, CLI_NUMERO = :CLI_NUMERO, CL' +
        'I_BAIRRO = :CLI_BAIRRO, CLI_SITUACAO = :CLI_SITUACAO, CLI_FACEBO' +
        'OK = :CLI_FACEBOOK, CLI_SEXO = :CLI_SEXO, CLI_DATANASC = :CLI_DA' +
        'TANASC, CLI_ESTADOCIVIL = :CLI_ESTADOCIVIL, CLI_CODIGOAUXILIAR =' +
        ' :CLI_CODIGOAUXILIAR, CLI_CODIGO = :CLI_CODIGO, CLI_INDICADO_POR' +
        ' = :CLI_INDICADO_POR, CLI_CIDADECODIGO = :CLI_CIDADECODIGO, CLI_' +
        'CIDADENOME = :CLI_CIDADENOME, CLI_COMPLEMENTO = :CLI_COMPLEMENTO'
      'WHERE'
      '  CLI_IDCLIENTE = :Old_CLI_IDCLIENTE')
    SQLLock.Strings = (
      'SELECT * FROM clientes'
      'WHERE'
      '  CLI_IDCLIENTE = :Old_CLI_IDCLIENTE'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT CLI_IDCLIENTE, CLI_INSTAGRAM, CLI_CPFCNPJ, CLI_NOME, CLI_' +
        'ANIVERSARIO, CLI_ENDERECO, CLI_CEP, CLI_UF, CLI_CEL, CLI_EMAIL, ' +
        'CLI_DATACAD, CLI_NUMERO, CLI_BAIRRO, CLI_SITUACAO, CLI_FACEBOOK,' +
        ' CLI_SEXO, CLI_DATANASC, CLI_ESTADOCIVIL, CLI_CODIGOAUXILIAR, CL' +
        'I_CODIGO, CLI_INDICADO_POR, CLI_CIDADECODIGO, CLI_CIDADENOME, CL' +
        'I_COMPLEMENTO FROM clientes'
      'WHERE'
      '  CLI_IDCLIENTE = :Old_CLI_IDCLIENTE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM clientes')
    Connection = UniConnection1
    Transaction = UniTransaction1
    SQL.Strings = (
      'select * from Clientes')
    CachedUpdates = True
    AutoCalcFields = False
    Left = 72
    Top = 104
    object qryClientesCLI_IDCLIENTE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CLI_IDCLIENTE'
      Required = True
    end
    object qryClientesCLI_INSTAGRAM: TStringField
      FieldName = 'CLI_INSTAGRAM'
    end
    object qryClientesCLI_CPFCNPJ: TStringField
      FieldName = 'CLI_CPFCNPJ'
    end
    object qryClientesCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 60
    end
    object qryClientesCLI_ANIVERSARIO: TDateField
      FieldName = 'CLI_ANIVERSARIO'
    end
    object qryClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 60
    end
    object qryClientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 14
    end
    object qryClientesCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object qryClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 80
    end
    object qryClientesCLI_DATACAD: TDateField
      FieldName = 'CLI_DATACAD'
    end
    object qryClientesCLI_NUMERO: TStringField
      FieldName = 'CLI_NUMERO'
      Size = 10
    end
    object qryClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 30
    end
    object qryClientesCLI_SITUACAO: TStringField
      FieldName = 'CLI_SITUACAO'
      Size = 10
    end
    object qryClientesCLI_FACEBOOK: TStringField
      FieldName = 'CLI_FACEBOOK'
      Size = 100
    end
    object qryClientesCLI_SEXO: TStringField
      FieldName = 'CLI_SEXO'
      Size = 10
    end
    object qryClientesCLI_DATANASC: TDateField
      FieldName = 'CLI_DATANASC'
    end
    object qryClientesCLI_ESTADOCIVIL: TStringField
      FieldName = 'CLI_ESTADOCIVIL'
      Size = 15
    end
    object qryClientesCLI_CODIGOAUXILIAR: TStringField
      FieldName = 'CLI_CODIGOAUXILIAR'
    end
    object qryClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
    end
    object qryClientesCLI_INDICADO_POR: TStringField
      FieldName = 'CLI_INDICADO_POR'
      Size = 60
    end
    object qryClientesCLI_CIDADECODIGO: TIntegerField
      FieldName = 'CLI_CIDADECODIGO'
    end
    object qryClientesCLI_CIDADENOME: TStringField
      FieldName = 'CLI_CIDADENOME'
      Size = 40
    end
    object qryClientesCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 40
    end
    object qryClientesCLI_CEL: TStringField
      FieldName = 'CLI_CEL'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
  end
  object qryCidade: TUniQuery
    Connection = UniConnection1
    Transaction = UniTransaction1
    SQL.Strings = (
      'select * from cidade')
    Left = 184
    Top = 104
    object qryCidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCidadeNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
    object qryCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qryCidadePAIS: TStringField
      FieldName = 'PAIS'
    end
    object qryCidadeCODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Size = 10
    end
  end
  object dsClientes: TDataSource
    DataSet = qryClientes
    Left = 80
    Top = 168
  end
  object qryEstoque: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO ESTOQUE'
      
        '  (CODIGO, REFERENCIA, BARRA, DESCRICAO, SERVICO, PRODUTO, TIPO,' +
        ' UNIDADE, CODCAT, CATEGORIA, QUANT_MINI, QUANT_ATUA, QUANT_MAX, ' +
        'QUANT_UNID, P_CUSTO, P_VENDA, MENSAGEM, IPI, COD_SIT, COD_IPI, A' +
        'L_IPI, CLAS_FIS, AL_ICMS, FOTO, OBS, IMPRESSO, PECA, QUANTIDADE,' +
        ' GRUPO, M3, QUANTIDADE_1, COMPRADO, DESCONTO, DATA, ENTANT, SAIA' +
        'NT, SALDOANT, ENTRADA, SAIDA, SALDO, MARGEM, AVISOMIN, AVISOZER,' +
        ' FALTA, MAIS_VEND, MAIS_QUAN, MARCA, CODMAR, FOTO1, FOTO2, PRAZO' +
        ', ATACADO, MARGEM2, MARGEM3, LOCALIZA, VENZER, CORES, CODFORMA, ' +
        'FORMATO, CODVIAS, VIAS, CODCORES, CPL1, CPL2, VENCIMENTO, LUCRO,' +
        ' TOT_CUSTO, LUCROP, BLOQUEARD, LIMITED, COMISSAO)'
      'VALUES'
      
        '  (:CODIGO, :REFERENCIA, :BARRA, :DESCRICAO, :SERVICO, :PRODUTO,' +
        ' :TIPO, :UNIDADE, :CODCAT, :CATEGORIA, :QUANT_MINI, :QUANT_ATUA,' +
        ' :QUANT_MAX, :QUANT_UNID, :P_CUSTO, :P_VENDA, :MENSAGEM, :IPI, :' +
        'COD_SIT, :COD_IPI, :AL_IPI, :CLAS_FIS, :AL_ICMS, :FOTO, :OBS, :I' +
        'MPRESSO, :PECA, :QUANTIDADE, :GRUPO, :M3, :QUANTIDADE_1, :COMPRA' +
        'DO, :DESCONTO, :DATA, :ENTANT, :SAIANT, :SALDOANT, :ENTRADA, :SA' +
        'IDA, :SALDO, :MARGEM, :AVISOMIN, :AVISOZER, :FALTA, :MAIS_VEND, ' +
        ':MAIS_QUAN, :MARCA, :CODMAR, :FOTO1, :FOTO2, :PRAZO, :ATACADO, :' +
        'MARGEM2, :MARGEM3, :LOCALIZA, :VENZER, :CORES, :CODFORMA, :FORMA' +
        'TO, :CODVIAS, :VIAS, :CODCORES, :CPL1, :CPL2, :VENCIMENTO, :LUCR' +
        'O, :TOT_CUSTO, :LUCROP, :BLOQUEARD, :LIMITED, :COMISSAO)')
    SQLDelete.Strings = (
      'DELETE FROM ESTOQUE'
      'WHERE'
      '  CODIGO = :Old_CODIGO')
    SQLUpdate.Strings = (
      'UPDATE ESTOQUE'
      'SET'
      
        '  CODIGO = :CODIGO, REFERENCIA = :REFERENCIA, BARRA = :BARRA, DE' +
        'SCRICAO = :DESCRICAO, SERVICO = :SERVICO, PRODUTO = :PRODUTO, TI' +
        'PO = :TIPO, UNIDADE = :UNIDADE, CODCAT = :CODCAT, CATEGORIA = :C' +
        'ATEGORIA, QUANT_MINI = :QUANT_MINI, QUANT_ATUA = :QUANT_ATUA, QU' +
        'ANT_MAX = :QUANT_MAX, QUANT_UNID = :QUANT_UNID, P_CUSTO = :P_CUS' +
        'TO, P_VENDA = :P_VENDA, MENSAGEM = :MENSAGEM, IPI = :IPI, COD_SI' +
        'T = :COD_SIT, COD_IPI = :COD_IPI, AL_IPI = :AL_IPI, CLAS_FIS = :' +
        'CLAS_FIS, AL_ICMS = :AL_ICMS, FOTO = :FOTO, OBS = :OBS, IMPRESSO' +
        ' = :IMPRESSO, PECA = :PECA, QUANTIDADE = :QUANTIDADE, GRUPO = :G' +
        'RUPO, M3 = :M3, QUANTIDADE_1 = :QUANTIDADE_1, COMPRADO = :COMPRA' +
        'DO, DESCONTO = :DESCONTO, DATA = :DATA, ENTANT = :ENTANT, SAIANT' +
        ' = :SAIANT, SALDOANT = :SALDOANT, ENTRADA = :ENTRADA, SAIDA = :S' +
        'AIDA, SALDO = :SALDO, MARGEM = :MARGEM, AVISOMIN = :AVISOMIN, AV' +
        'ISOZER = :AVISOZER, FALTA = :FALTA, MAIS_VEND = :MAIS_VEND, MAIS' +
        '_QUAN = :MAIS_QUAN, MARCA = :MARCA, CODMAR = :CODMAR, FOTO1 = :F' +
        'OTO1, FOTO2 = :FOTO2, PRAZO = :PRAZO, ATACADO = :ATACADO, MARGEM' +
        '2 = :MARGEM2, MARGEM3 = :MARGEM3, LOCALIZA = :LOCALIZA, VENZER =' +
        ' :VENZER, CORES = :CORES, CODFORMA = :CODFORMA, FORMATO = :FORMA' +
        'TO, CODVIAS = :CODVIAS, VIAS = :VIAS, CODCORES = :CODCORES, CPL1' +
        ' = :CPL1, CPL2 = :CPL2, VENCIMENTO = :VENCIMENTO, LUCRO = :LUCRO' +
        ', TOT_CUSTO = :TOT_CUSTO, LUCROP = :LUCROP, BLOQUEARD = :BLOQUEA' +
        'RD, LIMITED = :LIMITED, COMISSAO = :COMISSAO'
      'WHERE'
      '  CODIGO = :Old_CODIGO')
    SQLLock.Strings = (
      'SELECT NULL FROM ESTOQUE'
      'WHERE'
      'CODIGO = :Old_CODIGO'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT CODIGO, REFERENCIA, BARRA, DESCRICAO, SERVICO, PRODUTO, T' +
        'IPO, UNIDADE, CODCAT, CATEGORIA, QUANT_MINI, QUANT_ATUA, QUANT_M' +
        'AX, QUANT_UNID, P_CUSTO, P_VENDA, MENSAGEM, IPI, COD_SIT, COD_IP' +
        'I, AL_IPI, CLAS_FIS, AL_ICMS, FOTO, OBS, IMPRESSO, PECA, QUANTID' +
        'ADE, GRUPO, M3, QUANTIDADE_1, COMPRADO, DESCONTO, DATA, ENTANT, ' +
        'SAIANT, SALDOANT, ENTRADA, SAIDA, SALDO, MARGEM, AVISOMIN, AVISO' +
        'ZER, FALTA, MAIS_VEND, MAIS_QUAN, MARCA, CODMAR, FOTO1, FOTO2, P' +
        'RAZO, ATACADO, MARGEM2, MARGEM3, LOCALIZA, VENZER, CORES, CODFOR' +
        'MA, FORMATO, CODVIAS, VIAS, CODCORES, CPL1, CPL2, VENCIMENTO, LU' +
        'CRO, TOT_CUSTO, LUCROP, BLOQUEARD, LIMITED, COMISSAO FROM ESTOQU' +
        'E'
      'WHERE'
      '  CODIGO = :CODIGO')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM ESTOQUE'
      ''
      ') q')
    Connection = UniConnection1
    Transaction = UniTransaction1
    SQL.Strings = (
      'select * from Estoque')
    Left = 256
    Top = 104
    object qryEstoqueCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object qryEstoqueREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 50
    end
    object qryEstoqueBARRA: TStringField
      FieldName = 'BARRA'
      Size = 50
    end
    object qryEstoqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 78
    end
    object qryEstoqueTIPO: TStringField
      FieldName = 'TIPO'
      Size = 50
    end
    object qryEstoqueUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 50
    end
    object qryEstoqueCODCAT: TIntegerField
      FieldName = 'CODCAT'
    end
    object qryEstoqueCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 50
    end
    object qryEstoqueQUANT_MINI: TFloatField
      FieldName = 'QUANT_MINI'
    end
    object qryEstoqueQUANT_ATUA: TFloatField
      FieldName = 'QUANT_ATUA'
    end
    object qryEstoqueQUANT_MAX: TFloatField
      FieldName = 'QUANT_MAX'
    end
    object qryEstoqueQUANT_UNID: TFloatField
      FieldName = 'QUANT_UNID'
    end
    object qryEstoqueP_CUSTO: TFloatField
      FieldName = 'P_CUSTO'
      currency = True
    end
    object qryEstoqueP_VENDA: TFloatField
      FieldName = 'P_VENDA'
      currency = True
    end
    object qryEstoqueMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 57
    end
    object qryEstoqueIPI: TIntegerField
      FieldName = 'IPI'
    end
    object qryEstoqueCOD_SIT: TIntegerField
      FieldName = 'COD_SIT'
    end
    object qryEstoqueCOD_IPI: TIntegerField
      FieldName = 'COD_IPI'
    end
    object qryEstoqueAL_IPI: TFloatField
      FieldName = 'AL_IPI'
    end
    object qryEstoqueCLAS_FIS: TIntegerField
      FieldName = 'CLAS_FIS'
    end
    object qryEstoqueAL_ICMS: TFloatField
      FieldName = 'AL_ICMS'
    end
    object qryEstoqueFOTO: TStringField
      FieldName = 'FOTO'
      Size = 50
    end
    object qryEstoqueOBS: TStringField
      FieldName = 'OBS'
      Size = 50
    end
    object qryEstoquePECA: TStringField
      FieldName = 'PECA'
      Size = 50
    end
    object qryEstoqueQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Size = 50
    end
    object qryEstoqueGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 50
    end
    object qryEstoqueM3: TStringField
      FieldName = 'M3'
      Size = 50
    end
    object qryEstoqueDESCONTO: TStringField
      FieldName = 'DESCONTO'
      Size = 50
    end
    object qryEstoqueENTANT: TFloatField
      FieldName = 'ENTANT'
    end
    object qryEstoqueSAIANT: TFloatField
      FieldName = 'SAIANT'
    end
    object qryEstoqueSALDOANT: TFloatField
      FieldName = 'SALDOANT'
    end
    object qryEstoqueENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object qryEstoqueSAIDA: TFloatField
      FieldName = 'SAIDA'
    end
    object qryEstoqueSALDO: TStringField
      FieldName = 'SALDO'
      Size = 50
    end
    object qryEstoqueMARGEM: TStringField
      FieldName = 'MARGEM'
      Size = 50
    end
    object qryEstoqueFALTA: TStringField
      FieldName = 'FALTA'
      Size = 50
    end
    object qryEstoqueMAIS_VEND: TIntegerField
      FieldName = 'MAIS_VEND'
    end
    object qryEstoqueMAIS_QUAN: TIntegerField
      FieldName = 'MAIS_QUAN'
    end
    object qryEstoqueMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object qryEstoqueCODMAR: TIntegerField
      FieldName = 'CODMAR'
    end
    object qryEstoqueFOTO1: TStringField
      FieldName = 'FOTO1'
      Size = 89
    end
    object qryEstoqueFOTO2: TStringField
      FieldName = 'FOTO2'
      Size = 130
    end
    object qryEstoquePRAZO: TIntegerField
      FieldName = 'PRAZO'
    end
    object qryEstoqueATACADO: TIntegerField
      FieldName = 'ATACADO'
    end
    object qryEstoqueMARGEM2: TStringField
      FieldName = 'MARGEM2'
      Size = 50
    end
    object qryEstoqueMARGEM3: TStringField
      FieldName = 'MARGEM3'
      Size = 50
    end
    object qryEstoqueLOCALIZA: TStringField
      FieldName = 'LOCALIZA'
      Size = 50
    end
    object qryEstoqueCORES: TStringField
      FieldName = 'CORES'
      Size = 50
    end
    object qryEstoqueCODFORMA: TStringField
      FieldName = 'CODFORMA'
      Size = 50
    end
    object qryEstoqueFORMATO: TStringField
      FieldName = 'FORMATO'
      Size = 50
    end
    object qryEstoqueCODVIAS: TStringField
      FieldName = 'CODVIAS'
      Size = 50
    end
    object qryEstoqueVIAS: TStringField
      FieldName = 'VIAS'
      Size = 50
    end
    object qryEstoqueCODCORES: TStringField
      FieldName = 'CODCORES'
      Size = 50
    end
    object qryEstoqueCPL1: TStringField
      FieldName = 'CPL1'
      Size = 50
    end
    object qryEstoqueCPL2: TStringField
      FieldName = 'CPL2'
      Size = 147
    end
    object qryEstoqueVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qryEstoqueLUCRO: TFloatField
      FieldName = 'LUCRO'
    end
    object qryEstoqueTOT_CUSTO: TFloatField
      FieldName = 'TOT_CUSTO'
    end
    object qryEstoqueLUCROP: TIntegerField
      FieldName = 'LUCROP'
    end
    object qryEstoqueLIMITED: TStringField
      FieldName = 'LIMITED'
      Size = 50
    end
    object qryEstoqueCOMISSAO: TStringField
      FieldName = 'COMISSAO'
      Size = 50
    end
  end
  object qryProfissionais: TUniQuery
    Connection = UniConnection1
    Transaction = UniTransaction1
    SQL.Strings = (
      'Select * from profissionais')
    Left = 352
    Top = 104
    object qryProfissionaisPROFIS_IDPROFISSIONAL: TIntegerField
      FieldName = 'PROFIS_IDPROFISSIONAL'
      Required = True
    end
    object qryProfissionaisPROFIS_CPF: TStringField
      FieldName = 'PROFIS_CPF'
    end
    object qryProfissionaisPROFIS_NOME: TStringField
      FieldName = 'PROFIS_NOME'
      Size = 60
    end
    object qryProfissionaisPROFIS_APELIDO: TStringField
      FieldName = 'PROFIS_APELIDO'
      Size = 30
    end
    object qryProfissionaisPROFIS_DATANASC: TDateField
      FieldName = 'PROFIS_DATANASC'
    end
    object qryProfissionaisPROFIS_ENDERECO: TStringField
      FieldName = 'PROFIS_ENDERECO'
      Size = 60
    end
    object qryProfissionaisPROFIS_IDCIDADE: TIntegerField
      FieldName = 'PROFIS_IDCIDADE'
    end
    object qryProfissionaisPROFIS_IDFUNCAO: TIntegerField
      FieldName = 'PROFIS_IDFUNCAO'
    end
    object qryProfissionaisPROFIS_CEL: TStringField
      FieldName = 'PROFIS_CEL'
    end
    object qryProfissionaisPROFIS_TELEFONE: TStringField
      FieldName = 'PROFIS_TELEFONE'
    end
    object qryProfissionaisPROFIS_EMAIL: TStringField
      FieldName = 'PROFIS_EMAIL'
      Size = 80
    end
    object qryProfissionaisPROFIS_DATACAD: TDateField
      FieldName = 'PROFIS_DATACAD'
    end
  end
  object qryOrdens: TUniQuery
    Connection = UniConnection1
    Transaction = UniTransaction1
    Left = 464
    Top = 104
  end
  object qryUsuarios: TUniQuery
    Connection = UniConnection1
    Transaction = UniTransaction1
    Left = 560
    Top = 104
  end
  object dsItensOs: TDataSource
    AutoEdit = False
    Left = 472
    Top = 296
  end
  object qryItensOs: TUniQuery
    Connection = UniConnection1
    Transaction = UniTransaction1
    Left = 472
    Top = 232
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 264
    Top = 8
  end
  object qryEmpresa: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO empresa'
      
        '  (EMPRESA_ID, RAZAO_SOC, NOME_FANT, ENDERECO, NUMERO, BAIRRO, C' +
        'EP, COMPLEMENTO, CELULAR, EMAIL, SITE, CNPJ, IE, IEST, LOGO, COD' +
        '_CIDADE, IM, CNAE, CODREGIMETRIBUTARIO, IEISENTO, DATACAD, FACEB' +
        'OOK, INSTAGRAN)'
      'VALUES'
      
        '  (:EMPRESA_ID, :RAZAO_SOC, :NOME_FANT, :ENDERECO, :NUMERO, :BAI' +
        'RRO, :CEP, :COMPLEMENTO, :CELULAR, :EMAIL, :SITE, :CNPJ, :IE, :I' +
        'EST, :LOGO, :COD_CIDADE, :IM, :CNAE, :CODREGIMETRIBUTARIO, :IEIS' +
        'ENTO, :DATACAD, :FACEBOOK, :INSTAGRAN)')
    SQLDelete.Strings = (
      'DELETE FROM empresa'
      'WHERE'
      '  EMPRESA_ID = :Old_EMPRESA_ID')
    SQLUpdate.Strings = (
      'UPDATE empresa'
      'SET'
      
        '  EMPRESA_ID = :EMPRESA_ID, RAZAO_SOC = :RAZAO_SOC, NOME_FANT = ' +
        ':NOME_FANT, ENDERECO = :ENDERECO, NUMERO = :NUMERO, BAIRRO = :BA' +
        'IRRO, CEP = :CEP, COMPLEMENTO = :COMPLEMENTO, CELULAR = :CELULAR' +
        ', EMAIL = :EMAIL, SITE = :SITE, CNPJ = :CNPJ, IE = :IE, IEST = :' +
        'IEST, LOGO = :LOGO, COD_CIDADE = :COD_CIDADE, IM = :IM, CNAE = :' +
        'CNAE, CODREGIMETRIBUTARIO = :CODREGIMETRIBUTARIO, IEISENTO = :IE' +
        'ISENTO, DATACAD = :DATACAD, FACEBOOK = :FACEBOOK, INSTAGRAN = :I' +
        'NSTAGRAN'
      'WHERE'
      '  EMPRESA_ID = :Old_EMPRESA_ID')
    SQLLock.Strings = (
      'SELECT * FROM empresa'
      'WHERE'
      '  EMPRESA_ID = :Old_EMPRESA_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT EMPRESA_ID, RAZAO_SOC, NOME_FANT, ENDERECO, NUMERO, BAIRR' +
        'O, CEP, COMPLEMENTO, CELULAR, EMAIL, SITE, CNPJ, IE, IEST, LOGO,' +
        ' COD_CIDADE, IM, CNAE, CODREGIMETRIBUTARIO, IEISENTO, DATACAD, F' +
        'ACEBOOK, INSTAGRAN FROM empresa'
      'WHERE'
      '  EMPRESA_ID = :EMPRESA_ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM empresa')
    Connection = UniConnection1
    Transaction = UniTransaction1
    SQL.Strings = (
      'Select * from empresa')
    Left = 656
    Top = 104
    object qryEmpresaEMPRESA_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'EMPRESA_ID'
    end
    object qryEmpresaRAZAO_SOC: TStringField
      FieldName = 'RAZAO_SOC'
      Required = True
      Size = 60
    end
    object qryEmpresaNOME_FANT: TStringField
      FieldName = 'NOME_FANT'
      Required = True
      Size = 60
    end
    object qryEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qryEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object qryEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object qryEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qryEmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object qryEmpresaCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 11
    end
    object qryEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qryEmpresaSITE: TStringField
      FieldName = 'SITE'
      Size = 80
    end
    object qryEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qryEmpresaIE: TStringField
      FieldName = 'IE'
    end
    object qryEmpresaIEST: TStringField
      FieldName = 'IEST'
    end
    object qryEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object qryEmpresaCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object qryEmpresaIM: TStringField
      FieldName = 'IM'
    end
    object qryEmpresaCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qryEmpresaCODREGIMETRIBUTARIO: TIntegerField
      FieldName = 'CODREGIMETRIBUTARIO'
    end
    object qryEmpresaIEISENTO: TSmallintField
      FieldName = 'IEISENTO'
    end
    object qryEmpresaDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object qryEmpresaFACEBOOK: TStringField
      FieldName = 'FACEBOOK'
      Size = 60
    end
    object qryEmpresaINSTAGRAN: TStringField
      FieldName = 'INSTAGRAN'
      Size = 60
    end
  end
end
