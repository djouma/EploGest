unit Uemploye;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OButton, ExtCtrls, DBCtrls, StdCtrls, Mask, jpeg, Menus;

type
  TFEmploye = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBNum: TDBEdit;
    Label2: TLabel;
    DBNom: TDBEdit;
    Label3: TLabel;
    DBPrenom: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBSexe: TDBEdit;
    Label6: TLabel;
    DBAdresse: TDBEdit;
    RgSexe: TDBRadioGroup;
    Panel2: TPanel;
    BtAjouter: TOfficeButton;
    BtValider: TOfficeButton;
    BtAnnuler: TOfficeButton;
    BtSupprimer: TOfficeButton;
    Image1: TImage;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Quitter1: TMenuItem;
    Gerer1: TMenuItem;
    Pointage1: TMenuItem;
    Bulletindepaye1: TMenuItem;
    procedure BtAjouterClick(Sender: TObject);
    procedure BtValiderClick(Sender: TObject);
    procedure BtAnnulerClick(Sender: TObject);
    procedure BtSupprimerClick(Sender: TObject);
    procedure DBNomKeyPress(Sender: TObject; var Key: Char);
    procedure Bulletindepaye1Click(Sender: TObject);
    procedure DBNumKeyPress(Sender: TObject; var Key: Char);
    procedure Pointage1Click(Sender: TObject);
    procedure Quitter1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FEmploye: TFEmploye;

implementation

uses UDmEmploye, UBulletin, UFPointage;

{$R *.dfm}

procedure TFEmploye.BtAjouterClick(Sender: TObject);
begin
DmEmploye.TEmploye.Insert;
DbNum.SetFocus;
BtAjouter.Enabled:=false;
BtAnnuler.Enabled:=true;
BtValider.enabled:=true;
BtSupprimer.Enabled:=false;
end;

procedure TFEmploye.BtValiderClick(Sender: TObject);
begin
 if DbNum.Text=' ' then
   begin
     ShowMessage('Veuillez entrer le matricule');
     DbNum.SetFocus;
   end
 else if DbNom.Text=' ' then
    begin
      ShowMessage('Veuillez entrer le nom');
      DbNom.SetFocus;
    end
 else if DbPrenom.Text=' ' then
     begin
       ShowMessage('Veuillez entrer le Prenom');
       DbPrenom.SetFocus;
     end
 else if RgSexe.ItemIndex=-1 then
      begin
        ShowMessage('Veuillez selectionner le sexe de l''etudiant');
        RgSexe.SetFocus;
      end
      else if
      DmEmploye.TEmploye2.Locate('IDEMP',DBNum.Text,[])
      then
      Begin
      ShowMessage('Ce matricule existe deja');
      DbNum.Clear;
      DbNum.SetFocus;
      end
  else
    begin
      DmEmploye.TEmploye.Post;
      ShowMessage('L''Employé '+DBNom.Text+' '+DbPrenom.Text+ ' est bien enregistre');
      BtAjouter.Enabled:=true;
      BtAnnuler.Enabled:=false;
      BtValider.Enabled:=false;
      BtSupprimer.Enabled:=true;
    end;
end;

procedure TFEmploye.BtAnnulerClick(Sender: TObject);
begin
DmEmploye.TEmploye.Cancel;
BtAjouter.Enabled:=true;
BtAnnuler.Enabled:=false;
BtValider.Enabled:=false;
BtSupprimer.Enabled:=true;
end;

procedure TFEmploye.BtSupprimerClick(Sender: TObject);
begin
if DmEmploye.TEmploye.IsEmpty then
 ShowMessage('Suppression impossible, aucun etudiant selectionne')
  else
   begin
if MessageDlg('Supprimer '+DbNom.Text + ' ' +DbPrenom.Text+ '?',mtConfirmation,[mbYes,mbNo],0)=mrYes
 then
   DmEmploye.TEmploye.Delete;
   end;
end;

procedure TFEmploye.DBNomKeyPress(Sender: TObject; var Key: Char);
begin
Key:=UpCase(key);
end;

procedure TFEmploye.Bulletindepaye1Click(Sender: TObject);
begin
 FBulletin.Show;
end;

procedure TFEmploye.DBNumKeyPress(Sender: TObject; var Key: Char);
begin
Key:=UpCase(key);
end;

procedure TFEmploye.Pointage1Click(Sender: TObject);
begin
FPointage.Show;
end;

procedure TFEmploye.Quitter1Click(Sender: TObject);
begin
close;
end;

end.
