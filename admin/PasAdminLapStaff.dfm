object frAdminLapStaff: TfrAdminLapStaff
  Left = 436
  Top = 166
  Width = 1003
  Height = 457
  Caption = 'Laporan Staff'
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
    Left = 16
    Top = 8
    Width = 271
    Height = 45
    Caption = 'LAPORAN STAFF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnLap: TButton
    Left = 328
    Top = 16
    Width = 105
    Height = 25
    Caption = 'CETAK LAPORAN'
    TabOrder = 0
    OnClick = btnLapClick
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 64
    Width = 937
    Height = 321
    DataSource = modulDB.DsAdmin
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'user_name'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_status'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_level'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'penerbit_nama'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'penerbit_NIP'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'penerbit_jabatan'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_divisi'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode_divisi'
        Visible = True
      end>
  end
end
