unit UnCadClientes;

interface

uses
 {$IFDEF Delphi6_UP} Types, Variants, VarConv, {$ELSE} Windows,{$ENDIF}
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvComponentBase, JvEnterTab,
  ActnList, Mask, DBCtrls, JvExStdCtrls, JvCombobox, JvDBControls,
  frxClass, frxDBSet, DB, DBClient, SimpleDS, JvDBCombobox, JvExMask,
  JvToolEdit, ComCtrls, JvgPage, JvExExtCtrls, JvExtComponent, JvPanel,
  JvDBCheckBox, Menus, JvMenus, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvEdit,
  JvDBSearchEdit, TeEngine, TeeProcs, Chart, DBChart, Series, GanttCh, ACBrBase,
  ACBrValidador;

type
  TF_CadCliente = class(TForm)
    Panel1: TPanel;
    botaoNovo: TBitBtn;
    botaoAlterar: TBitBtn;
    botaoCancelar: TBitBtn;
    botaoConsultar: TBitBtn;
    botaoFechar: TBitBtn;
    botaoSalvar: TBitBtn;
    JvDBNavigator1: TJvDBNavigator;
    botaoImprimir: TBitBtn;
    JvgPageControl1: TJvgPageControl;
    TabDados: TTabSheet;
    TabDiagnostico: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dbcodigo: TDBEdit;
    dbdatacad: TDBEdit;
    dbnome: TDBEdit;
    dbendereco: TDBEdit;
    dbnumero: TDBEdit;
    dbbairro: TDBEdit;
    dbemail: TDBEdit;
    dbtelefone: TDBEdit;
    dbcelular1: TDBEdit;
    dbcelular2: TDBEdit;
    dbcbuf: TDBComboBox;
    DBComboBox1: TDBComboBox;
    JvEnterAsTab1: TJvEnterAsTab;
    ActionList1: TActionList;
    ActNovo: TAction;
    ActAlterar: TAction;
    ActCancelar: TAction;
    ActConsultar: TAction;
    ActFechar: TAction;
    ActSalvar: TAction;
    ActImprimir: TAction;
    DBfacebook: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    JvDBComboBox3: TJvDBComboBox;
    JvDBComboBox4: TJvDBComboBox;
    JvDBComboBox5: TJvDBComboBox;
    Label17: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    JvDBComboBox6: TJvDBComboBox;
    JvDBComboBox7: TJvDBComboBox;
    JvDBComboBox8: TJvDBComboBox;
    Label18: TLabel;
    Label19: TLabel;
    JvPanel1: TJvPanel;
    JvPanel2: TJvPanel;
    JvPanel3: TJvPanel;
    JvDBCheckBox1: TJvDBCheckBox;
    JvDBCheckBox2: TJvDBCheckBox;
    JvDBCheckBox10: TJvDBCheckBox;
    JvDBCheckBox11: TJvDBCheckBox;
    JvDBCheckBox12: TJvDBCheckBox;
    JvDBCheckBox13: TJvDBCheckBox;
    JvDBCheckBox14: TJvDBCheckBox;
    JvDBCheckBox15: TJvDBCheckBox;
    JvDBCheckBox4: TJvDBCheckBox;
    JvDBCheckBox3: TJvDBCheckBox;
    JvDBCheckBox5: TJvDBCheckBox;
    JvDBCheckBox6: TJvDBCheckBox;
    JvDBCheckBox7: TJvDBCheckBox;
    JvDBCheckBox8: TJvDBCheckBox;
    JvDBCheckBox9: TJvDBCheckBox;
    Label16: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    DBText1: TDBText;
    DBCodAux: TDBEdit;
    DBCBEstadoCivil: TDBComboBox;
    DBCBSexo: TDBComboBox;
    TabServicosUtil: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    DBText2: TDBText;
    DBIndicadopor: TDBEdit;
    Label27: TLabel;
    frxReport1: TfrxReport;
    DBLCProfissao: TDBLookupComboBox;
    Label28: TLabel;
    DBNacionalidade: TDBEdit;
    Label29: TLabel;
    frxDBClientes: TfrxDBDataset;
    dbcodcid: TDBEdit;
    DBLCBCidades: TDBLookupComboBox;
    Label30: TLabel;
    DBCodProfissao: TDBEdit;
    Label31: TLabel;
    DBCPF: TDBEdit;
    Label26: TLabel;
    ACBrValidador1: TACBrValidador;
    Function Formexiste(Nomejanela:TForm):boolean;
    procedure HabilitaBotoes(Sender: TObject);
    procedure DesabilitaBotoes(Sender: TObject);
    procedure HabilitaControle(Sender: TObject);
    procedure DesabilitaControle(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActNovoExecute(Sender: TObject);
    procedure ActConsultarExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBCPFExit(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadCliente: TF_CadCliente;

implementation

uses UnPrincipal, UnDMPrincipal, UnCadServicos, UnConsultaCliente,
  UnCadAgenda;

{$R *.dfm}



Function TF_CadCliente.Formexiste(Nomejanela:TForm):boolean;
var
I : integer;
begin
  Formexiste := false;
   for i := 0 to componentcount - 1 do
    if Components[i] is TForm then
    if TForm(Components[i])= nomejanela then
      Formexiste := true;
end;



procedure TF_CadCliente.HabilitaBotoes(Sender: TObject);
begin
    BotaoNovo.Enabled := True;
    BotaoAlterar.Enabled := True;
    BotaoCancelar.Enabled := False;
    BotaoSalvar.Enabled := False;
end;

procedure TF_CadCliente.DBCPFExit(Sender: TObject);
begin
   ACBrValidador1.Documento := dbcpf.Text ;
  if ACBrValidador1.Validar then
     dbnome.SetFocus
  else
     ShowMessage(ACBrValidador1.MsgErro);
     DBnome.SetFocus;
end;


procedure TF_CadCliente.DesabilitaBotoes(Sender: TObject);
begin
    BotaoNovo.Enabled := False;
    BotaoAlterar.Enabled := False;
    BotaoCancelar.Enabled := True;
    botaoSalvar.Enabled := True;

end;

procedure TF_CadCliente.HabilitaControle(Sender: TObject);
begin
    BotaoCancelar.Enabled := True;
    BotaoSalvar.Enabled := True;
end;
procedure TF_CadCliente.DesabilitaControle(Sender: TObject);
begin
    BotaoCancelar.Enabled := False;
    BotaoSalvar.Enabled := False;
end;
procedure TF_CadCliente.ActFecharExecute(Sender: TObject);
begin
   F_CadCliente.Close;
end;

procedure TF_CadCliente.FormShow(Sender: TObject);
begin
  with DMPrincipal do
  begin
    QryCidades.Open;
    QryCidades.IndexFieldNames := 'NOME';
    QryProfissoes.Open;
    QryCliente.Open;

    QryServicosUtilizados.Open;
    QryServicosMUtilizados.Open;
  end;
   

    JvgPageControl1.ActivePage := TabDados;

   HabilitaBotoes(F_CadCliente);
   DesabilitaControle(F_CadCliente);
end;

procedure TF_CadCliente.ActNovoExecute(Sender: TObject);
 begin
    with DMPrincipal do
      begin

        QryCliente.Open;
        QryCliente.Insert;
        qryClienteCLI_DATACAD.Value := Date;

      end;
        JvgPageControl1.ActivePage := TabDados;
        JvgPageControl1.Enabled := True;
        dbnome.SetFocus;
       HabilitaControle(F_CadCliente);
       DesabilitaBotoes(F_CadCliente);
end;

procedure TF_CadCliente.ActConsultarExecute(Sender: TObject);
begin
 if Formexiste(F_ConsultaCliente) = false then
      Begin
         F_ConsultaCliente := TF_ConsultaCliente.Create(Self);
      end
    else
    If Formexiste(F_ConsultaCliente) = true then
      Begin
        F_ConsultaCliente.BringToFront;
        F_ConsultaCliente.SetFocus;
      end;
end;

procedure TF_CadCliente.ActAlterarExecute(Sender: TObject);
begin
with DMPrincipal do
     begin
       qryCliente.Edit;
       JvgPageControl1.ActivePage := TabDados;
     end;

     dbnome.SetFocus;
     HabilitaControle(F_CadCliente);
     DesabilitaBotoes(F_CadCliente);
end;

procedure TF_CadCliente.ActCancelarExecute(Sender: TObject);
begin
   botaonovo.Enabled     := True;
   botaoAlterar.Enabled  := True;
   botaoCancelar.Enabled := False;
   botaoSalvar.Enabled   := False;

    with DMPrincipal do
     begin
       qryCliente.Cancel;
     end;
end;

procedure TF_CadCliente.ActSalvarExecute(Sender: TObject);
begin
if Application.MessageBox('Deseja realmente salvar o cadastro deste Cliente?',
      'Comando', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin

        with DMPrincipal do
         begin



            qryCliente.Post;
            qryCliente.ApplyUpdates;
            qryCliente.Refresh;
          end;

          HabilitaBotoes(F_CadCliente);
          DesabilitaControle(F_CadCliente);

    end;
end;

procedure TF_CadCliente.ActImprimirExecute(Sender: TObject);
begin
   with DMPrincipal do
     begin

       qryCliente.Close;
       qryCliente.sql.Text := 'select * from CLIENTE order by CLI_NOME';
       qryCliente.Open;
     end;

    frxReport1.LoadFromFile('C:\Misterbeauty\Relatorios\RelCliente.fr3');
    frxReport1.ShowReport();
end;

procedure TF_CadCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

    Action := caFree;
end;

end.
