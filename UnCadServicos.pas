unit UnCadServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Mask, DBCtrls, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, ComCtrls, Buttons, JvExButtons, JvBitBtn, ExtCtrls,
  JvComponentBase, JvEnterTab, frxClass, frxDBSet, frxExportPDF;

type
  TF_CadServicos = class(TForm)
    Panel1: TPanel;
    BotaoNovo: TJvBitBtn;
    BotaoAlterar: TJvBitBtn;
    BotaoCancelar: TJvBitBtn;
    BotaoSalvar: TJvBitBtn;
    botaoFechar: TJvBitBtn;
    PageControl1: TPageControl;
    TabCon: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    TabDados: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    acoesCadServico: TActionList;
    ActNovoServico: TAction;
    ActAlterarServico: TAction;
    ActCancelarServico: TAction;
    ActSalvarServico: TAction;
    ActFechar: TAction;
    JvEnterAsTab1: TJvEnterAsTab;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    Act_Imprimir: TAction;
    JvBitBtn1: TJvBitBtn;
    frxReport1: TfrxReport;
    frxDBServicos: TfrxDBDataset;
    EdtCon: TEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActCancelarServicoExecute(Sender: TObject);
    procedure ActSalvarServicoExecute(Sender: TObject);
    procedure ActAlterarServicoExecute(Sender: TObject);
    procedure HabilitaBotoes(Sender: TObject);
    procedure DesabilitaBotoes(Sender: TObject);
    procedure HabilitaControle(Sender: TObject);
    procedure DesabilitaControle(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActNovoServicoExecute(Sender: TObject);
    procedure Act_ImprimirExecute(Sender: TObject);
    procedure EdtConChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadServicos: TF_CadServicos;

implementation

uses UnDMPrincipal, UnPrincipal, UnCadClientes;

{$R *.dfm}
procedure TF_CadServicos.HabilitaBotoes(Sender: TObject);
begin
    BotaoNovo.Enabled := True;
    BotaoAlterar.Enabled := True;
    BotaoCancelar.Enabled := False;
    BotaoSalvar.Enabled := False;
end;

procedure TF_CadServicos.DesabilitaBotoes(Sender: TObject);
begin
    BotaoNovo.Enabled := False;
    BotaoAlterar.Enabled := False;
    BotaoCancelar.Enabled := True;
    botaoSalvar.Enabled := True;

end;

procedure TF_CadServicos.HabilitaControle(Sender: TObject);
begin
    BotaoCancelar.Enabled := True;
    BotaoSalvar.Enabled := True;
end;
procedure TF_CadServicos.DesabilitaControle(Sender: TObject);
begin
    BotaoCancelar.Enabled := False;
    BotaoSalvar.Enabled := False;
end;
procedure TF_CadServicos.EdtConChange(Sender: TObject);
begin
   with DMPrincipal do
     begin
      qryServico.Close;
      qryServico.sql.Text := 'select * from Servicos where SERV_SERVICO STARTING WITH '+ QuotedStr(EdtCon.Text);
      qryServico.Open;
     end;

end;

procedure TF_CadServicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    F_CadServicos := nil;
    Action := caFree;
end;

procedure TF_CadServicos.ActCancelarServicoExecute(Sender: TObject);
begin
   botaonovo.Enabled     := True;
   botaoAlterar.Enabled  := True;
   botaoCancelar.Enabled := False;
   botaoSalvar.Enabled   := False;

    with DMPrincipal do
     begin
        qryServico.Cancel;
     end;
end;

procedure TF_CadServicos.ActSalvarServicoExecute(Sender: TObject);
begin
if Application.MessageBox('Deseja realmente salvar o cadastro deste Serviço?',
      'Comando', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin

        with DMPrincipal do
         begin

           qryServico.Post;
           qryServico.ApplyUpdates;

          end;

          PageControl1.Enabled := True;
          PageControl1.ActivePage := Tabcon;
          HabilitaBotoes(F_CadServicos);
          DesabilitaControle(F_CadServicos);

//          DBEdit2.SetFocus;

    end;
end;

procedure TF_CadServicos.ActAlterarServicoExecute(Sender: TObject);
begin
with DMPrincipal do
     begin
       qryServico.Edit;

     end;
     PageControl1.ActivePage := TabDados;
     DBEdit2.SetFocus;
     HabilitaControle(F_CadServicos);
     DesabilitaBotoes(F_CadServicos);
end;

procedure TF_CadServicos.ActFecharExecute(Sender: TObject);
begin
   F_CadServicos.Close;
end;

procedure TF_CadServicos.FormShow(Sender: TObject);
begin
with DMPrincipal do
  begin
    qryServico.Open;
  end;
   PageControl1.ActivePage := Tabcon;
   HabilitaBotoes(F_CadServicos);
   DesabilitaControle(F_CadServicos);
end;

procedure TF_CadServicos.ActNovoServicoExecute(Sender: TObject);
begin
  with DMPrincipal do
      begin
         qryServico.IndexFieldNames := 'SERV_IDSERVICO';
         qryServico.Last;
         QryServico.Insert;
         qryServicoSERV_DATACAD.Value := Date;



      end;
     PageControl1.ActivePage := TabDados;
     HabilitaControle(F_CadServicos);
     DesabilitaBotoes(F_CadServicos);
end;

procedure TF_CadServicos.Act_ImprimirExecute(Sender: TObject);
begin
  with DMPrincipal do
     begin

       qryServico.Close;
       qryServico.sql.Text := 'select * from Servicos order by Serv_Servico';
       qryServico.Open;
     end;

    frxReport1.LoadFromFile('C:\Misterbeauty\Relatorios\RelServicos.fr3');
    frxReport1.ShowReport();
end;

end.
