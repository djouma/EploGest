program EploGest;

uses
  Forms,
  Uemploye in 'Uemploye.pas' {FEmploye},
  UDmEmploye in 'UDmEmploye.pas' {DmEmploye: TDataModule},
  UFPointage in 'UFPointage.pas' {FPointage},
  UAccueil in 'UAccueil.pas' {FAccueil},
  UConnect in 'UConnect.pas' {FConnect},
  UBulletin in 'UBulletin.pas' {FBulletin},
  UChangMotPass in 'UChangMotPass.pas' {FUpdatePass},
  UESalaire in 'UESalaire.pas' {QrSalaire: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFAccueil, FAccueil);
  Application.CreateForm(TFPointage, FPointage);
  Application.CreateForm(TFEmploye, FEmploye);
  Application.CreateForm(TFBulletin, FBulletin);
  Application.CreateForm(TDmEmploye, DmEmploye);
  Application.CreateForm(TFConnect, FConnect);
  Application.CreateForm(TFUpdatePass, FUpdatePass);
  Application.CreateForm(TQrSalaire, QrSalaire);
  Application.Run;
end.
