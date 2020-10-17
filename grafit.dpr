program grafit;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {f_Principal},
  unDMPrincipal in 'unDMPrincipal.pas' {DMPrincipal: TDataModule},
  unCadPadrao in 'unCadPadrao.pas' {F_cadPadrao},
  unConsultaPadrao in 'unConsultaPadrao.pas' {f_Consultapadrao},
  unCadClientes in 'unCadClientes.pas' {F_CadClientes},
  unCadProfissionais in 'unCadProfissionais.pas' {F_cadProfissionais},
  unOrdens in 'unOrdens.pas' {F_Ordens},
  unCadEstoque in 'unCadEstoque.pas' {F_cadEstoque};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(Tf_Principal, f_Principal);
  Application.Run;
end.
