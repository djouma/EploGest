unit UBulletin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, OButton,
  ComCtrls;

type
  TFBulletin = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    BtImprimer: TOfficeButton;
    Date1: TDateTimePicker;
    Date2: TDateTimePicker;
    LbDate: TStaticText;
    DBGrid1: TDBGrid;
    procedure EdRechChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Date2CloseUp(Sender: TObject);
    procedure BtImprimerClick(Sender: TObject);
    //procedure Button1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  FBulletin: TFBulletin;

implementation

uses UDmEmploye, Uemploye, UESalaire;

{$R *.dfm}

procedure TFBulletin.EdRechChange(Sender: TObject);
begin {
with dmemploye.QRechEmploye  do
begin
close;
  ParamByName('p1').AsString:='%'+EdRech.Text+'%';
open;
end;
end;

procedure TFBulletin.Button1Click(Sender: TObject);
begin
femploye.show;
}
end;

procedure TFBulletin.FormShow(Sender: TObject);
begin
LbDate.Caption:='Salaire du '+datetostr(Date1.date) +' au'+datetostr(Date2.date);
end;

procedure TFBulletin.Date2CloseUp(Sender: TObject);
begin
 DmEmploye.QSalaire.Close;
 DmEmploye.QSalaire.ParamByName('d1').AsDateTime:=Date1.DateTime;
  DmEmploye.QSalaire.ParamByName('d2').AsDateTime:=Date2.DateTime;
   DmEmploye.QSalaire.Open;
end;

procedure TFBulletin.BtImprimerClick(Sender: TObject);
var i:integer;
begin
DmEmploye.QSalaire.Open;
DmEmploye.QSalaire.First;
for i:=0 to dmemploye.qsalaire.recordcount-1 do
begin

DmEmploye.TBulletin.Open;
DmEmploye.tbulletin.insert;
DmEmploye.TBulletin.Fields[1].Value:=DmEmploye.QSalaire.Fields[0].Value;
DmEmploye.TBulletin.Fields[2].Value:=date();
DmEmploye.TBulletin.Fields[3].Value:='Salaire du '+DateToStr(Date1.Date)+' au '+DateToStr(Date2.Date);
DmEmploye.TBulletin.Fields[4].Value:=DmEmploye.QSalaire.Fields[5].Value;
DmEmploye.TBulletin.Post;
DmEmploye.QSalaire.Next;
end;
ShowMessage('Etat des salaire bien enregist�');
DmEmploye.TBulletin.Refresh;
QrSalaire.QrTitre.Caption:='Etat des salaires du ' +DateToStr(date1.Date) +' au ' +DateToStr(date2.Date) ;
QrSalaire.Preview;
end;

end.
