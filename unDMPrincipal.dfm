object DMPrincipal: TDMPrincipal
  OldCreateOrder = False
  Height = 448
  Width = 770
  object conexao: TIBCConnection
    Database = 'C:\grafit\DB\GRAFIT.FDB'
    Options.Charset = 'WIN1252'
    ClientLibrary = 'C:\Program Files (x86)\Firebird\Firebird_3_0\fbclient.dll'
    Username = 'mister'
    Password = '#123456'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 24
  end
  object transclientes: TIBCTransaction
    DefaultConnection = conexao
    Left = 48
    Top = 80
  end
  object qryClientes: TIBCQuery
    Connection = conexao
    Transaction = transclientes
    UpdateTransaction = transclientes
    SQL.Strings = (
      'select * from clientes')
    UpdateObject = upClientes
    Left = 40
    Top = 136
  end
  object upClientes: TIBCUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO CLIENTES'
      
        '  (CLI_IDCLIENTE, CLI_INSTAGRAM, CLI_CPFCNPJ, CLI_NOME, CLI_ANIV' +
        'ERSARIO, CLI_ENDERECO, CLI_CEP, CLI_UF, CLI_CEL1, CLI_TELEFONE, ' +
        'CLI_EMAIL, CLI_DATACAD, CLI_NUMERO, CLI_BAIRRO, CLI_SITUACAO, CL' +
        'I_FACEBOOK, CLI_SEXO, CLI_DATANASC, CLI_ESTADOCIVIL, CLI_CODIGOA' +
        'UXILIAR, CLI_CODIGO, CLI_INDICADO_POR, CLI_PROFISSAOID, CLI_CIDA' +
        'DECODIGO, CLI_CIDADENOME, CLI_PROFISSAO, CLI_NACIONALIDADE)'
      'VALUES'
      
        '  (:CLI_IDCLIENTE, :CLI_INSTAGRAM, :CLI_CPFCNPJ, :CLI_NOME, :CLI' +
        '_ANIVERSARIO, :CLI_ENDERECO, :CLI_CEP, :CLI_UF, :CLI_CEL1, :CLI_' +
        'TELEFONE, :CLI_EMAIL, :CLI_DATACAD, :CLI_NUMERO, :CLI_BAIRRO, :C' +
        'LI_SITUACAO, :CLI_FACEBOOK, :CLI_SEXO, :CLI_DATANASC, :CLI_ESTAD' +
        'OCIVIL, :CLI_CODIGOAUXILIAR, :CLI_CODIGO, :CLI_INDICADO_POR, :CL' +
        'I_PROFISSAOID, :CLI_CIDADECODIGO, :CLI_CIDADENOME, :CLI_PROFISSA' +
        'O, :CLI_NACIONALIDADE)')
    DeleteSQL.Strings = (
      'DELETE FROM CLIENTES'
      'WHERE'
      '  CLI_IDCLIENTE = :Old_CLI_IDCLIENTE')
    ModifySQL.Strings = (
      'UPDATE CLIENTES'
      'SET'
      
        '  CLI_IDCLIENTE = :CLI_IDCLIENTE, CLI_INSTAGRAM = :CLI_INSTAGRAM' +
        ', CLI_CPFCNPJ = :CLI_CPFCNPJ, CLI_NOME = :CLI_NOME, CLI_ANIVERSA' +
        'RIO = :CLI_ANIVERSARIO, CLI_ENDERECO = :CLI_ENDERECO, CLI_CEP = ' +
        ':CLI_CEP, CLI_UF = :CLI_UF, CLI_CEL1 = :CLI_CEL1, CLI_TELEFONE =' +
        ' :CLI_TELEFONE, CLI_EMAIL = :CLI_EMAIL, CLI_DATACAD = :CLI_DATAC' +
        'AD, CLI_NUMERO = :CLI_NUMERO, CLI_BAIRRO = :CLI_BAIRRO, CLI_SITU' +
        'ACAO = :CLI_SITUACAO, CLI_FACEBOOK = :CLI_FACEBOOK, CLI_SEXO = :' +
        'CLI_SEXO, CLI_DATANASC = :CLI_DATANASC, CLI_ESTADOCIVIL = :CLI_E' +
        'STADOCIVIL, CLI_CODIGOAUXILIAR = :CLI_CODIGOAUXILIAR, CLI_CODIGO' +
        ' = :CLI_CODIGO, CLI_INDICADO_POR = :CLI_INDICADO_POR, CLI_PROFIS' +
        'SAOID = :CLI_PROFISSAOID, CLI_CIDADECODIGO = :CLI_CIDADECODIGO, ' +
        'CLI_CIDADENOME = :CLI_CIDADENOME, CLI_PROFISSAO = :CLI_PROFISSAO' +
        ', CLI_NACIONALIDADE = :CLI_NACIONALIDADE'
      'WHERE'
      '  CLI_IDCLIENTE = :Old_CLI_IDCLIENTE')
    RefreshSQL.Strings = (
      
        'SELECT CLI_IDCLIENTE, CLI_INSTAGRAM, CLI_CPFCNPJ, CLI_NOME, CLI_' +
        'ANIVERSARIO, CLI_ENDERECO, CLI_CEP, CLI_UF, CLI_CEL1, CLI_TELEFO' +
        'NE, CLI_EMAIL, CLI_DATACAD, CLI_NUMERO, CLI_BAIRRO, CLI_SITUACAO' +
        ', CLI_FACEBOOK, CLI_SEXO, CLI_DATANASC, CLI_ESTADOCIVIL, CLI_COD' +
        'IGOAUXILIAR, CLI_CODIGO, CLI_INDICADO_POR, CLI_PROFISSAOID, CLI_' +
        'CIDADECODIGO, CLI_CIDADENOME, CLI_PROFISSAO, CLI_NACIONALIDADE F' +
        'ROM CLIENTES'
      'WHERE'
      '  CLI_IDCLIENTE = :CLI_IDCLIENTE')
    Left = 40
    Top = 192
  end
  object transEstoque: TIBCTransaction
    DefaultConnection = conexao
    Left = 160
    Top = 80
  end
  object qryEstoque: TIBCQuery
    Connection = conexao
    Transaction = transEstoque
    UpdateTransaction = transEstoque
    SQL.Strings = (
      'select * from estoque')
    UpdateObject = upEstoque
    Left = 152
    Top = 136
  end
  object upEstoque: TIBCUpdateSQL
    InsertSQL.Strings = (
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
    DeleteSQL.Strings = (
      'DELETE FROM ESTOQUE'
      'WHERE'
      '  CODIGO = :Old_CODIGO')
    ModifySQL.Strings = (
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
    RefreshSQL.Strings = (
      
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
    Left = 152
    Top = 192
  end
  object transProfissionais: TIBCTransaction
    DefaultConnection = conexao
    Left = 264
    Top = 80
  end
  object qryProfissionais: TIBCQuery
    Connection = conexao
    Transaction = transProfissionais
    UpdateTransaction = transProfissionais
    SQL.Strings = (
      'select * from Profissionais')
    UpdateObject = upProfissionais
    Left = 264
    Top = 136
  end
  object upProfissionais: TIBCUpdateSQL
    Left = 264
    Top = 192
  end
  object transOrdens: TIBCTransaction
    DefaultConnection = conexao
    Left = 376
    Top = 80
  end
  object qryOrdens: TIBCQuery
    Connection = conexao
    Left = 376
    Top = 136
  end
  object upOrdens: TIBCUpdateSQL
    Left = 376
    Top = 192
  end
  object transUsuarios: TIBCTransaction
    DefaultConnection = conexao
    Left = 488
    Top = 80
  end
  object qryUsuarios: TIBCQuery
    Connection = conexao
    Transaction = transUsuarios
    UpdateTransaction = transUsuarios
    UpdateObject = upUsuarios
    Left = 488
    Top = 136
  end
  object upUsuarios: TIBCUpdateSQL
    Left = 488
    Top = 192
  end
  object dsClientes: TDataSource
    DataSet = qryClientes
    Left = 40
    Top = 256
  end
  object dsEstoque: TDataSource
    DataSet = qryEstoque
    Left = 152
    Top = 256
  end
  object dsProfissionais: TDataSource
    DataSet = qryProfissionais
    Left = 264
    Top = 256
  end
  object dsOrdens: TDataSource
    DataSet = qryOrdens
    Left = 384
    Top = 256
  end
  object dsUsuarios: TDataSource
    DataSet = qryUsuarios
    Left = 488
    Top = 256
  end
end
