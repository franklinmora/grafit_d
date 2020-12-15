unit unCadEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unCadPadrao, ActnList, StdCtrls, Buttons, ExtCtrls, DB, Mask, DBCtrls;

type
  TF_cadEstoque = class(TF_cadPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsEstoque: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    act_Pesquisar: TAction;
    botaoPesquisar: TBitBtn;
    DBComboBox1: TDBComboBox;
    procedure act_PesquisarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure act_alterarExecute(Sender: TObject);
    procedure act_novoExecute(Sender: TObject);
    procedure act_salvarExecute(Sender: TObject);
    procedure act_CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_cadEstoque: TF_cadEstoque;

implementation

{$R *.dfm}
uses
  undmprincipal, unConsultaEstoque;

procedure TF_cadEstoque.act_alterarExecute(Sender: TObject);
begin
  inherited;
   with dmprincipal do
    begin
      qryEstoque.Edit
    end;
    HabilitaControle(F_cadEstoque);
    Desabilitabotoes(F_cadEstoque);
end;

procedure TF_cadEstoque.act_CancelarExecute(Sender: TObject);
begin
  inherited;
   with dmprincipal do
     begin
       qryEstoque.Cancel;
     end;
     HabilitaBotoes(F_cadEstoque);
     DesabilitaControle(F_cadEstoque);
end;

procedure TF_cadEstoque.act_novoExecute(Sender: TObject);
begin
  inherited;
   with dmprincipal do
     begin
       qryEstoque.Open;
       qryEstoque.Insert;

     end;
     HabilitaControle(F_cadEstoque);
     Desabilitabotoes(F_cadEstoque);
end;

procedure TF_cadEstoque.act_PesquisarExecute(Sender: TObject);
begin
  inherited;
   if Formexiste(F_ConsultaEstoque) = false then
      Begin
         F_ConsultaEstoque := TF_ConsultaEstoque.Create(Self);
      end
    else
    If Formexiste(F_ConsultaEstoque) = true then
      Begin
        F_cadEstoque.BringToFront;
        F_cadEstoque.SetFocus;
      end;
end;
procedure TF_cadEstoque.act_salvarExecute(Sender: TObject);
begin
  inherited;
    try

   with DMPrincipal do
      begin
        qryEstoque.Post;
        qryEstoque.ApplyUpdates;
      end;
       HabilitaBotoes(F_CadEstoque);
       DesabilitaControle(F_cadEstoque);
   except

   Application.MessageBox('Não foi possivel Salvar os dados',
     'Application.Title', MB_OK + MB_ICONWARNING);

  end;
end;

procedure TF_cadEstoque.FormShow(Sender: TObject);
begin
  inherited;
   HabilitaBotoes(F_cadEstoque);
   DesabilitaControle(F_cadEstoque);
end;

end.
