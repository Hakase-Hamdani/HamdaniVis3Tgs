object frTujuanAdmin: TfrTujuanAdmin
  Left = 144
  Top = 143
  Width = 928
  Height = 480
  Caption = 'Administrasi Tujuan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label2: TLabel
    Left = 40
    Top = 56
    Width = 30
    Height = 13
    Caption = 'Orang'
  end
  object Label3: TLabel
    Left = 40
    Top = 96
    Width = 39
    Height = 13
    Caption = 'Jabatan'
  end
  object Label4: TLabel
    Left = 40
    Top = 136
    Width = 38
    Height = 13
    Caption = 'Institusi'
  end
  object Label5: TLabel
    Left = 40
    Top = 176
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object edtAlamat: TEdit
    Left = 104
    Top = 16
    Width = 209
    Height = 21
    TabOrder = 0
  end
  object edtOrang: TEdit
    Left = 104
    Top = 56
    Width = 209
    Height = 21
    TabOrder = 1
  end
  object edtJabatan: TEdit
    Left = 104
    Top = 96
    Width = 209
    Height = 21
    TabOrder = 2
  end
  object edtInstitusi: TEdit
    Left = 104
    Top = 136
    Width = 209
    Height = 21
    TabOrder = 3
  end
  object edtSts: TEdit
    Left = 104
    Top = 176
    Width = 209
    Height = 21
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 336
    Top = 16
    Width = 545
    Height = 177
    DataSource = modulDB.DsTujuanAdmin
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object btsSimpan: TButton
    Left = 40
    Top = 208
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = btsSimpanClick
  end
  object btnUbah: TButton
    Left = 136
    Top = 208
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 7
    OnClick = btnUbahClick
  end
  object btnHapus: TButton
    Left = 336
    Top = 208
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = btnHapusClick
  end
  object edtId: TEdit
    Left = 224
    Top = 208
    Width = 73
    Height = 21
    TabOrder = 9
    Visible = False
  end
end
