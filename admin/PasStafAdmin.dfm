object frStaffAdmin: TfrStaffAdmin
  Left = 355
  Top = 147
  Width = 938
  Height = 374
  Caption = 'Staff'
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
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 22
    Height = 13
    Caption = 'User'
  end
  object Label2: TLabel
    Left = 32
    Top = 224
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label3: TLabel
    Left = 32
    Top = 72
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label4: TLabel
    Left = 32
    Top = 112
    Width = 17
    Height = 13
    Caption = 'NIP'
  end
  object Label5: TLabel
    Left = 32
    Top = 152
    Width = 39
    Height = 13
    Caption = 'Jabatan'
  end
  object Label6: TLabel
    Left = 32
    Top = 192
    Width = 24
    Height = 13
    Caption = 'Divisi'
  end
  object cbxUser: TComboBox
    Left = 112
    Top = 24
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object cbxDiv: TComboBox
    Left = 112
    Top = 184
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
  end
  object edtNama: TEdit
    Left = 112
    Top = 64
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object edtNip: TEdit
    Left = 112
    Top = 104
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object edtJabatan: TEdit
    Left = 112
    Top = 144
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object cbxSts: TComboBox
    Left = 112
    Top = 224
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'aktif'
      'nonaktif')
  end
  object btnSimpan: TButton
    Left = 48
    Top = 264
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = btnSimpanClick
  end
  object btnUbah: TButton
    Left = 144
    Top = 264
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 7
    OnClick = btnUbahClick
  end
  object DBGrid1: TDBGrid
    Left = 296
    Top = 24
    Width = 601
    Height = 233
    DataSource = modulDB.DsStafAdminView
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object btnHapus: TButton
    Left = 296
    Top = 264
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
  end
  object edtId: TEdit
    Left = 256
    Top = 24
    Width = 33
    Height = 21
    TabOrder = 10
  end
  object btnStaffRep: TButton
    Left = 384
    Top = 264
    Width = 75
    Height = 25
    Caption = 'btnStaffRep'
    TabOrder = 11
    OnClick = btnStaffRepClick
  end
end
