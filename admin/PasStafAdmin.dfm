object frStaffAdmin: TfrStaffAdmin
  Left = 295
  Top = 366
  Width = 1015
  Height = 469
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
    Top = 56
    Width = 22
    Height = 13
    Caption = 'User'
  end
  object Label2: TLabel
    Left = 32
    Top = 248
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label3: TLabel
    Left = 32
    Top = 96
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label4: TLabel
    Left = 32
    Top = 136
    Width = 17
    Height = 13
    Caption = 'NIP'
  end
  object Label5: TLabel
    Left = 32
    Top = 176
    Width = 39
    Height = 13
    Caption = 'Jabatan'
  end
  object Label6: TLabel
    Left = 32
    Top = 216
    Width = 24
    Height = 13
    Caption = 'Divisi'
  end
  object Label7: TLabel
    Left = 304
    Top = 8
    Width = 55
    Height = 13
    Caption = 'CARI DATA'
  end
  object cbxUser: TComboBox
    Left = 112
    Top = 48
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = '----'
  end
  object cbxDiv: TComboBox
    Left = 112
    Top = 208
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
  end
  object edtNama: TEdit
    Left = 112
    Top = 88
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object edtNip: TEdit
    Left = 112
    Top = 128
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object edtJabatan: TEdit
    Left = 112
    Top = 168
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object cbxSts: TComboBox
    Left = 112
    Top = 248
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'aktif'
      'nonaktif')
  end
  object btnSimpan: TButton
    Left = 40
    Top = 288
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = btnSimpanClick
  end
  object btnUbah: TButton
    Left = 128
    Top = 288
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 7
    OnClick = btnUbahClick
  end
  object DBGrid1: TDBGrid
    Left = 304
    Top = 40
    Width = 673
    Height = 233
    DataSource = modulDB.DsStafAdminView
    TabOrder = 8
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
        FieldName = 'id_user'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_divisi'
        Width = 50
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
        FieldName = 'NIP'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jabatan'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Visible = True
      end>
  end
  object btnHapus: TButton
    Left = 216
    Top = 288
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = btnHapusClick
  end
  object edtId: TEdit
    Left = 256
    Top = 48
    Width = 33
    Height = 21
    ReadOnly = True
    TabOrder = 10
    Visible = False
  end
  object btnStaffRep: TButton
    Left = 128
    Top = 320
    Width = 161
    Height = 25
    Caption = 'REPORT STAFF'
    TabOrder = 11
    OnClick = btnStaffRepClick
  end
  object btnClr: TButton
    Left = 40
    Top = 320
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 12
    OnClick = btnClrClick
  end
  object DBGrid2: TDBGrid
    Left = 304
    Top = 288
    Width = 289
    Height = 113
    DataSource = modulDB.DsUserStafView
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 608
    Top = 288
    Width = 289
    Height = 113
    DataSource = modulDB.DsDivAdmin
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edtRefresh: TButton
    Left = 888
    Top = 8
    Width = 75
    Height = 25
    Caption = 'REFRESH'
    TabOrder = 15
    OnClick = edtRefreshClick
  end
  object edtCari: TEdit
    Left = 368
    Top = 8
    Width = 505
    Height = 21
    TabOrder = 16
    OnChange = edtCariChange
  end
end
