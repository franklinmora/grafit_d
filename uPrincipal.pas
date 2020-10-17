unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, Menus, ComCtrls, ToolWin, ImgList;

type
  Tf_Principal = class(TForm)
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    StatusBar1: TStatusBar;
    Cadastro1: TMenuItem;
    act_Clientes: TAction;
    act_Servicos: TAction;
    act_Profissionais: TAction;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ImageList1: TImageList;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    act_Sair: TAction;
    act_caixa: TAction;
    act_Relatorios: TAction;
    act_Ordens: TAction;
    act_Estoque: TAction;
    procedure act_SairExecute(Sender: TObject);
    procedure act_ClientesExecute(Sender: TObject);
    procedure act_ProfissionaisExecute(Sender: TObject);
    procedure act_OrdensExecute(Sender: TObject);
    procedure act_EstoqueExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Function Formexiste(Nomejanela:TForm):boolean;
  end;

var
  f_Principal: Tf_Principal;

implementation

uses unCadClientes, unCadProfissionais, unOrdens, unCadEstoque;

{$R *.dfm}

Function TF_Principal.Formexiste(Nomejanela:TForm):boolean;
var
I : integer;
begin
  Formexiste := false;
   for i := 0 to componentcount - 1 do
    if Components[i] is TForm then
    if TForm(Components[i])= nomejanela then
      Formexiste := true;
end;

procedure Tf_Principal.act_ClientesExecute(Sender: TObject);
begin
    if Formexiste(F_CadClientes) = false then
      Begin
         F_CadClientes := TF_CadClientes.Create(Self);
      end
    else
    If Formexiste(F_CadClientes) = true then
      Begin
        F_CadClientes.BringToFront;
        F_CadClientes.SetFocus;
      end;

end;

procedure Tf_Principal.act_EstoqueExecute(Sender: TObject);
begin
    if Formexiste(F_CadEstoque) = false then
      Begin
         F_CadEstoque := TF_CadEstoque.Create(Self);
      end
    else
    If Formexiste(F_Ordens) = true then
      Begin
        F_CadEstoque.BringToFront;
        F_CadEstoque.SetFocus;
      end;
end;

procedure Tf_Principal.act_OrdensExecute(Sender: TObject);
begin
   if Formexiste(F_Ordens) = false then
      Begin
         F_Ordens := TF_Ordens.Create(Self);
      end
    else
    If Formexiste(F_Ordens) = true then
      Begin
        F_Ordens.BringToFront;
        F_Ordens.SetFocus;
      end;
end;

procedure Tf_Principal.act_ProfissionaisExecute(Sender: TObject);
begin
      if Formexiste(F_CadProfissionais) = false then
      Begin
         F_CadProfissionais := TF_CadProfissionais.Create(Self);
      end
    else
    If Formexiste(F_CadProfissionais) = true then
      Begin
        F_CadClientes.BringToFront;
        F_CadClientes.SetFocus;
      end;
end;

procedure Tf_Principal.act_SairExecute(Sender: TObject);
begin
  Application.Terminate;
end;

end.
