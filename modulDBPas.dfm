object modulDB: TmodulDB
  Left = 260
  Top = 194
  Width = 397
  Height = 480
  Caption = 'modulDB'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 24
    Top = 232
    Width = 320
    Height = 120
    DataSource = DsTest
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GroupBox1: TGroupBox
    Left = 144
    Top = 8
    Width = 185
    Height = 105
    Caption = 'login'
    TabOrder = 1
  end
  object Zconnection: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    Port = 3306
    Database = 'visual3db'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\TASem5\libmysql.' +
      'dll'
    Left = 24
    Top = 8
  end
  object ZqTest: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      
        'SELECT p.nama AS penerbit_nama, p.NIP, p.jabatan, d.nama_divisi,' +
        ' d.kode_divisi, t.alamat, t.`dinas-orang`, k.nama AS klasifikasi' +
        '_nama, k.nomor, s.tgl, s.detail'
      'FROM surat s'
      'JOIN penerbit p ON s.id_penerbit = p.id'
      'JOIN tujuan t ON s.id_tujuan = t.id'
      'JOIN klasifikasi k ON s.id_jenis = k.id'
      'JOIN divisi d ON p.id_divisi = d.id;')
    Params = <>
    Left = 88
    Top = 8
  end
  object DsTest: TDataSource
    DataSet = ZqTest
    Left = 24
    Top = 64
  end
  object DsLogin: TDataSource
    DataSet = ZqLogin
    Left = 248
    Top = 32
  end
  object ZqLogin: TZQuery
    Connection = Zconnection
    SQL.Strings = (
      'SELECT * FROM `user`;')
    Params = <>
    DataSource = DsTest
    Left = 176
    Top = 32
  end
end
