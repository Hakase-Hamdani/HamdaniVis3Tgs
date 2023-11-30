object frSurat: TfrSurat
  Left = 23
  Top = 230
  Width = 920
  Height = 400
  Caption = 'Buat Surat'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 8
    Width = 40
    Height = 13
    Caption = 'Penerbit'
  end
  object Label2: TLabel
    Left = 40
    Top = 48
    Width = 33
    Height = 13
    Caption = 'Tujuan'
  end
  object Label3: TLabel
    Left = 40
    Top = 88
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object Label4: TLabel
    Left = 40
    Top = 128
    Width = 76
    Height = 13
    Caption = 'Tanggal Berlaku'
  end
  object Label5: TLabel
    Left = 40
    Top = 168
    Width = 27
    Height = 13
    Caption = 'Detail'
  end
  object Label6: TLabel
    Left = 40
    Top = 272
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object cbxPenerbit: TComboBox
    Left = 128
    Top = 8
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object cbxTujuan: TComboBox
    Left = 128
    Top = 48
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 1
  end
  object cbxJenis: TComboBox
    Left = 128
    Top = 88
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object DateBerlaku: TDateTimePicker
    Left = 128
    Top = 128
    Width = 186
    Height = 21
    Date = 45259.916339108790000000
    Time = 45259.916339108790000000
    TabOrder = 3
  end
  object MmDetail: TMemo
    Left = 128
    Top = 168
    Width = 185
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 4
  end
  object cbxStatus: TComboBox
    Left = 128
    Top = 272
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'aktif'
      'nonaktif')
  end
  object DBGrid1: TDBGrid
    Left = 328
    Top = 8
    Width = 481
    Height = 289
    DataSource = modulDB.DsSurat
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object btnSimpan: TButton
    Left = 40
    Top = 320
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = btnSimpanClick
  end
  object Button2: TButton
    Left = 136
    Top = 320
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 8
    OnClick = Button2Click
  end
  object edtId: TEdit
    Left = 232
    Top = 320
    Width = 121
    Height = 21
    TabOrder = 9
    Visible = False
  end
end
