unit unCadPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Buttons, ExtCtrls, DB;

type
  TF_cadPadrao = class(TForm)
    Panel1: TPanel;
    botaoNovo: TBitBtn;
    botaoSalvar: TBitBtn;
    ActionList1: TActionList;
    act_novo: TAction;
    act_alterar: TAction;
    act_salvar: TAction;
    act_imprimir: TAction;
    act_fechar: TAction;
    botaofechar: TBitBtn;
    act_Cancelar: TAction;
    botaoAlterar: TBitBtn;
    botaoCancelar: TBitBtn;
    Function Formexiste(Nomejanela:TForm):boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure HabilitaBotoes(Sender: TObject);
    procedure HabilitaControle(Sender: TObject);
    procedure act_fecharExecute(Sender: TObject);
    procedure DesabilitaControle(Sender: TObject);
    procedure Desabilitabotoes(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_cadPadrao: TF_cadPadrao;

implementation



{$R *.dfm}

procedure TF_cadPadrao.act_fecharExecute(Sender: TObject);
begin
   Close;
end;

procedure TF_cadPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

Function TF_cadPadrao.Formexiste(Nomejanela:TForm):boolean;
var
I : integer;
begin
  Formexiste := false;
   for i := 0 to componentcount - 1 do
    if Components[i] is TForm then
    if TForm(Components[i])= nomejanela then
      Formexiste := true;
end;

procedure TF_cadPadrao.HabilitaBotoes(Sender: TObject);
begin
   botaoNovo.Enabled     := True;
   botaoAlterar.Enabled  := True;
   botaoSalvar.Enabled   := False;
   botaoCancelar.Enabled := False;

end;
procedure TF_cadPadrao.HabilitaControle(Sender: TObject);
begin
    botaoNovo.Enabled     := False;
    botaoAlterar.Enabled  := False;
    botaoCancelar.Enabled := False;
    botaoSalvar.Enabled   := True;

end;

procedure TF_cadPadrao.Desabilitabotoes(Sender: TObject);
begin
  botaoNovo.Enabled     := False;
  botaoAlterar.Enabled  := False;
  botaoCancelar.Enabled := True;
  botaoSalvar.Enabled   := True;
end;


procedure TF_cadPadrao.DesabilitaControle(Sender: TObject);
begin
    botaoNovo.Enabled     := True;
    botaoAlterar.Enabled  := True;
    botaoCancelar.Enabled := False;
    botaoSalvar.Enabled   := False;
end;
end.
