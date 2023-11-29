object frAdmin: TfrAdmin
  Left = 278
  Top = 123
  Width = 1029
  Height = 489
  Caption = 'ADMIN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 40
    Top = 120
    Width = 185
    Height = 177
    Caption = 'Administrasi Pengguna'
    TabOrder = 0
    object Button1: TButton
      Left = 32
      Top = 32
      Width = 113
      Height = 25
      Caption = 'USER'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 32
      Top = 64
      Width = 113
      Height = 25
      Caption = 'STAFF'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 32
      Top = 96
      Width = 113
      Height = 25
      Caption = 'DIVISI'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button9: TButton
      Left = 32
      Top = 128
      Width = 113
      Height = 25
      Caption = 'CETAK DATA STAFF'
      TabOrder = 3
      OnClick = Button9Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 38
    Top = 304
    Width = 185
    Height = 113
    Caption = 'Administrasi Surat'
    TabOrder = 1
    object Button4: TButton
      Left = 36
      Top = 32
      Width = 113
      Height = 25
      Caption = 'TUJUAN'
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 36
      Top = 64
      Width = 113
      Height = 25
      Caption = 'KLASIFIKASI'
      TabOrder = 1
      OnClick = Button5Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 40
    Top = 8
    Width = 217
    Height = 105
    Caption = 'Profil'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 31
      Height = 13
      Caption = 'STAFF'
    end
    object Label2: TLabel
      Left = 56
      Top = 24
      Width = 4
      Height = 13
      Caption = ':'
    end
    object Edit1: TEdit
      Left = 72
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 272
    Top = 16
    Width = 697
    Height = 385
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button6: TButton
    Left = 276
    Top = 408
    Width = 113
    Height = 25
    Caption = 'TAMBAH SURAT KELUAR'
    TabOrder = 4
  end
end
