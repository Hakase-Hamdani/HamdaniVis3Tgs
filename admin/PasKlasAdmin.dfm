object frKlasAdmin: TfrKlasAdmin
  Left = 211
  Top = 227
  Width = 861
  Height = 306
  Caption = 'Administrasi Klasifikasi'
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
  object Label1: TLabel
    Left = 48
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label2: TLabel
    Left = 48
    Top = 64
    Width = 31
    Height = 13
    Caption = 'Nomor'
  end
  object Label3: TLabel
    Left = 48
    Top = 104
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object btnSimpan: TButton
    Left = 48
    Top = 144
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 0
    OnClick = btnSimpanClick
  end
  object edtNama: TEdit
    Left = 104
    Top = 24
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object edtNo: TEdit
    Left = 104
    Top = 64
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object cbxSts: TComboBox
    Left = 104
    Top = 104
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'aktif'
      'nonaktif')
  end
  object btnUbah: TButton
    Left = 136
    Top = 144
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 4
    OnClick = btnUbahClick
  end
  object DBGrid1: TDBGrid
    Left = 344
    Top = 56
    Width = 353
    Height = 153
    DataSource = modulDB.DsKlasAdmin
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 64
        Visible = True
      end>
  end
  object edtId: TEdit
    Left = 208
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'edtId'
    Visible = False
  end
  object edtHapus: TButton
    Left = 224
    Top = 144
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = edtHapusClick
  end
end
