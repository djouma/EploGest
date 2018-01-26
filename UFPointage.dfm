object FPointage: TFPointage
  Left = 338
  Top = 135
  Width = 660
  Height = 430
  Caption = 'POINTAGE DES EMPLOYES'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 8
    Top = 64
    Width = 633
    Height = 305
    Caption = 'Information sur un employ'#233
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object GroupBox3: TGroupBox
      Left = 240
      Top = 24
      Width = 385
      Height = 273
      Caption = 'Rechercher un employ'#233
      TabOrder = 0
      object StaticText5: TStaticText
        Left = 16
        Top = 18
        Width = 193
        Height = 21
        Caption = 'Rechercher par Nom ou Prenom'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EdRech: TEdit
        Left = 16
        Top = 41
        Width = 185
        Height = 24
        TabOrder = 1
        OnChange = EdRechChange
      end
      object Button1: TButton
        Left = 208
        Top = 40
        Width = 41
        Height = 25
        Caption = '...'
        TabOrder = 2
        OnClick = Button1Click
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 72
        Width = 369
        Height = 89
        DataSource = DmEmploye.DsQRechEmploye
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -12
        TitleFont.Name = 'Century Gothic'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'IDEMP'
            Title.Caption = 'N'#176
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEMP'
            Title.Caption = 'Nom'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRENOMEMP'
            Title.Caption = 'Prenom'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEMP'
            Title.Caption = 'Telephone'
            Width = 78
            Visible = True
          end>
      end
      object StaticText6: TStaticText
        Left = 41
        Top = 216
        Width = 32
        Height = 21
        Caption = 'Nom'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object StaticText7: TStaticText
        Left = 168
        Top = 212
        Width = 49
        Height = 21
        Caption = 'Prenom'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object StaticText8: TStaticText
        Left = 288
        Top = 216
        Width = 66
        Height = 21
        Caption = 'Telephone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object EdNom: TDBEdit
        Left = 8
        Top = 235
        Width = 121
        Height = 25
        DataField = 'NOMEMP'
        DataSource = DmEmploye.DsQRechEmploye
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object EdPren: TDBEdit
        Left = 144
        Top = 235
        Width = 105
        Height = 25
        DataField = 'PRENOMEMP'
        DataSource = DmEmploye.DsQRechEmploye
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object EdTel: TDBEdit
        Left = 262
        Top = 234
        Width = 113
        Height = 25
        DataField = 'TELEMP'
        DataSource = DmEmploye.DsQRechEmploye
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object EdNumEmp: TDBEdit
        Left = 129
        Top = 186
        Width = 94
        Height = 25
        DataField = 'IDEMP'
        DataSource = DmEmploye.DsQRechEmploye
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object StaticText11: TStaticText
        Left = 144
        Top = 163
        Width = 71
        Height = 21
        Caption = 'N'#176' Employe'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
    end
    object Panel2: TPanel
      Left = 8
      Top = 240
      Width = 225
      Height = 57
      TabOrder = 1
      object OfficeButton1: TOfficeButton
        Left = 5
        Top = 16
        Width = 61
        Height = 25
        Caption = 'Ajouter'
        DownGlyph.Data = {
          1A020000424D1A0200000000000036000000280000000B0000000B0000000100
          200000000000E401000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080800000FFFF0000FFFF
          0000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFF
          0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFFFF00FFFFFF00FFFF
          FF00C0C0C000FF000000FFFF0000FFFF0000FFFFFF00FFFFFF00FFFF0000FFFF
          0000FFFF0000FFFFFF00FFFFFF00C0C0C00080800000FF000000FFFF0000FFFF
          FF00FFFFFF00FFFFFF00FFFF0000FFFF0000FFFFFF00FFFFFF00C0C0C000FF00
          0000FFFF0000FFFF0000FFFF0000FFFFFF00FFFF0000FFFF000080800000FFFF
          FF00FFFFFF00C0C0C000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
          0000FFFF0000FF000000FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFF0000FFFF
          0000FFFF000080800000FF000000FFFF0000C0C0C000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00C0C0C000C0C0C000FFFF0000FFFF000080800000C0C0C000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OffGlyph.Data = {
          1A020000424D1A0200000000000036000000280000000B0000000B0000000100
          200000000000E401000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000800000008000
          000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008000
          00008000000080800000FF0000008080000080000000FFFFFF00FFFFFF00FFFF
          FF00C0C0C000800000008000000080800000808000008080000080800000FF00
          000080000000FFFFFF00FFFFFF00C0C0C0008000000080000000FF0000008080
          000080800000808000008080000080000000FFFFFF00FFFFFF00808080008000
          000080000000800000008000000080800000808000008000000080000000FFFF
          FF00FFFFFF008080800080000000FF000000808000008000000080000000FF00
          00008000000080000000FFFFFF00FFFFFF00C0C0C00080808000808000008080
          000080800000800000008000000080000000C0C0C000FFFFFF00FFFFFF00FFFF
          FF00C0C0C0008080800080800000FF0000008000000080000000C0C0C000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000808080008080
          8000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        OnGlyph.Data = {
          1A020000424D1A0200000000000036000000280000000B0000000B0000000100
          200000000000E401000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000800000008000
          000080800000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008000
          00008000000080800000800000008080000080000000FFFFFF00FFFFFF00FFFF
          FF00C0C0C000800000008080000080800000FFFF0000FFFF0000808000008000
          000080000000FFFFFF00FFFFFF00C0C0C0008080000080800000FFFF0000FFFF
          FF00FFFF0000808000008000000080000000FFFFFF00FFFFFF00808080008000
          00008080000080800000FFFF0000FFFF0000808000008080000080000000FFFF
          FF00FFFFFF0080808000808000008080000080800000FFFF0000808000008080
          00008000000080800000FFFFFF00FFFFFF00C0C0C00080808000808000008080
          000080800000808000008000000080800000C0C0C000FFFFFF00FFFFFF00FFFF
          FF00C0C0C0008080800080800000800000008080000080000000C0C0C000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000808080008080
          8000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        RoundSize = 20
        Color = 13172735
        OnClick = OfficeButton1Click
      end
      object OfficeButton2: TOfficeButton
        Left = 78
        Top = 16
        Width = 58
        Height = 25
        Caption = 'Valider'
        DownGlyph.Data = {
          1A020000424D1A0200000000000036000000280000000B0000000B0000000100
          200000000000E401000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080800000FFFF0000FFFF
          0000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFF
          0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFFFF00FFFFFF00FFFF
          FF00C0C0C000FF000000FFFF0000FFFF0000FFFFFF00FFFFFF00FFFF0000FFFF
          0000FFFF0000FFFFFF00FFFFFF00C0C0C00080800000FF000000FFFF0000FFFF
          FF00FFFFFF00FFFFFF00FFFF0000FFFF0000FFFFFF00FFFFFF00C0C0C000FF00
          0000FFFF0000FFFF0000FFFF0000FFFFFF00FFFF0000FFFF000080800000FFFF
          FF00FFFFFF00C0C0C000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
          0000FFFF0000FF000000FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFF0000FFFF
          0000FFFF000080800000FF000000FFFF0000C0C0C000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00C0C0C000C0C0C000FFFF0000FFFF000080800000C0C0C000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OffGlyph.Data = {
          1A020000424D1A0200000000000036000000280000000B0000000B0000000100
          200000000000E401000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000800000008000
          000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008000
          00008000000080800000FF0000008080000080000000FFFFFF00FFFFFF00FFFF
          FF00C0C0C000800000008000000080800000808000008080000080800000FF00
          000080000000FFFFFF00FFFFFF00C0C0C0008000000080000000FF0000008080
          000080800000808000008080000080000000FFFFFF00FFFFFF00808080008000
          000080000000800000008000000080800000808000008000000080000000FFFF
          FF00FFFFFF008080800080000000FF000000808000008000000080000000FF00
          00008000000080000000FFFFFF00FFFFFF00C0C0C00080808000808000008080
          000080800000800000008000000080000000C0C0C000FFFFFF00FFFFFF00FFFF
          FF00C0C0C0008080800080800000FF0000008000000080000000C0C0C000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000808080008080
          8000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        OnGlyph.Data = {
          1A020000424D1A0200000000000036000000280000000B0000000B0000000100
          200000000000E401000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000800000008000
          000080800000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008000
          00008000000080800000800000008080000080000000FFFFFF00FFFFFF00FFFF
          FF00C0C0C000800000008080000080800000FFFF0000FFFF0000808000008000
          000080000000FFFFFF00FFFFFF00C0C0C0008080000080800000FFFF0000FFFF
          FF00FFFF0000808000008000000080000000FFFFFF00FFFFFF00808080008000
          00008080000080800000FFFF0000FFFF0000808000008080000080000000FFFF
          FF00FFFFFF0080808000808000008080000080800000FFFF0000808000008080
          00008000000080800000FFFFFF00FFFFFF00C0C0C00080808000808000008080
          000080800000808000008000000080800000C0C0C000FFFFFF00FFFFFF00FFFF
          FF00C0C0C0008080800080800000800000008080000080000000C0C0C000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000808080008080
          8000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        RoundSize = 20
        Color = 13172735
        OnClick = OfficeButton2Click
      end
      object OfficeButton3: TOfficeButton
        Left = 147
        Top = 16
        Width = 61
        Height = 25
        Caption = 'Annuler'
        DownGlyph.Data = {
          1A020000424D1A0200000000000036000000280000000B0000000B0000000100
          200000000000E401000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080800000FFFF0000FFFF
          0000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFF
          0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFFFF00FFFFFF00FFFF
          FF00C0C0C000FF000000FFFF0000FFFF0000FFFFFF00FFFFFF00FFFF0000FFFF
          0000FFFF0000FFFFFF00FFFFFF00C0C0C00080800000FF000000FFFF0000FFFF
          FF00FFFFFF00FFFFFF00FFFF0000FFFF0000FFFFFF00FFFFFF00C0C0C000FF00
          0000FFFF0000FFFF0000FFFF0000FFFFFF00FFFF0000FFFF000080800000FFFF
          FF00FFFFFF00C0C0C000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
          0000FFFF0000FF000000FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFF0000FFFF
          0000FFFF000080800000FF000000FFFF0000C0C0C000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00C0C0C000C0C0C000FFFF0000FFFF000080800000C0C0C000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OffGlyph.Data = {
          1A020000424D1A0200000000000036000000280000000B0000000B0000000100
          200000000000E401000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000800000008000
          000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008000
          00008000000080800000FF0000008080000080000000FFFFFF00FFFFFF00FFFF
          FF00C0C0C000800000008000000080800000808000008080000080800000FF00
          000080000000FFFFFF00FFFFFF00C0C0C0008000000080000000FF0000008080
          000080800000808000008080000080000000FFFFFF00FFFFFF00808080008000
          000080000000800000008000000080800000808000008000000080000000FFFF
          FF00FFFFFF008080800080000000FF000000808000008000000080000000FF00
          00008000000080000000FFFFFF00FFFFFF00C0C0C00080808000808000008080
          000080800000800000008000000080000000C0C0C000FFFFFF00FFFFFF00FFFF
          FF00C0C0C0008080800080800000FF0000008000000080000000C0C0C000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000808080008080
          8000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        OnGlyph.Data = {
          1A020000424D1A0200000000000036000000280000000B0000000B0000000100
          200000000000E401000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000800000008000
          000080800000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008000
          00008000000080800000800000008080000080000000FFFFFF00FFFFFF00FFFF
          FF00C0C0C000800000008080000080800000FFFF0000FFFF0000808000008000
          000080000000FFFFFF00FFFFFF00C0C0C0008080000080800000FFFF0000FFFF
          FF00FFFF0000808000008000000080000000FFFFFF00FFFFFF00808080008000
          00008080000080800000FFFF0000FFFF0000808000008080000080000000FFFF
          FF00FFFFFF0080808000808000008080000080800000FFFF0000808000008080
          00008000000080800000FFFFFF00FFFFFF00C0C0C00080808000808000008080
          000080800000808000008000000080800000C0C0C000FFFFFF00FFFFFF00FFFF
          FF00C0C0C0008080800080800000800000008080000080000000C0C0C000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00080808000808080008080
          8000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        RoundSize = 20
        Color = 13172735
        OnClick = OfficeButton3Click
      end
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 625
    Height = 41
    Caption = 'Enregistrer un pointage'
    Color = clBackground
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 88
    Width = 225
    Height = 201
    Caption = 'Arriver de l'#39'employ'#233
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object StaticText1: TStaticText
      Left = 8
      Top = 29
      Width = 18
      Height = 21
      Caption = 'N'#176
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object StaticText2: TStaticText
      Left = 8
      Top = 57
      Width = 34
      Height = 21
      Caption = 'Date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object StaticText3: TStaticText
      Left = 8
      Top = 88
      Width = 74
      Height = 21
      Caption = 'Date Debut'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object StaticText4: TStaticText
      Left = 8
      Top = 142
      Width = 53
      Height = 21
      Caption = 'Date Fin'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object EdNum: TEdit
      Left = 96
      Top = 24
      Width = 121
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = EdNumKeyPress
    end
    object EdDatFin: TEdit
      Left = 96
      Top = 140
      Width = 113
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object EdHeurFin: TEdit
      Left = 96
      Top = 170
      Width = 65
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object EdDate: TEdit
      Left = 96
      Top = 52
      Width = 121
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object StaticText9: TStaticText
      Left = 8
      Top = 116
      Width = 79
      Height = 21
      Caption = 'Heure Debut'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object StaticText10: TStaticText
      Left = 8
      Top = 168
      Width = 58
      Height = 21
      Caption = 'Heure Fin'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object EdDatDeb: TMaskEdit
      Left = 96
      Top = 82
      Width = 120
      Height = 25
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 10
      Text = '  /  /    '
      OnExit = EdDatDebExit
    end
    object EdHeurDeb: TMaskEdit
      Left = 96
      Top = 113
      Width = 60
      Height = 25
      EditMask = '!90:00;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 11
      Text = '  :  '
      OnExit = EdHeurDebExit
    end
  end
  object MainMenu1: TMainMenu
    Left = 27
    Top = 16
    object Fichier1: TMenuItem
      Caption = 'Fichier'
      object Quitter1: TMenuItem
        Caption = 'Modifier password'
        OnClick = Quitter1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Fermer1: TMenuItem
        Caption = 'Fermer'
        OnClick = Fermer1Click
      end
    end
    object Gerer1: TMenuItem
      Caption = 'Gerer'
      object Pointage1: TMenuItem
        Caption = 'Employ'#233
        OnClick = Pointage1Click
      end
      object Bulletindepaye1: TMenuItem
        Caption = 'Bulletin de paye'
        OnClick = Bulletindepaye1Click
      end
    end
  end
end
