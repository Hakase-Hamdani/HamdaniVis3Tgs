object frDIvisiAdmin: TfrDIvisiAdmin
  Left = 182
  Top = 282
  Width = 712
  Height = 261
  Caption = 'Edit Divisi'
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
  object Label3: TLabel
    Left = 344
    Top = 8
    Width = 55
    Height = 13
    Caption = 'CARI DATA'
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
    Left = 344
    Top = 40
    Width = 313
    Height = 137
    DataSource = modulDB.DsDivAdmin
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
        Width = 50
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
        Width = 75
        Visible = True
      end>
  end
  object edtId: TEdit
    Left = 136
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 5
    Visible = False
  end
  object edtHapus: TButton
    Left = 232
    Top = 112
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 6
    OnClick = edtHapusClick
  end
  object edtCari: TEdit
    Left = 408
    Top = 8
    Width = 169
    Height = 21
    TabOrder = 7
    OnChange = edtCariChange
  end
  object btnRefresh: TButton
    Left = 584
    Top = 8
    Width = 75
    Height = 25
    Caption = 'REFRESH'
    TabOrder = 8
    OnClick = btnRefreshClick
  end
  object btnClr: TButton
    Left = 40
    Top = 152
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 9
    OnClick = btnClrClick
  end
end
