unit unDMPrincipal;

interface

uses
  SysUtils, Classes, DBAccess, IBC, DB, MemDS;

type
  TDMPrincipal = class(TDataModule)
    conexao: TIBCConnection;
    transclientes: TIBCTransaction;
    qryClientes: TIBCQuery;
    upClientes: TIBCUpdateSQL;
    transEstoque: TIBCTransaction;
    qryEstoque: TIBCQuery;
    upEstoque: TIBCUpdateSQL;
    transProfissionais: TIBCTransaction;
    qryProfissionais: TIBCQuery;
    upProfissionais: TIBCUpdateSQL;
    transOrdens: TIBCTransaction;
    qryOrdens: TIBCQuery;
    upOrdens: TIBCUpdateSQL;
    transUsuarios: TIBCTransaction;
    qryUsuarios: TIBCQuery;
    upUsuarios: TIBCUpdateSQL;
    dsClientes: TDataSource;
    dsEstoque: TDataSource;
    dsProfissionais: TDataSource;
    dsOrdens: TDataSource;
    dsUsuarios: TDataSource;
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
