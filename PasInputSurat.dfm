object frSurat: TfrSurat
  Left = 108
  Top = 205
  Width = 1229
  Height = 544
  Caption = 'Buat Surat'
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
    Left = 40
    Top = 8
    Width = 40
    Height = 13
    Caption = 'Penerbit'
  end
  object Label2: TLabel
    Left = 656
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Tujuan'
  end
  object Label3: TLabel
    Left = 352
    Top = 8
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object Label4: TLabel
    Left = 40
    Top = 40
    Width = 76
    Height = 13
    Caption = 'Tanggal Berlaku'
  end
  object Label5: TLabel
    Left = 40
    Top = 120
    Width = 27
    Height = 13
    Caption = 'Detail'
  end
  object Label6: TLabel
    Left = 40
    Top = 72
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label7: TLabel
    Left = 352
    Top = 448
    Width = 55
    Height = 13
    Caption = 'CARI DATA'
  end
  object cbxPenerbit: TComboBox
    Left = 672
    Top = 584
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Visible = False
  end
  object DateBerlaku: TDateTimePicker
    Left = 128
    Top = 40
    Width = 186
    Height = 21
    Date = 45283.916339108790000000
    Time = 45283.916339108790000000
    TabOrder = 1
    OnChange = DateBerlakuChange
  end
  object MmDetail: TMemo
    Left = 40
    Top = 144
    Width = 273
    Height = 321
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object cbxStatus: TComboBox
    Left = 128
    Top = 72
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = '----'
    Items.Strings = (
      'aktif'
      'nonaktif')
  end
  object DBGrid1: TDBGrid
    Left = 352
    Top = 168
    Width = 633
    Height = 257
    DataSource = modulDB.DsSurat
    TabOrder = 4
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
        FieldName = 'id_penerbit'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_tujuan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_jenis'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_berlaku'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'detail'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Visible = True
      end>
  end
  object btnSimpan: TButton
    Left = 1000
    Top = 168
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = btnSimpanClick
  end
  object Button2: TButton
    Left = 1096
    Top = 168
    Width = 81
    Height = 25
    Caption = 'UBAH'
    TabOrder = 6
    OnClick = Button2Click
  end
  object edtIdUser: TEdit
    Left = 672
    Top = 616
    Width = 89
    Height = 21
    TabOrder = 7
    Visible = False
  end
  object btnCetak: TButton
    Left = 1096
    Top = 208
    Width = 81
    Height = 25
    Caption = 'CETAK SURAT'
    TabOrder = 8
    OnClick = btnCetakClick
  end
  object edtIdPenerbit: TEdit
    Left = 128
    Top = 8
    Width = 185
    Height = 21
    ReadOnly = True
    TabOrder = 9
  end
  object edtIdSurat: TEdit
    Left = 672
    Top = 552
    Width = 121
    Height = 21
    TabOrder = 10
    Visible = False
  end
  object btnRefresh: TButton
    Left = 1536
    Top = 352
    Width = 75
    Height = 25
    Caption = 'REFRESH'
    TabOrder = 11
    OnClick = btnRefreshClick
  end
  object edtCari: TEdit
    Left = 424
    Top = 448
    Width = 409
    Height = 21
    TabOrder = 12
    OnChange = edtCariChange
  end
  object DBGrid3: TDBGrid
    Left = 656
    Top = 32
    Width = 521
    Height = 120
    DataSource = modulDB.DsSuratAlamatAktifOnly
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid3CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orang'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jabatan'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'institusi'
        Width = 100
        Visible = True
      end>
  end
  object DBGrid4: TDBGrid
    Left = 400
    Top = 32
    Width = 233
    Height = 120
    DataSource = modulDB.DsKlasAdmin
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid4CellClick
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
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomor'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 32
        Visible = True
      end>
  end
  object edtJenis: TEdit
    Left = 400
    Top = 8
    Width = 185
    Height = 21
    ReadOnly = True
    TabOrder = 15
  end
  object edtTujuan: TEdit
    Left = 720
    Top = 8
    Width = 409
    Height = 21
    ReadOnly = True
    TabOrder = 16
  end
  object edtKlasId: TEdit
    Left = 592
    Top = 8
    Width = 33
    Height = 21
    TabOrder = 17
    Visible = False
  end
  object edtTujuanId: TEdit
    Left = 1136
    Top = 8
    Width = 41
    Height = 21
    TabOrder = 18
    Visible = False
  end
  object btnClr: TButton
    Left = 1000
    Top = 208
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 19
    OnClick = btnClrClick
  end
  object btnRef: TButton
    Left = 1000
    Top = 248
    Width = 75
    Height = 25
    Caption = 'REFRESH'
    TabOrder = 20
    OnClick = btnRefClick
  end
  object edtTgl: TEdit
    Left = 320
    Top = 40
    Width = 65
    Height = 21
    TabOrder = 21
    Visible = False
  end
end
