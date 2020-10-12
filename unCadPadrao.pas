unit unCadPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
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
    procedure act_fecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.act_fecharExecute(Sender: TObject);
begin
   Close;
end;

end.
