object DmEmploye: TDmEmploye
  OldCreateOrder = False
  Left = 473
  Top = 130
  Height = 382
  Width = 646
  object Database1: TDatabase
    AliasName = 'ODBC_EPLOFOT'
    Connected = True
    DatabaseName = 'EPLOFOT'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME='
      'USER NAME=sa'
      'ODBC DSN=ODBC_EPLOFOT'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'SQLQRYMODE='
      'LANGDRIVER='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'PASSWORD=12345')
    SessionName = 'Default'
    Left = 16
    Top = 16
  end
  object TUser: TTable
    Active = True
    DatabaseName = 'EPLOFOT'
    TableName = 'dbo.UTILISATEUR'
    Left = 80
    Top = 16
    object TUserUtilNum: TIntegerField
      FieldName = 'UtilNum'
      Required = True
    end
    object TUserUtilLogin: TStringField
      FieldName = 'UtilLogin'
      Required = True
      Size = 30
    end
    object TUserUtilPassword: TStringField
      FieldName = 'UtilPassword'
      Required = True
      Size = 30
    end
    object TUserUtilGroup: TStringField
      FieldName = 'UtilGroup'
      Required = True
      Size = 15
    end
  end
  object QUser: TQuery
    DatabaseName = 'EPLOFOT'
    Left = 128
    Top = 16
  end
  object TEmploye: TTable
    Active = True
    DatabaseName = 'EPLOFOT'
    TableName = 'dbo.EMPLOYE'
    Left = 184
    Top = 16
    object TEmployeIDEMP: TStringField
      FieldName = 'IDEMP'
      Required = True
      Size = 30
    end
    object TEmployeNOMEMP: TStringField
      FieldName = 'NOMEMP'
      Required = True
      Size = 30
    end
    object TEmployePRENOMEMP: TStringField
      FieldName = 'PRENOMEMP'
      Required = True
      Size = 30
    end
    object TEmployeSEXEEMP: TStringField
      FieldName = 'SEXEEMP'
      FixedChar = True
      Size = 1
    end
    object TEmployeTELEMP: TStringField
      FieldName = 'TELEMP'
      Required = True
      Size = 15
    end
    object TEmployeADREMP: TStringField
      FieldName = 'ADREMP'
      Size = 60
    end
    object TEmployeIDTYPEMP: TStringField
      FieldName = 'IDTYPEMP'
      Required = True
      Size = 8
    end
  end
  object DsTEmploye: TDataSource
    DataSet = TEmploye
    Left = 248
    Top = 16
  end
  object TEmploye2: TTable
    Active = True
    DatabaseName = 'EPLOFOT'
    TableName = 'dbo.EMPLOYE'
    Left = 152
    Top = 72
    object StringField1: TStringField
      FieldName = 'IDEMP'
      Required = True
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'NOMEMP'
      Required = True
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'PRENOMEMP'
      Required = True
      Size = 30
    end
    object StringField4: TStringField
      FieldName = 'SEXEEMP'
      FixedChar = True
      Size = 1
    end
    object StringField5: TStringField
      FieldName = 'TELEMP'
      Required = True
      Size = 15
    end
    object StringField6: TStringField
      FieldName = 'ADREMP'
      Size = 60
    end
  end
  object TPointage: TTable
    DatabaseName = 'EPLOFOT'
    TableName = 'dbo.POINTAGE'
    Left = 16
    Top = 72
    object TPointageIDPOINT: TIntegerField
      FieldName = 'IDPOINT'
      Required = True
    end
    object TPointageDATECAL: TDateTimeField
      FieldName = 'DATECAL'
      Required = True
    end
    object TPointageIDEMP: TStringField
      FieldName = 'IDEMP'
      Required = True
      Size = 30
    end
    object TPointageDATE: TDateTimeField
      FieldName = 'DATE'
      Required = True
    end
    object TPointageHEUREDEB: TDateTimeField
      FieldName = 'HEUREDEB'
      Required = True
    end
    object TPointageHEUREFIN: TDateTimeField
      FieldName = 'HEUREFIN'
      Required = True
    end
  end
  object DsTPointage: TDataSource
    DataSet = TPointage
    Left = 88
    Top = 72
  end
  object QRechEmploye: TQuery
    DatabaseName = 'EPLOFOT'
    SQL.Strings = (
      'Select *'
      'From Employe'
      'where NOMEMP like :p1 '
      ''
      'union'
      ''
      'Select *'
      'From Employe'
      'where PRENOMEMP like :p1;'
      '')
    Left = 224
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end>
  end
  object DsQRechEmploye: TDataSource
    DataSet = QRechEmploye
    Left = 176
    Top = 128
  end
  object TCalendrier: TTable
    DatabaseName = 'EPLOFOT'
    TableName = 'dbo.CALENDRIER'
    Left = 16
    Top = 128
    object TCalendrierDATECAL: TDateTimeField
      FieldName = 'DATECAL'
      Required = True
    end
  end
  object DsTCalendrier: TDataSource
    DataSet = TCalendrier
    Left = 80
    Top = 128
  end
  object TUtilisateur: TTable
    DatabaseName = 'EPLOFOT'
    TableName = 'dbo.UTILISATEUR'
    Left = 16
    Top = 176
  end
  object TTypeEmploye: TTable
    Active = True
    DatabaseName = 'EPLOFOT'
    TableName = 'dbo.TYPE_EMPLOYE'
    Left = 96
    Top = 176
  end
  object DsTTypeEmploye: TDataSource
    DataSet = TTypeEmploye
    Left = 184
    Top = 176
  end
  object QUpdatePass: TQuery
    DatabaseName = 'EPLOFOT'
    SQL.Strings = (
      'update utilisateur'
      'set UtilPassword =:p1'
      'where UtilNum =:p2;')
    Left = 272
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'p2'
        ParamType = ptUnknown
      end>
  end
  object QSalaire: TQuery
    DatabaseName = 'EPLOFOT'
    SQL.Strings = (
      ''
      'select E.idemp, E.nomemp,E.prenomemp,PRIMEforf,'
      'sum(DATEDIFF(DAY,heuredeb,HEUREFIN))as NbreJr,'
      'sum(DATEDIFF(DAY,heuredeb,HEUREFIN))* PRIMEforf as MontantPaye'
      'FROM POINTAGE P,EMPLOYE E,PRIME_FORFETAIRE PR,TYPE_EMPLOYE T'
      'where E.idemp=P.IDEMP'
      'and E.IDTYPEMP=T.IDTYPEMP'
      'and PR.IDTYPEMP=T.IDTYPEMP'
      'and heuredeb between :d1 AND :d2'
      'group by E.idemp, E.nomemp,E.prenomemp,PRIMEforf')
    Left = 312
    Top = 24
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'd2'
        ParamType = ptUnknown
      end>
  end
  object DsQSalaire: TDataSource
    DataSet = QSalaire
    Left = 304
    Top = 72
  end
  object TBulletin: TTable
    DatabaseName = 'EPLOFOT'
    TableName = 'dbo.BULLETIN'
    Left = 280
    Top = 184
    object TBulletinIDBULL: TIntegerField
      FieldName = 'IDBULL'
    end
    object TBulletinIDEMP: TStringField
      FieldName = 'IDEMP'
      Required = True
      Size = 30
    end
    object TBulletinDATECAL: TDateTimeField
      FieldName = 'DATECAL'
      Required = True
    end
    object TBulletinLIBBULL: TStringField
      FieldName = 'LIBBULL'
      Required = True
      Size = 30
    end
    object TBulletinSALAIRE: TFloatField
      FieldName = 'SALAIRE'
      Required = True
    end
  end
  object DsTBulletin: TDataSource
    DataSet = TBulletin
    Left = 344
    Top = 184
  end
end
