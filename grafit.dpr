program grafit;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {f_Principal},
  UnCadClientes in 'UnCadClientes.pas' {F_CadCliente},
  UnCadProdutos in 'UnCadProdutos.pas' {F_CadProdutos},
  UnCadProfissionais in 'UnCadProfissionais.pas' {F_CadProfissionais},
  UnCadServicos in 'UnCadServicos.pas' {F_CadServicos},
  unDMPrincipal in 'unDMPrincipal.pas' {DMPrincipal: TDataModule},
  unCadPadrao in 'unCadPadrao.pas' {Form1},
  unConsultaPadrao in 'unConsultaPadrao.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tf_Principal, f_Principal);
  Application.CreateForm(TF_CadCliente, F_CadCliente);
  Application.CreateForm(TF_CadProdutos, F_CadProdutos);
  Application.CreateForm(TF_CadProfissionais, F_CadProfissionais);
  Application.CreateForm(TF_CadServicos, F_CadServicos);
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
