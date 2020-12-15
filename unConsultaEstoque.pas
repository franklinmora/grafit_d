unit unConsultaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ActnList, StdCtrls, Buttons, ACBrBase, ACBrEnterTab,
  ExtCtrls, DB;

type
  Tf_ConsultaEstoque = class(TForm)
    Panel1: TPanel;
    ActionList1: TActionList;
    ACBrEnterTab1: TACBrEnterTab;
    Cbpesq: TComboBox;
    EditCon: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    act_Pesquisar: TAction;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    dsEstoque: TDataSource;
    procedure act_PesquisarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CbpesqChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_ConsultaEstoque: Tf_ConsultaEstoque;

implementation

uses unDMPrincipal;

{$R *.dfm}

procedure Tf_ConsultaEstoque.act_PesquisarExecute(Sender: TObject);
begin
  try
          if CbPesq.ItemIndex = 0 then
        Begin
          With DMPrincipal do
            begin

              qryEstoque.Close;
              qryEstoque.sql.text:='Select * from estoque';
              qryEstoque.Open;
            end;
        end;
         if CbPesq.ItemIndex = 1 then
        Begin
          With DMPrincipal do
            begin


                qryEstoque.Close;
                qryEstoque.SQL.text :=  'select * from estoque where codigo = '+ QuotedStr(EditCon.Text);
                qryEstoque.Open;

            end;
        end;
         if CbPesq.ItemIndex = 2 then
        Begin
          With DMPrincipal do
            begin

              qryEstoque.close;
              qryEstoque.SQL.text :='select * from  estoque where descricao like '+#39+'%'+editcon.Text+'%'+#39;
              qryEstoque.Open;

            end;
        end;
         if CbPesq.ItemIndex = 3 then
        Begin
          With DMPrincipal do
            begin

              qryEstoque.close;
              qryEstoque.SQL.text :='select * from  estoque where referencia like '+#39+'%'+editcon.Text+'%'+#39;
              qryEstoque.Open;

            end;
        end;
     Label3.Caption := IntToStr(DMPrincipal.qryEstoque.RecordCount);
  except
    Application.MessageBox('N�o foi possivel localizar os dados',
      'Application.Title', MB_OK + MB_ICONWARNING);

  end;
end;

procedure Tf_ConsultaEstoque.CbpesqChange(Sender: TObject);
begin
  EditCon.Clear;
  EditCon.SetFocus;
end;

procedure Tf_ConsultaEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
