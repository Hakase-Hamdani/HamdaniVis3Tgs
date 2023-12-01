object Form1: TForm1
  Left = 421
  Top = 188
  Width = 1027
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 208
    Top = 16
    Width = 769
    Height = 385
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 16
    Width = 193
    Height = 113
    Caption = 'Profil'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 30
      Height = 13
      Caption = 'USER:'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 35
      Height = 13
      Caption = 'STAFF:'
    end
    object edtIdUser: TEdit
      Left = 64
      Top = 24
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object edtStaff: TEdit
      Left = 64
      Top = 56
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
  end
end
