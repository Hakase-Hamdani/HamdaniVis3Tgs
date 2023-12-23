object frRegUser: TfrRegUser
  Left = 218
  Top = 115
  Width = 1333
  Height = 480
  Caption = 'Regular User'
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
    Width = 1081
    Height = 385
    DataSource = modulDB.DsSuratList
    TabOrder = 0
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
        FieldName = 'penerbit_jabatan'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_divisi'
        Width = 150
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
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tujuan_institusi'
        Width = 150
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
    object edtStaffNama: TEdit
      Left = 64
      Top = 56
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 144
    Width = 185
    Height = 137
    Caption = 'GroupBox2'
    TabOrder = 2
    object btnTujuan: TButton
      Left = 32
      Top = 24
      Width = 121
      Height = 25
      Caption = 'TAMBAHKAN TUJUAN'
      TabOrder = 0
      OnClick = btnTujuanClick
    end
    object btnTambahSurat: TButton
      Left = 32
      Top = 56
      Width = 121
      Height = 25
      Caption = 'TAMBAH SURAT KELUAR'
      TabOrder = 1
      OnClick = btnTambahSuratClick
    end
    object btnCetak: TButton
      Left = 32
      Top = 88
      Width = 121
      Height = 25
      Caption = 'CETAK SURAT'
      TabOrder = 2
    end
  end
end
