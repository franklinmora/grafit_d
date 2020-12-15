program grafit;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {f_Principal},
  unCadPadrao in 'unCadPadrao.pas' {F_cadPadrao},
  unCadClientes in 'unCadClientes.pas' {F_CadClientes},
  unCadProfissionais in 'unCadProfissionais.pas' {F_cadProfissionais},
  unOrdens in 'unOrdens.pas' {F_Ordens},
  unCadEstoque in 'unCadEstoque.pas' {F_cadEstoque},
  unDMPrincipal in 'unDMPrincipal.pas' {DMPrincipal: TDataModule},
  unConsultaClientes in 'unConsultaClientes.pas' {F_ConsultaClientes},
  unCadempresa in 'unCadempresa.pas' {F_cadEmpresa},
  unConsultaEstoque in 'unConsultaEstoque.pas' {f_ConsultaEstoque};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(Tf_Principal, f_Principal);
  Application.Run;
end.
