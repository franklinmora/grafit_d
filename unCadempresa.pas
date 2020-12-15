unit unCadempresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unCadPadrao, ActnList, StdCtrls, Buttons, ExtCtrls, DB, Mask, DBCtrls,
  ACBrBase, ACBrEnterTab;

type
  TF_cadEmpresa = class(TF_cadPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsEmpresa: TDataSource;
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
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    ACBrEnterTab1: TACBrEnterTab;
    procedure FormShow(Sender: TObject);
    procedure act_novoExecute(Sender: TObject);
    procedure botaoCancelarClick(Sender: TObject);
    procedure act_salvarExecute(Sender: TObject);
    procedure act_alterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_cadEmpresa: TF_cadEmpresa;

implementation

{$R *.dfm}

uses
  undmprincipal;

procedure TF_cadEmpresa.act_alterarExecute(Sender: TObject);
begin
  inherited;
 with dmprincipal do
     begin
       qryEmpresa.Edit;
     end;
     HabilitaControle(F_cadEmpresa);
     Desabilitabotoes(F_cadEmpresa);
end;

procedure TF_cadEmpresa.act_novoExecute(Sender: TObject);
begin
  inherited;
   with dmprincipal do
     begin
       qryempresa.Insert;
       qryEmpresaDATACAD.Value := date;

     end;
       habilitacontrole(f_cadempresa);
       desabilitaBotoes(F_cadEmpresa);
end;


procedure TF_cadEmpresa.act_salvarExecute(Sender: TObject);
begin
  inherited;
  try

   with DMPrincipal do
      begin
        qryProfissionais.Post;
        qryprofissionais.ApplyUpdates;
      end;
       HabilitaBotoes(F_cadEmpresa);
       DesabilitaControle(F_cadEmpresa);
   except

   Application.MessageBox('N�o foi possivel Salvar os dados',
     'Application.Title', MB_OK + MB_ICONWARNING);

  end;
end;

procedure TF_cadEmpresa.botaoCancelarClick(Sender: TObject);
begin
  inherited;
   with dmprincipal do
     begin
       qryEmpresa.Cancel;
     end;
     HabilitaBotoes(F_cadEmpresa);
     DesabilitaControle(F_cadEmpresa);
end;

procedure TF_cadEmpresa.FormShow(Sender: TObject);
begin
  inherited;
   DMPrincipal.qryEmpresa.Open;
   habilitabotoes(f_cadempresa);
   desabilitaControle(f_cadEmpresa);
end;

end.
