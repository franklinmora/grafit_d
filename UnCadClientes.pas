unit unCadClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unCadPadrao, ActnList, StdCtrls, Buttons, ExtCtrls, ComCtrls, Mask,
  DBCtrls, ACBrBase, ACBrEnterTab, DB;

type
  TF_CadClientes = class(TF_cadPadrao)
    ACBrEnterTab1: TACBrEnterTab;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    botaoPesquisar: TBitBtn;
    botaoImprimir: TBitBtn;
    act_pesquisar: TAction;
    DBComboBox1: TDBComboBox;
    Label13: TLabel;
    procedure act_novoExecute(Sender: TObject);
    procedure act_salvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure act_CancelarExecute(Sender: TObject);
    procedure act_alterarExecute(Sender: TObject);
    procedure act_pesquisarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadClientes: TF_CadClientes;

implementation

{$R *.dfm}

uses undmprincipal, unConsultaClientes;




procedure TF_CadClientes.act_alterarExecute(Sender: TObject);
begin
  inherited;
 with DMPrincipal do
     begin
       qryClientes.Edit;
     end;
     HabilitaControle(F_CadClientes);
     Desabilitabotoes(F_CadClientes);
end;

procedure TF_CadClientes.act_CancelarExecute(Sender: TObject);
begin
  inherited;
 with dmprincipal do
    begin
      qryClientes.Cancel;
    end;
    HabilitaBotoes(F_CadClientes);
    DesabilitaControle(F_CadClientes);
end;

procedure TF_CadClientes.act_novoExecute(Sender: TObject);
begin
  inherited;
   with dmprincipal do
   begin
     qryClientes.Open;
     qryClientes.Insert;
     qryClientesCLI_DATACAD.Value := date;
     DBEdit2.SetFocus;
   end;
      HabilitaControle(F_CadClientes);
      Desabilitabotoes(F_CadClientes);

end;

procedure TF_CadClientes.act_pesquisarExecute(Sender: TObject);
begin
  inherited;
    if Formexiste(F_ConsultaClientes) = false then
      Begin
         F_ConsultaClientes := Tf_ConsultaClientes.Create(Self);
      end
    else
    If Formexiste(f_ConsultaClientes) = true then
      Begin
        f_ConsultaClientes.BringToFront;
        f_ConsultaClientes.SetFocus;
      end;
end;

procedure TF_CadClientes.act_salvarExecute(Sender: TObject);
begin
  inherited;


  try
    with DMPrincipal do
      begin
        qryClientes.Post;
        qryClientes.ApplyUpdates;
      end;
       HabilitaBotoes(F_CadClientes);
       DesabilitaControle(F_CadClientes);
   except

   Application.MessageBox('N�o foi possivel Salvar os dados',
     'Application.Title', MB_OK + MB_ICONWARNING);

  end;

end;

procedure TF_CadClientes.FormShow(Sender: TObject);
begin
  inherited;
    with dmprincipal do
    begin
      qryCidade.Active := true;
    end;
    HabilitaBotoes(F_CadClientes);
    DesabilitaControle(F_CadClientes);
end;

end.
