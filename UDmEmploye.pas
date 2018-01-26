unit UDmEmploye;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDmEmploye = class(TDataModule)
    Database1: TDatabase;
    TUser: TTable;
    QUser: TQuery;
    TEmploye: TTable;
    DsTEmploye: TDataSource;
    TEmployeIDEMP: TStringField;
    TEmployeNOMEMP: TStringField;
    TEmployePRENOMEMP: TStringField;
    TEmployeSEXEEMP: TStringField;
    TEmployeTELEMP: TStringField;
    TEmployeADREMP: TStringField;
    TEmploye2: TTable;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    TPointage: TTable;
    DsTPointage: TDataSource;
    TPointageIDPOINT: TIntegerField;
    TPointageDATECAL: TDateTimeField;
    TPointageIDEMP: TStringField;
    TPointageDATE: TDateTimeField;
    TPointageHEUREDEB: TDateTimeField;
    TPointageHEUREFIN: TDateTimeField;
    QRechEmploye: TQuery;
    DsQRechEmploye: TDataSource;
    TCalendrier: TTable;
    DsTCalendrier: TDataSource;
    TCalendrierDATECAL: TDateTimeField;
    TUserUtilNum: TIntegerField;
    TUserUtilLogin: TStringField;
    TUserUtilPassword: TStringField;
    TUserUtilGroup: TStringField;
    TUtilisateur: TTable;
    TEmployeIDTYPEMP: TStringField;
    TTypeEmploye: TTable;
    DsTTypeEmploye: TDataSource;
    QUpdatePass: TQuery;
    QSalaire: TQuery;
    DsQSalaire: TDataSource;
    TBulletin: TTable;
    DsTBulletin: TDataSource;
    TBulletinIDBULL: TIntegerField;
    TBulletinIDEMP: TStringField;
    TBulletinDATECAL: TDateTimeField;
    TBulletinLIBBULL: TStringField;
    TBulletinSALAIRE: TFloatField;
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  DmEmploye: TDmEmploye;

implementation

{$R *.dfm}

end.
