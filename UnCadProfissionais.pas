unit unCadProfissionais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unCadPadrao, ActnList, StdCtrls, Buttons, ExtCtrls, ACBrBase,
  ACBrEnterTab, DB, Mask, DBCtrls, Grids, DBGrids, ComCtrls;

type
  TF_cadProfissionais = class(TF_cadPadrao)
    DBNavigator1: TDBNavigator;
    PageControl1: TPageControl;
    Tabcon: TTabSheet;
    TabDados: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    dsProfissionais: TDataSource;
    ACBrEnterTab1: TACBrEnterTab;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    dsCidade: TDataSource;
    procedure act_novoExecute(Sender: TObject);
    procedure act_salvarExecute(Sender: TObject);
    procedure act_CancelarExecute(Sender: TObject);
    procedure botaoAlterarClick(Sender: TObject);
    procedure botaoCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_cadProfissionais: TF_cadProfissionais;

implementation

{$R *.dfm}

uses
  undmprincipal;

procedure TF_cadProfissionais.act_CancelarExecute(Sender: TObject);
begin
  inherited;
   with dmprincipal do
    begin
      qryProfissionais.Cancel;
    end;
end;

procedure TF_cadProfissionais.act_novoExecute(Sender: TObject);
begin
  inherited;
   with dmprincipal do
   begin
     qryProfissionais.Open;
     qryProfissionais.Insert;
     qryProfissionaisPROFIS_DATACAD.Value := date;
     DBEdit2.SetFocus;
   end;
      HabilitaControle(F_cadProfissionais);
end;

procedure TF_cadProfissionais.act_salvarExecute(Sender: TObject);
begin
  inherited;
  try

   with DMPrincipal do
      begin
        qryProfissionais.Post;
        qryprofissionais.ApplyUpdates;
      end;
       HabilitaBotoes(F_CadProfissionais);
       DesabilitaControle(F_cadProfissionais);
   except

   Application.MessageBox('N�o foi possivel Salvar os dados',
     'Application.Title', MB_OK + MB_ICONWARNING);

  end;
end;

procedure TF_cadProfissionais.botaoAlterarClick(Sender: TObject);
begin
  inherited;
   with dmprincipal do
    begin
      qryProfissionais.Edit;
    end;

end;

procedure TF_cadProfissionais.botaoCancelarClick(Sender: TObject);
begin
  inherited;
    with dmprincipal do
      begin
        qryprofissionais.Cancel
      end;
end;

end.
