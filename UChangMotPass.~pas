unit UChangMotPass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OButton, ExtCtrls, StdCtrls;

type
  TFUpdatePass = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdAncien: TEdit;
    EdNouv: TEdit;
    EdComf: TEdit;
    Panel1: TPanel;
    BtAnnuler: TOfficeButton;
    BtValider: TOfficeButton;
    Panel2: TPanel;
    procedure BtAnnulerClick(Sender: TObject);
    procedure BtValiderClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FUpdatePass: TFUpdatePass;

implementation

uses UDmPressing, UConnexion;

{$R *.dfm}

procedure TFUpdatePass.BtAnnulerClick(Sender: TObject);
begin
EdAncien.Clear;
EdNouv.Clear;
EdComf.Clear;
EdAncien.SetFocus;
end;

procedure TFUpdatePass.BtValiderClick(Sender: TObject);
var stnum,stMotpass: string;
begin
 with DmPressing do
 begin
      stnum:=Tuser.Fields[0].Value;
      stMotpass:=Tuser.Fields[7].Value;
 if EdAncien.Text=''
 then
 begin
    ShowMessage('Veuillez saisir l''ancien mot de passe');
    EdAncien.SetFocus;
    exit;
 end;
 if EdAncien.Text<>stMotpass
 then
 begin
    ShowMessage('Votre ancien mot de passe est incorrect');
    EdAncien.Clear;
    EdAncien.SetFocus;
    exit;
 end;
    if EdNouv.Text=''
 then
begin
    ShowMessage('Veuillez saisir le nouveau mot de passe');
    EdNouv.SetFocus;
    exit;
 end;
 if EdComf.Text=''
 then
begin
    ShowMessage('Veuillez saisir le mot de passe de confirmation');
    EdComf.SetFocus;
    exit;
 end;
   if EdComf.Text<>EdNouv.Text
   then
   begin
   ShowMessage('le mot de passe est incorrect');
   EdComf.Clear;
   EdComf.SetFocus;
   exit;
   end;
   QUpdatePass.Close;
   QUpdatePass.ParamByName('p1').AsString:=EdComf.Text;
  QUpdatePass.ParamByName('p2').AsString:=stnum;
  QUpdatePass.Prepare;
  QUpdatePass.ExecSQL;
  ShowMessage('Mot de passe modifier avec succes');
  BtAnnulerClick(self);
  close;
  end;
end;

end.
