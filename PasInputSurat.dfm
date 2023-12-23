object frSurat: TfrSurat
  Left = 262
  Top = 177
  Width = 1010
  Height = 573
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
  object Label7: TLabel
    Left = 328
    Top = 336
    Width = 55
    Height = 13
    Caption = 'CARI DATA'
  end
  object Label8: TLabel
    Left = 24
    Top = 360
    Width = 201
    Height = 13
    Caption = '*tekan tabel di bawah untuk mencari data'
  end
  object cbxPenerbit: TComboBox
    Left = 984
    Top = 56
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Visible = False
  end
  object cbxTujuan: TComboBox
    Left = 128
    Top = 48
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = '----'
  end
  object cbxJenis: TComboBox
    Left = 128
    Top = 88
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = '----'
  end
  object DateBerlaku: TDateTimePicker
    Left = 128
    Top = 128
    Width = 186
    Height = 21
    Date = 45283.916339108790000000
    Time = 45283.916339108790000000
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
    Text = '----'
    Items.Strings = (
      'aktif'
      'nonaktif')
  end
  object DBGrid1: TDBGrid
    Left = 328
    Top = 56
    Width = 641
    Height = 257
    DataSource = modulDB.DsSurat
    TabOrder = 6
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
  object edtIdUser: TEdit
    Left = 984
    Top = 88
    Width = 89
    Height = 21
    TabOrder = 9
    Visible = False
  end
  object btnCetak: TButton
    Left = 232
    Top = 320
    Width = 81
    Height = 25
    Caption = 'CETAK SURAT'
    TabOrder = 10
    OnClick = btnCetakClick
  end
  object edtIdPenerbit: TEdit
    Left = 128
    Top = 8
    Width = 185
    Height = 21
    ReadOnly = True
    TabOrder = 11
  end
  object edtIdSurat: TEdit
    Left = 984
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 12
    Visible = False
  end
  object btnRefresh: TButton
    Left = 888
    Top = 8
    Width = 75
    Height = 25
    Caption = 'REFRESH'
    TabOrder = 13
    OnClick = btnRefreshClick
  end
  object edtCari: TEdit
    Left = 400
    Top = 336
    Width = 569
    Height = 21
    TabOrder = 14
    OnChange = edtCariChange
  end
  object DBGrid2: TDBGrid
    Left = 24
    Top = 392
    Width = 177
    Height = 120
    DataSource = modulDB.DsStafAdminView
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid2CellClick
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
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 440
    Top = 392
    Width = 521
    Height = 120
    DataSource = modulDB.DsSuratAlamatAktifOnly
    TabOrder = 16
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
    Left = 216
    Top = 392
    Width = 217
    Height = 120
    DataSource = modulDB.DsDivAdmin
    TabOrder = 17
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
        FieldName = 'nama_divisi'
        Visible = True
      end>
  end
  object RadioGroup1: TRadioGroup
    Left = 328
    Top = 8
    Width = 353
    Height = 41
    Caption = 'ORDER BY DATE'
    TabOrder = 18
  end
  object RbAsc: TRadioButton
    Left = 344
    Top = 24
    Width = 113
    Height = 17
    Caption = 'ASCENDING'
    TabOrder = 19
    OnClick = RbAscClick
  end
  object RbDesc: TRadioButton
    Left = 440
    Top = 24
    Width = 113
    Height = 17
    Caption = 'DESCENDING'
    TabOrder = 20
    OnClick = RbDescClick
  end
  object RbDef: TRadioButton
    Left = 536
    Top = 24
    Width = 113
    Height = 17
    Caption = 'DEFAULT'
    TabOrder = 21
    OnClick = RbDefClick
  end
end
