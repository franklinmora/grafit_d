unit UnCadProfissionais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvComponentBase, JvEnterTab, ActnList, ExtCtrls, StdCtrls,
  Buttons, JvExButtons, JvBitBtn, Mask, DBCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, ComCtrls, JvExComCtrls, JvComCtrls, JvExStdCtrls,
  JvEdit, JvDBSearchEdit;

type
  TF_CadProfissionais = class(TForm)
    Panel1: TPanel;
    ActionList1: TActionList;
    JvEnterAsTab1: TJvEnterAsTab;
    botaoNovo: TJvBitBtn;
    botaoAlterar: TJvBitBtn;
    botaoCancelar: TJvBitBtn;
    botaoSalvar: TJvBitBtn;
    botaoFechar: TJvBitBtn;
    ActAlterar: TAction;
    ActCancelar: TAction;
    ActSalvar: TAction;
    ActFechar: TAction;
    ActNovo: TAction;
    DBNavigator1: TDBNavigator;
    JvPageControl1: TJvPageControl;
    TabCon: TTabSheet;
    TabDados: TTabSheet;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    JvDBGrid1: TJvDBGrid;
    Label4: TLabel;
    EdtCon: TEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActFecharExecute(Sender: TObject);
    procedure HabilitaBotoes(Sender: TObject);
    procedure DesabilitaBotoes(Sender: TObject);
    procedure HabilitaControle(Sender: TObject);
    procedure DesabilitaControle(Sender: TObject);
    procedure ActNovoExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtConChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadProfissionais: TF_CadProfissionais;

implementation

uses UnDMPrincipal, UnCadServicos;

{$R *.dfm}
procedure TF_CadProfissionais.HabilitaBotoes(Sender: TObject);
begin
    BotaoNovo.Enabled := True;
    BotaoAlterar.Enabled := True;
    BotaoCancelar.Enabled := False;
    BotaoSalvar.Enabled := False;
end;

procedure TF_CadProfissionais.DesabilitaBotoes(Sender: TObject);
begin
    BotaoNovo.Enabled := False;
    BotaoAlterar.Enabled := False;
    BotaoCancelar.Enabled := True;
    botaoSalvar.Enabled := True;

end;

procedure TF_CadProfissionais.HabilitaControle(Sender: TObject);
begin
    BotaoCancelar.Enabled := True;
    BotaoSalvar.Enabled := True;
end;
procedure TF_CadProfissionais.DesabilitaControle(Sender: TObject);
begin
    BotaoCancelar.Enabled := False;
    BotaoSalvar.Enabled := False;
end;
procedure TF_CadProfissionais.EdtConChange(Sender: TObject);
begin
  with DMPrincipal do
   begin
      qryProfissionais.Close;
      qryProfissionais.sql.text := 'select * from Profissionais where PROFIS_NOME STARTING WITH '+ QuotedStr(EdtCon.Text);
      qryProfissionais.Open;
   end;

end;

procedure TF_CadProfissionais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   F_CadProfissionais := nil;
    Action := caFree;
end;

procedure TF_CadProfissionais.ActFecharExecute(Sender: TObject);
begin
  F_CadProfissionais.Close;
end;

procedure TF_CadProfissionais.ActNovoExecute(Sender: TObject);
 begin
    with DMPrincipal do
      begin

         qryProfissionais.Active := True;
         QryProfissionais.Insert;
         qryProfissionaisPROFIS_DATACAD.Value := Date;


      end;
       JvPageControl1.Enabled := True;
       JvPageControl1.ActivePage := TabDados;
       HabilitaControle(F_CadProfissionais);
       DesabilitaBotoes(F_CadProfissionais);
end;

procedure TF_CadProfissionais.ActAlterarExecute(Sender: TObject);
begin
with DMPrincipal do
     begin
       qryProfissionais.Edit;

     end;
     JvPageControl1.Enabled := True;
     JvPageControl1.ActivePage := TabDados;
     DBEdit2.SetFocus;
     HabilitaControle(F_CadServicos);
     DesabilitaBotoes(F_CadServicos);
end;

procedure TF_CadProfissionais.ActCancelarExecute(Sender: TObject);
begin
   botaonovo.Enabled     := True;
   botaoAlterar.Enabled  := True;
   botaoCancelar.Enabled := False;
   botaoSalvar.Enabled   := False;

    with DMPrincipal do
     begin
        qryProfissionais.Cancel;
     end;
end;

procedure TF_CadProfissionais.ActSalvarExecute(Sender: TObject);
begin
if Application.MessageBox('Deseja realmente salvar o cadastro deste Profissional?',
      'Comando', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin

        with DMPrincipal do
         begin
            qryProfissionais.Post;
            qryProfissionais.ApplyUpdates;
          end;

    end;
     HabilitaBotoes(F_CadProfissionais);
     DesabilitaControle(F_CadProfissionais);

end;

procedure TF_CadProfissionais.FormShow(Sender: TObject);
begin
   DMPrincipal.QryProfissionais.Open;
   JvPageControl1.ActivePage := TabCon;
   HabilitaBotoes(F_CadProfissionais);
   DesabilitaControle(F_CadProfissionais);
end;

end.
