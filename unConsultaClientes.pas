unit unConsultaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ActnList;

type
  TF_ConsultaClientes = class(TForm)
    CbPesq: TComboBox;
    Editcon: TEdit;
    DBGrid1: TDBGrid;
    botaoPesq: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ActionList1: TActionList;
    act_Pesquisar: TAction;
    Label3: TLabel;
    procedure CbPesqChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure act_PesquisarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ConsultaClientes: TF_ConsultaClientes;

implementation

{$R *.dfm}

uses
  undmprincipal;

procedure TF_ConsultaClientes.act_PesquisarExecute(Sender: TObject);
begin
  try
      if CbPesq.ItemIndex = 0 then
    Begin
      With DMPrincipal do
        begin

          qryClientes.Close;
          qryClientes.sql.text:='Select * from clientes';
          qryClientes.Open;
        end;
    end;
     if CbPesq.ItemIndex = 1 then
    Begin
      With DMPrincipal do
        begin


            qryClientes.Close;
            qryclientes.SQL.text :=  'select * from CLIENTES where CLI_IDCLIENTE = '+ QuotedStr(EditCon.Text);
            qryClientes.Open;

        end;
    end;
     if CbPesq.ItemIndex = 2 then
    Begin
      With DMPrincipal do
        begin

          qryClientes.close;
          qryclientes.SQL.text :='select * from  clientes where cli_nome like '+#39+'%'+editcon.Text+'%'+#39;
          qryClientes.Open;

        end;
    end;
     Label2.Caption := IntToStr(DMPrincipal.qryClientes.RecordCount);
  except
    Application.MessageBox('N�o foi possivel localizar os dados',
      'Application.Title', MB_OK + MB_ICONWARNING);

  end;
end;

procedure TF_ConsultaClientes.CbPesqChange(Sender: TObject);
begin
  Editcon.Clear;
  Editcon.SetFocus;
end;

procedure TF_ConsultaClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
