object frStaffAdmin: TfrStaffAdmin
  Left = 312
  Top = 146
  Width = 941
  Height = 490
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
    Top = 40
    Width = 22
    Height = 13
    Caption = 'User'
  end
  object Label2: TLabel
    Left = 648
    Top = 168
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label3: TLabel
    Left = 648
    Top = 48
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label4: TLabel
    Left = 648
    Top = 88
    Width = 17
    Height = 13
    Caption = 'NIP'
  end
  object Label5: TLabel
    Left = 648
    Top = 128
    Width = 39
    Height = 13
    Caption = 'Jabatan'
  end
  object Label6: TLabel
    Left = 336
    Top = 40
    Width = 24
    Height = 13
    Caption = 'Divisi'
  end
  object Label7: TLabel
    Left = 32
    Top = 168
    Width = 55
    Height = 13
    Caption = 'CARI DATA'
  end
  object edtNama: TEdit
    Left = 728
    Top = 40
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object edtNip: TEdit
    Left = 728
    Top = 80
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object edtJabatan: TEdit
    Left = 728
    Top = 120
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object cbxSts: TComboBox
    Left = 728
    Top = 160
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'aktif'
      'nonaktif')
  end
  object btnSimpan: TButton
    Left = 728
    Top = 240
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 4
    OnClick = btnSimpanClick
  end
  object btnUbah: TButton
    Left = 728
    Top = 280
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 5
    OnClick = btnUbahClick
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 200
    Width = 673
    Height = 233
    DataSource = modulDB.DsStafAdminView
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
    Left = 728
    Top = 320
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = btnHapusClick
  end
  object edtId: TEdit
    Left = 608
    Top = 168
    Width = 33
    Height = 21
    ReadOnly = True
    TabOrder = 8
  end
  object btnStaffRep: TButton
    Left = 728
    Top = 200
    Width = 161
    Height = 25
    Caption = 'REPORT STAFF'
    TabOrder = 9
    OnClick = btnStaffRepClick
  end
  object btnClr: TButton
    Left = 728
    Top = 360
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 10
    OnClick = btnClrClick
  end
  object DBGrid2: TDBGrid
    Left = 32
    Top = 64
    Width = 289
    Height = 89
    DataSource = modulDB.DsUserStafView
    TabOrder = 11
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
        FieldName = 'user_name'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'level'
        Width = 64
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 336
    Top = 64
    Width = 289
    Height = 89
    DataSource = modulDB.DsDivAdmin
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid3CellClick
  end
  object edtRefresh: TButton
    Left = 1400
    Top = 408
    Width = 75
    Height = 25
    Caption = 'REFRESH'
    TabOrder = 13
    OnClick = edtRefreshClick
  end
  object edtCari: TEdit
    Left = 96
    Top = 168
    Width = 505
    Height = 21
    TabOrder = 14
    OnChange = edtCariChange
  end
  object edtIdUser: TEdit
    Left = 112
    Top = 40
    Width = 209
    Height = 21
    TabOrder = 15
  end
  object edtDiv: TEdit
    Left = 376
    Top = 40
    Width = 249
    Height = 21
    TabOrder = 16
  end
  object btnRefresh: TButton
    Left = 816
    Top = 240
    Width = 75
    Height = 25
    Caption = 'REFRESH'
    TabOrder = 17
    OnClick = btnRefreshClick
  end
end
