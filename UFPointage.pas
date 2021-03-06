unit UFPointage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, Mask, DBCtrls, OButton,
  ComCtrls, Menus;

type
  TFPointage = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    EdNum: TEdit;
    EdDatFin: TEdit;
    EdHeurFin: TEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    StaticText5: TStaticText;
    EdRech: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    EdNom: TDBEdit;
    EdPren: TDBEdit;
    EdTel: TDBEdit;
    Panel2: TPanel;
    OfficeButton1: TOfficeButton;
    OfficeButton2: TOfficeButton;
    OfficeButton3: TOfficeButton;
    EdDate: TEdit;
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Quitter1: TMenuItem;
    Gerer1: TMenuItem;
    Pointage1: TMenuItem;
    Bulletindepaye1: TMenuItem;
    N1: TMenuItem;
    Fermer1: TMenuItem;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    EdDatDeb: TMaskEdit;
    EdHeurDeb: TMaskEdit;
    EdNumEmp: TDBEdit;
    StaticText11: TStaticText;
    procedure EdRechChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EdNumKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure Quitter1Click(Sender: TObject);
    procedure Fermer1Click(Sender: TObject);
    procedure Pointage1Click(Sender: TObject);
    procedure Bulletindepaye1Click(Sender: TObject);
    procedure EdDatDebExit(Sender: TObject);
    procedure EdHeurDebExit(Sender: TObject);
    procedure OfficeButton1Click(Sender: TObject);
    procedure OfficeButton2Click(Sender: TObject);
    procedure OfficeButton3Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  FPointage: TFPointage;
  i:integer;

implementation

uses UDmEmploye, Uemploye, UChangMotPass, UBulletin, Math;

{$R *.dfm}

procedure TFPointage.EdRechChange(Sender: TObject);
begin
 with dmemploye.QRechEmploye  do
begin
close;
  ParamByName('p1').AsString:='%'+EdRech.Text+'%';
open;
end;
end;

procedure TFPointage.Button1Click(Sender: TObject);
begin
femploye.show;
end;

procedure TFPointage.EdNumKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8])
 then key :=#0;
end;

procedure TFPointage.FormActivate(Sender: TObject);
begin
DmEmploye.TPointage.Open;
 EdDate.Text:=DateToStr(date);
 i:=DmEmploye.TPointage.RecordCount+1;
end;

procedure TFPointage.Quitter1Click(Sender: TObject);
begin
FUpdatePass.ShowModal;
end;

procedure TFPointage.Fermer1Click(Sender: TObject);
begin
 if MessageDlg('Voulez vous vraiment quittez l''application?', mtconfirmation,[mbYes,mbNo],0)=mrYes
then
begin
application.Terminate;
end;
end;

procedure TFPointage.Pointage1Click(Sender: TObject);
begin
FEmploye.ShowModal;
end;

procedure TFPointage.Bulletindepaye1Click(Sender: TObject);
begin
FBulletin.ShowModal;
end;

procedure TFPointage.EdDatDebExit(Sender: TObject);
begin
EdDatFin.Text:=datetostr(strtodate(EdDatDeb.Text)+1);
end;

procedure TFPointage.EdHeurDebExit(Sender: TObject);
begin
EdHeurFin.Text:=EdHeurDeb.Text;
end;

procedure TFPointage.OfficeButton1Click(Sender: TObject);
begin

DmEmploye.TPointage.Insert;
EdNum.Text:=inttostr(i);

EdNum.Text:='';
EdDatDeb.Text:='';
EdHeurDeb.Text:='';
EdDatFin.Text:='';
EdHeurFin.Text:='';
EdRech.Text:='';
EdNom.Text:='';
EdPren.Text:='';
EdTel.Text:='';

end;

procedure TFPointage.OfficeButton2Click(Sender: TObject);
begin
if EdNum.Text=''
then
begin
ShowMessage('Veuillez renseignez le numero');
EdNum.SetFocus;
exit;
end;
if EdDatDeb.Text=''
then
begin
ShowMessage('Veuillez renseignez la date de debut');
EdDatDeb.SetFocus;
exit;
end;
if EdHeurDeb.Text=''
then
begin
 ShowMessage('Veuillez renseignez l''heure de debut');
 EdHeurDeb.SetFocus;
 Exit;
 end;
 if EdDatFin.Text=''
 then
 begin
 ShowMessage('Veuillez renseignez la date fin');
 EdDatFin.SetFocus;
 end;
 If EdHeurFin.Text=''
 then
 begin
 ShowMessage('Veuillez renseignez l''heure de fin');
 Exit;
 end;
 if ednom.text=''
 then
 begin
 ShowMessage('Veuillez choisir l''employ�');
 EdRech.SetFocus;
 exit;
 end;
 with DmEmploye do
 begin
 TCalendrier.Open;
  IF not TCalendrier.Locate('DATECAL',EdDate.Text,[])
      then
  begin
 TCalendrier.Insert;
 TCalendrier.Fields[0].Value:=strtodate(EdDate.Text);
 TCalendrier.Post;
 TCalendrier.Refresh;
  end;
 TPointage.Open;
 IF TPointage.Locate('idpoint',EdNum.Text,[])
      then
ShowMessage('Ce numero existe deja')
  else begin
 TPointage.Insert;
TPointage.Fields[0].Value:=strtoint(EdNum.Text);
TPointage.Fields[1].Value:=strtodate(EdDate.Text);
TPointage.Fields[2].Value:=(EdNumEmp.Text);
TPointage.Fields[3].Value:=strtodate(EdDate.Text);
TPointage.Fields[4].Value:=strtodate(EdDatDeb.Text);
TPointage.Fields[5].Value:=strtodate(EdDatFin.Text);
TPointage.Post;
TPointage.Refresh;
ShowMessage('Pointage de '+EdNom.Text+' '+EdPren.Text+' bien enregistr�');
end;
end;
end;

procedure TFPointage.OfficeButton3Click(Sender: TObject);
begin

EdNum.Text:='';
EdDatDeb.Text:='';
EdHeurDeb.Text:='';
EdDatFin.Text:='';
EdHeurFin.Text:='';
EdRech.Text:='';
EdNom.Text:='';
EdPren.Text:='';
EdTel.Text:='';
end;

end.
