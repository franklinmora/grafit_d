unit unCadPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Buttons, ExtCtrls;

type
  TF_cadPadrao = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    ActionList1: TActionList;
    act_novo: TAction;
    act_alterar: TAction;
    act_cancelar: TAction;
    act_salvar: TAction;
    act_imprimir: TAction;
    act_fechar: TAction;
    ScrollBox1: TScrollBox;
    BitBtn5: TBitBtn;
    Function Formexiste(Nomejanela:TForm):boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_cadPadrao: TF_cadPadrao;

implementation

{$R *.dfm}

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

end.
