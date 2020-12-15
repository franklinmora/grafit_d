unit unDMPrincipal;

interface

uses
  SysUtils, Classes, DBAccess, DB, MemDS, IBCustomDataSet,
   Uni, UniProvider, MySQLUniProvider, InterBaseUniProvider;

type
  TDMPrincipal = class(TDataModule)
    dsEstoque: TDataSource;
    dsProfissionais: TDataSource;
    dsOrdens: TDataSource;
    dsUsuarios: TDataSource;
    dsCidade: TDataSource;
    UniConnection1: TUniConnection;
    UniTransaction1: TUniTransaction;
    qryClientes: TUniQuery;
    qryCidade: TUniQuery;
    qryCidadeCODIGO: TIntegerField;
    qryCidadeNOME: TStringField;
    qryCidadeUF: TStringField;
    qryCidadePAIS: TStringField;
    qryCidadeCODIGO_IBGE: TStringField;
    qryClientesCLI_IDCLIENTE: TIntegerField;
    qryClientesCLI_INSTAGRAM: TStringField;
    qryClientesCLI_CPFCNPJ: TStringField;
    qryClientesCLI_NOME: TStringField;
    qryClientesCLI_ANIVERSARIO: TDateField;
    qryClientesCLI_ENDERECO: TStringField;
    qryClientesCLI_CEP: TStringField;
    qryClientesCLI_UF: TStringField;
    qryClientesCLI_EMAIL: TStringField;
    qryClientesCLI_DATACAD: TDateField;
    qryClientesCLI_NUMERO: TStringField;
    qryClientesCLI_BAIRRO: TStringField;
    qryClientesCLI_SITUACAO: TStringField;
    qryClientesCLI_FACEBOOK: TStringField;
    qryClientesCLI_SEXO: TStringField;
    qryClientesCLI_DATANASC: TDateField;
    qryClientesCLI_ESTADOCIVIL: TStringField;
    qryClientesCLI_CODIGOAUXILIAR: TStringField;
    qryClientesCLI_CODIGO: TIntegerField;
    qryClientesCLI_INDICADO_POR: TStringField;
    qryClientesCLI_CIDADECODIGO: TIntegerField;
    qryClientesCLI_CIDADENOME: TStringField;
    dsClientes: TDataSource;
    qryClientesCLI_COMPLEMENTO: TStringField;
    qryEstoque: TUniQuery;
    qryProfissionais: TUniQuery;
    qryOrdens: TUniQuery;
    qryUsuarios: TUniQuery;
    qryProfissionaisPROFIS_IDPROFISSIONAL: TIntegerField;
    qryProfissionaisPROFIS_CPF: TStringField;
    qryProfissionaisPROFIS_NOME: TStringField;
    qryProfissionaisPROFIS_APELIDO: TStringField;
    qryProfissionaisPROFIS_DATANASC: TDateField;
    qryProfissionaisPROFIS_ENDERECO: TStringField;
    qryProfissionaisPROFIS_IDCIDADE: TIntegerField;
    qryProfissionaisPROFIS_IDFUNCAO: TIntegerField;
    qryProfissionaisPROFIS_CEL: TStringField;
    qryProfissionaisPROFIS_TELEFONE: TStringField;
    qryProfissionaisPROFIS_EMAIL: TStringField;
    qryProfissionaisPROFIS_DATACAD: TDateField;
    dsItensOs: TDataSource;
    qryItensOs: TUniQuery;
    MySQLUniProvider1: TMySQLUniProvider;
    qryEmpresa: TUniQuery;
    qryEmpresaEMPRESA_ID: TIntegerField;
    qryEmpresaRAZAO_SOC: TStringField;
    qryEmpresaNOME_FANT: TStringField;
    qryEmpresaENDERECO: TStringField;
    qryEmpresaNUMERO: TStringField;
    qryEmpresaBAIRRO: TStringField;
    qryEmpresaCEP: TStringField;
    qryEmpresaCOMPLEMENTO: TStringField;
    qryEmpresaCELULAR: TStringField;
    qryEmpresaEMAIL: TStringField;
    qryEmpresaSITE: TStringField;
    qryEmpresaCNPJ: TStringField;
    qryEmpresaIE: TStringField;
    qryEmpresaIEST: TStringField;
    qryEmpresaLOGO: TBlobField;
    qryEmpresaCOD_CIDADE: TIntegerField;
    qryEmpresaIM: TStringField;
    qryEmpresaCNAE: TStringField;
    qryEmpresaCODREGIMETRIBUTARIO: TIntegerField;
    qryEmpresaIEISENTO: TSmallintField;
    qryEmpresaDATACAD: TDateField;
    qryEmpresaFACEBOOK: TStringField;
    qryEmpresaINSTAGRAN: TStringField;
    qryClientesCLI_CEL: TStringField;
    qryEstoqueCODIGO: TIntegerField;
    qryEstoqueREFERENCIA: TStringField;
    qryEstoqueBARRA: TStringField;
    qryEstoqueDESCRICAO: TStringField;
    qryEstoqueTIPO: TStringField;
    qryEstoqueUNIDADE: TStringField;
    qryEstoqueCODCAT: TIntegerField;
    qryEstoqueCATEGORIA: TStringField;
    qryEstoqueQUANT_MINI: TFloatField;
    qryEstoqueQUANT_ATUA: TFloatField;
    qryEstoqueQUANT_MAX: TFloatField;
    qryEstoqueQUANT_UNID: TFloatField;
    qryEstoqueP_CUSTO: TFloatField;
    qryEstoqueP_VENDA: TFloatField;
    qryEstoqueMENSAGEM: TStringField;
    qryEstoqueIPI: TIntegerField;
    qryEstoqueCOD_SIT: TIntegerField;
    qryEstoqueCOD_IPI: TIntegerField;
    qryEstoqueAL_IPI: TFloatField;
    qryEstoqueCLAS_FIS: TIntegerField;
    qryEstoqueAL_ICMS: TFloatField;
    qryEstoqueFOTO: TStringField;
    qryEstoqueOBS: TStringField;
    qryEstoquePECA: TStringField;
    qryEstoqueQUANTIDADE: TStringField;
    qryEstoqueGRUPO: TStringField;
    qryEstoqueM3: TStringField;
    qryEstoqueDESCONTO: TStringField;
    qryEstoqueENTANT: TFloatField;
    qryEstoqueSAIANT: TFloatField;
    qryEstoqueSALDOANT: TFloatField;
    qryEstoqueENTRADA: TFloatField;
    qryEstoqueSAIDA: TFloatField;
    qryEstoqueSALDO: TStringField;
    qryEstoqueMARGEM: TStringField;
    qryEstoqueFALTA: TStringField;
    qryEstoqueMAIS_VEND: TIntegerField;
    qryEstoqueMAIS_QUAN: TIntegerField;
    qryEstoqueMARCA: TStringField;
    qryEstoqueCODMAR: TIntegerField;
    qryEstoqueFOTO1: TStringField;
    qryEstoqueFOTO2: TStringField;
    qryEstoquePRAZO: TIntegerField;
    qryEstoqueATACADO: TIntegerField;
    qryEstoqueMARGEM2: TStringField;
    qryEstoqueMARGEM3: TStringField;
    qryEstoqueLOCALIZA: TStringField;
    qryEstoqueCORES: TStringField;
    qryEstoqueCODFORMA: TStringField;
    qryEstoqueFORMATO: TStringField;
    qryEstoqueCODVIAS: TStringField;
    qryEstoqueVIAS: TStringField;
    qryEstoqueCODCORES: TStringField;
    qryEstoqueCPL1: TStringField;
    qryEstoqueCPL2: TStringField;
    qryEstoqueVENCIMENTO: TDateField;
    qryEstoqueLUCRO: TFloatField;
    qryEstoqueTOT_CUSTO: TFloatField;
    qryEstoqueLUCROP: TIntegerField;
    qryEstoqueLIMITED: TStringField;
    qryEstoqueCOMISSAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPrincipal: TDMPrincipal;

implementation

{$R *.dfm}

end.
