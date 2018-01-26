unit UAccueil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, jpeg;

type
  TFAccueil = class(TForm)
    Image1: TImage;
    StaticText1: TStaticText;
    ProgressBar1: TProgressBar;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FAccueil: TFAccueil;

implementation

uses UConnect;

{$R *.dfm}

procedure TFAccueil.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Position:=ProgressBar1.Position+1;
if(ProgressBar1.Position=ProgressBar1.Max)
then
  begin
  FAccueil.Hide;
    FConnect.Show;
    ProgressBar1.Position:=0;
    Timer1.Enabled:=false;
  end;
end;

end.
