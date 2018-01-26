object FBulletin: TFBulletin
  Left = 387
  Top = 0
  Width = 505
  Height = 444
  Caption = 'BULLETIN DE PAYE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 487
    Height = 73
    Caption = 'TRAITEMENT DES SALAIRES'
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
    Left = 0
    Top = 104
    Width = 489
    Height = 297
    Caption = 'Information sur l'#39#233'tat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 252
      Top = 25
      Width = 86
      Height = 17
      Caption = 'Seconde date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 4
      Top = 27
      Width = 85
      Height = 17
      Caption = 'Premiere date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
    end
    object BtImprimer: TOfficeButton
      Left = 161
      Top = 256
      Width = 160
      Height = 28
      Caption = 'Lancer le traitement'
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
      OnClick = BtImprimerClick
    end
    object Date1: TDateTimePicker
      Left = 100
      Top = 25
      Width = 109
      Height = 24
      Date = 42842.881976817130000000
      Time = 42842.881976817130000000
      TabOrder = 0
    end
    object Date2: TDateTimePicker
      Left = 344
      Top = 20
      Width = 113
      Height = 24
      Date = 42842.882125300920000000
      Time = 42842.882125300920000000
      TabOrder = 1
      OnCloseUp = Date2CloseUp
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 64
      Width = 465
      Height = 177
      DataSource = DmEmploye.DsQSalaire
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -12
      TitleFont.Name = 'Century Gothic'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'idemp'
          Title.Caption = 'N'#176' Employ'#233
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Century Gothic'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomemp'
          Title.Caption = 'Nom'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Century Gothic'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'prenomemp'
          Title.Caption = 'Prenom'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Century Gothic'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRIMEforf'
          Title.Caption = 'Prime'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Century Gothic'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NbreJr'
          Title.Caption = 'Nombre de jour'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Century Gothic'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MontantPaye'
          Title.Caption = 'Montant '#224' pay'#233
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Century Gothic'
          Title.Font.Style = [fsBold]
          Width = 99
          Visible = True
        end>
    end
  end
  object LbDate: TStaticText
    Left = 124
    Top = 80
    Width = 49
    Height = 20
    Caption = 'LbDate'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
