object frAdmin: TfrAdmin
  Left = 635
  Top = 163
  Width = 492
  Height = 510
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
    Top = 136
    Width = 185
    Height = 313
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
    end
    object Button3: TButton
      Left = 32
      Top = 96
      Width = 113
      Height = 25
      Caption = 'DIVISI'
      TabOrder = 2
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
    Left = 246
    Top = 136
    Width = 185
    Height = 313
    Caption = 'Administrasi Surat'
    TabOrder = 1
    object Button4: TButton
      Left = 36
      Top = 32
      Width = 113
      Height = 25
      Caption = 'TUJUAN'
      TabOrder = 0
    end
    object Button5: TButton
      Left = 36
      Top = 64
      Width = 113
      Height = 25
      Caption = 'KLASIFIKASI'
      TabOrder = 1
    end
    object Button6: TButton
      Left = 36
      Top = 96
      Width = 113
      Height = 25
      Caption = 'SURAT KELUAR'
      TabOrder = 2
    end
    object Button8: TButton
      Left = 28
      Top = 128
      Width = 129
      Height = 25
      Caption = 'CETAK DAFTAR SURAT'
      TabOrder = 3
    end
  end
  object GroupBox4: TGroupBox
    Left = 40
    Top = 8
    Width = 393
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
end
