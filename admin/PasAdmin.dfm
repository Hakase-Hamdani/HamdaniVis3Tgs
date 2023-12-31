object frAdmin: TfrAdmin
  Left = 86
  Top = 182
  Width = 1357
  Height = 489
  Caption = 'ADMIN'
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
      Left = 24
      Top = 128
      Width = 129
      Height = 25
      Caption = 'CETAK DATA STAFF/USER'
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
    Width = 185
    Height = 105
    Caption = 'Profil'
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 26
      Height = 13
      Caption = 'USER'
    end
    object Label2: TLabel
      Left = 48
      Top = 24
      Width = 4
      Height = 13
      Caption = ':'
    end
    object edtIdUser: TEdit
      Left = 56
      Top = 24
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object edtStaffNama: TEdit
      Left = 56
      Top = 56
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGrid
    Left = 232
    Top = 16
    Width = 1105
    Height = 385
    DataSource = modulDB.DsSuratList
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'penerbit_nama'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'penerbit_NIP'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'penerbit_jabatan'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_divisi'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tujuan_alamat'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tujuan_orang'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tujuan_institusi'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'klasifikasi_nama'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_berlaku'
        Visible = True
      end>
  end
  object Button6: TButton
    Left = 276
    Top = 408
    Width = 157
    Height = 25
    Caption = 'TAMBAH SURAT KELUAR'
    TabOrder = 4
    OnClick = Button6Click
  end
  object edtOutRep: TButton
    Left = 440
    Top = 408
    Width = 145
    Height = 25
    Caption = 'REPORT SURAT KELUAR'
    TabOrder = 5
    OnClick = edtOutRepClick
  end
end
