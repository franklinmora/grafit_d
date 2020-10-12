unit UnCadProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, StdCtrls,
  Buttons, JvExButtons, JvBitBtn, ActnList, Mask, DBCtrls, JvComponentBase,
  JvEnterTab, JvBevel, frxClass, frxDBSet, frxExportPDF;

type
  TF_CadProdutos = class(TForm)
    JvPanel1: TJvPanel;
    botaonovo: TJvBitBtn;
    botaoAlterar: TJvBitBtn;
    botaoCancelar: TJvBitBtn;
    botaoSalvar: TJvBitBtn;
    botaoFechar: TJvBitBtn;
    ActionList1: TActionList;
    Act_Novo: TAction;
    Act_Alterar: TAction;
    Act_Cancelar: TAction;
    Act_Salvar: TAction;
    Act_ConsultarProduto: TAction;
    Act_Fechar: TAction;
    dbcodigo: TDBEdit;
    dbcodigoauxiliar: TDBEdit;
    dbdata: TDBEdit;
    dbdescricao: TDBEdit;
    dbunidade: TDBEdit;
    dbreferencia: TDBEdit;
    dbncm: TDBEdit;
    dbox: TDBEdit;
    dbean: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dbvalorcusto: TDBEdit;
    Label10: TLabel;
    dbperclucro: TDBEdit;
    Label11: TLabel;
    dbvalorvenda: TDBEdit;
    Label12: TLabel;
    dbforncedor: TDBEdit;
    Label13: TLabel;
    dbdataaltera: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    dbfabricante: TDBEdit;
    JvEnterAsTab1: TJvEnterAsTab;
    DBNavigator1: TDBNavigator;
    botaoConsultar: TJvBitBtn;
    LbDescricao: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    frxDBProdutos: TfrxDBDataset;
    frxReport1: TfrxReport;
    JvBitBtn1: TJvBitBtn;
    Act_Imprimir: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    Function  Formexiste(Nomejanela:TForm):boolean;
    procedure HabilitaBotoes(Sender: TObject);
    procedure DesabilitaBotoes(Sender: TObject);
    procedure HabilitaControle(Sender: TObject);
    procedure DesabilitaControle(Sender: TObject);
    procedure Act_FecharExecute(Sender: TObject);
    procedure Act_NovoExecute(Sender: TObject);
    procedure Act_AlterarExecute(Sender: TObject);
    procedure Act_CancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Act_SalvarExecute(Sender: TObject);
    procedure Act_ConsultarProdutoExecute(Sender: TObject);
    procedure Act_ImprimirExecute(Sender: TObject);
    procedure dbreferenciaEnter(Sender: TObject);
    procedure dbreferenciaExit(Sender: TObject);
    procedure dbcodigoauxiliarExit(Sender: TObject);
    procedure dbdescricaoExit(Sender: TObject);
    procedure dbunidadeExit(Sender: TObject);
    procedure dbncmExit(Sender: TObject);
    procedure dbeanExit(Sender: TObject);
    procedure dboxExit(Sender: TObject);
    procedure dbvalorcustoExit(Sender: TObject);
    procedure dbperclucroExit(Sender: TObject);
    procedure dbcodigoauxiliarEnter(Sender: TObject);
    procedure dbdescricaoEnter(Sender: TObject);
    procedure dbncmEnter(Sender: TObject);
    procedure dbeanEnter(Sender: TObject);
    procedure dboxEnter(Sender: TObject);
    procedure dbunidadeEnter(Sender: TObject);
    procedure dbvalorcustoEnter(Sender: TObject);
    procedure dbperclucroEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    valorProd : TFloatValue;
  end;

var
  F_CadProdutos: TF_CadProdutos;

implementation

uses UnDMPrincipal, UnCadServicos, UnCadClientes, UnPrincipal,
  UnConsultaProdutos, DB;

{$R *.dfm}
Function TF_CadProdutos.Formexiste(Nomejanela:TForm):boolean;
var
I : integer;
begin
  Formexiste := false;
   for i := 0 to componentcount - 1 do
    if Components[i] is TForm then
    if TForm(Components[i])= nomejanela then
      Formexiste := true;
end;

procedure TF_CadProdutos.HabilitaBotoes(Sender: TObject);
begin
    BotaoNovo.Enabled := True;
    BotaoAlterar.Enabled := True;
    BotaoCancelar.Enabled := False;
    BotaoSalvar.Enabled := False;
end;

procedure TF_CadProdutos.DesabilitaBotoes(Sender: TObject);
begin
    BotaoNovo.Enabled := False;
    BotaoAlterar.Enabled := False;
    BotaoCancelar.Enabled := True;
    botaoSalvar.Enabled := True;

end;

procedure TF_CadProdutos.HabilitaControle(Sender: TObject);
begin
    BotaoCancelar.Enabled := True;
    BotaoSalvar.Enabled := True;
end;
procedure TF_CadProdutos.DesabilitaControle(Sender: TObject);
begin
    BotaoCancelar.Enabled := False;
    BotaoSalvar.Enabled := False;
end;
procedure TF_CadProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    F_CadProdutos := nil;
    Action := caFree;
end;

procedure TF_CadProdutos.Act_FecharExecute(Sender: TObject);
begin
   F_CadProdutos.Close;
end;

procedure TF_CadProdutos.Act_NovoExecute(Sender: TObject);
 begin
    with DMPrincipal do
      begin

        QryProdutos.Open;
        QryProdutos.Insert;
        qryProdutosPD_CODIGOAUXILIAR.asString := IntToStr(QryProdutosPD_IDPRODUTO.Value);
        qryProdutosPD_DATACAD.Value := Date;


      end;
       dbdescricao.SetFocus;
       HabilitaControle(F_CadProdutos);
       DesabilitaBotoes(F_CadProdutos);
end;

procedure TF_CadProdutos.Act_AlterarExecute(Sender: TObject);
begin
with DMPrincipal do
     begin
       qryProdutos.Edit;
       qryProdutosPD_DATAALT.Value := date;
       qryProdutosPD_VLR_VENDA_ANT.Value := qryProdutosPD_VLR_VENDA.Value;

      end;
     HabilitaControle(F_CadProdutos);
     DesabilitaBotoes(F_CadProdutos);
end;

procedure TF_CadProdutos.Act_CancelarExecute(Sender: TObject);
begin
   botaonovo.Enabled     := True;
   botaoAlterar.Enabled  := True;
   botaoCancelar.Enabled := False;
   botaoSalvar.Enabled   := False;

    with DMPrincipal do
     begin
       qryProdutos.Cancel;
     end;
end;

procedure TF_CadProdutos.FormShow(Sender: TObject);
begin
   with DMPrincipal do
   begin
    QryProdutos.Open;

    end;


  HabilitaBotoes(F_CadProdutos);
  DesabilitaControle(F_CadProdutos);

end;

procedure TF_CadProdutos.Act_SalvarExecute(Sender: TObject);

begin
if Application.MessageBox('Deseja realmente salvar o cadastro deste Estoque?',
      'Comando', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin

        with DMPrincipal do
         begin
            qryProdutosPD_VLR_VENDA.AsBCD := qryProdutosC_PD_VLR_VENDA.AsBCD;

            qryProdutos.Post;
            qryProdutos.ApplyUpdates;
            qryProdutos.Refresh;
         end;

          HabilitaBotoes(F_CadProdutos);
          DesabilitaControle(F_CadProdutos);

    end;

end;

procedure TF_CadProdutos.dbcodigoauxiliarEnter(Sender: TObject);
begin
   dbcodigoauxiliar.Color := clSkyBlue;
end;

procedure TF_CadProdutos.dbcodigoauxiliarExit(Sender: TObject);
begin
  dbcodigoauxiliar.Color := $00897358;
end;

procedure TF_CadProdutos.dbdescricaoEnter(Sender: TObject);
begin
  dbdescricao.Color := clSkyBlue;
end;

procedure TF_CadProdutos.dbdescricaoExit(Sender: TObject);
begin
    dbdescricao.Color := $00897358;
end;

procedure TF_CadProdutos.dbeanEnter(Sender: TObject);
begin
  dbean.Color := clSkyBlue;

end;

procedure TF_CadProdutos.dbeanExit(Sender: TObject);
begin
  dbean.Color := $00897358;
end;

procedure TF_CadProdutos.dbncmEnter(Sender: TObject);
begin
  dbncm.Color := clSkyBlue;
end;

procedure TF_CadProdutos.dbncmExit(Sender: TObject);
begin
   dbncm.Color := $00897358;
end;

procedure TF_CadProdutos.dboxEnter(Sender: TObject);
begin
   dbox.Color := clSkyBlue;
end;

procedure TF_CadProdutos.dboxExit(Sender: TObject);
begin
  dbox.Color := $00897358;
end;

procedure TF_CadProdutos.dbperclucroEnter(Sender: TObject);
begin
   dbperclucro.Color := clSkyBlue;
end;

procedure TF_CadProdutos.dbperclucroExit(Sender: TObject);
begin
   dbperclucro.Color := $00897358;
end;

procedure TF_CadProdutos.dbreferenciaEnter(Sender: TObject);
begin
  dbreferencia.Color := clskyblue;

end;

procedure TF_CadProdutos.dbreferenciaExit(Sender: TObject);
begin
   dbreferencia.Color := $00897358;
end;

procedure TF_CadProdutos.dbunidadeEnter(Sender: TObject);
begin
  dbunidade.Color := clSkyBlue;
end;

procedure TF_CadProdutos.dbunidadeExit(Sender: TObject);
begin
  dbunidade.Color := $00897358;
end;

procedure TF_CadProdutos.dbvalorcustoEnter(Sender: TObject);
begin
  dbvalorcusto.Color := clSkyBlue;
end;

procedure TF_CadProdutos.dbvalorcustoExit(Sender: TObject);
begin
 dbvalorcusto.Color := $00897358;
end;

procedure TF_CadProdutos.Act_ConsultarProdutoExecute(Sender: TObject);
begin
 if Formexiste(F_ConsultaProdutos) = false then
      Begin
         F_ConsultaProdutos := TF_ConsultaProdutos.Create(Self);
      end
    else
    If Formexiste(F_ConsultaProdutos) = true then
      Begin
        F_ConsultaProdutos.BringToFront;
        F_ConsultaProdutos.SetFocus;
      end;
end;

procedure TF_CadProdutos.Act_ImprimirExecute(Sender: TObject);
begin
 with DMPrincipal do
     begin

       QryRelProdutos.Close;
       QryRelProdutos.SQL.Text := 'select pd_idproduto,pd_descricao,pd_vlr_venda, pd_unidade, pd_referencia from produtos order by PD_DESCRICAO';
       QryRelProdutos.Open;
     end;

    frxReport1.LoadFromFile('C:\Misterbeauty\Relatorios\RelProdutos01.fr3');
    frxReport1.ShowReport();
end;

end.
