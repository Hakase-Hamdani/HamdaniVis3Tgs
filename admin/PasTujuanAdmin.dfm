object frTujuanAdmin: TfrTujuanAdmin
  Left = 28
  Top = 221
  Width = 1215
  Height = 400
  Caption = 'Administrasi Tujuan'
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
    Left = 40
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label2: TLabel
    Left = 40
    Top = 120
    Width = 30
    Height = 13
    Caption = 'Orang'
  end
  object Label3: TLabel
    Left = 40
    Top = 160
    Width = 39
    Height = 13
    Caption = 'Jabatan'
  end
  object Label4: TLabel
    Left = 40
    Top = 200
    Width = 38
    Height = 13
    Caption = 'Institusi'
  end
  object Label5: TLabel
    Left = 40
    Top = 240
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label6: TLabel
    Left = 336
    Top = 280
    Width = 88
    Height = 13
    Caption = 'PENCARIAN DATA'
  end
  object edtOrang: TEdit
    Left = 104
    Top = 120
    Width = 209
    Height = 21
    TabOrder = 0
  end
  object edtJabatan: TEdit
    Left = 104
    Top = 160
    Width = 209
    Height = 21
    TabOrder = 1
  end
  object edtInstitusi: TEdit
    Left = 104
    Top = 200
    Width = 209
    Height = 21
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 336
    Top = 48
    Width = 833
    Height = 225
    DataSource = modulDB.DsTujuanAdmin
    TabOrder = 3
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
        FieldName = 'alamat'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orang'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jabatan'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'institusi'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 60
        Visible = True
      end>
  end
  object btsSimpan: TButton
    Left = 40
    Top = 280
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 4
    OnClick = btsSimpanClick
  end
  object btnUbah: TButton
    Left = 136
    Top = 280
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 5
    OnClick = btnUbahClick
  end
  object btnHapus: TButton
    Left = 224
    Top = 280
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 6
    OnClick = btnHapusClick
  end
  object edtId: TEdit
    Left = 40
    Top = 320
    Width = 73
    Height = 21
    TabOrder = 7
    Visible = False
  end
  object btnRepTujuan: TButton
    Left = 336
    Top = 16
    Width = 97
    Height = 25
    Caption = 'REPORT TUJUAN'
    TabOrder = 8
    OnClick = btnRepTujuanClick
  end
  object btnClr: TButton
    Left = 136
    Top = 312
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 9
    OnClick = btnClrClick
  end
  object cbxSts: TComboBox
    Left = 104
    Top = 240
    Width = 209
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Text = '----'
    Items.Strings = (
      'aktif'
      'nonaktif')
  end
  object mmAlamat: TMemo
    Left = 104
    Top = 16
    Width = 209
    Height = 89
    TabOrder = 11
  end
  object edtCari: TEdit
    Left = 440
    Top = 280
    Width = 729
    Height = 21
    TabOrder = 12
    OnChange = edtCariChange
  end
  object btnRefresh: TButton
    Left = 1088
    Top = 16
    Width = 75
    Height = 25
    Caption = 'REFRESH'
    TabOrder = 13
    OnClick = btnRefreshClick
  end
end
