unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, Menus, ComCtrls;

type
  Tf_Principal = class(TForm)
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    StatusBar1: TStatusBar;
    Cadastro1: TMenuItem;
    act_Clientes: TAction;
    act_Produtos: TAction;
    act_Servicos: TAction;
    act_Profissionais: TAction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_Principal: Tf_Principal;

implementation

{$R *.dfm}

end.
