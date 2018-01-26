unit UConnect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OButton, ExtCtrls, StdCtrls, ComCtrls, jpeg;

type
  TFConnect = class(TForm)
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    EdLogin: TEdit;
    EdPassword: TEdit;
    Panel1: TPanel;
    OfficeButton1: TOfficeButton;
    BtConnecter: TOfficeButton;
    Image2: TImage;
    StMessage: TStatusBar;
    procedure OfficeButton1Click(Sender: TObject);
    procedure BtConnecterClick(Sender: TObject);
    procedure EdLoginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FConnect: TFConnect;

implementation

uses UDmEmploye, UFPointage;

{$R *.dfm}

procedure TFConnect.OfficeButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFConnect.BtConnecterClick(Sender: TObject);
begin
 if EdLogin.Text=''
   then
    begin
    StMessage.Panels[0].Text:='veuillez renseigner le login utilisateur';
    EdLogin.SetFocus;
   exit;
   end;
   if EdPassword.Text=''
   then
   begin
   StMessage.Panels[0].Text:='veuillez renseigner le password utilisateur';
   EdPassword.SetFocus;
    exit;
   end;
   dmemploye.TUser.Open;
   if not DmEmploye.TUser.Locate('UtilLogin',EdLogin.Text,[])
   then
    begin
      StMessage.Panels[0].Text:='Login incorrect,réessayer';
      EdLogin.Clear;
      EdLogin.SetFocus;
    exit;
    end;
    if not DmEmploye.TUser.Locate('UtilPassword',EdPassword.Text,[])
    then
    begin
      StMessage.Panels[0].Text:='Password incorrect,réessayer';
      EdPassword.Clear;
      EdPassword.SetFocus;
    exit;
    end;
    With DmEmploye
          do begin
    QUser.Close;
    QUser.SQL.Clear;
    QUser.SQL.Add('Select * from Utilisateur');
    QUser.SQL.Add('where UtilLogin= :p1 and UtilPassword= :p2');
    QUser.ParamByName('p1').AsString:=EdLogin.Text;
    QUser.ParamByName('p2').AsString:=EdPassword.Text;
    QUser.Open;
    if QUser.IsEmpty
    then
    StMessage.Panels[0].Text:=('Information d''identification incorrect, revoir la saisie')
        else
        begin
    FConnect.Hide;
    FPointage.ShowModal;
    end;
   end;
end;

procedure TFConnect.EdLoginKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY =vk_return
then
BtConnecterClick(self);
end;

procedure TFConnect.EdPasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY =vk_return
then
BtConnecterClick(self);
end;

end.
