object frDIvisiAdmin: TfrDIvisiAdmin
  Left = 474
  Top = 152
  Width = 787
  Height = 242
  Caption = 'Edit Divisi'
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
    Left = 24
    Top = 32
    Width = 54
    Height = 13
    Caption = 'Nama Divisi'
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 51
    Height = 13
    Caption = 'Kode Divisi'
  end
  object edtNama: TEdit
    Left = 104
    Top = 32
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object edtKode: TEdit
    Left = 104
    Top = 72
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object btnSimpan: TButton
    Left = 40
    Top = 112
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = btnSimpanClick
  end
  object btnEdit: TButton
    Left = 136
    Top = 112
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 3
    OnClick = btnEditClick
  end
  object DBGrid1: TDBGrid
    Left = 272
    Top = 24
    Width = 473
    Height = 120
    DataSource = modulDB.DsDivAdmin
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object edtId: TEdit
    Left = 40
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 5
    Visible = False
  end
  object edtHapus: TButton
    Left = 272
    Top = 152
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 6
    OnClick = edtHapusClick
  end
end