object frUserAdmin: TfrUserAdmin
  Left = 129
  Top = 122
  Width = 858
  Height = 315
  Caption = 'Manajemen User'
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
    Left = 64
    Top = 16
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 64
    Top = 56
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 64
    Top = 96
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label4: TLabel
    Left = 64
    Top = 136
    Width = 25
    Height = 13
    Caption = 'Level'
  end
  object edtUsername: TEdit
    Left = 144
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtPassword: TEdit
    Left = 144
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 328
    Top = 16
    Width = 481
    Height = 201
    DataSource = modulDB.DsUserAdmin
    TabOrder = 2
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
        FieldName = 'user_name'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'password'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'level'
        Visible = True
      end>
  end
  object btnSimpan: TButton
    Left = 96
    Top = 184
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = btnSimpanClick
  end
  object btnEdit: TButton
    Left = 184
    Top = 184
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 4
    OnClick = btnEditClick
  end
  object btnHapus: TButton
    Left = 328
    Top = 224
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = btnHapusClick
  end
  object cbxSts: TComboBox
    Left = 144
    Top = 96
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = '----'
    Items.Strings = (
      'aktif'
      'nonaktif')
  end
  object cbxLvl: TComboBox
    Left = 144
    Top = 136
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = '---'
    Items.Strings = (
      'user'
      'admin')
  end
  object edtId: TEdit
    Left = 272
    Top = 16
    Width = 41
    Height = 21
    ReadOnly = True
    TabOrder = 8
    Visible = False
  end
end
